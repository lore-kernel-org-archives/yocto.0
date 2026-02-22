Return-Path: <francesco@valla.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F72BC636C1
	for <webhook@archiver.kernel.org>; Sun, 22 Feb 2026 22:34:11 +0000 (UTC)
Received: from delivery.antispam.mailspamprotection.com (delivery.antispam.mailspamprotection.com [185.56.87.11])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.23546.1771799645903098654
 for <yocto@lists.yoctoproject.org>;
 Sun, 22 Feb 2026 14:34:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@antispam.mailspamprotection.com header.s=default header.b=DMRMKxJm;
 dkim=pass header.i=@valla.it header.s=default header.b=DrgPMoXE;
 spf=pass (domain: valla.it, ip: 185.56.87.11, mailfrom: francesco@valla.it)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=outgoing.instance-europe-west4-3zsl.prod.antispam.mailspamprotection.com; s=arckey; t=1771799646;
	 b=HJBTd5NQWlX/JJpuD6OPF9NgFvDzMoG4sxQ1Nv4DbEYvYka1In2TIJoTclg9egmnNG1dv5qJOu
	  WYinowW+sY1+ozeIxt2ab9UqA+DEq9P6p7iKZ22GEFSW4JOAh3xJ5ZajLRBAmF3+j0a+y4IVYt
	  uVWp4hvyf8ZxOB9zDZA9gahky3wrzFw3L6xraYzz8o+ntL18tu0/u9SYR3T2sFmaTYbQ/dwxCs
	  ECV0S6hc8h1qz3YSXZEue5EpfSiqxgsVLpK/BQon3wXdrVa94FCX1AmjpMDXcVGkwmrtmljCMi
	  69G+/It92CVp+YYhSkIAwfZiw+75rJ+ARkhEie6aC4/qUg==;
ARC-Authentication-Results: i=1; outgoing.instance-europe-west4-3zsl.prod.antispam.mailspamprotection.com; smtp.remote-ip=35.214.173.214;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed; d=outgoing.instance-europe-west4-3zsl.prod.antispam.mailspamprotection.com; s=arckey; t=1771799646;
	bh=kz6HBWbONTshoKL1j1AMzjm+U9od5CbvKZhal2d9MQk=;
	h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:References:
	  Message-ID:Subject:Cc:To:From:Date:DKIM-Signature:DKIM-Signature;
	b=CgyUQXVJttvwl0U52zyePKEqJHc9Njni0Jp7OMLOfTU8OQYIEv9AWqS1rjQodE8rqyZB5ZDFo4
	  rZQLaz6TufLzjFN+YzbvOoTOtHr9JmaWgqZFTbn2+48vMHRbn+SnF/uuZD+LH2ae2WL280opxn
	  MRst+sJ13R/c+sD73u43W6HbeDyyHsX+WX9MRsD5hA9YAZEICaWbaVRJ8k7LPaHWrCtPx9ujvj
	  npoOhahh0q81mI7kdEfGdMof4T/OZYy05Sa4Hgz3BeCgouyIkfnM8JVmV+EViGtDbzFHJg4f5R
	  qR54PxPLthgSGtTf8iOHoK+8pC4gGfXNcfvq+cOoAvBpIA==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=antispam.mailspamprotection.com; s=default; h=CFBL-Feedback-ID:CFBL-Address
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:Cc:To
	:From:Date:Reply-To:List-Unsubscribe;
	bh=81XRvi8EbDOb9BY7YgT5I61FU4y1fO9M0bjmqOgsl1k=; b=DMRMKxJmvGoLqvnpr+omB6b7jQ
	QP4q+IPZvQALwzZ1/WxQmXHkDFexZR6EPN4yAmcfiE4BohdULdFeJTWvYEwZCl7cqFDRLoilLqhdU
	anndbj2xloAQQtJ1IK39WcOqu8efY4TIpYTmP1AhixqUuy/9mxFKNnXKe1YjVEHcdYUI=;
Received: from 214.173.214.35.bc.googleusercontent.com ([35.214.173.214] helo=esm19.siteground.biz)
	by instance-europe-west4-3zsl.prod.antispam.mailspamprotection.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.1)
	(envelope-from <francesco@valla.it>)
	id 1vuI1Y-0000000696f-3hpy
	for yocto@lists.yoctoproject.org;
	Sun, 22 Feb 2026 22:34:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=valla.it;
	s=default; h=Subject:Cc:To:From:Date:list-help:list-unsubscribe:
	list-subscribe:list-post:list-owner:list-archive;
	bh=81XRvi8EbDOb9BY7YgT5I61FU4y1fO9M0bjmqOgsl1k=; b=DrgPMoXE5g0mvsbgDd5DwePCN0
	84mjTzZSr7tSlTv0mCtEQwICC66zb5HHkFz3IRrQtaowSu+LGX3QglFJuSBilGzeZ/krbIFsFLsZq
	E2tRPXpRQ2ifJ2mxobTU6jctt9D0QYL0V7pD/DV8ARO0jqX5xOfDFEJCCElZf1kOJz9s=;
Received: from [82.57.88.19] (port=62004 helo=bywater)
	by esm19.siteground.biz with essmtpa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <francesco@valla.it>)
	id 1vuI1T-00000000Bvz-0u75;
	Sun, 22 Feb 2026 22:33:55 +0000
Date: Sun, 22 Feb 2026 23:33:53 +0100
From: Francesco Valla <francesco@valla.it>
To: yocto@lists.yoctoproject.org, michael.opdenacker@rootcommit.com
Cc: Vyacheslav Yurkov <uvv.mail@gmail.com>
Subject: Re: [yocto] FIT image verification not working on imx8mm
Message-ID: <aZtpkyLqvFf2SPZr@bywater>
References: <caa7c5c6-5fd5-4a73-8c74-b60fb9012a7c@rootcommit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <caa7c5c6-5fd5-4a73-8c74-b60fb9012a7c@rootcommit.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - esm19.siteground.biz
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - valla.it
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-SGantispam-id: 6455e34f15ca52b127e5634371f2fa3f
AntiSpam-DLS: false
AntiSpam-DLSP: 
AntiSpam-DLSRS: 
AntiSpam-TS: 1.0
CFBL-Address: feedback@antispam.mailspamprotection.com; report=arf
CFBL-Feedback-ID: 1vuI1Y-0000000696f-3hpy-feedback@antispam.mailspamprotection.com
Authentication-Results: outgoing.instance-europe-west4-3zsl.prod.antispam.mailspamprotection.com;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 22 Feb 2026 22:34:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66268

Hi Michael,

On Sat, Feb 21, 2026 at 10:39:15AM +0000, Michael Opdenacker via lists.yoctoproject.org wrote:
> Greetings,
> 
> For a secure boot project on Toradex Verdin with imx8mm, I'm trying to
> enable FIT image signature verification in U-Boot.
> 
> Slava's "Generation of FIT images" presentation at the recent OE workshop
> has been very useful:
> https://pretalx.com/media/openembedded-workshop-2026-2025/submissions/R8KJQZ/resources/_LJtpFTR.pdf
> 
> I generated a temporary local RSA 2048 key, and I'm using it to sign a FIT
> image.
> 
> I also set the UBOOT_SIGN_KEYDIR, UBOOT_SIGN_KEYNAME and UBOOT_SIGN_ENABLE
> variables to add the public key to U-Boot's DTB.
> 
> The signature indeed appears in the generated u-boot.dtb file, in a
> "/signature" node:
> 
> � � signature {
> 
> � � � � key-imx8mmsb {
> � � � � � � required = "conf";
> � � � � � � algo = "sha256,rsa2048";
> � � � � � � rsa,r-squared = <0x56bb2a2b 0xc6b322cc 0x2f828666 0x75c8bc46
> 0xd13093af 0xc2244c35 0xb6420649 0x478d7ed3 0xeb7a0399 0x3b1d49a9 0xc106169d
> 0x7328dbb4 0x2140c49b 0x111732a1 0xb3286fed 0x53937163 0x8c28f85c 0xe272b1ee
> 0x5e009a53 0x13883205 0xcda0fbc7 0xd7ed4e75 0x9ed065c1 0xb6ca1e69 0xf2c9dce2
> 0xcf8ebf7b 0x59a72b94 0x501d2751 0x437e3355 0xcba6b07a 0x9b13feea 0x1032d715
> 0xab3cdd83 0x319b6bb0 0xfc31ff93 0xb7fabbb6 0x79d5d0fa 0x9c0f76e0 0x3528c22e
> 0xbbec6d6c 0x7981362f 0x528848a9 0xb57aa235 0x462ed577 0x4ccc8b9d 0xeb4ce969
> 0x5fb085b3 0x3fced511 0xfd98edfe 0xf3a4ca51 0x1bb74370 0x3a11c748 0xbbd5be95
> 0x946f8b3f 0x3d8c98b6 0x3b0e00a8 0xeca87fc6 0x7331981e 0xaaee80df 0x476816f2
> 0x509aaab1 0xa5f50e1a 0x474d0de8 0xc551ac97>;
> � � � � � � rsa,modulus = <0xb3ade247 0x4b8d0aef 0x4581e5e9 0x6084f135
> 0x778847c7 0xaf23976f 0x81b6eb84 0xa2406db4 0x2b89e624 0x81f913c9 0xd6ebef10
> 0x3e30adee 0xbca06cbe 0x5693b23b 0xc6b211f1 0xfea7a90d 0x2767ca7c 0xaa8b2ddb
> 0xcf8a63ea 0x66fe8c59 0x43b34a2f 0x720009d8 0xa2a61281 0x2f7fe049 0xfc3d10e5
> 0x1b52409 0xdeb52a16 0xa4e5fa78 0x7116d181 0xc0c2f39e 0x24a626b4 0x7e59438b
> 0x6680b1f4 0xc4b1184c 0x8bb65f34 0x92038fd7 0x3901c347 0xc2095158 0x3159031a
> 0xaa4bb76c 0xc53f2009 0x9f4941f8 0x736ca84a 0xd83bd011 0x3685d02c 0x6f4cb5e7
> 0xd07e8566 0x173819f 0x8f41366d 0x8b0f82fd 0x54c01fc0 0xc216cbd5 0x2fc4a666
> 0x426ff669 0x880428ca 0x7c7615c 0xcdc97895 0x8c936a3c 0xd6d7e82e 0x5bf63d9d
> 0x9fcd83a2 0xb131015f 0xc530c031 0x8446f707>;
> � � � � � � rsa,exponent = <0x00 0x10001>;
> � � � � � � rsa,n0-inverse = <0x93653949>;
> � � � � � � rsa,num-bits = <0x800>;
> � � � � � � key-name-hint = "imx8mmsb";
> � � � � };
> � � };
> 
> I also compiled U-Boot with
> |CONFIG_FIT_SIGNATURE=y
> |
> However, when U-Boot loads the FIT image, it only checks the integrity of
> the sha256 hash of the FIT image parts:
> � �Verifying Hash Integrity ... sha256+ OK
> 
> No signature checking happens. I can also load an unsigned FIT image which
> is accepted too. Indeed, when I open the generated "imx-boot" file (or
> "flash.bin", linking to the same file) that is used to boot the board, I can
> see a DTB for my board, but it doesn't contain any "signature" node, unlike
> in "u-boot.dtb".
> 
> What could I be missing? My layer, along with a kas file to generate the
> image, is available on https://gitlab.com/rootcommit/meta-imx8mm-secureboot.

(From what I can infer from the layer, since there are no explicit
dependencies declared, you are using meta-toradex-nxp, which in turn is
depending on meta-freescale. The idea/suggestion that follows starts
from this assumption, if your setup is different I may be totally
wrong.)

What is the value of the UBOOT_PROVIDES_BOOT_CONTAINER variable?

If it is 1 (as it might be, as meta-freescale sets it to 1 for imx8m*
SoCs if the bootloader is not u-boot-imx [0]), the imx-boot container
is generated by U-Boot using binman, which however iis / should not be
able to use the u-boot.dtb binary with the signature. The injection of
the signature in fact happens on the u-boot.dtb binary only after this
has been deployed [1], which in this case would be *after* the imx-boot
blob has been generated. 

> I'm using the Toradex Easy Installer (Tezi) to flash the image on eMMC. My
> layer is relies on the "master" branches of the required layers, but I have
> the same problem on Scarthgap too.
> 
> Any suggestions are appreciated.
> Thanks in advance
> Michael.
> 
> -- 
> Root Commit
> Embedded Linux Training and Consulting
> https://rootcommit.com

Regards,
Francesco


[0] https://github.com/Freescale/meta-freescale/blob/master/conf/machine/include/imx-base.inc#L108
[1] https://git.openembedded.org/openembedded-core/tree/meta/classes-recipe/uboot-sign.bbclass#n158


