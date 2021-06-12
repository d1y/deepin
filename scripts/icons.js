// author: d1y<chenhonzhou@gmail.com>
// auto convert svg data to dart static String type
// node . https://bbs.deepin.org/assets/image/pc/say.svg SAY

const got = require('node-fetch').default;

const path = require('path')

const fs = require('fs')

// const clipboardy = require('clipboardy')

const args = process.argv

// let action = -1

const replaceAll = (str, find, replace) => {
  return str.replace(new RegExp(find, 'g'), replace);
}

if (args.length <= 3) {
  console.log("请传入下载的参数和class名称")
  process.exit(0)
}

const url = args[2]

const className = args[3]

const getSvgData = async (u)=> {
  console.log(u)
  try {
    const resp = await got(u)
    const svgData = await resp.text()
    const svgNotSpace = replaceAll(svgData, "\n", "")
    return svgNotSpace.split("\n")
  } catch (error) {
    console.error(error)
    return null
  }
}

const generateDartCode = (svgData)=> {
  var CLASSNAME = className.toUpperCase()
  return `///\nstatic String ${ CLASSNAME } = '${ svgData }';\n`
}

const assetDartFilePath = "../lib/config/assets.dart"

const dartFile = path.join(__dirname, assetDartFilePath)

const getAssetDartData = ()=> {
  const bytes = fs.readFileSync(dartFile, "utf8")
  return bytes.split("\n")
}

const appendIcon = (gendered_code)=> {
  const dateByte = getAssetDartData()
  dateByte.splice(dateByte.length - 2, 0, '  ' + gendered_code)
  const result = dateByte.join("\n")
  return fs.writeFileSync(dartFile, result)
}

;(async ()=> {
  console.log("start run icon convert task!!")
  const data = await getSvgData(url)
  if (data == null) {
    console.log("the task failed")
    return
  }
  const code = generateDartCode(data)
  appendIcon(code)
  console.log("task over!")
})()
