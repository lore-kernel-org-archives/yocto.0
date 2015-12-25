Return-Path: <king.lijin@huawei.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17E3CE002F9; Thu, 24 Dec 2015 17:59:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [119.145.14.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [119.145.14.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 001F3E002F9
	for <yocto@yoctoproject.org>; Thu, 24 Dec 2015 17:59:27 -0800 (PST)
Received: from 172.24.1.47 (EHLO szxeml426-hub.china.huawei.com)
	([172.24.1.47])
	by szxrg03-dlp.huawei.com (MOS 4.4.3-GA FastPath queued)
	with ESMTP id BTI61638; Fri, 25 Dec 2015 09:59:18 +0800 (CST)
Received: from [127.0.0.1] (10.177.34.120) by szxeml426-hub.china.huawei.com
	(10.82.67.181) with Microsoft SMTP Server id 14.3.235.1;
	Fri, 25 Dec 2015 09:59:14 +0800
Message-ID: <567CA2F0.5000201@huawei.com>
Date: Fri, 25 Dec 2015 09:59:12 +0800
From: Jin Li <lijin14@huawei.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-Originating-IP: [10.177.34.120]
X-CFilter-Loop: Reflected
X-Mirapoint-Virus-RAPID-Raw: score=unknown(0),
	refid=str=0001.0A020203.567CA2F7.000B, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0, ip=0.0.0.0,
	so=2013-05-26 15:14:31, dmn=2013-03-21 17:37:32
X-Mirapoint-Loop-Id: e718de5bec3e8b6fd93da788ae9a5a63
Subject: how to use systemd as system init manager
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
X-List-Received-Date: Fri, 25 Dec 2015 01:59:33 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

Hi,

I am trying to build yocto project which use systemd as system init manager.
But the qemu boot up and still use INIT as usual. The rootfs even fail to install systemd.

I refers to yocto docs http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#ref-features-distro
I use meta/recipes-extended/images/core-image-full-cmdline.bb and add the following part
to support systemd:

DISTRO_FEATURES_append = "systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"

Did I miss somethings ?

Any help would be appreciated.

Jin



