#coding=utf-8

import urllib2
import json
import sys
import time
import os

jsonFilePath = "E:/jzjsMonitorProject/dingTalkPages/yurzhang.github.io/data"

class dingHook():
    def __init__(self):
        # 运维测试群
        # self.url = "https://oapi.dingtalk.com/robot/send?access_token=1ed1aecf97d47005d8a63501741469417f82da68f734b4d7dd4a04ada80f98b9"
        # 机器人聊天群
        # self.url = "https://oapi.dingtalk.com/robot/send?access_token=787a0a849ff62dde619d099091955974851f8e3ab46a956219b22bbf6dff4457"
        # 运维组群
        self.url = "https://oapi.dingtalk.com/robot/send?access_token=8136899be963625eb8341b69ab4f41981e955f22dba181a949baba146adfaaaa"
        # 出账进度群 智能监控机器人
        # self.url = "https://oapi.dingtalk.com/robot/send?access_token=7cfb7d01d71b3a8ce57ad2c2ca8315c48d3914b459919869387f4a4b912c57ee"
        # 出账进度大群 慎重
        # self.url = "https://oapi.dingtalk.com/robot/send?access_token=7842fbde8a639753ac9f69c50e2d6d029ec0667a6bc0421e4536e340c5379644"

        self.opType = ["wangJ", "zengZh", "guoN", "guoJ"]
        self.step = ["state0", "state1", "state2", "state3", "state4", "state5", "state6", "state7", "state8", "state9", "state10", ]

    def writeFile(self, record, fileName):
        '''
        a 追加写
        w 覆盖写  覆盖写需要先判断是否有该路径，路径存在能够自动创建文件
        '''
        dirPath = os.path.dirname(fileName)
        if not os.path.exists(dirPath):
            os.makedirs(dirPath)

        with open(fileName, 'w') as logFile:
            for recordItem in record:
                logFile.write(recordItem.encode("utf-8"))
    
    def request(self, url, method, data=None, head={}):
        request = urllib2.Request(url=url, headers=head)
        request.get_method = lambda: method
        httpRes = urllib2.urlopen(request, data)
        content = httpRes.read()
        httpRes.close()
        return content

    def post_start(self, infoContent, nowTime):
        data = {}
        # data['msgtype'] = 'markdown'
        # data['markdown'] = {}
        # # data['markdown']['title'] = "集中综合结算出账进度"

        # data['markdown']['title'] = "集中综合结算出账数据分析"
        # data['markdown']['text'] = "### [![出账进度图](https://github.com/francisXKF/picStore/blob/master/bill_sqr.png?raw=true) 点击查看详细报告](https://yurzhang.github.io/billReport.html)"
        data = {
                "actionCard": {
                    "title": "集中综合结算出账进度", 
                    "text": "![出账进度图](https://github.com/yurzhang/yurzhang.github.io/blob/master/pic/bill_sqr_big5.png?raw=true)",
                    "hideAvatar": "0", 
                    "btnOrientation": "0", 
                    "singleTitle" : "阅读详细报告",
                    "singleURL" : "https://yurzhang.github.io/billReport.html"
                }, 
                "msgtype": "actionCard"
            }
        data = json.dumps(data)
        head = {"Content-Type": "application/json"}
        content = self.request(self.url, "POST", data, head)
        return content

    def ding_hook(self, msgInfo, itype="start"):
        print itype
        nowTime = time.strftime('%Y-%m-%d %H:%M',time.localtime(time.time()))
        if itype == "start":
            self.post_start(msgInfo, nowTime)
        # elif itype == "end":
        #     self.post_result()

if __name__ == '__main__':
    print time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(time.time()))
    # handle and send msg
    # print msgInfo

    dh = dingHook()
    dh.ding_hook('', 'start')


