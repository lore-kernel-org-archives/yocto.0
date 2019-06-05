Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2899E00D5C; Wed,  5 Jun 2019 04:40:12 -0700 (PDT)
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
	*      [209.85.167.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
	[209.85.167.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DB2FE00D4E
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2019 04:40:11 -0700 (PDT)
Received: by mail-lf1-f41.google.com with SMTP id r15so18803400lfm.11
	for <yocto@yoctoproject.org>; Wed, 05 Jun 2019 04:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=LscljkIxsugtNV8cef51VNwTnPwnNHFsf/GyrzOqA3I=;
	b=e9pLoNm7QuBFaf1VYCRj7rk22Rt+Q++jf2xBzxRfx3eRDBLznTqthnBnQHMPcmmX7o
	MWf8a3i78MLfa/BKpWW8BGU6msec53Pe+foSu3qCQ+dSCEQpqWAQpdTg5e2hDYYmO8T5
	m//Hkx1RjlHNdwucHCWv9vN7vRcCXQt+TlAb3XZ/NfqgR5Ruf0VZhHWaUQ6Wo81SPU52
	525Eaivd71epH0ao7VKFor7kZHUjdNjatgj2FfPXl81ns2vmUN5Rx9Fc7MKSDr30URuL
	fvdwtgUZEdQ/lSIVVsSq1+/uD3QjcvqTYhZp3abpx+RCcBSUo5gES8JVmzc0eBjLK/Dm
	ZiOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=LscljkIxsugtNV8cef51VNwTnPwnNHFsf/GyrzOqA3I=;
	b=fMKCeOJmf7qgXAkRVwkXUL6lgPifH8HQ3/7PQEqnpSPAxSmuAWeGxmG8YLziGi61do
	70U//o6/IB12OefQRO/LIDe3uco2ZipDj9n7D/f9VtL1afV/ex0s/7Own+Zy679g0TZc
	OGIvCoUfjfJ2cIXpmPJ8HT8c1tBcw/pdiyW+/qtFYj+UHNECnX5JYIRwT8WZbCZ+lhDu
	Qfmw7aEPDroOmnKnqqCbLVl55Al9cPYATTETOOrCOMg0IdbHCJf+zCOQrhERmTjyOrik
	aNfw0mvEAxDZ6bgENw7/ntsC7dUk4v/zeDrseIwCRklhlXMBQ/LtW3JPpva8DV052blE
	IOHg==
X-Gm-Message-State: APjAAAX/mNzpup0kDio6/3UBnt2af1SMImO9R02P85XQBKBcorlFeAnY
	6N07F5FsdbGPx5hSzRbWhO7ZYFA4k1kHllK7SL2XuhouAtk=
X-Google-Smtp-Source: APXvYqz6L536+Qp+zSxIgT+PMUoRWjpDLaMWNXy7+bg86G5xRPmS34TUZ0387UDAYU+nDEilIYgAnZb2FEiwdT3/dHE=
X-Received: by 2002:ac2:5b0c:: with SMTP id v12mr5736913lfn.184.1559734809802; 
	Wed, 05 Jun 2019 04:40:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8=9_SmqLtsUnb8fWan+3Z2SF0gQvovts=e+GCFg88PaRg@mail.gmail.com>
	<CAEhQi8ne31nyNVjp6rD+t_t86gyWH6cuy5-mU6EFzjkicyf75Q@mail.gmail.com>
	<CAEhQi8=Z4c-jqGoAW__3mqyrkhG2HZBkP4Nt+zOGrUzTJB3oig@mail.gmail.com>
In-Reply-To: <CAEhQi8=Z4c-jqGoAW__3mqyrkhG2HZBkP4Nt+zOGrUzTJB3oig@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 5 Jun 2019 13:39:58 +0200
Message-ID: <CAEhQi8kPOsicUCWJTeVxUxuX93YAMsz-o6WWkQpcu9O77oxHLQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 05 Jun 2019 11:40:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have the following manifest files

find . -name "manifest*-lib32-alsa-lib*"
./manifest-mimx8mm-lib32-alsa-lib.packagedata
./manifest-armv7ahf-neon-mx8mm-lib32-alsa-lib.package_write_rpm
./manifest-armv7ahf-neon-mx8mm-lib32-alsa-lib.package

but find_sstate_manifest called from package_manager

./meta/lib/oe/package_manager.py:615:        manifest, d2 =3D
oe.sstatesig.find_sstate_manifest(c, taskdepdata[dep][2], taskname, d,
multilibs)
./meta/lib/oe/sstatesig.py:372:def find_sstate_manifest(taskdata,
taskdata2, taskname, d, multilibcache):

will only look for

manifest-armv7at2hf-neon-lib32-alsa-lib.package_write_rpm
manifest-armv7ahf-neon-lib32-alsa-lib.package_write_rpm

I am not sure why the mx8mm is added to the lib32-alsa-lib manifest
file since this is not added to any other package when building it for
lib32.

/M=C3=A5ns

Den ons 5 juni 2019 kl 13:00 skrev M=C3=A5ns Zigher <mans.zigher@gmail.com>=
:
>
> I think this looks wrong
> "manifest-x86_64_x86_64-nativesdk-lib32-alsa-lib.package_write_rpm" I
> have not intentionally added lib32-alsa-lib to the nativesdk part so I
> am not sure why it expects to find that?
>
> /M=C3=A5ns
>
> Den ons 5 juni 2019 kl 12:46 skrev M=C3=A5ns Zigher <mans.zigher@gmail.co=
m>:
> >
> > When checking the build for lib32-alsa-lib there is no rpm package crea=
ted
> >
> > deploy-rpms/armv7ahf_neon_mx8mm# ls
> > lib32-alsa-conf-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> > lib32-alsa-server-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> > lib32-libasound2-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> > lib32-libasound-dbg-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> > lib32-libasound-dev-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> >
> > it matches the alsa-lib build also when checking the list of packages b=
y running
> >
> > oe-pkgdata-util list-pkg-files -p lib32-alsa-lib and oe-pkgdata-util
> > list-pkg-files -p alsa-lib
> >
> > there is a package lib32-alsa-lib and alsa-lib so why is there no rpm
> > for this package? I would have thought that that should be the case?
> >
> > /M=C3=A5ns
> >
> > Den ons 5 juni 2019 kl 11:06 skrev M=C3=A5ns Zigher <mans.zigher@gmail.=
com>:
> > >
> > > Hi,
> > >
> > > I am trying to build an SDK where I have multilib enabled in my
> > > local.conf but I am encountering this error message
> > >
> > > WARNING: strix-sdk-1.0-r0 do_populate_sdk: Manifest
> > > /workdir/builds/imx8mm/tmp/sstate-control/manifest-x86_64_x86_64-nati=
vesdk-lib32-alsa-lib.package_write_rpm
> > > not found in mimx8mm aarch64-mx8mm armv7at2hf-neon armv7ahf-neon
> > > armv7at2hf-vfp armv7ahf-vfp armv6thf-vfp armv6hf-vfp armv5tehf-vfp
> > > armv5ehf-vfp armv5thf-vfp armv5hf-vfp allarch x86_64_x86_64-nativesdk
> > > (variant 'lib32')?
> > > ERROR: strix-sdk-1.0-r0 do_populate_sdk: No manifest generated from:
> > > lib32-alsa-lib in
> > > virtual:multilib:lib32:/workdir/layers/poky/meta/recipes-multimedia/a=
lsa/alsa-lib_1.1.5.bb
> > > ERROR: strix-sdk-1.0-r0 do_populate_sdk: Function failed: do_populate=
_sdk
> > >
> > > I am currently using poky sumo could not see that anything have
> > > changed in alsa-lib except bumping it to 1.1.6 in thud. I have tried
> > > go through the code in both
> > >
> > > ./poky/meta/lib/oe/package_manager.py
> > >
> > > and
> > >
> > > ./poky/meta/lib/oe/sstatesig.py
> > >
> > > to see if I could understand why there is no manifest file created fo=
r
> > > lib32-alsa-lib but without any luck. What task should I run to create
> > > the Manifest file? Any other pointers to where I should look to
> > > understand this issue is appreciated.
> > >
> > > BR
> > > M=C3=A5ns Zigher

