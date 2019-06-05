Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 997D3E00D64; Wed,  5 Jun 2019 03:47:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
	[209.85.208.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3109E00D51
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2019 03:46:59 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id k18so953570ljc.11
	for <yocto@yoctoproject.org>; Wed, 05 Jun 2019 03:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=F+3QixzDnc2tBVo03DOxEZY1Lh/WPWVFkC9ftLUurpQ=;
	b=PHWWY8FuH9zEN3caQl/ES5OjarwgBbZSXVTOJPF6Dk5ZkyEzOsQ6MsLaMEtUoUcIA5
	S9Wn3INxMnlrzB2xleEBCSgOQt6QIw7CIp/yrBe28TigZhE8LKUiuYe4zxALIGbYPg4f
	gaotgKuL8YBaA2t1UGLPW31aWmMs1j2MWM3uaJa+xKb7Isd+WV8TiN0lufoQTyer7+6E
	4A2x1xo5mhly9DTCOa9nAKHV/poFJPeTC0phCJNbO8k8OqCHgwA3EpOtRZ9ZZDrwnVWO
	YXCf/AZCeGsqxMQHjKiAMKrB1fTdE09thQaB/LqRTLw4YDO3F8Ir1S7W24EWVAR+LJPd
	XuQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=F+3QixzDnc2tBVo03DOxEZY1Lh/WPWVFkC9ftLUurpQ=;
	b=R7iHLAL9Boan2FJ35maqX0ogw8SNLn/49jpfZ0I5QoKvok3M61LVz2gzYDIge3INIZ
	Dn9T6LKawjq4kFS/aWccPNRbUMK9oACvYlnfh9OVKXzR3rWT77GpMLWNo4T2GKdaWLPf
	UHmBi/uHBqICPK8CaSbmQSqnhWjXTUhc4gvbXCMtPbjaHo2Q4F0fOwiMDFoyeC0V2l0h
	ENgW8V/BrZ+TG0FT9cLQtEd2rZWLayr5HHaDi3VEgsjWejkTcoGU74aPC4xRrKta9EXe
	hqvibR+kGy+llsgN3I80kZinjsyNi4Rffn1CLNY5WLX1WK1Ju8bkQYmM1MXE/c+rPFS8
	lR8w==
X-Gm-Message-State: APjAAAWHkTtF7VIB7wo0eTSjGTrl+jv/iMf+5o3CXHwcD6Y1yoqi2F0d
	UrVIrgIkqhjb3e6Dp5BQEgowqmRjFw5K6xMMdXj9yWH3zwc=
X-Google-Smtp-Source: APXvYqyd9+6Pgwd9bPRkAP80saUT80zNEwWcaqOcsoljZCWRVcz+q+qYVo99MrTIkchN3stS2n0rQDYyMt/JbspvkkI=
X-Received: by 2002:a2e:9654:: with SMTP id z20mr8125424ljh.52.1559731618249; 
	Wed, 05 Jun 2019 03:46:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8=9_SmqLtsUnb8fWan+3Z2SF0gQvovts=e+GCFg88PaRg@mail.gmail.com>
In-Reply-To: <CAEhQi8=9_SmqLtsUnb8fWan+3Z2SF0gQvovts=e+GCFg88PaRg@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 5 Jun 2019 12:46:46 +0200
Message-ID: <CAEhQi8ne31nyNVjp6rD+t_t86gyWH6cuy5-mU6EFzjkicyf75Q@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [multilib] No Manifest file generated from: lib32-alsa-lib
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
X-List-Received-Date: Wed, 05 Jun 2019 10:47:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

When checking the build for lib32-alsa-lib there is no rpm package created

deploy-rpms/armv7ahf_neon_mx8mm# ls
lib32-alsa-conf-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
lib32-alsa-server-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
lib32-libasound2-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
lib32-libasound-dbg-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
lib32-libasound-dev-1.1.5-r0.armv7ahf_neon_mx8mm.rpm

it matches the alsa-lib build also when checking the list of packages by ru=
nning

oe-pkgdata-util list-pkg-files -p lib32-alsa-lib and oe-pkgdata-util
list-pkg-files -p alsa-lib

there is a package lib32-alsa-lib and alsa-lib so why is there no rpm
for this package? I would have thought that that should be the case?

/M=C3=A5ns

Den ons 5 juni 2019 kl 11:06 skrev M=C3=A5ns Zigher <mans.zigher@gmail.com>=
:
>
> Hi,
>
> I am trying to build an SDK where I have multilib enabled in my
> local.conf but I am encountering this error message
>
> WARNING: strix-sdk-1.0-r0 do_populate_sdk: Manifest
> /workdir/builds/imx8mm/tmp/sstate-control/manifest-x86_64_x86_64-nativesd=
k-lib32-alsa-lib.package_write_rpm
> not found in mimx8mm aarch64-mx8mm armv7at2hf-neon armv7ahf-neon
> armv7at2hf-vfp armv7ahf-vfp armv6thf-vfp armv6hf-vfp armv5tehf-vfp
> armv5ehf-vfp armv5thf-vfp armv5hf-vfp allarch x86_64_x86_64-nativesdk
> (variant 'lib32')?
> ERROR: strix-sdk-1.0-r0 do_populate_sdk: No manifest generated from:
> lib32-alsa-lib in
> virtual:multilib:lib32:/workdir/layers/poky/meta/recipes-multimedia/alsa/=
alsa-lib_1.1.5.bb
> ERROR: strix-sdk-1.0-r0 do_populate_sdk: Function failed: do_populate_sdk
>
> I am currently using poky sumo could not see that anything have
> changed in alsa-lib except bumping it to 1.1.6 in thud. I have tried
> go through the code in both
>
> ./poky/meta/lib/oe/package_manager.py
>
> and
>
> ./poky/meta/lib/oe/sstatesig.py
>
> to see if I could understand why there is no manifest file created for
> lib32-alsa-lib but without any luck. What task should I run to create
> the Manifest file? Any other pointers to where I should look to
> understand this issue is appreciated.
>
> BR
> M=C3=A5ns Zigher

