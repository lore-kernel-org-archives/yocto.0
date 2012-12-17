Return-Path: <huanmateme@163.com>
Received: from m13-24.163.com (unknown [220.181.13.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76838E006B4
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 01:47:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Received:Date:From:To:Cc:Subject:In-Reply-To:
	References:Content-Type:MIME-Version:Message-ID; bh=7uSFVxr/gwg6
	0s1iH9oediT5NSrykXAkIwuc6exYJ9g=; b=eZQs0YCeHNWhepd4WTZTJocqlozj
	f3IRJUCdmwxTt34UsQR+piLKDJb8TcI/fso3+r1qhiyHJ8+9mLIgHf3wCJ+kGkWA
	uDrOQ4f5ouTTS6GeFROl56QXj+YjJq8hWE7/oc2aqdJaS025LEZbZ/XABPgLOy7L
	2+11Hytam7xCz8o=
Received: from huanmateme$163.com ( [61.148.56.138] ) by
	ajax-webmail-wmsvr24 (Coremail) ; Mon, 17 Dec 2012 17:47:13 +0800 (CST)
X-Originating-IP: [61.148.56.138]
Date: Mon, 17 Dec 2012 17:47:13 +0800 (CST)
From: Biao  <huanmateme@163.com>
To: Biao <huanmateme@163.com>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20121210(21001.5125.5051) Copyright (c) 2002-2012 www.mailtech.cn
	163com
In-Reply-To: <23bf4f1e.c486.13ba81d3be7.Coremail.huanmateme@163.com>
References: <23bf4f1e.c486.13ba81d3be7.Coremail.huanmateme@163.com>
MIME-Version: 1.0
Message-ID: <47ef5fd6.d1c7.13ba8429247.Coremail.huanmateme@163.com>
X-CM-TRANSID: GMGowGAZwEEh6s5QwoINAA--.10775W
X-CM-SenderInfo: xkxd0z5dwhzvi6rwjhhfrp/xtbBiBCIgE9o6gRgSgACsx
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Cc: yocto@yoctoproject.org
Subject: Re: Where does the bitbake get the variable "TOPDIR"
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
X-List-Received-Date: Mon, 17 Dec 2012 09:47:46 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_197939_1959624403.1355737633351"

------=_Part_197939_1959624403.1355737633351
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit

Now i got it.
Bitbake handles the variable TOPDIR, LAYERDIR internally. 


Thanks anyway,
Biao



At 2012-12-17 17:06:26,Biao <huanmateme@163.com> wrote:

Greetings, 


I am a newbie tying to understand how bitbake works.
There is one line as BBPATH = "${TOPDIR}" in the mybuild/conf/bblayers.conf, i would like to know where the TOPDIR is defined? 


Thanks,
Biao

------=_Part_197939_1959624403.1355737633351
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial">Now i got it.<div>Bitbake handles the variable TOPDIR, LAYERDIR internally.&nbsp;</div><div><div><br></div><div>Thanks anyway,</div><div>Biao<br><br><div></div><div id="divNeteaseMailCard"></div><br>At 2012-12-17 17:06:26,Biao&nbsp;&lt;huanmateme@163.com&gt; wrote:<br> <blockquote id="isReplyContent" style="PADDING-LEFT: 1ex; MARGIN: 0px 0px 0px 0.8ex; BORDER-LEFT: #ccc 1px solid"><div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial">Greetings,&nbsp;<div><br></div><div>I am a newbie tying to understand how bitbake works.</div><div>There is one line as BBPATH = "${TOPDIR}" in the mybuild/conf/bblayers.conf, i would like to know where the TOPDIR is defined?&nbsp;</div><div><br></div><div>Thanks,</div><div>Biao</div></div></blockquote></div></div></div>

------=_Part_197939_1959624403.1355737633351--
