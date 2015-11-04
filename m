Return-Path: <scerveau@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33EDDE00AB9; Wed,  4 Nov 2015 02:02:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (scerveau[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2A3BE00AAA
	for <yocto@yoctoproject.org>; Wed,  4 Nov 2015 02:02:53 -0800 (PST)
Received: by wicll6 with SMTP id ll6so28508548wic.1
	for <yocto@yoctoproject.org>; Wed, 04 Nov 2015 02:02:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-type:content-transfer-encoding;
	bh=2oAPszpLsbq9K/whZR77P3PDbmhcBCAcoeUZdR7d/KI=;
	b=LxEOCdTi4rbdGIF6fulyUyKTt+3iGaPvYHLEvjALq1mm68AjVhbhc/2anWYkgV9GY8
	PGZuD9VcRxmFF5Bz3qyaME0oC/hGqt3jbmigXM17lShy4RiRPc+wr/wqvCGbjc1iQJ/W
	mgfNyo1yAWxID/MqMKrymg+5axV/NmdkZsfH+wghqyvMoiNhmgLlKpSMv0le2fB20NA1
	R0a4tdnQ2AMM8PH88u2ey2TWxMALaicHCnB6LIRVbZVZ82bPYOh8TYsmdJk122R2d6YF
	v5J6sr8WKawpytw075tgAraGGdMLlNxdG5b+Lg+QJP/Nkk1hmrzj5FsHERbzR7Cpa/AH
	xpfg==
X-Received: by 10.194.205.130 with SMTP id lg2mr814802wjc.9.1446631372454;
	Wed, 04 Nov 2015 02:02:52 -0800 (PST)
Received: from [172.24.63.46]
	(connected-labs-gw1.ter2.neodc.mpl.cust.as8218.eu. [94.103.137.126])
	by smtp.googlemail.com with ESMTPSA id
	at4sm744755wjc.9.2015.11.04.02.02.51 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Nov 2015 02:02:51 -0800 (PST)
To: yocto@yoctoproject.org
From: scerveau <scerveau@gmail.com>
Message-ID: <5639D7CA.7080404@gmail.com>
Date: Wed, 4 Nov 2015 11:02:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
Subject: [dizzy branch] License list fails with rpm with package shared between two arch
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
X-List-Received-Date: Wed, 04 Nov 2015 10:02:57 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear all,

I'm having a machine A and a machine B.

This two machines are built against the same image class and in the same 
build folder.

But on machine A there is a recipe LAMBDA which is not include in 
machine B.
The package LAMBDA is shared in the same folder 
cortexa9hf_vfp_neon....(Machine A and B use the same imx arch)

If i build machine A(everything is ok) and then machine B, during the 
last recipe execution image rootfs of machine B, a list of package is 
performed to build the license list with this missing package which 
finally fails saying that license folder does not exist. I guess the rpm 
package list  performed in poky/lib/oe/package_manager.py is not correct 
and should be done according to the image instead of the list of files 
in the folder cortexa9hf_vfp_neon.

I found a hack by putting my recipe LAMBDA dependent to my machine so 
the package is not in cortexa9hf_vfp_neon anymore.

If someone could help me on this issue, it would be very nice because i 
guess there is something wrong in yocto base tools.

BR.

Stephane







