import http from '@ohos.net.http';
import { BusinessError } from '@kit.BasicServicesKit';

interface loginParamsType {
  loginType: string,
  loginId: string,
  password: string
}
interface tokenType {
  status: number
  token: string
}

const url: string = 'http://43.159.41.42:1234/api/user/login'

export async function loginHttpRequest(loginParams: loginParamsType): Promise<tokenType> {
  return new Promise((resolve, reject) => {
    let httpRequest = http.createHttp()
    httpRequest.request(
      url,
      {
        method: http.RequestMethod.POST,
        extraData: JSON.stringify(loginParams),
        header: {
          'Content-Type': 'application/json'
        }
      },
      (err: BusinessError, data: http.HttpResponse) => {
        httpRequest.destroy()
        if (err) {
          console.log('请求出错:' + JSON.stringify(err))
          reject(err)
          return
        }
        try {
          const res: tokenType = (JSON.parse(data.result as string) as tokenType)
          // console.log(data.result as string)
          resolve(res)
        } catch (e) {
          console.error(e)
          reject(e)
        }
      }
    )
  })
}