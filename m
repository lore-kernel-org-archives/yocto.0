Return-Path: <jfabernathy@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71CC6E00305
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2011 12:44:08 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywm14 with SMTP id 14so3638603ywm.35
	for <yocto@yoctoproject.org>; Wed, 09 Nov 2011 12:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=+hliu6mvF9PMFpft4qimG8fahFxb61d9kNppdClrAk0=;
	b=r6w7MSxCjl7+aB84emhjZcoixXAAwZ/7kNVjFj/AlkQJg9cn5CnGUG7tYT+CdsnvEv
	kZFnMHRtXTr2wjk6Jlyg9ULbVfdV0JKblI2AQBB8R4nPyy9ucmM0kNdef5unRVnMdDkU
	f7aV4hsPrpTaSr7k1ddYtO+hgxrohbHvdZD+Q=
MIME-Version: 1.0
Received: by 10.101.177.9 with SMTP id e9mr1793094anp.152.1320871447546; Wed,
	09 Nov 2011 12:44:07 -0800 (PST)
Received: by 10.236.157.138 with HTTP; Wed, 9 Nov 2011 12:44:07 -0800 (PST)
In-Reply-To: <1320869775.16608.71.camel@elmorro>
References: <CANFv2EnZDD=wXJEz-Q1ovwRA3-+CaEuHErSbNe46S9vk9sNZJA@mail.gmail.com>
	<1320861083.16608.45.camel@elmorro>
	<CANFv2Emq=3mwsK3B3RM1gvHG393WDMUT9jbaQijk=PpBowk-yA@mail.gmail.com>
	<CANFv2E=oMsvLPB--ixZg5W2_h3W3-fYR+rM=sfePo_EMXir2KA@mail.gmail.com>
	<1320867784.16608.49.camel@elmorro>
	<CANFv2Ekw8oxJzEKU46vxGpFZ3Aot9jX=f3heZWCM9NcM8d8qVw@mail.gmail.com>
	<1320869775.16608.71.camel@elmorro>
Date: Wed, 9 Nov 2011 15:44:07 -0500
Message-ID: <CANFv2Em=e8XPFz8HKf09N-s7yfF5ZiVB3N7O8+Yse-McQ1qvkQ@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build failure on crownbay with EMGD
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 09 Nov 2011 20:44:09 -0000
Content-Type: multipart/alternative; boundary=00163691fb3d6ccdd404b15359f3

--00163691fb3d6ccdd404b15359f3
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Nov 9, 2011 at 3:16 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:

>  On Wed, 2011-11-09 at 12:03 -0800, James Abernathy wrote:
> >
> >
> > On Wed, Nov 9, 2011 at 2:43 PM, Tom Zanussi <tom.zanussi@intel.com>
> > wrote:
> >
> >
> >         On Wed, 2011-11-09 at 10:24 -0800, James Abernathy wrote:
> >         >
> >         >
> >         > On Wed, Nov 9, 2011 at 12:56 PM, James Abernathy
> >         > <jfabernathy@gmail.com> wrote:
> >         >
> >         >
> >         >         On Wed, Nov 9, 2011 at 12:51 PM, Tom Zanussi
> >         >         <tom.zanussi@intel.com> wrote:
> >         >                 On Wed, 2011-11-09 at 09:41 -0800, James
> >         Abernathy
> >         >                 wrote:
> >         >                 > In the past I've built the crownbay-noemgd
> >         >                 successfully, using the
> >         >                 > Development Manual Appendix A corrected
> >         instructions
> >         >                 that have been
> >         >                 > patched.  I thought I'd try my hand at
> >         building the
> >         >                 crownbay with EMGD
> >         >                 > this time.  Following the instructions in
> >         the
> >         >                 Appendix A, but using
> >         >                 > the opposite instructions related to EMGD,
> >         plus
> >         >                 installing EMGD per
> >         >                 > the instructions in the README file in the
> >         >                 meta-crownbay directory, I
> >         >                 > got a long way into the build, but failed
> >         toward the
> >         >                 end in what looks
> >         >                 > like a dependance issue.  Can someone spot
> >         what I
> >         >                 need to change???
> >         >                 >
> >         >
> >         >
> >         >                 Yes, you've hit the missing step added to
> >         the update
> >         >                 release notes here:
> >         >
> >         >
> >
> http://www.yoctoproject.org/download/bsp/intel-atom-processor-e660-intel-platform-controller-hub-eg20t-development-kit-1
> >         >
> >         >
> >         >                 7. Remove the following unused file from the
> >         emgd
> >         >                 binaries in order to
> >         >                 avoid a packaging error at build-time:
> >         >                        $ rm
> >         >
> >
> meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/lib/dri/emgd_drv_video.so
> >         >
> >         >
> >         >                 This was an omission in the README, queued
> >         for the
> >         >                 next edison point
> >         >                 release.
> >         >
> >         >         If I remember my MeeGo stuff, then removing this
> >         file will
> >         >         eliminate the ability to do Media decode
> >         acceleration??
> >         >
> >         >
> >         > Not sure what it takes to get past this error. Just removing
> >         the file
> >         > and rerunning bitbake gets the same error.  Do I need
> >         > to reset something before rerunning???
> >         >
> >
> >
> >         You should bump the PR of emgd-driver-bin_1.8.bb to get it to
> >         use the
> >         new contents i.e.
> >
> >         change
> >
> >         PR = "r7"
> >
> >         to
> >
> >         PR = "r8"
> >
> >         To
> > Okay, that fixed the issue. Now, how was I to know that? Is that a
> > basic step in reruns? I'm guessing if I started from scratch and rm'ed
> > the video file the first time it would have run with PR = "r7"?
> >
> > Let me know what I should have read to know about the PR setting
> >
>
> Yeah, in general, if you change a package, you need to update the PR so
> it gets rebuilt.
>
> It's described here:
>
> http://www.yoctoproject.org/docs/1.1/poky-ref-manual/poky-ref-manual.html
>
> 3.4.3. Package Revision Incrementing
>
>
> Admittedly, it might not be something a beginner would easily find, but
> on the other hand, the instructions assume you're doing the setup before
> a first build where rebuilding the package wouldn't matter.  On the
> other hand, I guess the reason it happened in the first place was due to
> the omission in the README, which by necessity could only be addressed
> in the release notes for the BSP.  So we probably need to add a note to
> bump the PR to the addition in the release notes as well.  Sound right?
>
> Tom
>
>
I was one chapter behind. :-)   I guess for my background there are a lot
of new concepts.
In normal kernel development, back in the day, you edited a file and the
date changed and make found it
and it's dependencies, then rebuilt those. Maybe PR solves some problem
that forced us to
do make clean or make mrproper.

JIm A


>  > Thanks,
> >
> > JIm A
> >
> >
> >         >         Jim A
> >         >
> >         >                 Tom
> >         >
> >         >                 > NOTE: Running noexec task 4432 of 4436
> >         (ID:
> >         >                 >
> >         >
> >         715, /home/jim/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb
> ,
> >         >                 > do_package_write)
> >         >                 > NOTE: package eglibc-locale-2.13-r16: task
> >         >                 do_package_write_rpm:
> >         >                 > Succeeded
> >         >                 > NOTE: Running task 4433 of 4436 (ID:
> >         >                 >
> >         >
> >         8, /home/jim/poky/meta/recipes-sato/images/core-image-sato.bb,
> >         >                 > do_rootfs)
> >         >                 > NOTE: Running noexec task 4434 of 4436
> >         (ID:
> >         >                 >
> >         >
> >         260, /home/jim/poky/meta/recipes-core/eglibc/
> eglibc-locale_2.13.bb,
> >         >                 > do_package_write)
> >         >                 > NOTE: package core-image-sato-1.0-r0: task
> >         >                 do_rootfs: Started
> >         >                 > ERROR: Function 'do_rootfs' failed
> >         >                 >
> >         >
> >         (see
> /home/jim/poky/build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_rootfs.29608
> for further information)
> >         >                 > ERROR: Logfile of failure stored
> >         >                 >
> >         >
> >         in:
> /home/jim/poky/build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_rootfs.29608
> >         >                 > Log data follows:
> >         >                 > | Generating solve db
> >         >                 >
> >         for /home/jim/poky/build/tmp/deploy/rpm/mymachine...
> >         >                 > |    total:               1      0.000000
> >         MB
> >         >                  1.251276 secs
> >         >                 > |    fingerprint:      1179      0.007580
> >         MB
> >         >                  0.225419 secs
> >         >                 > |    install:           393      0.000000
> >         MB
> >         >                  0.467978 secs
> >         >                 > |    dbadd:             393      0.000000
> >         MB
> >         >                  0.458049 secs
> >         >                 > |    dbget:            2413      0.000000
> >         MB
> >         >                  0.002657 secs
> >         >                 > |    dbput:             393      1.816904
> >         MB
> >         >                  0.387933 secs
> >         >                 > |    readhdr:          3931      3.623312
> >         MB
> >         >                  0.007842 secs
> >         >                 > |    hdrload:          1965      5.352088
> >         MB
> >         >                  0.015769 secs
> >         >                 > |    hdrget:          67287      0.000000
> >         MB
> >         >                  0.025251 secs
> >         >                 > | Generating solve db
> >         >
> >         for /home/jim/poky/build/tmp/deploy/rpm/core2...
> >         >                 > |    total:               1      0.000000
> >         MB
> >         >                 30.690842 secs
> >         >                 > |    fingerprint:     16377      0.192190
> >         MB
> >         >                  1.357263 secs
> >         >                 > |    install:          5459      0.000000
> >         MB
> >         >                  9.185276 secs
> >         >                 > |    dbadd:            5459      0.000000
> >         MB
> >         >                  8.997421 secs
> >         >                 > |    dbget:           61190      0.000000
> >         MB
> >         >                  0.097393 secs
> >         >                 > |    dbput:            5459     27.436448
> >         MB
> >         >                  8.057184 secs
> >         >                 > |    readhdr:         54591     55.326554
> >         MB
> >         >                  0.216373 secs
> >         >                 > |    hdrload:         27777     84.106654
> >         MB
> >         >                  0.241450 secs
> >         >                 > |    hdrget:         982855      0.000000
> >         MB
> >         >                  0.367838 secs
> >         >                 > | Generating solve db
> >         >
> >         for /home/jim/poky/build/tmp/deploy/rpm/all...
> >         >                 > |    total:               1      0.000000
> >         MB
> >         >                  0.123502 secs
> >         >                 > |    fingerprint:        96      0.003258
> >         MB
> >         >                  0.004244 secs
> >         >                 > |    install:            32      0.000000
> >         MB
> >         >                  0.065233 secs
> >         >                 > |    dbadd:              32      0.000000
> >         MB
> >         >                  0.062755 secs
> >         >                 > |    dbget:             585      0.000000
> >         MB
> >         >                  0.000230 secs
> >         >                 > |    dbput:              32      0.259492
> >         MB
> >         >                  0.039171 secs
> >         >                 > |    readhdr:           321      0.520536
> >         MB
> >         >                  0.000570 secs
> >         >                 > |    hdrload:           160      0.772764
> >         MB
> >         >                  0.001263 secs
> >         >                 > |    hdrget:           5288      0.000000
> >         MB
> >         >                  0.002207 secs
> >         >                 > | Generating solve db
> >         >
> >         for /home/jim/poky/build/tmp/deploy/rpm/all...
> >         >                 > |    total:               1      0.000000
> >         MB
> >         >                  0.111927 secs
> >         >                 > |    fingerprint:        96      0.003258
> >         MB
> >         >                  0.004173 secs
> >         >                 > |    install:            32      0.000000
> >         MB
> >         >                  0.057706 secs
> >         >                 > |    dbadd:              32      0.000000
> >         MB
> >         >                  0.055191 secs
> >         >                 > |    dbget:             585      0.000000
> >         MB
> >         >                  0.000204 secs
> >         >                 > |    dbput:              32      0.259492
> >         MB
> >         >                  0.034089 secs
> >         >                 > |    readhdr:           321      0.520536
> >         MB
> >         >                  0.000673 secs
> >         >                 > |    hdrload:           160      0.772764
> >         MB
> >         >                  0.001158 secs
> >         >                 > |    hdrget:           5288      0.000000
> >         MB
> >         >                  0.001854 secs
> >         >                 > | Processing locale-base-en-us...
> >         >                 > | Processing locale-base-en-gb...
> >         >                 > | Processing task-core-boot...
> >         >                 > | Processing task-core-apps-console...
> >         >                 > | Processing task-core-ssh-dropbear...
> >         >                 > | Processing task-core-apps-x11-pimlico...
> >         >                 > | Processing task-core-x11-sato...
> >         >                 > | Processing zypper...
> >         >                 > | Processing task-core-x11-base...
> >         >                 > | Processing task-core-apps-x11-games...
> >         >                 > | Processing task-core-apps-x11-core...
> >         >                 > | Processing task-base-extended...
> >         >                 > | Processing rpm...
> >         >                 > | error: Failed dependencies:
> >         >                 > |     libva.so.1 is needed by
> >         libegl1-1.8-r7.core2
> >         >                 > | ERROR: Function 'do_rootfs' failed
> >         >                 >
> >         >
> >         (see
> /home/jim/poky/build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_rootfs.29608
> for further information)
> >         >                 > NOTE: package core-image-sato-1.0-r0: task
> >         >                 do_rootfs: Failed
> >         >                 > ERROR: Task 8
> >         >                 >
> >         >
> >         (/home/jim/poky/meta/recipes-sato/images/core-image-sato.bb,
> >         >                 > do_rootfs) failed with exit code '1'
> >         >                 > ERROR:
> >         >
> >         '/home/jim/poky/meta/recipes-sato/images/core-image-sato.bb'
> >         >                 > failed
> >         >                 > jim@jim-ubuntu:~/poky/build$
> >         >                 >
> >         >                 >
> >         >
> >         >
> >         >
> >         >
> >         >
> >
> >
> >
>
>
>

--00163691fb3d6ccdd404b15359f3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>
<div class=3D"gmail_quote">On Wed, Nov 9, 2011 at 3:16 PM, Tom Zanussi <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:tom.zanussi@intel.com">tom.zanussi@inte=
l.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT: #ccc 1px solid; MARGIN: 0px 0px 0px 0.8ex=
; PADDING-LEFT: 1ex" class=3D"gmail_quote">
<div class=3D"HOEnZb">
<div class=3D"h5">On Wed, 2011-11-09 at 12:03 -0800, James Abernathy wrote:=
<br>&gt;<br>&gt;<br>&gt; On Wed, Nov 9, 2011 at 2:43 PM, Tom Zanussi &lt;<a=
 href=3D"mailto:tom.zanussi@intel.com">tom.zanussi@intel.com</a>&gt;<br>&gt=
; wrote:<br>
&gt;<br>&gt;<br>&gt; =A0 =A0 =A0 =A0 On Wed, 2011-11-09 at 10:24 -0800, Jam=
es Abernathy wrote:<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 &g=
t;<br>&gt; =A0 =A0 =A0 =A0 &gt; On Wed, Nov 9, 2011 at 12:56 PM, James Aber=
nathy<br>&gt; =A0 =A0 =A0 =A0 &gt; &lt;<a href=3D"mailto:jfabernathy@gmail.=
com">jfabernathy@gmail.com</a>&gt; wrote:<br>
&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =
=A0 &gt; =A0 =A0 =A0 =A0 On Wed, Nov 9, 2011 at 12:51 PM, Tom Zanussi<br>&g=
t; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 &lt;<a href=3D"mailto:tom.zanussi@i=
ntel.com">tom.zanussi@intel.com</a>&gt; wrote:<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 On Wed, 2011-11-0=
9 at 09:41 -0800, James<br>&gt; =A0 =A0 =A0 =A0 Abernathy<br>&gt; =A0 =A0 =
=A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 wrote:<br>&gt; =A0 =A0 =A0 =A0=
 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; In the past I&#39;ve built the c=
rownbay-noemgd<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 successfully, usi=
ng the<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; De=
velopment Manual Appendix A corrected<br>&gt; =A0 =A0 =A0 =A0 instructions<=
br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 that have been=
<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; patched. =A0=
I thought I&#39;d try my hand at<br>&gt; =A0 =A0 =A0 =A0 building the<br>&g=
t; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 crownbay with EMGD<=
br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; this time=
. =A0Following the instructions in<br>
&gt; =A0 =A0 =A0 =A0 the<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 Appendix A, but using<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 &gt; the opposite instructions related to EMGD,<br>&gt;=
 =A0 =A0 =A0 =A0 plus<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 installing EMGD per<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; the instruct=
ions in the README file in the<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 meta-crownbay directory, I<br>&gt; =A0 =A0 =A0 =A0 &gt; =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; got a long way into the build, but fai=
led<br>
&gt; =A0 =A0 =A0 =A0 toward the<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 end in what looks<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 &gt; like a dependance issue. =A0Can someone spot<b=
r>&gt; =A0 =A0 =A0 =A0 what I<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 need to change???<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =
=A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Yes, you&#39;ve hit the missing step added =
to<br>&gt; =A0 =A0 =A0 =A0 the update<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 release notes here:<br>
&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =
=A0 <a href=3D"http://www.yoctoproject.org/download/bsp/intel-atom-processo=
r-e660-intel-platform-controller-hub-eg20t-development-kit-1" target=3D"_bl=
ank">http://www.yoctoproject.org/download/bsp/intel-atom-processor-e660-int=
el-platform-controller-hub-eg20t-development-kit-1</a><br>
&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =
=A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 7. Remove the following unused fil=
e from the<br>&gt; =A0 =A0 =A0 =A0 emgd<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 binaries in order to<br>&gt; =A0 =A0 =A0 =A0 &g=
t; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 avoid a packaging error at build-time:<b=
r>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0$ =
rm<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 meta-intel/common/r=
ecipes-graphics/xorg-xserver/emgd-driver-bin-1.8/lib/dri/emgd_drv_video.so<=
br>&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 This was an omiss=
ion in the README, queued<br>&gt; =A0 =A0 =A0 =A0 for the<br>&gt; =A0 =A0 =
=A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 next edison point<br>&gt; =A0 =
=A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 release.<br>&gt; =A0 =A0 =
=A0 =A0 &gt;<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 If I remember my MeeGo stuff, the=
n removing this<br>&gt; =A0 =A0 =A0 =A0 file will<br>&gt; =A0 =A0 =A0 =A0 &=
gt; =A0 =A0 =A0 =A0 eliminate the ability to do Media decode<br>&gt; =A0 =
=A0 =A0 =A0 acceleration??<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>
&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; Not sure what it tak=
es to get past this error. Just removing<br>&gt; =A0 =A0 =A0 =A0 the file<b=
r>&gt; =A0 =A0 =A0 =A0 &gt; and rerunning bitbake gets the same error. =A0D=
o I need<br>&gt; =A0 =A0 =A0 =A0 &gt; to reset something before rerunning??=
?<br>
&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt;<br>&gt;<br>&gt; =A0 =A0 =A0 =A0 You shoul=
d bump the PR of <a href=3D"http://emgd-driver-bin_1.8.bb/" target=3D"_blan=
k">emgd-driver-bin_1.8.bb</a> to get it to<br>&gt; =A0 =A0 =A0 =A0 use the<=
br>&gt; =A0 =A0 =A0 =A0 new contents i.e.<br>
&gt;<br>&gt; =A0 =A0 =A0 =A0 change<br>&gt;<br>&gt; =A0 =A0 =A0 =A0 PR =3D =
&quot;r7&quot;<br>&gt;<br>&gt; =A0 =A0 =A0 =A0 to<br>&gt;<br>&gt; =A0 =A0 =
=A0 =A0 PR =3D &quot;r8&quot;<br>&gt;<br>&gt; =A0 =A0 =A0 =A0 To<br>&gt; Ok=
ay, that fixed the issue. Now, how was I to know that? Is that a<br>
&gt; basic step in reruns? I&#39;m guessing if I started from scratch and r=
m&#39;ed<br>&gt; the video file the first time it would have run with PR =
=3D &quot;r7&quot;?<br>&gt;<br>&gt; Let me know what I should have read to =
know about the PR setting<br>
&gt;<br><br></div></div>Yeah, in general, if you change a package, you need=
 to update the PR so<br>it gets rebuilt.<br><br>It&#39;s described here:<br=
><br><a href=3D"http://www.yoctoproject.org/docs/1.1/poky-ref-manual/poky-r=
ef-manual.html" target=3D"_blank">http://www.yoctoproject.org/docs/1.1/poky=
-ref-manual/poky-ref-manual.html</a><br>
<br>3.4.3. Package Revision Incrementing<br><br><br>Admittedly, it might no=
t be something a beginner would easily find, but<br>on the other hand, the =
instructions assume you&#39;re doing the setup before<br>a first build wher=
e rebuilding the package wouldn&#39;t matter. =A0On the<br>
other hand, I guess the reason it happened in the first place was due to<br=
>the omission in the README, which by necessity could only be addressed<br>=
in the release notes for the BSP. =A0So we probably need to add a note to<b=
r>
bump the PR to the addition in the release notes as well. =A0Sound right?<b=
r><span class=3D"HOEnZb"><font color=3D"#888888"><br>Tom<br></font></span>
<div class=3D"HOEnZb">
<div class=3D"h5">=A0</div></div></blockquote>
<div>I was one chapter behind. :-)=A0=A0 I guess for my background there ar=
e a lot of new concepts.</div>
<div>In normal kernel development, back in the day, you edited a file and t=
he date changed and make found it </div>
<div>and it&#39;s dependencies, then rebuilt those. Maybe PR solves some pr=
oblem that forced us to</div>
<div>do make clean or make mrproper.</div>
<div>=A0</div>
<div>JIm A</div>
<div>=A0</div>
<blockquote style=3D"BORDER-LEFT: #ccc 1px solid; MARGIN: 0px 0px 0px 0.8ex=
; PADDING-LEFT: 1ex" class=3D"gmail_quote">
<div class=3D"HOEnZb">
<div class=3D"h5">&gt; Thanks,<br>&gt;<br>&gt; JIm A<br>&gt;<br>&gt;<br>&gt=
; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 Jim A<br>&gt; =A0 =A0 =A0 =A0 &gt;<b=
r>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Tom<br>&gt; =A0=
 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 &gt; NOTE: Running noexec task 4432 of 4436<br>
&gt; =A0 =A0 =A0 =A0 (ID:<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 715, =
/home/jim/poky/meta/recipes-kernel/linux/<a href=3D"http://linux-yocto_3.0.=
bb/" target=3D"_blank">linux-yocto_3.0.bb</a>,<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; do_package_w=
rite)<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; NOT=
E: package eglibc-locale-2.13-r16: task<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 do_package_write_rpm:<br>&gt; =A0 =A0 =A0 =A0 &=
gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; Succeeded<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; NOTE: Runnin=
g task 4433 of 4436 (ID:<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 8, /h=
ome/jim/poky/meta/recipes-sato/images/<a href=3D"http://core-image-sato.bb/=
" target=3D"_blank">core-image-sato.bb</a>,<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; do_rootfs)<b=
r>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; NOTE: Runn=
ing noexec task 4434 of 4436<br>&gt; =A0 =A0 =A0 =A0 (ID:<br>&gt; =A0 =A0 =
=A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 &=
gt;<br>&gt; =A0 =A0 =A0 =A0 260, /home/jim/poky/meta/recipes-core/eglibc/<a=
 href=3D"http://eglibc-locale_2.13.bb/" target=3D"_blank">eglibc-locale_2.1=
3.bb</a>,<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; do_package_w=
rite)<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; NOT=
E: package core-image-sato-1.0-r0: task<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 do_rootfs: Started<br>&gt; =A0 =A0 =A0 =A0 &gt;=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; ERROR: Function &#39;do_rootfs&#39; f=
ailed<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =
=A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 (see /home/jim/poky/build/tmp/work=
/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_rootfs.29608 for f=
urther information)<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 &gt; ERROR: Logfile of failure stored<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =
=A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 in: /home/jim/poky/build/tmp/work/=
mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_rootfs.29608<br>&gt=
; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; Log data follow=
s:<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | Generating=
 solve db<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt;=
<br>&gt; =A0 =A0 =A0 =A0 for /home/jim/poky/build/tmp/deploy/rpm/mymachine.=
..<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =A0 =
=A0total: =A0 =A0 =A0 =A0 =A0 =A0 =A0 1 =A0 =A0 =A00.000000<br>
&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A01.251276 secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 &gt; | =A0 =A0fingerprint: =A0 =A0 =A01179 =A0 =A0 =A00.007=
580<br>&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A00.225419 secs<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =A0 =A0ins=
tall: =A0 =A0 =A0 =A0 =A0 393 =A0 =A0 =A00.000000<br>&gt; =A0 =A0 =A0 =A0 M=
B<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00.467978 =
secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =
=A0 =A0dbadd: =A0 =A0 =A0 =A0 =A0 =A0 393 =A0 =A0 =A00.000000<br>
&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A00.458049 secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 &gt; | =A0 =A0dbget: =A0 =A0 =A0 =A0 =A0 =A02413 =A0 =A0 =
=A00.000000<br>&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A00.002657 secs<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =A0 =A0dbp=
ut: =A0 =A0 =A0 =A0 =A0 =A0 393 =A0 =A0 =A01.816904<br>&gt; =A0 =A0 =A0 =A0=
 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00.38793=
3 secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =
=A0 =A0readhdr: =A0 =A0 =A0 =A0 =A03931 =A0 =A0 =A03.623312<br>
&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A00.007842 secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 &gt; | =A0 =A0hdrload: =A0 =A0 =A0 =A0 =A01965 =A0 =A0 =A05=
.352088<br>&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A00.015769 secs<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =A0 =A0hdr=
get: =A0 =A0 =A0 =A0 =A067287 =A0 =A0 =A00.000000<br>&gt; =A0 =A0 =A0 =A0 M=
B<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00.025251 =
secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | Ge=
nerating solve db<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>
&gt; =A0 =A0 =A0 =A0 for /home/jim/poky/build/tmp/deploy/rpm/core2...<br>&g=
t; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =A0 =A0total=
: =A0 =A0 =A0 =A0 =A0 =A0 =A0 1 =A0 =A0 =A00.000000<br>&gt; =A0 =A0 =A0 =A0=
 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 30.690842 =
secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =
=A0 =A0fingerprint: =A0 =A0 16377 =A0 =A0 =A00.192190<br>
&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A01.357263 secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 &gt; | =A0 =A0install: =A0 =A0 =A0 =A0 =A05459 =A0 =A0 =A00=
.000000<br>&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A09.185276 secs<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =A0 =A0dba=
dd: =A0 =A0 =A0 =A0 =A0 =A05459 =A0 =A0 =A00.000000<br>&gt; =A0 =A0 =A0 =A0=
 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A08.99742=
1 secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =
=A0 =A0dbget: =A0 =A0 =A0 =A0 =A0 61190 =A0 =A0 =A00.000000<br>
&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A00.097393 secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 &gt; | =A0 =A0dbput: =A0 =A0 =A0 =A0 =A0 =A05459 =A0 =A0 27=
.436448<br>&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A08.057184 secs<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =A0 =A0rea=
dhdr: =A0 =A0 =A0 =A0 54591 =A0 =A0 55.326554<br>&gt; =A0 =A0 =A0 =A0 MB<br=
>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00.216373 secs=
<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =A0 =
=A0hdrload: =A0 =A0 =A0 =A0 27777 =A0 =A0 84.106654<br>
&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A00.241450 secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 &gt; | =A0 =A0hdrget: =A0 =A0 =A0 =A0 982855 =A0 =A0 =A00.0=
00000<br>&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A00.367838 secs<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | Generating=
 solve db<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 for /home/ji=
m/poky/build/tmp/deploy/rpm/all...<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 &gt; | =A0 =A0total: =A0 =A0 =A0 =A0 =A0 =A0 =A0 1 =A0=
 =A0 =A00.000000<br>
&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A00.123502 secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 &gt; | =A0 =A0fingerprint: =A0 =A0 =A0 =A096 =A0 =A0 =A00.0=
03258<br>&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A00.004244 secs<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =A0 =A0ins=
tall: =A0 =A0 =A0 =A0 =A0 =A032 =A0 =A0 =A00.000000<br>&gt; =A0 =A0 =A0 =A0=
 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00.06523=
3 secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =
=A0 =A0dbadd: =A0 =A0 =A0 =A0 =A0 =A0 =A032 =A0 =A0 =A00.000000<br>
&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A00.062755 secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 &gt; | =A0 =A0dbget: =A0 =A0 =A0 =A0 =A0 =A0 585 =A0 =A0 =
=A00.000000<br>&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A00.000230 secs<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =A0 =A0dbp=
ut: =A0 =A0 =A0 =A0 =A0 =A0 =A032 =A0 =A0 =A00.259492<br>&gt; =A0 =A0 =A0 =
=A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00.03=
9171 secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt;=
 | =A0 =A0readhdr: =A0 =A0 =A0 =A0 =A0 321 =A0 =A0 =A00.520536<br>
&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A00.000570 secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 &gt; | =A0 =A0hdrload: =A0 =A0 =A0 =A0 =A0 160 =A0 =A0 =A00=
.772764<br>&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A00.001263 secs<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =A0 =A0hdr=
get: =A0 =A0 =A0 =A0 =A0 5288 =A0 =A0 =A00.000000<br>&gt; =A0 =A0 =A0 =A0 M=
B<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00.002207 =
secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | Ge=
nerating solve db<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>
&gt; =A0 =A0 =A0 =A0 for /home/jim/poky/build/tmp/deploy/rpm/all...<br>&gt;=
 =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =A0 =A0total: =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 1 =A0 =A0 =A00.000000<br>&gt; =A0 =A0 =A0 =A0 M=
B<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00.111927 =
secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =
=A0 =A0fingerprint: =A0 =A0 =A0 =A096 =A0 =A0 =A00.003258<br>
&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A00.004173 secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 &gt; | =A0 =A0install: =A0 =A0 =A0 =A0 =A0 =A032 =A0 =A0 =
=A00.000000<br>&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A00.057706 secs<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =A0 =A0dba=
dd: =A0 =A0 =A0 =A0 =A0 =A0 =A032 =A0 =A0 =A00.000000<br>&gt; =A0 =A0 =A0 =
=A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00.05=
5191 secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt;=
 | =A0 =A0dbget: =A0 =A0 =A0 =A0 =A0 =A0 585 =A0 =A0 =A00.000000<br>
&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A00.000204 secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 &gt; | =A0 =A0dbput: =A0 =A0 =A0 =A0 =A0 =A0 =A032 =A0 =A0 =
=A00.259492<br>&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A00.034089 secs<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =A0 =A0rea=
dhdr: =A0 =A0 =A0 =A0 =A0 321 =A0 =A0 =A00.520536<br>&gt; =A0 =A0 =A0 =A0 M=
B<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00.000673 =
secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | =
=A0 =A0hdrload: =A0 =A0 =A0 =A0 =A0 160 =A0 =A0 =A00.772764<br>
&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A00.001158 secs<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 &gt; | =A0 =A0hdrget: =A0 =A0 =A0 =A0 =A0 5288 =A0 =A0 =A00=
.000000<br>&gt; =A0 =A0 =A0 =A0 MB<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A00.001854 secs<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | Processing=
 locale-base-en-us...<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 &gt; | Processing locale-base-en-gb...<br>&gt; =A0 =A0 =A0 =A0 &gt;=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | Processing task-core-boot...<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | Processing=
 task-core-apps-console...<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 &gt; | Processing task-core-ssh-dropbear...<br>&gt; =A0 =A0 =
=A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | Processing task-core-ap=
ps-x11-pimlico...<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | Processing=
 task-core-x11-sato...<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 &gt; | Processing zypper...<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 &gt; | Processing task-core-x11-base...<br>&gt; =A0=
 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | Processing task-co=
re-apps-x11-games...<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | Processing=
 task-core-apps-x11-core...<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 &gt; | Processing task-base-extended...<br>&gt; =A0 =A0 =A0=
 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | Processing rpm...<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; | error: Fai=
led dependencies:<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 &gt; | =A0 =A0 libva.so.1 is needed by<br>&gt; =A0 =A0 =A0 =A0 libegl1-=
1.8-r7.core2<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &=
gt; | ERROR: Function &#39;do_rootfs&#39; failed<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =
=A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 (see /home/jim/poky/build/tmp/work=
/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_rootfs.29608 for f=
urther information)<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 &gt; NOTE: package core-image-sato-1.0-r0: task<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 do_rootfs: Failed=
<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; ERROR: T=
ask 8<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt;<br>=
&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 (/home/jim/poky/meta/reci=
pes-sato/images/<a href=3D"http://core-image-sato.bb/" target=3D"_blank">co=
re-image-sato.bb</a>,<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; do_rootfs) f=
ailed with exit code &#39;1&#39;<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 &gt; ERROR:<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =
=A0 =A0 =A0 &#39;/home/jim/poky/meta/recipes-sato/images/<a href=3D"http://=
core-image-sato.bb/" target=3D"_blank">core-image-sato.bb</a>&#39;<br>
&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; failed<br>&g=
t; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt; jim@jim-ubuntu=
:~/poky/build$<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &gt;<br>=
&gt; =A0 =A0 =A0 =A0 &gt;<br>
&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =
=A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt;<br>&gt;<br>&gt;<br><br><br></=
div></div></blockquote></div><br>

--00163691fb3d6ccdd404b15359f3--
