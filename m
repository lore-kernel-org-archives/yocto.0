Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18019E00D89; Sat, 14 May 2016 08:17:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.193 listed in list.dnswl.org]
Received: from mail-qk0-f193.google.com (mail-qk0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8004E00C2D
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 08:17:07 -0700 (PDT)
Received: by mail-qk0-f193.google.com with SMTP id n62so4430204qkc.2
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 08:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=j20YVmbSAjCfLGcEbJbI4KBR5Zl0JXGgHkqhOZ0zxOA=;
	b=qVnM/WX/ar5IfpoZ5w1phVftUjmpO+4VS33Qxj1RI0aGCZD0IF/T5KH5sCDcD/NTl6
	JdDxa7WXmMgE24umGxrgI5r4Pig/pHdZyq7J8MLoT4CYb6OvCIFDohSRIBV72tFDSztE
	UsBTLMS2cvfYYphOdQqDpxulLwlmgu2kNC+FOc4ZCVUfLTkcKbQYUQBgsaPXaou4xCH1
	BucHzPgug9n3M2LwkHdN+Ky++zTwJvvb0dWBv6NjIb7M4P9JHSZlj6uPPVm0XL//NCxK
	83oR55F1Aus1/OIBgUsJgb7L7poxvDAICbI4QwOKLohWSGamqFHUkYfRWCIP2utzd+F9
	RFcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=j20YVmbSAjCfLGcEbJbI4KBR5Zl0JXGgHkqhOZ0zxOA=;
	b=dnu0y5M0gxKZcozrhhdHknIoOhQ3/Xp5sGJ1XYX38j1BjQhWijeD7ujypSkrx4xFDv
	fy0iyQOTl6jYUeRnNZksq1BaOBRQjAL/C/79XwJoesSS2GIR1LzIB5rCf933Qc/6+CEH
	OBZBlb1TRH29SbKNLrjru2WXr7NWvXuILAzbYMv103jg+LQjVaczHsYV+kQHZLTrPktV
	xTEHiLVzWogv8+8NEflAKM6uPuEmxEmHq2ncXpF9Sr1zZBQQI6gbdtAsUaUAzrykfumT
	mn5BuaUdKlVqdC39vNHRKA+S2RUp26N5BvVbebDbTwSYldJ+yWrimOh8kFUjvITNYA5Q
	Z29g==
X-Gm-Message-State: AOPr4FUKaafE9e7tcqb8laOQz7FtnxCrshuGJQU67b1EElgu1T7lOufwDpi4EzOe4pyCXumtwPzcnBj15C05EA==
X-Received: by 10.55.207.214 with SMTP id v83mr4479058qkl.152.1463239026814;
	Sat, 14 May 2016 08:17:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Sat, 14 May 2016 08:16:37 -0700 (PDT)
In-Reply-To: <CAGMz-a4-tHC_gucKqGeDbP9x-sM_ZoPhUzzQrDbiF=uTdyk+jA@mail.gmail.com>
References: <CAGMz-a4-tHC_gucKqGeDbP9x-sM_ZoPhUzzQrDbiF=uTdyk+jA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 14 May 2016 08:16:37 -0700
Message-ID: <CAMKF1sri9=j-pW9gJfxyjKtP3OKFAv7ACeTX5nhS0eLXXs=FJg@mail.gmail.com>
To: Jonathan Poulin <jopoulin@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error in spec file (bad %description of dev package)
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
X-List-Received-Date: Sat, 14 May 2016 15:17:13 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, May 14, 2016 at 6:40 AM, Jonathan Poulin <jopoulin@gmail.com> wrote:
> Hello,
>
> I have a packaging problem with the new share lib recipe I try to make. When
> I bitbake the recipe I get the correct package split :
>
> # tree
> .
> |-- libtime64
> |   `-- usr
> |       `-- lib
> |           |-- libtime64.so.1 -> /home/ ...
> /libtime64/1.0.1-r0/image/usr/lib/libtime64.so.1.0.1
> |           `-- libtime64.so.1.0.1
> |-- libtime64-dbg
> |   `-- usr
> |       |-- lib
> |       `-- src
> |           `-- debug
> |               `-- libtime64
> |                   `-- 1.0.1-r0
> |                       `-- libtime64-1.0.1
> |                           |-- inc
> |                           |   `-- time64.h
> |                           `-- src
> |                               `-- time64.c
> |-- libtime64-dev
> |   `-- usr
> |       |-- include
> |       |   |-- axt_2038.h
> |       |   `-- time64.h
> |       `-- lib
> |           `-- libtime64.so -> /home/ ...
> /libtime64/1.0.1-r0/image/usr/lib/libtime64.so.1
> |-- libtime64-doc
> |-- libtime64-locale
> |-- libtime64-staticdev
> `-- libtime64.shlibdeps
>
>
> I include "libtime64" in IMAGE_INSTALL but only the main package and the dbg
> package are produced and the main package contain the content of the dev
> package.
> - libtime64-1-1.0.1-r0.cortexa9hf_vfp_neon.rpm
> - libtime64-dbg-1.0.1-r0.cortexa9hf_vfp_neon.rpm
>
> I found an error in the spec file for the dev package, the %package and
> %description are misnamed. Below an extract of the spec file:
>
> ******************************************
> %package -n libtime64-1
> Summary: Time64 library (support 2038 patch) - Development files
> Group: devel
> Requires: libtime64-1 = 1.0.1-r0
> Suggests: libc6-dev
> Provides: libtime64-dev
>
> %description -n libtime64-1
> Time64 library (support 2038 patch).  This package contains symbolic links,
> header files, and related items necessary for software development.
>
> ...
>
> %files -n libtime64-1
> %defattr(-,-,-,-)
> %dir "/usr"
> %dir "/usr/lib"
> %dir "/usr/include"
> "/usr/lib/libtime64.so"
> "/usr/include/axt_2038.h"
> "/usr/include/time64.h"
>
> %files -n libtime64-1
> %defattr(-,-,-,-)
> %dir "/usr"
> %dir "/usr/lib"
> "/usr/lib/libtime64.so.1.0.1"
> "/usr/lib/libtime64.so.1"
>
> ******************************************
>
> I use Yocto Dizzy on a ubuntu 14.04.
>
> Someone already see this problem ? Any idea to solve it ?

Can you share the recipe for this package ?

