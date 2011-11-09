Return-Path: <jfabernathy@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D588E00305
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2011 10:24:17 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yenm6 with SMTP id m6so2081432yen.35
	for <yocto@yoctoproject.org>; Wed, 09 Nov 2011 10:24:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=l4HGH2xrtuvTs2hluYKKsYOwtyBGLG0UJZokNr1Temw=;
	b=ayFKnAK99Ysu9oG4zWQdxJNRz0a7LTArW7T5YGuwzkn/tiiMJG90LnnH6xouOvsmL8
	x4Gt5xKrgvySGmNsvkst3+4U4cYtxUxbZLItXa39uNIRaRi8Wf6zx/WqoSA/29wSTx9n
	wjCWT//BqOr+I2KYei71Kypkd/zyam2dV/5SE=
MIME-Version: 1.0
Received: by 10.146.27.10 with SMTP id a10mr1606217yaa.25.1320863057276; Wed,
	09 Nov 2011 10:24:17 -0800 (PST)
Received: by 10.236.157.138 with HTTP; Wed, 9 Nov 2011 10:24:17 -0800 (PST)
In-Reply-To: <CANFv2Emq=3mwsK3B3RM1gvHG393WDMUT9jbaQijk=PpBowk-yA@mail.gmail.com>
References: <CANFv2EnZDD=wXJEz-Q1ovwRA3-+CaEuHErSbNe46S9vk9sNZJA@mail.gmail.com>
	<1320861083.16608.45.camel@elmorro>
	<CANFv2Emq=3mwsK3B3RM1gvHG393WDMUT9jbaQijk=PpBowk-yA@mail.gmail.com>
Date: Wed, 9 Nov 2011 13:24:17 -0500
Message-ID: <CANFv2E=oMsvLPB--ixZg5W2_h3W3-fYR+rM=sfePo_EMXir2KA@mail.gmail.com>
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
X-List-Received-Date: Wed, 09 Nov 2011 18:24:18 -0000
Content-Type: multipart/alternative; boundary=000e0cd4c640536dfe04b1516565

--000e0cd4c640536dfe04b1516565
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Nov 9, 2011 at 12:56 PM, James Abernathy <jfabernathy@gmail.com>wrote:

>
>
>  On Wed, Nov 9, 2011 at 12:51 PM, Tom Zanussi <tom.zanussi@intel.com>wrote:
>
>> On Wed, 2011-11-09 at 09:41 -0800, James Abernathy wrote:
>> > In the past I've built the crownbay-noemgd successfully, using the
>> > Development Manual Appendix A corrected instructions that have been
>> > patched.  I thought I'd try my hand at building the crownbay with EMGD
>> > this time.  Following the instructions in the Appendix A, but using
>> > the opposite instructions related to EMGD, plus installing EMGD per
>> > the instructions in the README file in the meta-crownbay directory, I
>> > got a long way into the build, but failed toward the end in what looks
>> > like a dependance issue.  Can someone spot what I need to change???
>> >
>>
>> Yes, you've hit the missing step added to the update release notes here:
>>
>>
>> http://www.yoctoproject.org/download/bsp/intel-atom-processor-e660-intel-platform-controller-hub-eg20t-development-kit-1
>>
>>
>> 7. Remove the following unused file from the emgd binaries in order to
>> avoid a packaging error at build-time:
>>        $ rm
>>
>> meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/lib/dri/emgd_drv_video.so
>>
>>
>> This was an omission in the README, queued for the next edison point
>> release.
>>
>> If I remember my MeeGo stuff, then removing this file will eliminate the
> ability to do Media decode acceleration??
>

Not sure what it takes to get past this error. Just removing the file and
rerunning bitbake gets the same error.  Do I need
to reset something before rerunning???

>
> Jim A
>
>
>> Tom
>>
>> > NOTE: Running noexec task 4432 of 4436 (ID:
>> > 715, /home/jim/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb,
>> > do_package_write)
>> > NOTE: package eglibc-locale-2.13-r16: task do_package_write_rpm:
>> > Succeeded
>> > NOTE: Running task 4433 of 4436 (ID:
>> > 8, /home/jim/poky/meta/recipes-sato/images/core-image-sato.bb,
>> > do_rootfs)
>> > NOTE: Running noexec task 4434 of 4436 (ID:
>> > 260, /home/jim/poky/meta/recipes-core/eglibc/eglibc-locale_2.13.bb,
>> > do_package_write)
>> > NOTE: package core-image-sato-1.0-r0: task do_rootfs: Started
>> > ERROR: Function 'do_rootfs' failed
>> > (see
>> /home/jim/poky/build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_rootfs.29608
>> for further information)
>> > ERROR: Logfile of failure stored
>> > in:
>> /home/jim/poky/build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_rootfs.29608
>> > Log data follows:
>> > | Generating solve db
>> > for /home/jim/poky/build/tmp/deploy/rpm/mymachine...
>> > |    total:               1      0.000000 MB      1.251276 secs
>> > |    fingerprint:      1179      0.007580 MB      0.225419 secs
>> > |    install:           393      0.000000 MB      0.467978 secs
>> > |    dbadd:             393      0.000000 MB      0.458049 secs
>> > |    dbget:            2413      0.000000 MB      0.002657 secs
>> > |    dbput:             393      1.816904 MB      0.387933 secs
>> > |    readhdr:          3931      3.623312 MB      0.007842 secs
>> > |    hdrload:          1965      5.352088 MB      0.015769 secs
>> > |    hdrget:          67287      0.000000 MB      0.025251 secs
>> > | Generating solve db for /home/jim/poky/build/tmp/deploy/rpm/core2...
>> > |    total:               1      0.000000 MB     30.690842 secs
>> > |    fingerprint:     16377      0.192190 MB      1.357263 secs
>> > |    install:          5459      0.000000 MB      9.185276 secs
>> > |    dbadd:            5459      0.000000 MB      8.997421 secs
>> > |    dbget:           61190      0.000000 MB      0.097393 secs
>> > |    dbput:            5459     27.436448 MB      8.057184 secs
>> > |    readhdr:         54591     55.326554 MB      0.216373 secs
>> > |    hdrload:         27777     84.106654 MB      0.241450 secs
>> > |    hdrget:         982855      0.000000 MB      0.367838 secs
>> > | Generating solve db for /home/jim/poky/build/tmp/deploy/rpm/all...
>> > |    total:               1      0.000000 MB      0.123502 secs
>> > |    fingerprint:        96      0.003258 MB      0.004244 secs
>> > |    install:            32      0.000000 MB      0.065233 secs
>> > |    dbadd:              32      0.000000 MB      0.062755 secs
>> > |    dbget:             585      0.000000 MB      0.000230 secs
>> > |    dbput:              32      0.259492 MB      0.039171 secs
>> > |    readhdr:           321      0.520536 MB      0.000570 secs
>> > |    hdrload:           160      0.772764 MB      0.001263 secs
>> > |    hdrget:           5288      0.000000 MB      0.002207 secs
>> > | Generating solve db for /home/jim/poky/build/tmp/deploy/rpm/all...
>> > |    total:               1      0.000000 MB      0.111927 secs
>> > |    fingerprint:        96      0.003258 MB      0.004173 secs
>> > |    install:            32      0.000000 MB      0.057706 secs
>> > |    dbadd:              32      0.000000 MB      0.055191 secs
>> > |    dbget:             585      0.000000 MB      0.000204 secs
>> > |    dbput:              32      0.259492 MB      0.034089 secs
>> > |    readhdr:           321      0.520536 MB      0.000673 secs
>> > |    hdrload:           160      0.772764 MB      0.001158 secs
>> > |    hdrget:           5288      0.000000 MB      0.001854 secs
>> > | Processing locale-base-en-us...
>> > | Processing locale-base-en-gb...
>> > | Processing task-core-boot...
>> > | Processing task-core-apps-console...
>> > | Processing task-core-ssh-dropbear...
>> > | Processing task-core-apps-x11-pimlico...
>> > | Processing task-core-x11-sato...
>> > | Processing zypper...
>> > | Processing task-core-x11-base...
>> > | Processing task-core-apps-x11-games...
>> > | Processing task-core-apps-x11-core...
>> > | Processing task-base-extended...
>> > | Processing rpm...
>> > | error: Failed dependencies:
>> > |     libva.so.1 is needed by libegl1-1.8-r7.core2
>> > | ERROR: Function 'do_rootfs' failed
>> > (see
>> /home/jim/poky/build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_rootfs.29608
>> for further information)
>> > NOTE: package core-image-sato-1.0-r0: task do_rootfs: Failed
>> > ERROR: Task 8
>> > (/home/jim/poky/meta/recipes-sato/images/core-image-sato.bb,
>> > do_rootfs) failed with exit code '1'
>> > ERROR: '/home/jim/poky/meta/recipes-sato/images/core-image-sato.bb'
>> > failed
>> > jim@jim-ubuntu:~/poky/build$
>> >
>> >
>>
>>
>>
>

--000e0cd4c640536dfe04b1516565
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>
<div class=3D"gmail_quote">On Wed, Nov 9, 2011 at 12:56 PM, James Abernathy=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:jfabernathy@gmail.com">jfabernathy=
@gmail.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT: #ccc 1px solid; MARGIN: 0px 0px 0px 0.8ex=
; PADDING-LEFT: 1ex" class=3D"gmail_quote"><br><br>
<div class=3D"gmail_quote">
<div class=3D"im">On Wed, Nov 9, 2011 at 12:51 PM, Tom Zanussi <span dir=3D=
"ltr">&lt;<a href=3D"mailto:tom.zanussi@intel.com" target=3D"_blank">tom.za=
nussi@intel.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT: #ccc 1px solid; MARGIN: 0px 0px 0px 0.8ex=
; PADDING-LEFT: 1ex" class=3D"gmail_quote">
<div>On Wed, 2011-11-09 at 09:41 -0800, James Abernathy wrote:<br>&gt; In t=
he past I&#39;ve built the crownbay-noemgd successfully, using the<br>&gt; =
Development Manual Appendix A corrected instructions that have been<br>
&gt; patched. =A0I thought I&#39;d try my hand at building the crownbay wit=
h EMGD<br>&gt; this time. =A0Following the instructions in the Appendix A, =
but using<br>&gt; the opposite instructions related to EMGD, plus installin=
g EMGD per<br>
&gt; the instructions in the README file in the meta-crownbay directory, I<=
br>&gt; got a long way into the build, but failed toward the end in what lo=
oks<br>&gt; like a dependance issue. =A0Can someone spot what I need to cha=
nge???<br>
&gt;<br><br></div>Yes, you&#39;ve hit the missing step added to the update =
release notes here:<br><br><a href=3D"http://www.yoctoproject.org/download/=
bsp/intel-atom-processor-e660-intel-platform-controller-hub-eg20t-developme=
nt-kit-1" target=3D"_blank">http://www.yoctoproject.org/download/bsp/intel-=
atom-processor-e660-intel-platform-controller-hub-eg20t-development-kit-1</=
a><br>
<br><br>7. Remove the following unused file from the emgd binaries in order=
 to<br>avoid a packaging error at build-time:<br>=A0 =A0 =A0 =A0$ rm<br>met=
a-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/lib/dri/em=
gd_drv_video.so<br>
<br><br>This was an omission in the README, queued for the next edison poin=
t<br>release.<br><span><font color=3D"#888888"><br></font></span></blockquo=
te></div>
<div>If I remember my MeeGo stuff, then removing this file will eliminate t=
he ability to do Media decode acceleration??</div>
<div></div></div></blockquote>
<div>=A0</div>
<div>Not sure what it takes to get past this error. Just removing the file =
and rerunning bitbake gets the same error.=A0=A0Do I need</div>
<div>to reset something before rerunning???</div>
<blockquote style=3D"BORDER-LEFT: #ccc 1px solid; MARGIN: 0px 0px 0px 0.8ex=
; PADDING-LEFT: 1ex" class=3D"gmail_quote">
<div class=3D"gmail_quote">
<div>=A0</div>
<div>Jim A</div>
<div>
<div class=3D"h5">
<div>=A0</div>
<blockquote style=3D"BORDER-LEFT: #ccc 1px solid; MARGIN: 0px 0px 0px 0.8ex=
; PADDING-LEFT: 1ex" class=3D"gmail_quote"><span><font color=3D"#888888">To=
m<br></font></span>
<div>
<div><br>&gt; NOTE: Running noexec task 4432 of 4436 (ID:<br>&gt; 715, /hom=
e/jim/poky/meta/recipes-kernel/linux/<a href=3D"http://linux-yocto_3.0.bb/"=
 target=3D"_blank">linux-yocto_3.0.bb</a>,<br>&gt; do_package_write)<br>&gt=
; NOTE: package eglibc-locale-2.13-r16: task do_package_write_rpm:<br>
&gt; Succeeded<br>&gt; NOTE: Running task 4433 of 4436 (ID:<br>&gt; 8, /hom=
e/jim/poky/meta/recipes-sato/images/<a href=3D"http://core-image-sato.bb/" =
target=3D"_blank">core-image-sato.bb</a>,<br>&gt; do_rootfs)<br>&gt; NOTE: =
Running noexec task 4434 of 4436 (ID:<br>
&gt; 260, /home/jim/poky/meta/recipes-core/eglibc/<a href=3D"http://eglibc-=
locale_2.13.bb/" target=3D"_blank">eglibc-locale_2.13.bb</a>,<br>&gt; do_pa=
ckage_write)<br>&gt; NOTE: package core-image-sato-1.0-r0: task do_rootfs: =
Started<br>
&gt; ERROR: Function &#39;do_rootfs&#39; failed<br>&gt; (see /home/jim/poky=
/build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_roo=
tfs.29608 for further information)<br>&gt; ERROR: Logfile of failure stored=
<br>
&gt; in: /home/jim/poky/build/tmp/work/mymachine-poky-linux/core-image-sato=
-1.0-r0/temp/log.do_rootfs.29608<br>&gt; Log data follows:<br>&gt; | Genera=
ting solve db<br>&gt; for /home/jim/poky/build/tmp/deploy/rpm/mymachine...<=
br>
&gt; | =A0 =A0total: =A0 =A0 =A0 =A0 =A0 =A0 =A0 1 =A0 =A0 =A00.000000 MB =
=A0 =A0 =A01.251276 secs<br>&gt; | =A0 =A0fingerprint: =A0 =A0 =A01179 =A0 =
=A0 =A00.007580 MB =A0 =A0 =A00.225419 secs<br>&gt; | =A0 =A0install: =A0 =
=A0 =A0 =A0 =A0 393 =A0 =A0 =A00.000000 MB =A0 =A0 =A00.467978 secs<br>&gt;=
 | =A0 =A0dbadd: =A0 =A0 =A0 =A0 =A0 =A0 393 =A0 =A0 =A00.000000 MB =A0 =A0=
 =A00.458049 secs<br>
&gt; | =A0 =A0dbget: =A0 =A0 =A0 =A0 =A0 =A02413 =A0 =A0 =A00.000000 MB =A0=
 =A0 =A00.002657 secs<br>&gt; | =A0 =A0dbput: =A0 =A0 =A0 =A0 =A0 =A0 393 =
=A0 =A0 =A01.816904 MB =A0 =A0 =A00.387933 secs<br>&gt; | =A0 =A0readhdr: =
=A0 =A0 =A0 =A0 =A03931 =A0 =A0 =A03.623312 MB =A0 =A0 =A00.007842 secs<br>=
&gt; | =A0 =A0hdrload: =A0 =A0 =A0 =A0 =A01965 =A0 =A0 =A05.352088 MB =A0 =
=A0 =A00.015769 secs<br>
&gt; | =A0 =A0hdrget: =A0 =A0 =A0 =A0 =A067287 =A0 =A0 =A00.000000 MB =A0 =
=A0 =A00.025251 secs<br>&gt; | Generating solve db for /home/jim/poky/build=
/tmp/deploy/rpm/core2...<br>&gt; | =A0 =A0total: =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 1 =A0 =A0 =A00.000000 MB =A0 =A0 30.690842 secs<br>
&gt; | =A0 =A0fingerprint: =A0 =A0 16377 =A0 =A0 =A00.192190 MB =A0 =A0 =A0=
1.357263 secs<br>&gt; | =A0 =A0install: =A0 =A0 =A0 =A0 =A05459 =A0 =A0 =A0=
0.000000 MB =A0 =A0 =A09.185276 secs<br>&gt; | =A0 =A0dbadd: =A0 =A0 =A0 =
=A0 =A0 =A05459 =A0 =A0 =A00.000000 MB =A0 =A0 =A08.997421 secs<br>&gt; | =
=A0 =A0dbget: =A0 =A0 =A0 =A0 =A0 61190 =A0 =A0 =A00.000000 MB =A0 =A0 =A00=
.097393 secs<br>
&gt; | =A0 =A0dbput: =A0 =A0 =A0 =A0 =A0 =A05459 =A0 =A0 27.436448 MB =A0 =
=A0 =A08.057184 secs<br>&gt; | =A0 =A0readhdr: =A0 =A0 =A0 =A0 54591 =A0 =
=A0 55.326554 MB =A0 =A0 =A00.216373 secs<br>&gt; | =A0 =A0hdrload: =A0 =A0=
 =A0 =A0 27777 =A0 =A0 84.106654 MB =A0 =A0 =A00.241450 secs<br>&gt; | =A0 =
=A0hdrget: =A0 =A0 =A0 =A0 982855 =A0 =A0 =A00.000000 MB =A0 =A0 =A00.36783=
8 secs<br>
&gt; | Generating solve db for /home/jim/poky/build/tmp/deploy/rpm/all...<b=
r>&gt; | =A0 =A0total: =A0 =A0 =A0 =A0 =A0 =A0 =A0 1 =A0 =A0 =A00.000000 MB=
 =A0 =A0 =A00.123502 secs<br>&gt; | =A0 =A0fingerprint: =A0 =A0 =A0 =A096 =
=A0 =A0 =A00.003258 MB =A0 =A0 =A00.004244 secs<br>
&gt; | =A0 =A0install: =A0 =A0 =A0 =A0 =A0 =A032 =A0 =A0 =A00.000000 MB =A0=
 =A0 =A00.065233 secs<br>&gt; | =A0 =A0dbadd: =A0 =A0 =A0 =A0 =A0 =A0 =A032=
 =A0 =A0 =A00.000000 MB =A0 =A0 =A00.062755 secs<br>&gt; | =A0 =A0dbget: =
=A0 =A0 =A0 =A0 =A0 =A0 585 =A0 =A0 =A00.000000 MB =A0 =A0 =A00.000230 secs=
<br>&gt; | =A0 =A0dbput: =A0 =A0 =A0 =A0 =A0 =A0 =A032 =A0 =A0 =A00.259492 =
MB =A0 =A0 =A00.039171 secs<br>
&gt; | =A0 =A0readhdr: =A0 =A0 =A0 =A0 =A0 321 =A0 =A0 =A00.520536 MB =A0 =
=A0 =A00.000570 secs<br>&gt; | =A0 =A0hdrload: =A0 =A0 =A0 =A0 =A0 160 =A0 =
=A0 =A00.772764 MB =A0 =A0 =A00.001263 secs<br>&gt; | =A0 =A0hdrget: =A0 =
=A0 =A0 =A0 =A0 5288 =A0 =A0 =A00.000000 MB =A0 =A0 =A00.002207 secs<br>&gt=
; | Generating solve db for /home/jim/poky/build/tmp/deploy/rpm/all...<br>
&gt; | =A0 =A0total: =A0 =A0 =A0 =A0 =A0 =A0 =A0 1 =A0 =A0 =A00.000000 MB =
=A0 =A0 =A00.111927 secs<br>&gt; | =A0 =A0fingerprint: =A0 =A0 =A0 =A096 =
=A0 =A0 =A00.003258 MB =A0 =A0 =A00.004173 secs<br>&gt; | =A0 =A0install: =
=A0 =A0 =A0 =A0 =A0 =A032 =A0 =A0 =A00.000000 MB =A0 =A0 =A00.057706 secs<b=
r>&gt; | =A0 =A0dbadd: =A0 =A0 =A0 =A0 =A0 =A0 =A032 =A0 =A0 =A00.000000 MB=
 =A0 =A0 =A00.055191 secs<br>
&gt; | =A0 =A0dbget: =A0 =A0 =A0 =A0 =A0 =A0 585 =A0 =A0 =A00.000000 MB =A0=
 =A0 =A00.000204 secs<br>&gt; | =A0 =A0dbput: =A0 =A0 =A0 =A0 =A0 =A0 =A032=
 =A0 =A0 =A00.259492 MB =A0 =A0 =A00.034089 secs<br>&gt; | =A0 =A0readhdr: =
=A0 =A0 =A0 =A0 =A0 321 =A0 =A0 =A00.520536 MB =A0 =A0 =A00.000673 secs<br>=
&gt; | =A0 =A0hdrload: =A0 =A0 =A0 =A0 =A0 160 =A0 =A0 =A00.772764 MB =A0 =
=A0 =A00.001158 secs<br>
&gt; | =A0 =A0hdrget: =A0 =A0 =A0 =A0 =A0 5288 =A0 =A0 =A00.000000 MB =A0 =
=A0 =A00.001854 secs<br>&gt; | Processing locale-base-en-us...<br>&gt; | Pr=
ocessing locale-base-en-gb...<br>&gt; | Processing task-core-boot...<br>&gt=
; | Processing task-core-apps-console...<br>
&gt; | Processing task-core-ssh-dropbear...<br>&gt; | Processing task-core-=
apps-x11-pimlico...<br>&gt; | Processing task-core-x11-sato...<br>&gt; | Pr=
ocessing zypper...<br>&gt; | Processing task-core-x11-base...<br>&gt; | Pro=
cessing task-core-apps-x11-games...<br>
&gt; | Processing task-core-apps-x11-core...<br>&gt; | Processing task-base=
-extended...<br>&gt; | Processing rpm...<br>&gt; | error: Failed dependenci=
es:<br>&gt; | =A0 =A0 libva.so.1 is needed by libegl1-1.8-r7.core2<br>&gt; =
| ERROR: Function &#39;do_rootfs&#39; failed<br>
&gt; (see /home/jim/poky/build/tmp/work/mymachine-poky-linux/core-image-sat=
o-1.0-r0/temp/log.do_rootfs.29608 for further information)<br>&gt; NOTE: pa=
ckage core-image-sato-1.0-r0: task do_rootfs: Failed<br>&gt; ERROR: Task 8<=
br>
&gt; (/home/jim/poky/meta/recipes-sato/images/<a href=3D"http://core-image-=
sato.bb/" target=3D"_blank">core-image-sato.bb</a>,<br>&gt; do_rootfs) fail=
ed with exit code &#39;1&#39;<br>&gt; ERROR: &#39;/home/jim/poky/meta/recip=
es-sato/images/<a href=3D"http://core-image-sato.bb/" target=3D"_blank">cor=
e-image-sato.bb</a>&#39;<br>
&gt; failed<br>&gt; jim@jim-ubuntu:~/poky/build$<br>&gt;<br>&gt;<br><br><br=
></div></div></blockquote></div></div></div><br></blockquote></div><br>

--000e0cd4c640536dfe04b1516565--
