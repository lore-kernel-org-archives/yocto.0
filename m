Return-Path: <zhangzl2013@126.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC621E00CE7; Fri, 28 Dec 2018 02:50:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,FREEMAIL_FROM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zhangzl2013[at]126.com)
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
X-Greylist: delayed 1833 seconds by postgrey-1.32 at yocto-www;
	Fri, 28 Dec 2018 02:50:40 PST
Received: from m15-54.126.com (m15-54.126.com [220.181.15.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BB77E0091D
	for <yocto@yoctoproject.org>; Fri, 28 Dec 2018 02:50:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=Se4Wy
	iF4TB8vSzzF+3r2WfUbfFvi5ZecvPJMfj8/tQ4=; b=DPADsRWHv+8uhLBtWZsbU
	YppZ5hKfOvxLQOfPe4uQe60p6nNEQHDyBGV8LrAWVKzcxgmw1YsqfXN1BGOD+vL/
	n5XLaAAlHPyXCB3SFFxOg3s3+ZXe1Wq9c+ikd1ZFQn7lhdRbP+z525ZU0JMWyXLP
	Nd9XkwxyK0+maCyyV8gI1s=
Received: from zhangzl2013$126.com ( [60.247.85.92] ) by
	ajax-webmail-wmsvr54 (Coremail) ; Fri, 28 Dec 2018 18:19:53 +0800 (CST)
X-Originating-IP: [60.247.85.92]
Date: Fri, 28 Dec 2018 18:19:53 +0800 (CST)
From: "Zhaolong Zhang" <zhangzl2013@126.com>
To: richard.purdie@linuxfoundation.org, bruce.ashfield@windriver.com, 
	yocto@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20180927(cd7136b6) Copyright (c) 2002-2018 www.mailtech.cn 126com
MIME-Version: 1.0
Message-ID: <f7a564.7f88.167f453d16d.Coremail.zhangzl2013@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: NsqowAC31vzK+CVcDsEAAA--.7167W
X-CM-SenderInfo: x2kd0wt2osiiat6rjloofrz/1tbitQYrz1pD8Bzc9AAAsK
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Mailman-Approved-At: Thu, 03 Jan 2019 01:08:45 -0800
Subject: Accelerate kernel module built in eSDK?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Dec 2018 10:50:42 -0000
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=GBK

CkhpIEV4cGVydHMsCgpCdWlsZGluZyBvdXQtb2YtdHJlZSBrZXJuZWwgbW9kdWxlcyBpbiBlU0RL
IHdpbGwgdHJpZ2dlciBhIG5ldyByZWJ1aWxkaW5nIG9mIGtlcm5lbCwgd2hpY2ggY29uc3VtZXMg
bG90cyBvZiB0aW1lLgpJcyBpdCBwb3NzaWJsZSB0byBjYWNoZSB0aGUgZG9fc2hhcmVkX3dvcmtk
aXIoKSB0YXNrIGluIHNzdGF0ZS1jYWNoZSBhbmQgc2hpcCBpdCB3aXRoaW4gZVNESz8gQW5kIGhv
dz8KCk9yIGlzIHRoZXJlIG90aGVyIG1ldGhvZCB0byBhY2NlbGVyYXRlPwoKVGhhbmtzIGluIGFk
dmFuY2UuCgpSZWdhcmRzLApaaGFvbG9uZw==

