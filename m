Return-Path: <huanmateme@163.com>
Received: from m13-24.163.com (unknown [220.181.13.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7AEAE006B4
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 01:06:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Received:Date:From:To:Subject:Content-Type:
	MIME-Version:Message-ID; bh=n6vq2uwg9rUZDsuV088eDKxgPJDltglvCX1a
	EkJChIg=; b=BytS82l7crshj+O7rM8Yqgk9/WvEAgIf3RTZkIUVztMU3m7DL8PO
	t78oiV5k7ivCMPq9qkH8OrkLQeTH5iVGSUgySiCCk7mxNFLNhdpBz8aHKiMd0csT
	sVb1Np29Vut2sH+BxC6eDLpn/cjxkPzjVzlWPnWF/6V85Zm5Flq70Rs=
Received: from huanmateme$163.com ( [61.148.56.138] ) by
	ajax-webmail-wmsvr24 (Coremail) ; Mon, 17 Dec 2012 17:06:26 +0800 (CST)
X-Originating-IP: [61.148.56.138]
Date: Mon, 17 Dec 2012 17:06:26 +0800 (CST)
From: Biao <huanmateme@163.com>
To: yocto@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20121210(21001.5125.5051) Copyright (c) 2002-2012 www.mailtech.cn
	163com
MIME-Version: 1.0
Message-ID: <23bf4f1e.c486.13ba81d3be7.Coremail.huanmateme@163.com>
X-CM-TRANSID: GMGowGAZv0CT4M5QaHANAA--.8736W
X-CM-SenderInfo: xkxd0z5dwhzvi6rwjhhfrp/xtbBSQGIgE9otYFikwAAsi
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: Where does the bitbake get the variable "TOPDIR"
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
X-List-Received-Date: Mon, 17 Dec 2012 09:06:57 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_185503_1189173442.1355735186406"

------=_Part_185503_1189173442.1355735186406
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit

Greetings, 


I am a newbie tying to understand how bitbake works.
There is one line as BBPATH = "${TOPDIR}" in the mybuild/conf/bblayers.conf, i would like to know where the TOPDIR is defined? 


Thanks,
Biao

------=_Part_185503_1189173442.1355735186406
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial">Greetings,&nbsp;<div><br></div><div>I am a newbie tying to understand how bitbake works.</div><div>There is one line as BBPATH = "${TOPDIR}" in the mybuild/conf/bblayers.conf, i would like to know where the TOPDIR is defined?&nbsp;</div><div><br></div><div>Thanks,</div><div>Biao</div></div>

------=_Part_185503_1189173442.1355735186406--
