Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21B8AE00D63; Wed,  5 Jun 2019 05:04:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.208.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mans.zigher[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
	[209.85.208.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5BE7E00D50
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2019 05:04:16 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id 131so10331247ljf.4
	for <yocto@yoctoproject.org>; Wed, 05 Jun 2019 05:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=VA35SGJE8NtN1IJvjj/XF3wIeG6cb9N0hYlyVYNW0WM=;
	b=Wp7lIZOhRSoihCUq9Cu3cdCNFjk26U9neLaBWZSa8coqSKFrMBemTjoqlzKEJjPi1k
	BXh905CNAiKiu2ouYzW2Yrtcf7MLzmyHonsaiDV6K7aHlfCRfBHQRDigTN/JaXRR13hk
	GCECt+KC3r63dARwUmnKu6qNjSx4rGE0j9zuXA5Ee6m12sh9JCwQVRBQOdNoD9rEHsLR
	mSsUN+qLCylxQUS4zPNT02B8DQl5b2RzUTwoaHRAS1/v73ytb71pEo9ZCEiKkZ/z3Qg2
	B58t07WxfqRx/sZsfiwRe7V/u8M2elKJk5byDSwQhwPwnq16O5mULnBp2Lsbg47lxdrN
	nz6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=VA35SGJE8NtN1IJvjj/XF3wIeG6cb9N0hYlyVYNW0WM=;
	b=k4Ip/FCo7wO4NBrLf8hJoQntTL57Kv2fUqhdtkLnYAjpp8xWiMKZwRkM/v3PV+diUa
	gTtzhj9IoRRIUYmqh2nywAQh9fSCAL2BEyj2RnKvtGZpEcDYVR575vN7fRPRxv3LNYuR
	ljYbbqLF/PlB5Q4INqDe6NbFE/jHdFnRrmi5IIAf9/viWhouRpUAUw9J40Vqj4D8Q7vv
	kdzz567NGmvT/OkKEIz+5HP/hZMjNaNtGfsKkOKBq2q6J+Nuq3LmbNQxXT0FDPZyl16q
	/IkDGgDAAwEQZVLj0fjDJRx/EL1R11Txy7kGd1JydrbeeXfDgqL2FKKwmMLuMdePkH4E
	Zbqw==
X-Gm-Message-State: APjAAAVK/iTBgpa9cyJycC5UvL6vyNltQbzEFob9K/X0rvUN26Y7TGfD
	uT+L3omDqVp9cbOUL9HeCvK6yOJej0ICzfRzGdo6XCsEuyM=
X-Google-Smtp-Source: APXvYqw8MUjr5kYTU78GhHlJlwSXOxDyYtlx25PXDxlFGVHX5/cmDCI6IR8EofP/SFb6fzivihqgtOHLbCfEMlmA88k=
X-Received: by 2002:a2e:2b8d:: with SMTP id r13mr8465563ljr.145.1559736255508; 
	Wed, 05 Jun 2019 05:04:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8=9_SmqLtsUnb8fWan+3Z2SF0gQvovts=e+GCFg88PaRg@mail.gmail.com>
	<CAEhQi8ne31nyNVjp6rD+t_t86gyWH6cuy5-mU6EFzjkicyf75Q@mail.gmail.com>
	<CAEhQi8=Z4c-jqGoAW__3mqyrkhG2HZBkP4Nt+zOGrUzTJB3oig@mail.gmail.com>
	<CAEhQi8kPOsicUCWJTeVxUxuX93YAMsz-o6WWkQpcu9O77oxHLQ@mail.gmail.com>
In-Reply-To: <CAEhQi8kPOsicUCWJTeVxUxuX93YAMsz-o6WWkQpcu9O77oxHLQ@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 5 Jun 2019 14:04:04 +0200
Message-ID: <CAEhQi8kLtWNVUNB3Zy6pC5xXJ_3pvroP9_QoPQDQSXE8aOXcuw@mail.gmail.com>
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
X-List-Received-Date: Wed, 05 Jun 2019 12:04:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

So running bitbake -e lib32-alsa-lib I can see the following

# $SSTATE_MANMACH [2 operations]
#   set? /home/extzig/Workspace/mozart-workspace/layers/poky/meta/classes/s=
state.bbclass:54
#     "${SSTATE_PKGARCH}"
#   set sstate.bbclass:94
[__anon_105__home_extzig_Workspace_mozart_workspace_layers_poky_meta_classe=
s_sstate_bbclass]
#     "armv7ahf-neon-mx8mm"
# pre-expansion value:
#   "armv7ahf-neon-mx8mm"
SSTATE_MANMACH=3D"armv7ahf-neon-mx8mm"

So first the SSTATE_MANMACH variable is set to

SSTATE_MANMACH ?=3D "${SSTATE_PKGARCH}"

at line 54 in sstate.bbclass but then it will be overwritten at line 94 to

d.setVar('SSTATE_MANMACH', d.expand("${PACKAGE_ARCH}"))

The code that results in this looks like

    if bb.data.inherits_class('native', d):
        d.setVar('SSTATE_PKGARCH', d.getVar('BUILD_ARCH', False))
    elif bb.data.inherits_class('crosssdk', d):
        d.setVar('SSTATE_PKGARCH',
d.expand("${BUILD_ARCH}_${SDK_ARCH}_${SDK_OS}"))
    elif bb.data.inherits_class('cross', d):
        d.setVar('SSTATE_PKGARCH', d.expand("${BUILD_ARCH}_${TARGET_ARCH}")=
)
    elif bb.data.inherits_class('nativesdk', d):
        d.setVar('SSTATE_PKGARCH', d.expand("${SDK_ARCH}_${SDK_OS}"))
    elif bb.data.inherits_class('cross-canadian', d):
        d.setVar('SSTATE_PKGARCH', d.expand("${SDK_ARCH}_${PACKAGE_ARCH}"))
    elif bb.data.inherits_class('allarch', d) and
d.getVar("PACKAGE_ARCH") =3D=3D "all":
        d.setVar('SSTATE_PKGARCH', "allarch")
    else:
        d.setVar('SSTATE_MANMACH', d.expand("${PACKAGE_ARCH}"))

So I guess either PACKAGE_ARCH is screwed up for alsa-lib or I should
not get to that else statement.

/M=C3=A5ns

Den ons 5 juni 2019 kl 13:39 skrev M=C3=A5ns Zigher <mans.zigher@gmail.com>=
:
>
> I have the following manifest files
>
> find . -name "manifest*-lib32-alsa-lib*"
> ./manifest-mimx8mm-lib32-alsa-lib.packagedata
> ./manifest-armv7ahf-neon-mx8mm-lib32-alsa-lib.package_write_rpm
> ./manifest-armv7ahf-neon-mx8mm-lib32-alsa-lib.package
>
> but find_sstate_manifest called from package_manager
>
> ./meta/lib/oe/package_manager.py:615:        manifest, d2 =3D
> oe.sstatesig.find_sstate_manifest(c, taskdepdata[dep][2], taskname, d,
> multilibs)
> ./meta/lib/oe/sstatesig.py:372:def find_sstate_manifest(taskdata,
> taskdata2, taskname, d, multilibcache):
>
> will only look for
>
> manifest-armv7at2hf-neon-lib32-alsa-lib.package_write_rpm
> manifest-armv7ahf-neon-lib32-alsa-lib.package_write_rpm
>
> I am not sure why the mx8mm is added to the lib32-alsa-lib manifest
> file since this is not added to any other package when building it for
> lib32.
>
> /M=C3=A5ns
>
> Den ons 5 juni 2019 kl 13:00 skrev M=C3=A5ns Zigher <mans.zigher@gmail.co=
m>:
> >
> > I think this looks wrong
> > "manifest-x86_64_x86_64-nativesdk-lib32-alsa-lib.package_write_rpm" I
> > have not intentionally added lib32-alsa-lib to the nativesdk part so I
> > am not sure why it expects to find that?
> >
> > /M=C3=A5ns
> >
> > Den ons 5 juni 2019 kl 12:46 skrev M=C3=A5ns Zigher <mans.zigher@gmail.=
com>:
> > >
> > > When checking the build for lib32-alsa-lib there is no rpm package cr=
eated
> > >
> > > deploy-rpms/armv7ahf_neon_mx8mm# ls
> > > lib32-alsa-conf-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> > > lib32-alsa-server-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> > > lib32-libasound2-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> > > lib32-libasound-dbg-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> > > lib32-libasound-dev-1.1.5-r0.armv7ahf_neon_mx8mm.rpm
> > >
> > > it matches the alsa-lib build also when checking the list of packages=
 by running
> > >
> > > oe-pkgdata-util list-pkg-files -p lib32-alsa-lib and oe-pkgdata-util
> > > list-pkg-files -p alsa-lib
> > >
> > > there is a package lib32-alsa-lib and alsa-lib so why is there no rpm
> > > for this package? I would have thought that that should be the case?
> > >
> > > /M=C3=A5ns
> > >
> > > Den ons 5 juni 2019 kl 11:06 skrev M=C3=A5ns Zigher <mans.zigher@gmai=
l.com>:
> > > >
> > > > Hi,
> > > >
> > > > I am trying to build an SDK where I have multilib enabled in my
> > > > local.conf but I am encountering this error message
> > > >
> > > > WARNING: strix-sdk-1.0-r0 do_populate_sdk: Manifest
> > > > /workdir/builds/imx8mm/tmp/sstate-control/manifest-x86_64_x86_64-na=
tivesdk-lib32-alsa-lib.package_write_rpm
> > > > not found in mimx8mm aarch64-mx8mm armv7at2hf-neon armv7ahf-neon
> > > > armv7at2hf-vfp armv7ahf-vfp armv6thf-vfp armv6hf-vfp armv5tehf-vfp
> > > > armv5ehf-vfp armv5thf-vfp armv5hf-vfp allarch x86_64_x86_64-natives=
dk
> > > > (variant 'lib32')?
> > > > ERROR: strix-sdk-1.0-r0 do_populate_sdk: No manifest generated from=
:
> > > > lib32-alsa-lib in
> > > > virtual:multilib:lib32:/workdir/layers/poky/meta/recipes-multimedia=
/alsa/alsa-lib_1.1.5.bb
> > > > ERROR: strix-sdk-1.0-r0 do_populate_sdk: Function failed: do_popula=
te_sdk
> > > >
> > > > I am currently using poky sumo could not see that anything have
> > > > changed in alsa-lib except bumping it to 1.1.6 in thud. I have trie=
d
> > > > go through the code in both
> > > >
> > > > ./poky/meta/lib/oe/package_manager.py
> > > >
> > > > and
> > > >
> > > > ./poky/meta/lib/oe/sstatesig.py
> > > >
> > > > to see if I could understand why there is no manifest file created =
for
> > > > lib32-alsa-lib but without any luck. What task should I run to crea=
te
> > > > the Manifest file? Any other pointers to where I should look to
> > > > understand this issue is appreciated.
> > > >
> > > > BR
> > > > M=C3=A5ns Zigher

