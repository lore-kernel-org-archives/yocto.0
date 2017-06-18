Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 282ADE0076C; Sun, 18 Jun 2017 04:49:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
Received: from mail-pg0-f54.google.com (mail-pg0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BECE3E0076C
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 04:49:01 -0700 (PDT)
Received: by mail-pg0-f54.google.com with SMTP id 132so3759848pgb.2
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 04:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=r74JNnRcULFFhmYuuwWC7ten6ffvg7/jzpFg3MTbKuk=;
	b=O4KuusPe65NaONK+/K/ndRkqgHJlqnuNZ0vPTjbC3ZwgJMFGGnw07G5Mr6BuqepjkU
	pnpul41Re3/w4XS/ENH2DxHj87uN0Ot4AwzHGyt3FbpfuX0tHjDxhd8imJvgUMsglEjj
	l6h26Oq3KT2TgOf6GR+Vac2cIG81FtFZKTqygF5PASZX+xw9SdQRew/IMc5hi5PEVgiN
	sJi6P9p/4Rd4iy5pLhFsbC3RGxuJmoKCU33pMjNX953EAsgaints81XJaUCIlxSOyv0w
	L5cQ92DW3ZrmVcOVeBxK/+wlSeQjSGqA/FhMsIoMnokxakTdaSwQqtDlqv1hieH7AGX0
	BiTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=r74JNnRcULFFhmYuuwWC7ten6ffvg7/jzpFg3MTbKuk=;
	b=RoL79BGcDrd/pmvcrye4GfNkJsYfmM1VlSr1croQWsJd/adq/al8mb3QL8MuJuMmw9
	QLWRxYeYFuXtgtQqMWxTQUEuN/eAnZrfxsUBf8Z6zloxZhkH3D914YQomRWvQlvU89M3
	CncPxKETAY7hEv9nfLfBvsA8FFbey8GbIzPy/cKauXYPLpbq5FpzK1NW3o2/YY67AbMQ
	F6UXMgdq3d/REGys6pHDLNjMSbvsQrQx4VOsW9jc5UgiKWV5ESCAx8PymLFLIVia+FrY
	ppHFC2UK+DF/i9WXILlpJmZeHFm7V6Qk/7TZZtyn5tm8Uuz8ola1u2xAfLIRlUtHMGsL
	adug==
X-Gm-Message-State: AKS2vOyCl4VNPy/++UD1zaVCoQqEL+DqPaboouUybV4Q1idlQ6a40LGz
	RZBRSP+mql5PACsH
X-Received: by 10.84.208.102 with SMTP id f35mr23276360plh.53.1497786540740;
	Sun, 18 Jun 2017 04:49:00 -0700 (PDT)
Received: from [10.0.0.2] (CPE-124-178-9-113.lns1.pie.bigpond.net.au.
	[124.178.9.113]) by smtp.gmail.com with ESMTPSA id
	p23sm15717875pfi.52.2017.06.18.04.48.58 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 18 Jun 2017 04:48:59 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <ed57e154-cbd7-176a-02fb-496c6f730d2a@gmail.com>
	<CAMKF1sp9ESKxDiarsNTu89BXLpk8nBNZXefwYs-6dYHpVnBMFg@mail.gmail.com>
	<1bfe90cd-590a-47e6-95d1-3ad77ec3a46b@gmail.com>
	<CAAfyv348RhuesS-suUGnVgquxVX0Gv2625Qd1Lw5NJH6FMXMQQ@mail.gmail.com>
	<c0c0b79d-12c0-27b3-1ef9-f3798c95e02e@gmail.com>
	<CA+chaQcwEW7=Wmrk0LYN0ubfvwxTNZQnCDh=wwWRWmSaXgWJdg@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <6bd2859e-81c5-3089-f8fe-44bd2c24bf96@gmail.com>
Date: Sun, 18 Jun 2017 19:48:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CA+chaQcwEW7=Wmrk0LYN0ubfvwxTNZQnCDh=wwWRWmSaXgWJdg@mail.gmail.com>
Subject: dd image to sdcard ?
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
X-List-Received-Date: Sun, 18 Jun 2017 11:49:04 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi Everyone,

Which one of these files can be downloaded by "dd" directly to SDcard ? 
or how to write it to sdcard ?

lrwxrwxrwx 1 bianchi77 bianchi77   61 Jun 18 19:34 
core-image-minimal-xfce-beaglebone.ext3 -> 
core-image-minimal-xfce-beaglebone-20170618070558.rootfs.ext3
lrwxrwxrwx 1 bianchi77 bianchi77   65 Jun 18 19:34 
core-image-minimal-xfce-beaglebone.manifest -> 
core-image-minimal-xfce-beaglebone-20170618070558.rootfs.manifest
lrwxrwxrwx 1 bianchi77 bianchi77   64 Jun 18 19:34 
core-image-minimal-xfce-beaglebone.tar.bz2 -> 
core-image-minimal-xfce-beaglebone-20170618070558.rootfs.tar.bz2

lrwxrwxrwx 1 bianchi77 bianchi77   25 Jun 18 18:17 MLO -> 
MLO-beaglebone-2017.01-r0
lrwxrwxrwx 1 bianchi77 bianchi77   25 Jun 18 18:17 MLO-beaglebone -> 
MLO-beaglebone-2017.01-r0
-rw-r--r-- 1 bianchi77 bianchi77  70K Jun 18 18:17 MLO-beaglebone-2017.01-r0
-rw-rw-r-- 2 bianchi77 bianchi77  48M Jun 18 19:21 
modules--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-beaglebone-20170618070558.tgz
lrwxrwxrwx 2 bianchi77 bianchi77   75 Jun 18 19:21 
modules-beaglebone.tgz -> 
modules--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-beaglebone-20170618070558.tgz
-rw-r--r-- 1 bianchi77 bianchi77 360K Jun 18 18:17 
u-boot-beaglebone-2017.01-r0.img
lrwxrwxrwx 1 bianchi77 bianchi77   32 Jun 18 18:17 u-boot-beaglebone.img 
-> u-boot-beaglebone-2017.01-r0.img
lrwxrwxrwx 1 bianchi77 bianchi77   32 Jun 18 18:17 u-boot.img -> 
u-boot-beaglebone-2017.01-r0.img
lrwxrwxrwx 2 bianchi77 bianchi77   74 Jun 18 19:21 zImage -> 
zImage--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-beaglebone-20170618070558.bin
-rw-r--r-- 2 bianchi77 bianchi77  32K Jun 18 19:21 
zImage--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-am335x-bone-20170618070558.dtb
-rw-r--r-- 2 bianchi77 bianchi77  34K Jun 18 19:21 
zImage--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-am335x-boneblack-20170618070558.dtb
-rw-r--r-- 2 bianchi77 bianchi77 5.4M Jun 18 19:21 
zImage--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-beaglebone-20170618070558.bin
lrwxrwxrwx 2 bianchi77 bianchi77   80 Jun 18 19:21 
zImage-am335x-boneblack.dtb -> 
zImage--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-am335x-boneblack-20170618070558.dtb
lrwxrwxrwx 2 bianchi77 bianchi77   75 Jun 18 19:21 
zImage-am335x-bone.dtb -> 
zImage--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-am335x-bone-20170618070558.dtb
lrwxrwxrwx 2 bianchi77 bianchi77   74 Jun 18 19:21 zImage-beaglebone.bin 
-> 
zImage--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-beaglebone-20170618070558.bin



  thanks

