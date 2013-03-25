Return-Path: <huanmateme@163.com>
Received: from m13-77.163.com (unknown [220.181.13.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8CD6E014D0
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2013 03:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Received:Date:From:To:Subject:Content-Type:
	MIME-Version:Message-ID; bh=pLAOQJtkKMjjjBpoHfJwSssPGPwqAprheBbs
	Nx8jLrU=; b=gXfK45+JZO8+kilzZCaI9lQHuMYTQPnh0Dxr5+tl5k51JVZ3a3jZ
	vgf6T5q2xD/t6NOEkA9Vgb895+9sMX5r5UQI4OSETF+gXAI9qXxhTFgkqm7uTZve
	IQ2fOHJnRFpOd9s6DsCDLFJAONG4FUJPMch5OEiddaeGzSeKcHYiFrw=
Received: from huanmateme$163.com ( [222.128.145.226] ) by
	ajax-webmail-wmsvr77 (Coremail) ; Mon, 25 Mar 2013 18:40:04 +0800 (CST)
X-Originating-IP: [222.128.145.226]
Date: Mon, 25 Mar 2013 18:40:04 +0800 (CST)
From: Biao <huanmateme@163.com>
To: yocto <yocto@yoctoproject.org>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20130201(21528.5249.5248) Copyright (c) 2002-2013 www.mailtech.cn
	163com
MIME-Version: 1.0
Message-ID: <22f4a24d.10498.13da1222f53.Coremail.huanmateme@163.com>
X-CM-TRANSID: TcGowEBpYEGFKVBRYRYMAA--.5599W
X-CM-SenderInfo: xkxd0z5dwhzvi6rwjhhfrp/1tbiURzqgFEAB67nvQACsH
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: How to install the in-tree modules into the rootfs.
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
X-List-Received-Date: Mon, 25 Mar 2013 10:40:20 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_248129_1548681152.1364208004947"

------=_Part_248129_1548681152.1364208004947
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit

 Hi all,

step 1. Configure the kernel with some modules as "M".
step 2. Build the kernel.
step 3. After the building, there is a modules-*.tgz in the deploy/images directory.
My question is how to install it to the target rootfs. I assume it is "bitbake -f -c populate_sysroot core-image-minimal-dev', but i was wrong.

Thanks,
Biao


------=_Part_248129_1548681152.1364208004947
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial">&nbsp;Hi all,<br><br>step 1. Configure the kernel with some modules as "M".<br>step 2. Build the kernel.<br>step 3. After the building, there is a modules-*.tgz in the deploy/images directory.<br>My question is how to install it to the target rootfs. I assume it is "bitbake -f -c populate_sysroot core-image-minimal-dev', but i was wrong. <br><br>Thanks,<br>Biao<br><br></div>

------=_Part_248129_1548681152.1364208004947--
