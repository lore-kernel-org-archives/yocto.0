Return-Path: <caterwaul@163.com>
Received: from m13-109.163.com (m13-109.163.com [220.181.13.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74506E0070C
	for <yocto@yoctoproject.org>; Sat, 30 Jun 2012 05:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Received:Date:From:To:Subject:Content-Type:
	MIME-Version:Message-ID; bh=WFQH91u4Jhfdw9k2Gwsh8VviLhI1Bs5yx3F+
	Fv7FUww=; b=D8ceZM1UxKxXqgvJjdsqLdENWM8Si74dyLARolQA7BaiEqBqB01m
	MbQWr3i0q6TKaWQspXu1bDYQzYHCgecZ3J8tWkQbpwskbJ1urm5CgGdu9CBh37Bn
	+YTMlIgzKYJNQ9XZkfk51EYNw8Sx3yODvTQBB5iRHXXz7Z8tF1BpwIM=
Received: from caterwaul$163.com ( [121.18.126.248] ) by
	ajax-webmail-wmsvr109 (Coremail) ; Sat, 30 Jun 2012 20:46:18 +0800 (CST)
X-Originating-IP: [121.18.126.248]
Date: Sat, 30 Jun 2012 20:46:18 +0800 (CST)
From: caterwaul <caterwaul@163.com>
To: yocto <yocto@yoctoproject.org>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20120507(18390.4657.4663) Copyright (c) 2002-2012 www.mailtech.cn
	163com
X-CM-CTRLDATA: yMijeGZvb3Rlcl9odG09NTgxOjgx
MIME-Version: 1.0
Message-ID: <51b83d22.14984.1383d6d6ee9.Coremail.caterwaul@163.com>
X-CM-TRANSID: bcGowECpK0Aw9e5PGBJdAA--.9263W
X-CM-SenderInfo: pfdwv2hzdxzqqrwthudrp/xtbBohTdJE9orsg8-AABsP
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: kernel-modules problem
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
X-List-Received-Date: Sat, 30 Jun 2012 12:46:42 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_224526_2108620926.1341060378345"

------=_Part_224526_2108620926.1341060378345
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit

Hi friends,


I wanted to include mtd_tests modules into my rootfs. To do this, I configed the kernel and added kernel-modules in IMAGE_INSTALL in my image bb file. After build I could find all ko files I wanted at tmp/work/myboard-linux/linux-qoriq-sdk-3.0.6-r2/git/drivers/mtd/tests/. But I could NOT find ko files in the tmp/deploy/images/myboard.rootfs.tar.gz and modules-3.0.6-r2-myboard.tgz. Why? Could anyone help me? Thank you.

------=_Part_224526_2108620926.1341060378345
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial">Hi friends,<div><br></div><div>I wanted to include mtd_tests modules into my rootfs. To do this, I configed the kernel and added kernel-modules in IMAGE_INSTALL in my image bb file. After build I could find all ko files I wanted at&nbsp;<i>tmp/work/myboard-linux/linux-qoriq-sdk-3.0.6-r2/git/drivers/mtd/tests/</i>. But I could NOT find ko files in the<i>&nbsp;tmp/deploy/images/myboard.rootfs.tar.gz</i>&nbsp;and&nbsp;<i>modules-3.0.6-r2-myboard.tgz</i>. Why? Could anyone help me? Thank you.</div></div><br><br><span title="neteasefooter"><span id="netease_mail_footer"></span></span>

------=_Part_224526_2108620926.1341060378345--
