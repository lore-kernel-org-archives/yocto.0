Return-Path: <caterwaul@163.com>
Received: from m13-18.163.com (m13-18.163.com [220.181.13.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9E6EE0030B
	for <yocto@yoctoproject.org>; Sun,  8 Apr 2012 08:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Received:Date:From:To:Message-ID:Subject:
	MIME-Version:Content-Type; bh=lhTLQAyx7aH7PH96SB4VLOiRTKIFuzuRL+
	Uk/275DnY=; b=iz5/lPzUH3S9CKUrBEE5TgWQp6Kl1MjZKNMdEVrr4zvgYEUZeS
	1cTegxj7gJFVlF53qHBsVsv4ZnRYQWGbGW3XLn7mclMUftUMecqHbNapO/t06Hzd
	+ZNCI5Cr9qouCxBoAVBWyz4cJU+WEm1OLadU1yfGBxlT9UxuhW/Rb9kZE=
Received: from caterwaul ( [121.18.126.73] ) by ajax-webmail-wmsvr18
	(Coremail) ; Sun, 8 Apr 2012 23:07:10 +0800 (CST)
Date: Sun, 8 Apr 2012 23:07:10 +0800 (CST)
From: caterwaul  <caterwaul@163.com>
To: yocto <yocto@yoctoproject.org>
Message-ID: <62ddb88d.12ba6.136927e920f.Coremail.caterwaul@163.com>
MIME-Version: 1.0
X-Originating-IP: [121.18.126.73]
X-CM-HeaderCharset: GBK
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20120307(17626.4462.4455) Copyright (c) 2002-2012 www.mailtech.cn
	163com
X-CM-CTRLDATA: vPIyxWZvb3Rlcl9odG09MTkyOTo4MQ==
X-CM-TRANSID: EsGowGCJMEKeqYFPnqItAA--.12100W
X-CM-SenderInfo: pfdwv2hzdxzqqrwthudrp/1tbiWBWKJE9ozpcQowABsv
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: Problem about print in fetching
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 08 Apr 2012 15:07:16 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_212281_355857837.1333897630223"

------=_Part_212281_355857837.1333897630223
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit

Hi,


I want to print out all the URI_SRC I use during the build.  And I have tried 3 methods in 2 places as follow. But all of these can not print out the src path. Did I make some mistakes? Could anyone help me on this? Thank you.


PLACE ONE  in poky-edison-6.0.1/bitbake/lib/bb/fetch2/__init__.py
class Fetch(object):
    def __init__(self, urls, d, cache = True):
......
        for url in urls:
            if url not in self.ud:
                print('====%s' % url) # code I added
                self.ud[url] = FetchData(url, d)
......


PLACE TWO  in poky-edison-6.0.1/meta/classes/base.bbclass
python base_do_fetch() {


src_uri = (bb.data.getVar('SRC_URI', d, True) or "").split()
if len(src_uri) == 0:
return
        print('====%s' % src_url) # code I added
        bb.note('====%s' % src_url) # code I added
}


Jim Green



------=_Part_212281_355857837.1333897630223
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial"><div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial"><div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial">Hi,<div><br></div><div>I want to print out all the URI_SRC I use during the build. &nbsp;And I have tried 3 methods in 2 places as follow. But all of these can not print out the src path. Did I make some mistakes? Could anyone help me on this? Thank you.</div><div><br></div><div>PLACE ONE &nbsp;in poky-edison-6.0.1/bitbake/lib/bb/fetch2/__init__.py</div><div><div>class Fetch(object):</div><div>&nbsp; &nbsp; def __init__(self, urls, d, cache = True):</div><div>......</div><div>&nbsp; &nbsp; &nbsp; &nbsp; for url in urls:</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if url not in self.ud:</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <b>print('====%s' % url) # code I added</b></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; self.ud[url] = FetchData(url, d)</div></div><div>......</div><div><br></div><div>PLACE TWO &nbsp;in poky-edison-6.0.1/meta/classes/base.bbclass</div><div><div>python base_do_fetch() {</div><div><br></div><div><span class="Apple-tab-span" style="white-space:pre">	</span>src_uri = (bb.data.getVar('SRC_URI', d, True) or "").split()</div><div><span class="Apple-tab-span" style="white-space:pre">	</span>if len(src_uri) == 0:</div><div><span class="Apple-tab-span" style="white-space:pre">		</span>return</div><div>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<b>print('====%s' % src_url)</b><b style="line-height: 1.7; ">&nbsp;# code I added</b></div><div><b>&nbsp; &nbsp; &nbsp; &nbsp; bb.note</b><b>('====%s' % src_url)</b><b style="line-height: 1.7; ">&nbsp;# code I added</b></div><div>}</div></div><div><br></div><div>Jim Green</div></div></div><br><br><span title="neteasefooter"><span id="netease_mail_footer"></span></span></div><br><br><span title="neteasefooter"><span id="netease_mail_footer"></span></span>

------=_Part_212281_355857837.1333897630223--
