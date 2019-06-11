Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F22DE00D73; Tue, 11 Jun 2019 01:24:19 -0700 (PDT)
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
	*      [209.85.167.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
	[209.85.167.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C3A4E00DD2
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2019 01:24:17 -0700 (PDT)
Received: by mail-lf1-f49.google.com with SMTP id u10so8588622lfm.12
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2019 01:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=Dd+CHoO7OPQ3GEVAQy6m3U5EKeSUUYuvB42eMBEtsE0=;
	b=SpkolkPbbi7h/fPlH7dQgk3cekCtBvU7Sr43UCSjs3MJInJLn9smB7AuhwtFtSkz2K
	k33EwU+E9lKbjU5uQWJ5urR6PkjJYh/la0/2Jn4XHZFigrpA955Q93uCTQJOVdmmWvqh
	agub6bjVoTwxQAWsk0Dq7RZGMWqWRwxYSN/Qr06675wJi+MrzRVTvhwUjb3Fwqma5uqS
	wAAxer1h3Hk2Di2jbAOAtO1ZwjpzXauU0PGPARbbK306vU/VQT+BUTldaPBM4myFEtcG
	wWTWFCE3EP72C2heOhx2l60z3v7lRJb4pTfBFh8e2VvBJ3F4T/VnaYkUMS5gGgPXd6CZ
	B1IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=Dd+CHoO7OPQ3GEVAQy6m3U5EKeSUUYuvB42eMBEtsE0=;
	b=rY7xgEbjZisaEnwAy10HWmOwf5TZYq6oTrTI9SyiXi2sRkBGeBn2KM0YScAtLZWSkf
	ctZP5yhQP2T7s5mhlReUDoWvFT0K+7IdL0GLNaTb43mcGZ9X7LXsH/Pl87QIBYKr83QY
	etOT6YJzThGoozZNPdDWEmeReGliFrLXsRKjVLLaE3RsBvmAeZ2T5pI/wUre5FrQzCzI
	5xZ9B86ALr4NGYoC616olQWwtqh56pq1XwTvxDd/6Aw19i1L/05WMJZL3BBHunzbS3PL
	xFx/rmrEqida/CTCCkGWAk9RU43w1XPNZ9OHQg5I1VdGDHjaRWWfpdACRIFO/D39ofVz
	7TQg==
X-Gm-Message-State: APjAAAUq2Ma4Zoa0+IuN5+6/f7XaHazqHZgUzZz35T9fyZQeDehmIJbT
	KN87wKF60A2LQjjjNvOQRrYJzR99ow41i8XGopYQb7Jrtg4=
X-Google-Smtp-Source: APXvYqzBDqD1/OIvlzGZd+DRO9EVMagUZAVNEsXS/XHVaI+RFNLpFP6vVgJfM+iF3M32bHy7ZQFshJ13E1KaubZKlUY=
X-Received: by 2002:ac2:4d1c:: with SMTP id r28mr1020733lfi.159.1560241456594; 
	Tue, 11 Jun 2019 01:24:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8=9_SmqLtsUnb8fWan+3Z2SF0gQvovts=e+GCFg88PaRg@mail.gmail.com>
	<CAEhQi8ne31nyNVjp6rD+t_t86gyWH6cuy5-mU6EFzjkicyf75Q@mail.gmail.com>
	<CAEhQi8=Z4c-jqGoAW__3mqyrkhG2HZBkP4Nt+zOGrUzTJB3oig@mail.gmail.com>
	<CAEhQi8kPOsicUCWJTeVxUxuX93YAMsz-o6WWkQpcu9O77oxHLQ@mail.gmail.com>
	<CAEhQi8kLtWNVUNB3Zy6pC5xXJ_3pvroP9_QoPQDQSXE8aOXcuw@mail.gmail.com>
	<CAEhQi8nhcSM=E3GveB4m6fqCf+dzMt6yYJHg6A3LW52uoe2pTg@mail.gmail.com>
	<CAEhQi8nmgY7786+s4+u1g60-YDdbeDQBkp=Ngw3fAW5k3snSCA@mail.gmail.com>
In-Reply-To: <CAEhQi8nmgY7786+s4+u1g60-YDdbeDQBkp=Ngw3fAW5k3snSCA@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Tue, 11 Jun 2019 10:24:05 +0200
Message-ID: <CAEhQi8nYdKh07z5-mqtUh7vrqF0NG4vRyxo38=sAcxSS2BBxLQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 11 Jun 2019 08:24:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Adding

PACKAGE_EXTRA_ARCHS =3D "${PACKAGE_EXTRA_ARCHS_tune-${DEFAULTTUNE}}
armv7ahf-neon-mx8mm"

to my machine config solved my problem but I am not sure if it belongs
there or not.

BR

Den ons 5 juni 2019 kl 14:44 skrev M=C3=A5ns Zigher <mans.zigher@gmail.com>=
:
>
> So it looks like I should include armv7ahf-neon-mx8mm to
> PACKAGE_EXTRA_ARCHS but I am unsure how to do that any ideas?
>
> /M=C3=A5ns
>
> Den ons 5 juni 2019 kl 14:05 skrev M=C3=A5ns Zigher <mans.zigher@gmail.co=
m>:
> >
> > Looking in the env dump I can see that meta-freescale is overwriting
> > the PACKAGE_ARCH in a alsa-lib_%.bbappend
> >
> > PACKAGE_ARCH_imx =3D "${MACHINE_SOCARCH}"
> >
> > /M=C3=A5ns
> >
> > Den ons 5 juni 2019 kl 14:04 skrev M=C3=A5ns Zigher <mans.zigher@gmail.=
com>:
> > >
> > > So running bitbake -e lib32-alsa-lib I can see the following
> > >
> > > # $SSTATE_MANMACH [2 operations]
> > > #   set? /home/extzig/Workspace/mozart-workspace/layers/poky/meta/cla=
sses/sstate.bbclass:54
> > > #     "${SSTATE_PKGARCH}"
> > > #   set sstate.bbclass:94
> > > [__anon_105__home_extzig_Workspace_mozart_workspace_layers_poky_meta_=
classes_sstate_bbclass]
> > > #     "armv7ahf-neon-mx8mm"
> > > # pre-expansion value:
> > > #   "armv7ahf-neon-mx8mm"
> > > SSTATE_MANMACH=3D"armv7ahf-neon-mx8mm"
> > >
> > > So first the SSTATE_MANMACH variable is set to
> > >
> > > SSTATE_MANMACH ?=3D "${SSTATE_PKGARCH}"
> > >
> > > at line 54 in sstate.bbclass but then it will be overwritten at line =
94 to
> > >
> > > d.setVar('SSTATE_MANMACH', d.expand("${PACKAGE_ARCH}"))
> > >
> > > The code that results in this looks like
> > >
> > >     if bb.data.inherits_class('native', d):
> > >         d.setVar('SSTATE_PKGARCH', d.getVar('BUILD_ARCH', False))
> > >     elif bb.data.inherits_class('crosssdk', d):
> > >         d.setVar('SSTATE_PKGARCH',
> > > d.expand("${BUILD_ARCH}_${SDK_ARCH}_${SDK_OS}"))
> > >     elif bb.data.inherits_class('cross', d):
> > >         d.setVar('SSTATE_PKGARCH', d.expand("${BUILD_ARCH}_${TARGET_A=
RCH}"))
> > >     elif bb.data.inherits_class('nativesdk', d):
> > >         d.setVar('SSTATE_PKGARCH', d.expand("${SDK_ARCH}_${SDK_OS}"))
> > >     elif bb.data.inherits_class('cross-canadian', d):
> > >         d.setVar('SSTATE_PKGARCH', d.expand("${SDK_ARCH}_${PACKAGE_AR=
CH}"))
> > >     elif bb.data.inherits_class('allarch', d) and
> > > d.getVar("PACKAGE_ARCH") =3D=3D "all":
> > >         d.setVar('SSTATE_PKGARCH', "allarch")
> > >     else:
> > >         d.setVar('SSTATE_MANMACH', d.expand("${PACKAGE_ARCH}"))
> > >
> > > So I guess either PACKAGE_ARCH is screwed up for alsa-lib or I should
> > > not get to that else statement.
> > >
> > > /M=C3=A5ns
> > >
> > > Den ons 5 juni 2019 kl 13:39 skrev M=C3=A5ns Zigher <mans.zigher@gmai=
l.com>:
> > > >
> > > > I have the following manifest files
> > > >
> > > > find . -name "manifest*-lib32-alsa-lib*"
> > > > ./manifest-mimx8mm-lib32-alsa-lib.packagedata
> > > > ./manifest-armv7ahf-neon-mx8mm-lib32-alsa-lib.package_write_rpm
> > > > ./manifest-armv7ahf-neon-mx8mm-lib32-alsa-lib.package
> > > >
> > > > but find_sstate_manifest called from package_manager
> > > >
> > > > ./meta/lib/oe/package_manager.py:615:        manifest, d2 =3D
> > > > oe.sstatesig.find_sstate_manifest(c, taskdepdata[dep][2], taskname,=
 d,
> > > > multilibs)
> > > > ./meta/lib/oe/sstatesig.py:372:def find_sstate_manifest(taskdata,
> > > > taskdata2, taskname, d, multilibcache):
> > > >
> > > > will only look for
> > > >
> > > > manifest-armv7at2hf-neon-lib32-alsa-lib.package_write_rpm
> > > > manifest-armv7ahf-neon-lib32-alsa-lib.package_write_rpm
> > > >
> > > > I am not sure why the mx8mm is added to the lib32-alsa-lib manifest
> > > > file since this is not added to any other package when building it =
for
> > > > lib32.
> > > >
> > > > /M=C3=A5ns
> > > >
> > > > Den ons 5 juni 2019 kl 13:00 skrev M=C3=A5ns Zigher <mans.zigher@gm=
ail.com>:
> > > > >
> > > > > I think this looks wrong
> > > > > "manifest-x86_64_x86_64-nativesdk-lib32-alsa-lib.package_write_rp=
m" I
> > > > > have not intentionally added lib32-alsa-lib to the nativesdk part=
 so I
> > > > > am not sure why it expects to find that?
> > > > >
> > > > > /M=C3=A5ns
> > > > >
> > > > > Den ons 5 juni 2019 kl 12:46 skrev M=C3=A5ns Zigher <mans.zigher@=
gmail.com>:
> > > > > >
> > > > > > When checking the build for lib32-alsa-lib there is no rpm pack=
age created
> > > > > >
> > > > > > deploy-rpms/armv7ahf_neon_mx8mm# ls
> > > > > > lib32-alsa-conf-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> > > > > > lib32-alsa-server-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> > > > > > lib32-libasound2-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> > > > > > lib32-libasound-dbg-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> > > > > > lib32-libasound-dev-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> > > > > >
> > > > > > it matches the alsa-lib build also when checking the list of pa=
ckages by running
> > > > > >
> > > > > > oe-pkgdata-util list-pkg-files -p lib32-alsa-lib and oe-pkgdata=
-util
> > > > > > list-pkg-files -p alsa-lib
> > > > > >
> > > > > > there is a package lib32-alsa-lib and alsa-lib so why is there =
no rpm
> > > > > > for this package? I would have thought that that should be the =
case?
> > > > > >
> > > > > > /M=C3=A5ns
> > > > > >
> > > > > > Den ons 5 juni 2019 kl 11:06 skrev M=C3=A5ns Zigher <mans.zighe=
r@gmail.com>:
> > > > > > >
> > > > > > > Hi,
> > > > > > >
> > > > > > > I am trying to build an SDK where I have multilib enabled in =
my
> > > > > > > local.conf but I am encountering this error message
> > > > > > >
> > > > > > > WARNING: strix-sdk-1.0-r0 do_populate_sdk: Manifest
> > > > > > > /workdir/builds/imx8mm/tmp/sstate-control/manifest-x86_64_x86=
_64-nativesdk-lib32-alsa-lib.package_write_rpm
> > > > > > > not found in mimx8mm aarch64-mx8mm armv7at2hf-neon armv7ahf-n=
eon
> > > > > > > armv7at2hf-vfp armv7ahf-vfp armv6thf-vfp armv6hf-vfp armv5teh=
f-vfp
> > > > > > > armv5ehf-vfp armv5thf-vfp armv5hf-vfp allarch x86_64_x86_64-n=
ativesdk
> > > > > > > (variant 'lib32')?
> > > > > > > ERROR: strix-sdk-1.0-r0 do_populate_sdk: No manifest generate=
d from:
> > > > > > > lib32-alsa-lib in
> > > > > > > virtual:multilib:lib32:/workdir/layers/poky/meta/recipes-mult=
imedia/alsa/alsa-lib_1.1.5.bb
> > > > > > > ERROR: strix-sdk-1.0-r0 do_populate_sdk: Function failed: do_=
populate_sdk
> > > > > > >
> > > > > > > I am currently using poky sumo could not see that anything ha=
ve
> > > > > > > changed in alsa-lib except bumping it to 1.1.6 in thud. I hav=
e tried
> > > > > > > go through the code in both
> > > > > > >
> > > > > > > ./poky/meta/lib/oe/package_manager.py
> > > > > > >
> > > > > > > and
> > > > > > >
> > > > > > > ./poky/meta/lib/oe/sstatesig.py
> > > > > > >
> > > > > > > to see if I could understand why there is no manifest file cr=
eated for
> > > > > > > lib32-alsa-lib but without any luck. What task should I run t=
o create
> > > > > > > the Manifest file? Any other pointers to where I should look =
to
> > > > > > > understand this issue is appreciated.
> > > > > > >
> > > > > > > BR
> > > > > > > M=C3=A5ns Zigher

