Return-Path: <timo.j.pulkkinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3782E0080C; Fri,  6 Feb 2015 04:37:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (timo.j.pulkkinen[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 151FDE00757
	for <yocto@yoctoproject.org>; Fri,  6 Feb 2015 04:37:26 -0800 (PST)
Received: by mail-lb0-f177.google.com with SMTP id p9so17625072lbv.8
	for <yocto@yoctoproject.org>; Fri, 06 Feb 2015 04:37:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:mime-version:subject
	:message-id:date:to;
	bh=LEiBAFGuUMpfGXGZeUWZzKmNDIof3XcwyM7aLPh12fs=;
	b=S57HXKEsRRZXbCMvup8CIGtO9Kz/F2q/bEYvAUvSdCcjCKlyoNnprPOihnP0CYCu+A
	xwN5ubf1HLSO/X2IJpIfdxIclGQ97jhrlj+iwdGliKi/49LwPTTv6DEa0yU+p+0WSy0Q
	898MmFoIlkYEmrMOAKJlPklAl3xG4P8OB4UFRiULzSY+f6anYoqsGci0mqFVnDEPm0nc
	chex+JlCAB7tiwnv4OrZsFkXOoDY2SAp1II+5K1qz2pr6QH4U9CYRqfHb/c6h+9VRh1n
	nRLo8QloswO1pv38T3a4zc2cbtSzSWuEKGSnwyXvIzZ6ojt6Kkd83ur+zdwSfMh6X51v
	RMZQ==
X-Received: by 10.112.12.71 with SMTP id w7mr2346178lbb.99.1423226244520;
	Fri, 06 Feb 2015 04:37:24 -0800 (PST)
Received: from [10.10.0.209] (ip210-126.seclan.com. [81.19.126.210])
	by mx.google.com with ESMTPSA id f5sm403980laf.9.2015.02.06.04.37.22
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 06 Feb 2015 04:37:23 -0800 (PST)
From: Timo Pulkkinen <timo.j.pulkkinen@gmail.com>
X-Mao-Original-Outgoing-Id: 444919039.499564-0ccc5b10130919cd092519c3bebb91ca
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
Message-Id: <E23391EC-9A66-4657-8E7B-B14FC4A1A03D@gmail.com>
Date: Fri, 6 Feb 2015 14:37:19 +0200
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.2070.6)
Subject: [meta-selinux] Kernel bbappend missing for 3.17 ?
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
X-List-Received-Date: Fri, 06 Feb 2015 12:37:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hello,

it seems that there is no bbappend -file for kernel 3.17 which causes =
selinux not to be enabled in the kernel.=20
The repository contains only recipe/bbappend file for kernel 3.14 =
(linux-yocto_3.14.bbappend). Is this correct?=20

br,
Timo


