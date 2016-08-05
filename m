Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 847F0E00DD1; Fri,  5 Aug 2016 00:16:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 559EAE00D00
	for <yocto@yoctoproject.org>; Fri,  5 Aug 2016 00:16:32 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id cf3so18797585pad.2
	for <yocto@yoctoproject.org>; Fri, 05 Aug 2016 00:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=qLEnjSwnPJFkVqAQGPeJofRyoUyvDCBj4h9xBxWuuWs=;
	b=ZIsVrUh1u1MqXYOsxCWnls4+VlfU4sCwvrTMI/68/ZhXEc+va7t6LuJ8POQUBfKtsS
	nDlEBl8oFdXMw6/nj0n8kAF+Ra9gH842iqEjdQK7naIPqSMZ8hE102rRN/a+2d/ZneIk
	gOIsHGH+pcJ9Hf54EEbobg9Dl+TTlzfuspIbb1vS0w0zCAEKURf7SYTAe0i6/LpR1NR5
	AncI9k5y1Rb8BAhNHCaTmKuyexut6RS794p2SX4pF1fmNYx/fPrkWiOX0daQeoKutk0E
	1IdYcMpJEsCXgSJglqId54j4SGmApL5L9GUUS+9mp0oXntgEyaBOOtEZdO9hrnxB+o2z
	fuhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding;
	bh=qLEnjSwnPJFkVqAQGPeJofRyoUyvDCBj4h9xBxWuuWs=;
	b=m1nYPh2+Edby0XUxwm1aPZy1teHk5FAqq6TAu4KdONp3EWzXpeRHXBnBMFTLzSaXoj
	iOxJGKCM7wumIUMAy0SYTwsNV3ArzHOTI/a1WwBWzCMElOXGWMi1c5djQ6wwyIPsVS1u
	wFMd/5tKkdLNog9J9Nk7VvwpiRJF2TD/LaoPTi/dxIpaZcVx8UOWmOA5axGqKixLBign
	lByqyUJCJmf79GuwPpbEvAkLLpnwB5j3nY5APMiDsSarnaxF9TnMAiD9j6+B7Y/aawjW
	4VpuYg6LoW+CncmMF5v0fgBhfzowbHYOzx01NdIlrAyd885KiQFpSq8jqDJ35GaG5Qcd
	82Vg==
X-Gm-Message-State: AEkooutekNQUcSfMAK4LBcC/Xmi8FiqwuSco7zdEJX2GYl/WdndHVDghXNhWVZlroqw5TQ==
X-Received: by 10.66.165.67 with SMTP id yw3mr134062795pab.8.1470381391849;
	Fri, 05 Aug 2016 00:16:31 -0700 (PDT)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:4ce8:4a2:83d6:3a55])
	by smtp.gmail.com with ESMTPSA id
	yp10sm25253185pab.25.2016.08.05.00.16.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Aug 2016 00:16:30 -0700 (PDT)
To: S.Jaritz@esa-grimma.de, Yocto Project <yocto@yoctoproject.org>
References: <OF371096A6.242D0E60-ONC1258006.0025F610-C1258006.0026E5CC@esa-grimma.de>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <47ea7f13-1abc-f969-c928-1da2e0075b36@gmail.com>
Date: Fri, 5 Aug 2016 00:16:49 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <OF371096A6.242D0E60-ONC1258006.0025F610-C1258006.0026E5CC@esa-grimma.de>
Subject: Re: How to set the sysroot toolchain to hard float
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
X-List-Received-Date: Fri, 05 Aug 2016 07:16:36 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit



On 8/5/16 12:04 AM, S.Jaritz@esa-grimma.de wrote:
> Hej
> 
> I am building for the Atmel Evalbaord SAMA5D3x a Yocto Image. It works
> fine, but sysroot toolchain is set to soft float instead of hard float.
> How can I set the sysroot toolchain to hard float?
> 
> My actual configuration:
> 1.) use meta-atmel layer
> 2.) in /build/conf/layer.conf -> MACHINE ??= "sama5d3xek"
> 
> @meta-atmel:
> /conf/machine/sama5d3xek.conf includes sama5d3.inc
> in this file:
> SOC_FAMILY = "sama5:sama5d3"
> DEFAULTTUNE = "cortexa5thf"
> 
> I am not understanding why for the sysroot the default tune is not used.
> Any ideas are welcome.

How did you find that out ? can you send your build configuration output
that bitbake prints when starting the build ?
secondly, TOOLCHAIN_OPTIONS is what decides this ABI
so when you use CC and CXX and friends, the right thing happens since it
will be appending TOOLCHAIN_OPTIONS to these vars. but if you use bare
cross compiler that will default to soft-float

> 
> 
> Regards!
> 
> Stefan Jaritz
> ------------------------------------------------------------
> ESA Elektroschaltanlagen Grimma GmbH
> Broner Ring 30
> 04668 Grimma
> Telefon: +49 3437 9211 176
> Telefax: +49 3437 9211 26
> E-Mail: s.jaritz@esa-grimma.de
> Internet: www.esa-grimma.de
> 
> 
> Geschäftsführer:
> Dipl.-Ing. Jörg Gaitzsch
> Jörg Reinker
> 
> Sitz der Gesellschaft: Grimma
> Ust.-ID: DE 141784437
> Amtsgericht: Leipzig, HRB 5159
> Steuernummer: 238/108/00755
> 
> 
> Diese E-Mail enthält vertrauliche und/oder rechtlich geschützte
> Informationen.
> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrtümlich
> erhalten
> haben, informieren Sie bitte sofort den Absender und löschen Sie diese
> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
> Mail
> ist nicht gestattet.
> 
> This e-mail may contain confidential and/or privileged information. If
> you are
> not the intended recipient (or have received this e-mail in error) please
> notify the sender immediately and destroy this e-mail. Any unauthorized
> copying, disclosure or distribution of the material in this e-mail is
> strictly
> forbidden.
> 
> 

