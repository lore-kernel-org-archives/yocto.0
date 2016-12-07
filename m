Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7E7EE00D2C; Wed,  7 Dec 2016 07:20:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.210.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f196.google.com (mail-wj0-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0622E00CEA
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 07:19:58 -0800 (PST)
Received: by mail-wj0-f196.google.com with SMTP id kp2so50415431wjc.0
	for <yocto@yoctoproject.org>; Wed, 07 Dec 2016 07:19:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zim353VrKLIRKaWoYMMfG28xXWayHENGdbWDpKetmMw=;
	b=xKISNbPL6tQfElOgZrL72x+v/oJAB7e9iboBo5pc2Bzz+7YtRvY7EsJ1Ftp0fmPqQt
	Vj9bgI7rFzJRBa/olbV02iQ7BwioLJ2VIil0FCnvpYk0y7tv0eFvoEWNOc61MD1kIZMV
	k+9gTmqhyiQDAcppKJxMxmTfLUnW3mJ5/k5MmEdu91tD5ceYfrEMCW1t+cQutf737s3u
	Ite3UUc0cxB4lfcBOtByXphI7McJ+fDu5cmtG5jKImx7vpIACagCgWYeFLLQg27WR4lb
	Q8E7hf6oxDQe8RrCmV2AkghiUvtsWBWJrGQ0cCNExeFbWGSYvYJarZkmi0ngMEXEOE2F
	9M6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zim353VrKLIRKaWoYMMfG28xXWayHENGdbWDpKetmMw=;
	b=Q7Vxc+Mymu/8umnmS6Ld9hbugpO6eW7KsSiMyxPJIT3B9oruAxcyb+gqnoKC+lhPC7
	weMiOfGrt6GtO2hYxKxCc1VJ3wvNKRP3LxEwNc8LFw1+sSpnQy2+UHtKMrfq1xmlNoW1
	3ufjUCKrK9OVXiu7qZV+8cgDrf1fKUithgL8xoI+kT2+2baHsHKmVGC3t5JSA/cGx4RV
	nymJiTAWHiS8hqTuDJnvkpcJ7K9zSxE2aTJhbLBKKkyWnMuH2iT8zpAYKxl4lXSE2THI
	Her9mpwl/3T8rsZ8f1Zsdp5yvvRf3rxLPv777zYl9cigEp4Q+FqUIIyS0A0oMcUngI/u
	mnSA==
X-Gm-Message-State: AKaTC03KJEBKTHg0JRuFyIX3pU5YljL+a0ChKV0dEK7pTksBy2Cu2E5HtGJgsiVXVDxfB/Bi4+c/BCAh54gnjQ==
X-Received: by 10.194.66.37 with SMTP id c5mr59087470wjt.138.1481123997130;
	Wed, 07 Dec 2016 07:19:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.169.100 with HTTP; Wed, 7 Dec 2016 07:19:56 -0800 (PST)
In-Reply-To: <CAK18fxHR-X12Hr0R2Ba8=UToVtvWmb979k9+eQi+6yqHvbUN2w@mail.gmail.com>
References: <19a9d76a-2c15-551a-2fce-55d8b8cfe1d0@mlbassoc.com>
	<20161203141606.2899e98c@nuc.betafive.co.uk>
	<CAK18fxFm3ttr1TJxw3+-PJD0A8WMDb0SKMMq2cJxiOwuY7=H1A@mail.gmail.com>
	<9f5e8157-ba81-7486-d761-3fd0ec5de3f9@mlbassoc.com>
	<CAMKF1sq0U1G-c266eCNCGAdw=B0Dcv0dXF7LjG8G=yPd4dFBXg@mail.gmail.com>
	<CAK18fxHR-X12Hr0R2Ba8=UToVtvWmb979k9+eQi+6yqHvbUN2w@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Wed, 7 Dec 2016 16:19:56 +0100
Message-ID: <CAC+thW3268ZaeZ5NnD9x=L9gg_mtLHSU8jTdeAeLJeLr4O7_Mw@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi] Current master broken
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
X-List-Received-Date: Wed, 07 Dec 2016 15:20:01 -0000
Content-Type: multipart/alternative; boundary=089e01494a7cb7e6c40543130d89

--089e01494a7cb7e6c40543130d89
Content-Type: text/plain; charset=UTF-8

On Tue, Dec 6, 2016 at 4:29 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> On Mon, Dec 5, 2016 at 4:50 PM, Khem Raj <raj.khem@gmail.com> wrote:
> > On Sun, Dec 4, 2016 at 10:03 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> >> On 2016-12-05 01:54, Andrei Gherzan wrote:
> >>>
> >>> Hi Gary,
> >>>
> >>>
> >>> On Sat, Dec 3, 2016 at 2:16 PM, Paul Barker <paul@paulbarker.me.uk>
> wrote:
> >>>>
> >>>> On Sat, 3 Dec 2016 08:33:40 +0100
> >>>> Gary Thomas <gary@mlbassoc.com> wrote:
> >>>>
> >>>>> I'm currently unable to build for the RaspberryPi-3 using the master
> >>>>> branch:
> >>>>>
> >>>>> Build Configuration:
> >>>>> BB_VERSION        = "1.32.0"
> >>>>> BUILD_SYS         = "x86_64-linux"
> >>>>> NATIVELSBSTRING   = "universal"
> >>>>> TARGET_SYS        = "arm-amltd-linux-gnueabi"
> >>>>> MACHINE           = "raspberrypi3"
> >>>>> DISTRO            = "amltd"
> >>>>> DISTRO_VERSION    = "2.2+snapshot-20161202"
> >>>>> TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
> >>>>> callconvention-hard cortexa7"
> >>>>> TARGET_FPU        = "hard"
> >>>>> meta              = "master:9e63f81c78e284c9b325fe04a1b59e
> 61c7ad8a1a"
> >>>>> meta-amltd        = "master:074120ab3a82cea0ac50d4e9eec891
> 30a860a4fa"
> >>>>> meta-raspberrypi  = "master:44d41bf3e94c4c8fe5ad5a3650572c
> 8d17ef36c9"
> >>>>>
> >>>>> Initialising tasks: 100%
> >>>>> |#############################################################|
> Time:
> >>>>> 0:00:00
> >>>>> Checking sstate mirror object availability: 100%
> >>>>> |#####################################| Time: 0:00:00
> >>>>> NOTE: Executing SetScene Tasks
> >>>>> NOTE: Executing RunQueue Tasks
> >>>>> ERROR: linux-raspberrypi-1_4.4.28+gitAUTOINC+5afda48c34-r0
> >>>>> do_kernel_metadata: Function failed: do_kernel_metadata (log
> >>>>> file is located at
> >>>>>
> >>>>> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-
> gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/
> temp/log.do_kernel_metadata.5647)
> >>>>> ERROR: Logfile of failure stored in:
> >>>>>
> >>>>> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-
> gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/
> temp/log.do_kernel_metadata.5647
> >>>>> Log data follows:
> >>>>> | DEBUG: Executing shell function do_kernel_metadata
> >>>>> | [ERROR]: processing of file /tmp/tmp.bXPr8PVPz3 failed
> >>>>> |
> >>>>> /build/rpi3_2016-09-13/tmp/sysroots/x86_64-linux/usr/bin/
> scc-cmds/patch.cmd:
> >>>>> line 29: : No such file or directory
> >>>>> |
> >>>>> | Context around the error is:
> >>>>> |
> >>>>> |     #
> >>>>> |     prefix
> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/
> linux/linux-raspberrypi/
> >>>>> |     kconf non-hardware
> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/
> linux/linux-raspberrypi/defconfig
> >>>>> |     prefix
> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/
> linux/linux-raspberrypi-4.4/
> >>>>> |     patch
> >>>>> "/local/poky-cutting-edge/meta-raspberrypi/recipes-
> kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch"
> >>>>> |     # run time: 0 seconds
> >>>>> |     # processed files:
> >>>>> |     # _cfg
> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/
> linux/linux-raspberrypi/defconfig
> >>>>> |     # _cfg
> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/
> linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
> >>>>> |
> >>>>> | See pre-processed file /tmp/tmp.bXPr8PVPz3 for more details
> >>>>> | #
> >>>>> | # scc v0.8
> >>>>> | # processed: Fri Dec  2 04:12:25 CET 2016
> >>>>> | #
> >>>>> | # This is a scc output file, do not edit
> >>>>> | #
> >>>>> | [ERROR]: processing of file /tmp/tmp.eTLAT789Q2 failed
> >>>>> | # _reloc_dir
> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux
> >>>>> | # _reloc_dir
> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux
> >>>>> |
> >>>>> /build/rpi3_2016-09-13/tmp/sysroots/x86_64-linux/usr/bin/
> scc-cmds/patch.cmd:
> >>>>> line 29: : No such file or directory
> >>>>> |
> >>>>> | Context around the error is:
> >>>>> |
> >>>>> |     #
> >>>>> |     prefix
> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/
> linux/linux-raspberrypi/
> >>>>> |     kconf non-hardware
> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/
> linux/linux-raspberrypi/defconfig
> >>>>> |     prefix
> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/
> linux/linux-raspberrypi-4.4/
> >>>>> |     patch
> >>>>> "/local/poky-cutting-edge/meta-raspberrypi/recipes-
> kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch"
> >>>>> |     # run time: 1 seconds
> >>>>> |     # processed files:
> >>>>> |     # _cfg
> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/
> linux/linux-raspberrypi/defconfig
> >>>>> |     # _cfg
> >>>>> /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/
> linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
> >>>>> |
> >>>>> | See pre-processed file /tmp/tmp.eTLAT789Q2 for more details
> >>>>> | WARNING: exit code 1 from a shell command.
> >>>>> | ERROR: Function failed: do_kernel_metadata (log file is located at
> >>>>>
> >>>>> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-
> gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/
> temp/log.do_kernel_metadata.5647)
> >>>>> ERROR: Task
> >>>>> (/local/poky-cutting-edge/meta-raspberrypi/recipes-
> kernel/linux/linux-raspberrypi_4.4.bb:do_kernel_metadata)
> >>>>> failed with exit code '1'
> >>>>>
> >>>>> I also tried kernel version 4.7:
> >>>>> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch:
> >>>>> Fetcher failure: Unable to find revision
> >>>>> a45a35c08598b23f9fd82e49c83b46c7d536244f in branch rpi-4.7.y even
> from
> >>>>> upstream
> >>>>> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch:
> >>>>> Fetcher failure for URL:
> >>>>> 'git://github.com/raspberrypi/linux.git;protocol=git;branch=
> rpi-4.7.y'.
> >>>>> Unable to fetch URL from any source.
> >>>>> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch:
> >>>>> Function failed: base_do_fetch
> >>>>> ERROR: Logfile of failure stored in:
> >>>>>
> >>>>> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-
> gnueabi/linux-raspberrypi/1_4.7.7+gitAUTOINC+a45a35c085-r0/
> temp/log.do_fetch.6133
> >>>>> ERROR: Task
> >>>>> (/local/poky-cutting-edge/meta-raspberrypi/recipes-
> kernel/linux/linux-raspberrypi_4.7.bb:do_fetch)
> >>>>> failed
> >>>>> with exit code '1'
> >>>>>
> >>>>> I was able to build with 4.8, but X didn't come up :-(
> >>>>>
> >>>>> Any ideas?
> >>>>>
> >>>>> Note: I changed the 4.7 recipe to use a good revision (c2cbd9c611)
> >>>>> but then I suffered the same problem installing the .dtbo patch :-(
> >>>>>
> >>>>
> >>>> It looks like the following oe-core commit broke the build for
> >>>> meta-raspberrypi:
> >>>>
> >>>>
> >>>> http://git.openembedded.org/openembedded-core/commit/?id=
> 83d10e2acef936b1f38804988f10eafa48db36f9
> >>>>
> >>>> Applying the following patch from the oe-core mailing list fixes it
> for
> >>>> me:
> >>>>
> >>>>
> >>>> http://lists.openembedded.org/pipermail/openembedded-core/
> 2016-December/129567.html
> >>>>
> >>>> I'm just going to apply that locally until it's merged into master.
> >>>
> >>>
> >>> Does the referenced patch by Paul fix your issue here?
> >>
> >>
> >> Yes, for version 4.4.x
> >>
> >> When I tried to build 4.7.x, I got these errors:
> >>
> >> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+c2cbd9c611-r0
> >> do_kernel_version_sanity_check: Package Version
> >> (4.7.7+gitAUTOINC+c2cbd9c611) does not match of kernel being built
> (4.7.10).
> >> Please update the PV variable to match the kernel source.
> >> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+c2cbd9c611-r0
> >> do_kernel_version_sanity_check: Function failed:
> >> do_kernel_version_sanity_check (log file is located at
> >> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-
> gnueabi/linux-raspberrypi/1_4.7.7+gitAUTOINC+c2cbd9c611-r0/
> temp/log.do_kernel_version_sanity_check.2574)
> >> ERROR: Logfile of failure stored in:
> >> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-
> gnueabi/linux-raspberrypi/1_4.7.7+gitAUTOINC+c2cbd9c611-r0/
> temp/log.do_kernel_version_sanity_check.2574
> >> ERROR: Task
> >> (/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-
> raspberrypi_4.7.bb:do_kernel_version_sanity_check)
> >> failed with exit code '1'
> >
> > Yeah there are changes in OE-Core master to catch kernel verison
> > mismatches now and moreover rpi folks rebase the trees except 4.1 and
> > 4.4 none of recipes may hold
> > true with SRCREV after sometime, we should bring this to notice of rpi
> > community if they could instead do merges instead of rebasing the
> > trees we can keep those recipes
> > locked to a given version, otherwise we are forced to move them as
> > soon as the rebase is detected.
>
> I managed to hit this too. @Paul Is that patch coming to oe-core master
> soon?
>

It just landed in oe-core as commit  0fd7da7375f0dcc59b56791fd482de557507c04c
a few hours ago and in yocto too as
commit 80683aa4f8c01b1fab430554838906d3d4aeda10. FYI, without this fix,
also kernel builds of other BSP layers like meta-altera were broken...
those are back to green light now.


> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e01494a7cb7e6c40543130d89
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
ue, Dec 6, 2016 at 4:29 PM, Andrei Gherzan <span dir=3D"ltr">&lt;<a href=3D=
"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=
=3D"gmail-HOEnZb"><div class=3D"gmail-h5">On Mon, Dec 5, 2016 at 4:50 PM, K=
hem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt=
; wrote:<br>
&gt; On Sun, Dec 4, 2016 at 10:03 PM, Gary Thomas &lt;<a href=3D"mailto:gar=
y@mlbassoc.com">gary@mlbassoc.com</a>&gt; wrote:<br>
&gt;&gt; On 2016-12-05 01:54, Andrei Gherzan wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Hi Gary,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Sat, Dec 3, 2016 at 2:16 PM, Paul Barker &lt;<a href=3D"mai=
lto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Sat, 3 Dec 2016 08:33:40 +0100<br>
&gt;&gt;&gt;&gt; Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@=
mlbassoc.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; I&#39;m currently unable to build for the RaspberryPi-=
3 using the master<br>
&gt;&gt;&gt;&gt;&gt; branch:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Build Configuration:<br>
&gt;&gt;&gt;&gt;&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.32.0=
&quot;<br>
&gt;&gt;&gt;&gt;&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x=
86_64-linux&quot;<br>
&gt;&gt;&gt;&gt;&gt; NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;universal&quot;<=
br>
&gt;&gt;&gt;&gt;&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-am=
ltd-linux-gnueabi&quot;<br>
&gt;&gt;&gt;&gt;&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &q=
uot;raspberrypi3&quot;<br>
&gt;&gt;&gt;&gt;&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &q=
uot;amltd&quot;<br>
&gt;&gt;&gt;&gt;&gt; DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;2.2+snapshot-201=
61202&quot;<br>
&gt;&gt;&gt;&gt;&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;arm armv7ve=
 vfp thumb neon vfpv4<br>
&gt;&gt;&gt;&gt;&gt; callconvention-hard cortexa7&quot;<br>
&gt;&gt;&gt;&gt;&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;hard&q=
uot;<br>
&gt;&gt;&gt;&gt;&gt; meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;master:<wbr>9e63f81c78e284c9b325fe04a1b59e<wbr>61c7ad8a1a&quot;<b=
r>
&gt;&gt;&gt;&gt;&gt; meta-amltd=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;master=
:<wbr>074120ab3a82cea0ac50d4e9eec891<wbr>30a860a4fa&quot;<br>
&gt;&gt;&gt;&gt;&gt; meta-raspberrypi=C2=A0 =3D &quot;master:<wbr>44d41bf3e=
94c4c8fe5ad5a3650572c<wbr>8d17ef36c9&quot;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Initialising tasks: 100%<br>
&gt;&gt;&gt;&gt;&gt; |#############################<wbr>###################=
###########<wbr>##| Time:<br>
&gt;&gt;&gt;&gt;&gt; 0:00:00<br>
&gt;&gt;&gt;&gt;&gt; Checking sstate mirror object availability: 100%<br>
&gt;&gt;&gt;&gt;&gt; |#############################<wbr>########| Time: 0:0=
0:00<br>
&gt;&gt;&gt;&gt;&gt; NOTE: Executing SetScene Tasks<br>
&gt;&gt;&gt;&gt;&gt; NOTE: Executing RunQueue Tasks<br>
&gt;&gt;&gt;&gt;&gt; ERROR: linux-raspberrypi-1_4.4.28+<wbr>gitAUTOINC+5afd=
a48c34-r0<br>
&gt;&gt;&gt;&gt;&gt; do_kernel_metadata: Function failed: do_kernel_metadat=
a (log<br>
&gt;&gt;&gt;&gt;&gt; file is located at<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; /build/rpi3_2016-09-13/tmp/<wbr>work/raspberrypi3-amlt=
d-linux-<wbr>gnueabi/linux-raspberrypi/1_4.<wbr>4.28+gitAUTOINC+5afda48c34-=
r0/<wbr>temp/log.do_kernel_metadata.<wbr>5647)<br>
&gt;&gt;&gt;&gt;&gt; ERROR: Logfile of failure stored in:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; /build/rpi3_2016-09-13/tmp/<wbr>work/raspberrypi3-amlt=
d-linux-<wbr>gnueabi/linux-raspberrypi/1_4.<wbr>4.28+gitAUTOINC+5afda48c34-=
r0/<wbr>temp/log.do_kernel_metadata.<wbr>5647<br>
&gt;&gt;&gt;&gt;&gt; Log data follows:<br>
&gt;&gt;&gt;&gt;&gt; | DEBUG: Executing shell function do_kernel_metadata<b=
r>
&gt;&gt;&gt;&gt;&gt; | [ERROR]: processing of file /tmp/tmp.bXPr8PVPz3 fail=
ed<br>
&gt;&gt;&gt;&gt;&gt; |<br>
&gt;&gt;&gt;&gt;&gt; /build/rpi3_2016-09-13/tmp/<wbr>sysroots/x86_64-linux/=
usr/bin/<wbr>scc-cmds/patch.cmd:<br>
&gt;&gt;&gt;&gt;&gt; line 29: : No such file or directory<br>
&gt;&gt;&gt;&gt;&gt; |<br>
&gt;&gt;&gt;&gt;&gt; | Context around the error is:<br>
&gt;&gt;&gt;&gt;&gt; |<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0#<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0prefix<br>
&gt;&gt;&gt;&gt;&gt; /local/poky-cutting-edge/meta-<wbr>raspberrypi/recipes=
-kernel/<wbr>linux/linux-raspberrypi/<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0kconf non-hardware<br>
&gt;&gt;&gt;&gt;&gt; /local/poky-cutting-edge/meta-<wbr>raspberrypi/recipes=
-kernel/<wbr>linux/linux-raspberrypi/<wbr>defconfig<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0prefix<br>
&gt;&gt;&gt;&gt;&gt; /local/poky-cutting-edge/meta-<wbr>raspberrypi/recipes=
-kernel/<wbr>linux/linux-raspberrypi-4.4/<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0patch<br>
&gt;&gt;&gt;&gt;&gt; &quot;/local/poky-cutting-edge/<wbr>meta-raspberrypi/r=
ecipes-<wbr>kernel/linux/linux-<wbr>raspberrypi-4.4/0001-fix-dtbo-<wbr>rule=
s.patch&quot;<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0# run time: 0 seconds<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0# processed files:<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0# _cfg<br>
&gt;&gt;&gt;&gt;&gt; /local/poky-cutting-edge/meta-<wbr>raspberrypi/recipes=
-kernel/<wbr>linux/linux-raspberrypi/<wbr>defconfig<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0# _cfg<br>
&gt;&gt;&gt;&gt;&gt; /local/poky-cutting-edge/meta-<wbr>raspberrypi/recipes=
-kernel/<wbr>linux/linux-raspberrypi-4.4/<wbr>0001-fix-dtbo-rules.patch<br>
&gt;&gt;&gt;&gt;&gt; |<br>
&gt;&gt;&gt;&gt;&gt; | See pre-processed file /tmp/tmp.bXPr8PVPz3 for more =
details<br>
&gt;&gt;&gt;&gt;&gt; | #<br>
&gt;&gt;&gt;&gt;&gt; | # scc v0.8<br>
&gt;&gt;&gt;&gt;&gt; | # processed: Fri Dec=C2=A0 2 04:12:25 CET 2016<br>
&gt;&gt;&gt;&gt;&gt; | #<br>
&gt;&gt;&gt;&gt;&gt; | # This is a scc output file, do not edit<br>
&gt;&gt;&gt;&gt;&gt; | #<br>
&gt;&gt;&gt;&gt;&gt; | [ERROR]: processing of file /tmp/tmp.eTLAT789Q2 fail=
ed<br>
&gt;&gt;&gt;&gt;&gt; | # _reloc_dir<br>
&gt;&gt;&gt;&gt;&gt; /local/poky-cutting-edge/meta-<wbr>raspberrypi/recipes=
-kernel/<wbr>linux<br>
&gt;&gt;&gt;&gt;&gt; | # _reloc_dir<br>
&gt;&gt;&gt;&gt;&gt; /local/poky-cutting-edge/meta-<wbr>raspberrypi/recipes=
-kernel/<wbr>linux<br>
&gt;&gt;&gt;&gt;&gt; |<br>
&gt;&gt;&gt;&gt;&gt; /build/rpi3_2016-09-13/tmp/<wbr>sysroots/x86_64-linux/=
usr/bin/<wbr>scc-cmds/patch.cmd:<br>
&gt;&gt;&gt;&gt;&gt; line 29: : No such file or directory<br>
&gt;&gt;&gt;&gt;&gt; |<br>
&gt;&gt;&gt;&gt;&gt; | Context around the error is:<br>
&gt;&gt;&gt;&gt;&gt; |<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0#<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0prefix<br>
&gt;&gt;&gt;&gt;&gt; /local/poky-cutting-edge/meta-<wbr>raspberrypi/recipes=
-kernel/<wbr>linux/linux-raspberrypi/<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0kconf non-hardware<br>
&gt;&gt;&gt;&gt;&gt; /local/poky-cutting-edge/meta-<wbr>raspberrypi/recipes=
-kernel/<wbr>linux/linux-raspberrypi/<wbr>defconfig<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0prefix<br>
&gt;&gt;&gt;&gt;&gt; /local/poky-cutting-edge/meta-<wbr>raspberrypi/recipes=
-kernel/<wbr>linux/linux-raspberrypi-4.4/<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0patch<br>
&gt;&gt;&gt;&gt;&gt; &quot;/local/poky-cutting-edge/<wbr>meta-raspberrypi/r=
ecipes-<wbr>kernel/linux/linux-<wbr>raspberrypi-4.4/0001-fix-dtbo-<wbr>rule=
s.patch&quot;<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0# run time: 1 seconds<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0# processed files:<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0# _cfg<br>
&gt;&gt;&gt;&gt;&gt; /local/poky-cutting-edge/meta-<wbr>raspberrypi/recipes=
-kernel/<wbr>linux/linux-raspberrypi/<wbr>defconfig<br>
&gt;&gt;&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0# _cfg<br>
&gt;&gt;&gt;&gt;&gt; /local/poky-cutting-edge/meta-<wbr>raspberrypi/recipes=
-kernel/<wbr>linux/linux-raspberrypi-4.4/<wbr>0001-fix-dtbo-rules.patch<br>
&gt;&gt;&gt;&gt;&gt; |<br>
&gt;&gt;&gt;&gt;&gt; | See pre-processed file /tmp/tmp.eTLAT789Q2 for more =
details<br>
&gt;&gt;&gt;&gt;&gt; | WARNING: exit code 1 from a shell command.<br>
&gt;&gt;&gt;&gt;&gt; | ERROR: Function failed: do_kernel_metadata (log file=
 is located at<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; /build/rpi3_2016-09-13/tmp/<wbr>work/raspberrypi3-amlt=
d-linux-<wbr>gnueabi/linux-raspberrypi/1_4.<wbr>4.28+gitAUTOINC+5afda48c34-=
r0/<wbr>temp/log.do_kernel_metadata.<wbr>5647)<br>
&gt;&gt;&gt;&gt;&gt; ERROR: Task<br>
&gt;&gt;&gt;&gt;&gt; (/local/poky-cutting-edge/<wbr>meta-raspberrypi/recipe=
s-<wbr>kernel/linux/linux-<wbr>raspberrypi_4.4.bb:do_kernel_<wbr>metadata)<=
br>
&gt;&gt;&gt;&gt;&gt; failed with exit code &#39;1&#39;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; I also tried kernel version 4.7:<br>
&gt;&gt;&gt;&gt;&gt; ERROR: linux-raspberrypi-1_4.7.7+<wbr>gitAUTOINC+a45a3=
5c085-r0 do_fetch:<br>
&gt;&gt;&gt;&gt;&gt; Fetcher failure: Unable to find revision<br>
&gt;&gt;&gt;&gt;&gt; a45a35c08598b23f9fd82e49c83b46<wbr>c7d536244f in branc=
h rpi-4.7.y even from<br>
&gt;&gt;&gt;&gt;&gt; upstream<br>
&gt;&gt;&gt;&gt;&gt; ERROR: linux-raspberrypi-1_4.7.7+<wbr>gitAUTOINC+a45a3=
5c085-r0 do_fetch:<br>
&gt;&gt;&gt;&gt;&gt; Fetcher failure for URL:<br>
&gt;&gt;&gt;&gt;&gt; &#39;git://<a href=3D"http://github.com/raspberrypi/li=
nux.git;protocol=3Dgit;branch=3Drpi-4.7.y" rel=3D"noreferrer" target=3D"_bl=
ank">github.com/raspberrypi/<wbr>linux.git;protocol=3Dgit;branch=3D<wbr>rpi=
-4.7.y</a>&#39;.<br>
&gt;&gt;&gt;&gt;&gt; Unable to fetch URL from any source.<br>
&gt;&gt;&gt;&gt;&gt; ERROR: linux-raspberrypi-1_4.7.7+<wbr>gitAUTOINC+a45a3=
5c085-r0 do_fetch:<br>
&gt;&gt;&gt;&gt;&gt; Function failed: base_do_fetch<br>
&gt;&gt;&gt;&gt;&gt; ERROR: Logfile of failure stored in:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; /build/rpi3_2016-09-13/tmp/<wbr>work/raspberrypi3-amlt=
d-linux-<wbr>gnueabi/linux-raspberrypi/1_4.<wbr>7.7+gitAUTOINC+a45a35c085-r=
0/<wbr>temp/log.do_fetch.6133<br>
&gt;&gt;&gt;&gt;&gt; ERROR: Task<br>
&gt;&gt;&gt;&gt;&gt; (/local/poky-cutting-edge/<wbr>meta-raspberrypi/recipe=
s-<wbr>kernel/linux/linux-<wbr>raspberrypi_4.7.bb:do_fetch)<br>
&gt;&gt;&gt;&gt;&gt; failed<br>
&gt;&gt;&gt;&gt;&gt; with exit code &#39;1&#39;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; I was able to build with 4.8, but X didn&#39;t come up=
 :-(<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Any ideas?<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Note: I changed the 4.7 recipe to use a good revision =
(c2cbd9c611)<br>
&gt;&gt;&gt;&gt;&gt; but then I suffered the same problem installing the .d=
tbo patch :-(<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; It looks like the following oe-core commit broke the build=
 for<br>
&gt;&gt;&gt;&gt; meta-raspberrypi:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; <a href=3D"http://git.openembedded.org/openembedded-core/c=
ommit/?id=3D83d10e2acef936b1f38804988f10eafa48db36f9" rel=3D"noreferrer" ta=
rget=3D"_blank">http://git.openembedded.org/<wbr>openembedded-core/commit/?=
id=3D<wbr>83d10e2acef936b1f38804988f10ea<wbr>fa48db36f9</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Applying the following patch from the oe-core mailing list=
 fixes it for<br>
&gt;&gt;&gt;&gt; me:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; <a href=3D"http://lists.openembedded.org/pipermail/openemb=
edded-core/2016-December/129567.html" rel=3D"noreferrer" target=3D"_blank">=
http://lists.openembedded.org/<wbr>pipermail/openembedded-core/<wbr>2016-De=
cember/129567.html</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I&#39;m just going to apply that locally until it&#39;s me=
rged into master.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Does the referenced patch by Paul fix your issue here?<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Yes, for version 4.4.x<br>
&gt;&gt;<br>
&gt;&gt; When I tried to build 4.7.x, I got these errors:<br>
&gt;&gt;<br>
&gt;&gt; ERROR: linux-raspberrypi-1_4.7.7+<wbr>gitAUTOINC+c2cbd9c611-r0<br>
&gt;&gt; do_kernel_version_sanity_<wbr>check: Package Version<br>
&gt;&gt; (4.7.7+gitAUTOINC+c2cbd9c611) does not match of kernel being built=
 (4.7.10).<br>
&gt;&gt; Please update the PV variable to match the kernel source.<br>
&gt;&gt; ERROR: linux-raspberrypi-1_4.7.7+<wbr>gitAUTOINC+c2cbd9c611-r0<br>
&gt;&gt; do_kernel_version_sanity_<wbr>check: Function failed:<br>
&gt;&gt; do_kernel_version_sanity_check (log file is located at<br>
&gt;&gt; /build/rpi3_2016-09-13/tmp/<wbr>work/raspberrypi3-amltd-linux-<wbr=
>gnueabi/linux-raspberrypi/1_4.<wbr>7.7+gitAUTOINC+c2cbd9c611-r0/<wbr>temp/=
log.do_kernel_version_<wbr>sanity_check.2574)<br>
&gt;&gt; ERROR: Logfile of failure stored in:<br>
&gt;&gt; /build/rpi3_2016-09-13/tmp/<wbr>work/raspberrypi3-amltd-linux-<wbr=
>gnueabi/linux-raspberrypi/1_4.<wbr>7.7+gitAUTOINC+c2cbd9c611-r0/<wbr>temp/=
log.do_kernel_version_<wbr>sanity_check.2574<br>
&gt;&gt; ERROR: Task<br>
&gt;&gt; (/local/poky-cutting-edge/<wbr>meta-raspberrypi/recipes-<wbr>kerne=
l/linux/linux-<wbr>raspberrypi_4.7.bb:do_kernel_<wbr>version_sanity_check)<=
br>
&gt;&gt; failed with exit code &#39;1&#39;<br>
&gt;<br>
&gt; Yeah there are changes in OE-Core master to catch kernel verison<br>
&gt; mismatches now and moreover rpi folks rebase the trees except 4.1 and<=
br>
&gt; 4.4 none of recipes may hold<br>
&gt; true with SRCREV after sometime, we should bring this to notice of rpi=
<br>
&gt; community if they could instead do merges instead of rebasing the<br>
&gt; trees we can keep those recipes<br>
&gt; locked to a given version, otherwise we are forced to move them as<br>
&gt; soon as the rebase is detected.<br>
<br>
</div></div>I managed to hit this too. @Paul Is that patch coming to oe-cor=
e master soon?<br></blockquote><div><br></div><div>It just landed in oe-cor=
e as commit=C2=A0<span class=3D"gmail-Apple-tab-span" style=3D"white-space:=
pre">	</span>0fd7da7375f0dcc59b56791fd482de557507c04c a few hours ago and i=
n yocto too as commit=C2=A080683aa4f8c01b1fab430554838906d3d4aeda10. FYI, w=
ithout this fix, also kernel builds of other BSP layers like meta-altera we=
re broken... those are back to green light now.=C2=A0</div><div>=C2=A0</div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">
<div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div></div>

--089e01494a7cb7e6c40543130d89--
