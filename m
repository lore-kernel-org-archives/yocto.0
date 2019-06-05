Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41A37E00CF4; Wed,  5 Jun 2019 05:44:56 -0700 (PDT)
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
	*      [209.85.208.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
	[209.85.208.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C003E00CF4
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2019 05:44:55 -0700 (PDT)
Received: by mail-lj1-f174.google.com with SMTP id s21so12360643lji.8
	for <yocto@yoctoproject.org>; Wed, 05 Jun 2019 05:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=qoS+uIOP/cU8pXy5tzj2Fo2au/F6Dgcg7lW1q8k1cOk=;
	b=FZTrqKPu+MB867YKQHvW9wxeVaFaBixS97OvjlLPQC0o57p1lAuwQGt8GNtMt6VZnv
	eY+hFXs3QmR3sNoHxF93m9YlRrwWKPkSV3oQkutJjbxcGDiH+SbAGmwXgtySZBCYmZ/s
	IzMQ+7Zf/pGggOL5xh/D4FMzA9GLB64NaXdtFd03+3oA5rgRcUvWXJgVNWQyD0rMxHOy
	EsYPklFe525YnllV0kj4HBcSY95jcPPqOMNfJDeWnxscy9NLzQLcJk2Km6k+JB0W7HqV
	5joMIXwiLdXuzgOLY9c0APZBXTxY+XfE2d/RidtOENpSvtQdy3s/LhEOlWG3kkfYczRw
	vyPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=qoS+uIOP/cU8pXy5tzj2Fo2au/F6Dgcg7lW1q8k1cOk=;
	b=VVKpubrSTpW58kxDkwbinHBvNpxTBs4fwMVFtcpVwJXPqya7qw21pGYmPQM0nNCgaS
	Fxk67jJF2ISGaQ9rtjBXdKIFgnRZBQv00MjLnu8vyGF+UA3mImPfeeNsM6sdmWGO1lTH
	vQ/0rz8yvddUfbrbIhTi7FY+PMzT9PeiXhPe7A5hl1m0JhSwCnol7B/KVRWkgzgtUzEb
	b3a/lDGWDCIQI4Rwf2Aq7yA+XjEWQ2mVWJr7Aa+xloYKQmJ0sAgmFxADAloqaF5bq/KF
	KAat9L36K7exlHudBFJIWWb/aBFptsMcBka6qVMV8yV4lhefv/icYBAZUQwVbgr41Esl
	HMTg==
X-Gm-Message-State: APjAAAUllmGy5J9njly0/i7Ip77RaEInAHnLuxaFo6hz1BY/f6Ht8+Dd
	SeXZhho9Bv3sU6zf5fSMfmKsTR39lCFqfOmtNFJdnM2SxIQ=
X-Google-Smtp-Source: APXvYqxyVeZET0GRWLwJb3gufuALaZKiQN/iOW5YV6FPNxIBu02EcrD/jHmI6gJU1OaM5W0gnKTKfwPnhKjodpVFDPQ=
X-Received: by 2002:a2e:655b:: with SMTP id z88mr21453925ljb.108.1559738693661;
	Wed, 05 Jun 2019 05:44:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8=9_SmqLtsUnb8fWan+3Z2SF0gQvovts=e+GCFg88PaRg@mail.gmail.com>
	<CAEhQi8ne31nyNVjp6rD+t_t86gyWH6cuy5-mU6EFzjkicyf75Q@mail.gmail.com>
	<CAEhQi8=Z4c-jqGoAW__3mqyrkhG2HZBkP4Nt+zOGrUzTJB3oig@mail.gmail.com>
	<CAEhQi8kPOsicUCWJTeVxUxuX93YAMsz-o6WWkQpcu9O77oxHLQ@mail.gmail.com>
	<CAEhQi8kLtWNVUNB3Zy6pC5xXJ_3pvroP9_QoPQDQSXE8aOXcuw@mail.gmail.com>
	<CAEhQi8nhcSM=E3GveB4m6fqCf+dzMt6yYJHg6A3LW52uoe2pTg@mail.gmail.com>
In-Reply-To: <CAEhQi8nhcSM=E3GveB4m6fqCf+dzMt6yYJHg6A3LW52uoe2pTg@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 5 Jun 2019 14:44:42 +0200
Message-ID: <CAEhQi8nmgY7786+s4+u1g60-YDdbeDQBkp=Ngw3fAW5k3snSCA@mail.gmail.com>
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
X-List-Received-Date: Wed, 05 Jun 2019 12:44:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

So it looks like I should include armv7ahf-neon-mx8mm to
PACKAGE_EXTRA_ARCHS but I am unsure how to do that any ideas?

/M=C3=A5ns

Den ons 5 juni 2019 kl 14:05 skrev M=C3=A5ns Zigher <mans.zigher@gmail.com>=
:
>
> Looking in the env dump I can see that meta-freescale is overwriting
> the PACKAGE_ARCH in a alsa-lib_%.bbappend
>
> PACKAGE_ARCH_imx =3D "${MACHINE_SOCARCH}"
>
> /M=C3=A5ns
>
> Den ons 5 juni 2019 kl 14:04 skrev M=C3=A5ns Zigher <mans.zigher@gmail.co=
m>:
> >
> > So running bitbake -e lib32-alsa-lib I can see the following
> >
> > # $SSTATE_MANMACH [2 operations]
> > #   set? /home/extzig/Workspace/mozart-workspace/layers/poky/meta/class=
es/sstate.bbclass:54
> > #     "${SSTATE_PKGARCH}"
> > #   set sstate.bbclass:94
> > [__anon_105__home_extzig_Workspace_mozart_workspace_layers_poky_meta_cl=
asses_sstate_bbclass]
> > #     "armv7ahf-neon-mx8mm"
> > # pre-expansion value:
> > #   "armv7ahf-neon-mx8mm"
> > SSTATE_MANMACH=3D"armv7ahf-neon-mx8mm"
> >
> > So first the SSTATE_MANMACH variable is set to
> >
> > SSTATE_MANMACH ?=3D "${SSTATE_PKGARCH}"
> >
> > at line 54 in sstate.bbclass but then it will be overwritten at line 94=
 to
> >
> > d.setVar('SSTATE_MANMACH', d.expand("${PACKAGE_ARCH}"))
> >
> > The code that results in this looks like
> >
> >     if bb.data.inherits_class('native', d):
> >         d.setVar('SSTATE_PKGARCH', d.getVar('BUILD_ARCH', False))
> >     elif bb.data.inherits_class('crosssdk', d):
> >         d.setVar('SSTATE_PKGARCH',
> > d.expand("${BUILD_ARCH}_${SDK_ARCH}_${SDK_OS}"))
> >     elif bb.data.inherits_class('cross', d):
> >         d.setVar('SSTATE_PKGARCH', d.expand("${BUILD_ARCH}_${TARGET_ARC=
H}"))
> >     elif bb.data.inherits_class('nativesdk', d):
> >         d.setVar('SSTATE_PKGARCH', d.expand("${SDK_ARCH}_${SDK_OS}"))
> >     elif bb.data.inherits_class('cross-canadian', d):
> >         d.setVar('SSTATE_PKGARCH', d.expand("${SDK_ARCH}_${PACKAGE_ARCH=
}"))
> >     elif bb.data.inherits_class('allarch', d) and
> > d.getVar("PACKAGE_ARCH") =3D=3D "all":
> >         d.setVar('SSTATE_PKGARCH', "allarch")
> >     else:
> >         d.setVar('SSTATE_MANMACH', d.expand("${PACKAGE_ARCH}"))
> >
> > So I guess either PACKAGE_ARCH is screwed up for alsa-lib or I should
> > not get to that else statement.
> >
> > /M=C3=A5ns
> >
> > Den ons 5 juni 2019 kl 13:39 skrev M=C3=A5ns Zigher <mans.zigher@gmail.=
com>:
> > >
> > > I have the following manifest files
> > >
> > > find . -name "manifest*-lib32-alsa-lib*"
> > > ./manifest-mimx8mm-lib32-alsa-lib.packagedata
> > > ./manifest-armv7ahf-neon-mx8mm-lib32-alsa-lib.package_write_rpm
> > > ./manifest-armv7ahf-neon-mx8mm-lib32-alsa-lib.package
> > >
> > > but find_sstate_manifest called from package_manager
> > >
> > > ./meta/lib/oe/package_manager.py:615:        manifest, d2 =3D
> > > oe.sstatesig.find_sstate_manifest(c, taskdepdata[dep][2], taskname, d=
,
> > > multilibs)
> > > ./meta/lib/oe/sstatesig.py:372:def find_sstate_manifest(taskdata,
> > > taskdata2, taskname, d, multilibcache):
> > >
> > > will only look for
> > >
> > > manifest-armv7at2hf-neon-lib32-alsa-lib.package_write_rpm
> > > manifest-armv7ahf-neon-lib32-alsa-lib.package_write_rpm
> > >
> > > I am not sure why the mx8mm is added to the lib32-alsa-lib manifest
> > > file since this is not added to any other package when building it fo=
r
> > > lib32.
> > >
> > > /M=C3=A5ns
> > >
> > > Den ons 5 juni 2019 kl 13:00 skrev M=C3=A5ns Zigher <mans.zigher@gmai=
l.com>:
> > > >
> > > > I think this looks wrong
> > > > "manifest-x86_64_x86_64-nativesdk-lib32-alsa-lib.package_write_rpm"=
 I
> > > > have not intentionally added lib32-alsa-lib to the nativesdk part s=
o I
> > > > am not sure why it expects to find that?
> > > >
> > > > /M=C3=A5ns
> > > >
> > > > Den ons 5 juni 2019 kl 12:46 skrev M=C3=A5ns Zigher <mans.zigher@gm=
ail.com>:
> > > > >
> > > > > When checking the build for lib32-alsa-lib there is no rpm packag=
e created
> > > > >
> > > > > deploy-rpms/armv7ahf_neon_mx8mm# ls
> > > > > lib32-alsa-conf-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> > > > > lib32-alsa-server-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> > > > > lib32-libasound2-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> > > > > lib32-libasound-dbg-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> > > > > lib32-libasound-dev-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> > > > >
> > > > > it matches the alsa-lib build also when checking the list of pack=
ages by running
> > > > >
> > > > > oe-pkgdata-util list-pkg-files -p lib32-alsa-lib and oe-pkgdata-u=
til
> > > > > list-pkg-files -p alsa-lib
> > > > >
> > > > > there is a package lib32-alsa-lib and alsa-lib so why is there no=
 rpm
> > > > > for this package? I would have thought that that should be the ca=
se?
> > > > >
> > > > > /M=C3=A5ns
> > > > >
> > > > > Den ons 5 juni 2019 kl 11:06 skrev M=C3=A5ns Zigher <mans.zigher@=
gmail.com>:
> > > > > >
> > > > > > Hi,
> > > > > >
> > > > > > I am trying to build an SDK where I have multilib enabled in my
> > > > > > local.conf but I am encountering this error message
> > > > > >
> > > > > > WARNING: strix-sdk-1.0-r0 do_populate_sdk: Manifest
> > > > > > /workdir/builds/imx8mm/tmp/sstate-control/manifest-x86_64_x86_6=
4-nativesdk-lib32-alsa-lib.package_write_rpm
> > > > > > not found in mimx8mm aarch64-mx8mm armv7at2hf-neon armv7ahf-neo=
n
> > > > > > armv7at2hf-vfp armv7ahf-vfp armv6thf-vfp armv6hf-vfp armv5tehf-=
vfp
> > > > > > armv5ehf-vfp armv5thf-vfp armv5hf-vfp allarch x86_64_x86_64-nat=
ivesdk
> > > > > > (variant 'lib32')?
> > > > > > ERROR: strix-sdk-1.0-r0 do_populate_sdk: No manifest generated =
from:
> > > > > > lib32-alsa-lib in
> > > > > > virtual:multilib:lib32:/workdir/layers/poky/meta/recipes-multim=
edia/alsa/alsa-lib_1.1.5.bb
> > > > > > ERROR: strix-sdk-1.0-r0 do_populate_sdk: Function failed: do_po=
pulate_sdk
> > > > > >
> > > > > > I am currently using poky sumo could not see that anything have
> > > > > > changed in alsa-lib except bumping it to 1.1.6 in thud. I have =
tried
> > > > > > go through the code in both
> > > > > >
> > > > > > ./poky/meta/lib/oe/package_manager.py
> > > > > >
> > > > > > and
> > > > > >
> > > > > > ./poky/meta/lib/oe/sstatesig.py
> > > > > >
> > > > > > to see if I could understand why there is no manifest file crea=
ted for
> > > > > > lib32-alsa-lib but without any luck. What task should I run to =
create
> > > > > > the Manifest file? Any other pointers to where I should look to
> > > > > > understand this issue is appreciated.
> > > > > >
> > > > > > BR
> > > > > > M=C3=A5ns Zigher

