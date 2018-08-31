# -*- coding:utf-8 -*- 
#!/usr/bin/python

import os
import threading
import re
import time
import pexpect

class utilsX():
    """docstring for utilsX"""
    def readFile(self, fileName, cond=""):
        '''
        增加条件判断，为主机监控增加，判断pending
        '''
        content = []
        try:
            with open(fileName, 'r') as logFileName:
                for line in logFileName.readlines():
                    lineFormat = line.strip()
                    if cond != "" and lineFormat.find(cond) == -1:
                        continue
                    content.append(lineFormat)
        except IOError as e:
            print "not have this file:"+fileName
        return content

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
                logFile.write(recordItem)

    def gzipFile(self, fileName):
        '''
        压缩文件为gz格式
        '''
        os.system("gzip "+fileName)

class formatLog():
    """docstring for formatLog"""
    def __init__(self, basePath):
        self.basePath = basePath
        self.utilsXObj = utilsX()
        self.logNameList = ['gprsr_monthtrend_201807.log', 'gjjs_trend_201807.log', 'wjjs_netin_201807.log']

    def guoJ(self, fileName, outFileName):
        records = self.utilsXObj.readFile(self.basePath+"/"+fileName)
        ans = []
        for recordItem in records:
            print recordItem
            itemList = recordItem.split(',')
            # [{"roam":"10","msi":"11","value":"123"},{"roam":"11","msi":"71","value":"102"},{"roam":"13","msi":"71","value":"222"}]
            ans.append('{\"roam\":\"'+itemList[1]+'\",\"msi\":\"'+itemList[2]+'\",\"value\":\"'+itemList[3]+'\"}')
        self.utilsXObj.writeFile(",".join(ans), self.basePath+"/"+outFileName)
    
    def guoN(self, fileName, outFileName):
        records = self.utilsXObj.readFile(self.basePath+"/"+fileName)
        ans = []
        for recordItem in records:
            print recordItem
            itemList = recordItem.split(',')
            # [{"roam":"10","msi":"11","value":"123"},{"roam":"11","msi":"71","value":"102"},{"roam":"13","msi":"71","value":"222"}]
            ans.append('{\"roam\":\"'+itemList[1]+'\",\"msi\":\"'+itemList[2]+'\",\"value\":\"'+itemList[3]+'\"}')
        self.utilsXObj.writeFile(",".join(ans), self.basePath+"/"+outFileName)
    
    def startFormat(self):
        self.guoJ('gjjs_trend_201807.log', 'guoJProvTrend_201807.json')
        self.guoN('gprsr_monthtrend_201807.log', 'guoNProvTrend_201807.json')

if __name__ == '__main__':
    formatLogObj = formatLog("/settle/settle/bin/xukf/test/fileStatInfo")
    formatLogObj.startFormat()

        
