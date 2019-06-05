Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C6DAE00D6B; Wed,  5 Jun 2019 04:00:31 -0700 (PDT)
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
	*      [209.85.208.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29AC8E00D64
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2019 04:00:30 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id a21so7500872ljh.7
	for <yocto@yoctoproject.org>; Wed, 05 Jun 2019 04:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=66RzZvKKBnYxaGXi9ZcpmybMojcjT/QZslEKBpVebnI=;
	b=pbETHpbis+RJAW8hn+6UhYc5qwvAY5J8Xd3+9L+AJgDrh9RF6J3Rf/CIaF5XvAZhzp
	7ikGfSsvDALnLiB4efjFHwjQR6xVvx6YUBkAn+q34CNJ3DTOa/j/8c2C5ULQ5Ao7oYdC
	1PKrl1fqwVLSwFvUFntu3CJl4l/pIckg6l3hlZd4zYSf51kKhhD7LDpWPmI1hJMR8FyY
	6LZHGs2R7rU6T3Qrlv6yfgrYK6MkLCzFqDeFY7+AvW8xvPcr2K0y3zo6s3DFb6BhUXGs
	4PIB8Y0QkFH6iTjdxAGu/+do1cBh40NDqjWOMRVLY4N6r0PCqI+iYvnZ/Uq6nAz94tlR
	dc+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=66RzZvKKBnYxaGXi9ZcpmybMojcjT/QZslEKBpVebnI=;
	b=aUf4ePTcrDd9H+p8ZjdSWYilERl5w8j8zWBa6zijC+7ox6uWcxQOTDJCHNeP7ItINK
	eaIF3orhdPbtxLeBFwEH+SOf06K2CD/u2wqU1Le1UPBvASl51Nb9eLLswtl/8Esc2vk1
	BvVuBbFc1ZpG2mP0Xc3xQy96Z3oP19MnDMryWBQniOgGxxJyatIJ1jt/XqgMIVdIXjju
	czXi5zvhLG15YWGxxLzpPX60NKE/xj+vWYltUiF3ZfFOStPGta+IZwDQxysOSc0hBPo7
	iBw+PIGIpXLOhVuN38Dd9AUiVVdbzRQ3dLJ8UlqXfUx5ZOa9AhyFkAxYDw9mGjOXB738
	JG4Q==
X-Gm-Message-State: APjAAAXfLVV8GRL2iUHfMT2lKOsRsTJZ4VoySPepTEwHccbCB3wHK00i
	C0B3MqUet3ENNhLS0TtzQunMJFFEOR+QuY0/9OfK1zaNXvY=
X-Google-Smtp-Source: APXvYqz+l0xgbkctm0JiVfSHEk8G7KQQCFj+uHHl0+4cDcjJa9kuHaB/C7TH+isB415121flmKVW7pnFYJWgMxoYBCY=
X-Received: by 2002:a2e:9d43:: with SMTP id y3mr19485811ljj.154.1559732428703; 
	Wed, 05 Jun 2019 04:00:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8=9_SmqLtsUnb8fWan+3Z2SF0gQvovts=e+GCFg88PaRg@mail.gmail.com>
	<CAEhQi8ne31nyNVjp6rD+t_t86gyWH6cuy5-mU6EFzjkicyf75Q@mail.gmail.com>
In-Reply-To: <CAEhQi8ne31nyNVjp6rD+t_t86gyWH6cuy5-mU6EFzjkicyf75Q@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 5 Jun 2019 13:00:17 +0200
Message-ID: <CAEhQi8=Z4c-jqGoAW__3mqyrkhG2HZBkP4Nt+zOGrUzTJB3oig@mail.gmail.com>
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
X-List-Received-Date: Wed, 05 Jun 2019 11:00:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think this looks wrong
"manifest-x86_64_x86_64-nativesdk-lib32-alsa-lib.package_write_rpm" I
have not intentionally added lib32-alsa-lib to the nativesdk part so I
am not sure why it expects to find that?

/M=C3=A5ns

Den ons 5 juni 2019 kl 12:46 skrev M=C3=A5ns Zigher <mans.zigher@gmail.com>=
:
>
> When checking the build for lib32-alsa-lib there is no rpm package create=
d
>
> deploy-rpms/armv7ahf_neon_mx8mm# ls
> lib32-alsa-conf-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> lib32-alsa-server-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> lib32-libasound2-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> lib32-libasound-dbg-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> lib32-libasound-dev-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
>
> it matches the alsa-lib build also when checking the list of packages by =
running
>
> oe-pkgdata-util list-pkg-files -p lib32-alsa-lib and oe-pkgdata-util
> list-pkg-files -p alsa-lib
>
> there is a package lib32-alsa-lib and alsa-lib so why is there no rpm
> for this package? I would have thought that that should be the case?
>
> /M=C3=A5ns
>
> Den ons 5 juni 2019 kl 11:06 skrev M=C3=A5ns Zigher <mans.zigher@gmail.co=
m>:
> >
> > Hi,
> >
> > I am trying to build an SDK where I have multilib enabled in my
> > local.conf but I am encountering this error message
> >
> > WARNING: strix-sdk-1.0-r0 do_populate_sdk: Manifest
> > /workdir/builds/imx8mm/tmp/sstate-control/manifest-x86_64_x86_64-native=
sdk-lib32-alsa-lib.package_write_rpm
> > not found in mimx8mm aarch64-mx8mm armv7at2hf-neon armv7ahf-neon
> > armv7at2hf-vfp armv7ahf-vfp armv6thf-vfp armv6hf-vfp armv5tehf-vfp
> > armv5ehf-vfp armv5thf-vfp armv5hf-vfp allarch x86_64_x86_64-nativesdk
> > (variant 'lib32')?
> > ERROR: strix-sdk-1.0-r0 do_populate_sdk: No manifest generated from:
> > lib32-alsa-lib in
> > virtual:multilib:lib32:/workdir/layers/poky/meta/recipes-multimedia/als=
a/alsa-lib_1.1.5.bb
> > ERROR: strix-sdk-1.0-r0 do_populate_sdk: Function failed: do_populate_s=
dk
> >
> > I am currently using poky sumo could not see that anything have
> > changed in alsa-lib except bumping it to 1.1.6 in thud. I have tried
> > go through the code in both
> >
> > ./poky/meta/lib/oe/package_manager.py
> >
> > and
> >
> > ./poky/meta/lib/oe/sstatesig.py
> >
> > to see if I could understand why there is no manifest file created for
> > lib32-alsa-lib but without any luck. What task should I run to create
> > the Manifest file? Any other pointers to where I should look to
> > understand this issue is appreciated.
> >
> > BR
> > M=C3=A5ns Zigher

