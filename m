Return-Path: <m.waqas.shafique@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B47BCE00949; Tue, 21 Apr 2015 23:34:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (m.waqas.shafique[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56869E003A8
	for <yocto@yoctoproject.org>; Tue, 21 Apr 2015 23:34:22 -0700 (PDT)
Received: by qkgx75 with SMTP id x75so215587987qkg.1
	for <yocto@yoctoproject.org>; Tue, 21 Apr 2015 23:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=/n35x0HD3/mqOTbGNmypxdd6bUPpy6b13LEbYOzRG4U=;
	b=pLJknwu2P9aQ5B+YLFX0ZHHm64VSLzCquH76pbm4Uc4vhFuKUyp176OG5jAgL1/STc
	tc/2WVfZHwxmk9CzsFGcmID2jFPkVCRdgC2JA1iWl0y+ZYvtDRf974ShmLyQ4IaWrymS
	oNNjAZ2SUn75liDmjTOaLEMxX05W+Gzr/lqPKvfhrS+e5fHcgQYUyMLL8aov241yU503
	BMeEnEWQBfbqCDO5osqS03t67+hCif5c7TAf+Mr7t5GPsnii6iZNRL0RiRfmHAaSPWD4
	YygXo37Rvu+CNUF3m+wsHF/LYPr5Cjn/zhql8r7szhjIggxA29T5IYK2uftiN0rg9SII
	HBdA==
MIME-Version: 1.0
X-Received: by 10.140.233.140 with SMTP id e134mr28968520qhc.63.1429684461446; 
	Tue, 21 Apr 2015 23:34:21 -0700 (PDT)
Received: by 10.229.161.16 with HTTP; Tue, 21 Apr 2015 23:34:21 -0700 (PDT)
Date: Wed, 22 Apr 2015 11:34:21 +0500
Message-ID: <CAJT9KcipnZ-caZCzUVEwFDiC3eQWWXDSgbAK3RQ0w9zAwRy_mQ@mail.gmail.com>
From: waqas shafique <m.waqas.shafique@gmail.com>
To: yocto@yoctoproject.org
Subject: How to add a library header file in yocto project
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
X-List-Received-Date: Wed, 22 Apr 2015 06:34:26 -0000
Content-Type: multipart/alternative; boundary=001a1135d2ae772d8a05144a5a6e

--001a1135d2ae772d8a05144a5a6e
Content-Type: text/plain; charset=UTF-8

I'm trying to write a code using BlueZ API and Yocto , one C function I'm
using has deceleration defined in hci_lib.h which is located at

/poky/build/tmp/work/armv5te-poky-linux-gnueabi/bluez4/4.101-r5/bluez-4.101/lib

Can you tell me how can I include this header file in my Yocto project
recipe ?

My build process is not looking at above location and gives me undefined
reference error.

Regards
Waqas

--001a1135d2ae772d8a05144a5a6e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m trying to write a code using BlueZ API and Yo=
cto , one C function I&#39;m using has deceleration defined in hci_lib.h wh=
ich is located at</div><div><br></div><div>/poky/build/tmp/work/armv5te-pok=
y-linux-gnueabi/bluez4/4.101-r5/bluez-4.101/lib</div><div><br></div><div>Ca=
n you tell me how can I include this header file in my Yocto project recipe=
 ?=C2=A0</div><div><br></div><div>My build process is not looking at above =
location and gives me undefined reference error.=C2=A0</div><div><br></div>=
<div>Regards</div><div>Waqas</div></div>

--001a1135d2ae772d8a05144a5a6e--
