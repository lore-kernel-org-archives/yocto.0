Return-Path: <manishjagdishthatte@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D680BE00A94; Mon, 17 Aug 2015 08:41:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (manishjagdishthatte[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7CADE0097F
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 08:41:54 -0700 (PDT)
Received: by oip136 with SMTP id 136so82493987oip.1
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 08:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=Ahjvhz/XydNlj/cAOmj3hoE6pJKc96bkLZ1e9agECF0=;
	b=AVHQSWlKkF9bTdEh/5Cf/MMu3YOHhynmKwjwvvTE+KZQ/v5Og8S/FKIxPiO0kp3KNT
	f9Sh1rrtt41FhQlFoNJDxAPfaduLF3vihuncP4QhEAsGCNGGleJzmnx8K0DC5qH81aV9
	2IZZwbTveMjWkPFuG4ofqz19ki3TqQMP5iwASHxnx+7Jc6Rb/ylPXKCvzveNJNeE8uli
	MEr3e6O2IO6SiC0lvUNXO7pyiAB4i8QoKAmnSlo0R06+YFYGfTR12Oa2UCz5kAL9wUO6
	1neTTs8L1bSiItOWPyAORRoPb9A13jncHWaqfaVYmuvH2RSXxUQ46veX7LDAbprlRsIS
	tmxA==
MIME-Version: 1.0
X-Received: by 10.202.197.86 with SMTP id v83mr1706569oif.88.1439826113933;
	Mon, 17 Aug 2015 08:41:53 -0700 (PDT)
Received: by 10.202.177.193 with HTTP; Mon, 17 Aug 2015 08:41:53 -0700 (PDT)
In-Reply-To: <mailman.6784.1439805533.2787.yocto@yoctoproject.org>
References: <mailman.6784.1439805533.2787.yocto@yoctoproject.org>
Date: Mon, 17 Aug 2015 21:11:53 +0530
Message-ID: <CAMBfX+F2EBpAQGcU3hdRTCt3AtgPQu2Z8md35JoWG5MUsna7-w@mail.gmail.com>
From: Manish Thatte <manishjagdishthatte@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: yocto Digest, Vol 59, Issue 81
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
X-List-Received-Date: Mon, 17 Aug 2015 15:41:57 -0000
Content-Type: multipart/alternative; boundary=001a1134e93c0f3728051d83a4f0

--001a1134e93c0f3728051d83a4f0
Content-Type: text/plain; charset=UTF-8

I am getting this error when i try to run hob:

openatvbuilder@mani ~/poky/build $ hob
Please set DISPLAY variable before running Hob.


Please help
Manish

On Mon, Aug 17, 2015 at 3:28 PM, <yocto-request@yoctoproject.org> wrote:

> Send yocto mailing list submissions to
>         yocto@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
>         yocto-request@yoctoproject.org
>
> You can reach the person managing the list at
>         yocto-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
>
>
> Today's Topics:
>
>    1. Re: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi: build
>       audio driver into kernel (Andrei Gherzan)
>    2. Re: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi: build
>       audio driver into kernel (Petter Mab?cker)
>    3. Kernel panic - not syncing: No working init found.
>       (Gorny Krystian)
>    4. Re: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi: build
>       audio driver into kernel (Alex J Lennon)
>    5. Re: [meta-raspberrypi][PATCH v2 4/4] README: Add a section
>       about graphic stacks (Javier Martinez Canillas)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Mon, 17 Aug 2015 09:57:10 +0200
> From: Andrei Gherzan <andrei@gherzan.ro>
> To: "petter@technux.se" <petter@technux.se>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] [meta-raspberrypi][PATCH 2/2] linux-raspberrypi:
>         build audio driver into kernel
> Message-ID:
>         <
> CAK18fxHq-iSARt0mEBHQoNC+jZuK+0ix50y6838OCpmRc7VyoQ@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> Hello,
>
> On Tuesday, August 11, 2015, Petter Mab?cker <petter@technux.se> wrote:
>
> > 2015-08-11 19:04 skrev Alex J Lennon:
> >
> > Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk
> <javascript:_e(%7B%7D,'cvml','ajlennon@dynamicdevices.co.uk');>>
> > ---
> >  recipes-kernel/linux/linux-raspberrypi.inc | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/recipes-kernel/linux/linux-raspberrypi.inc
> b/recipes-kernel/linux/linux-raspberrypi.inc
> > index e38d905..8024412 100644
> > --- a/recipes-kernel/linux/linux-raspberrypi.inc
> > +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> > @@ -6,6 +6,10 @@ SECTION = "kernel"
> >  LICENSE = "GPLv2"
> >  LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
> >
> > +SRC_URI += " \
> > +        file://build-in-audio.cfg \
> > +        "
> >
> >
> This one didn't make it.
>
> --
> Andrei Gherzan
>
>
> --
> --
> Andrei Gherzan
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20150817/bcd74813/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 2
> Date: Mon, 17 Aug 2015 10:11:13 +0200
> From: Petter Mab?cker <petter@technux.se>
> To: Andrei Gherzan <andrei@gherzan.ro>, Alex J Lennon
>         <ajlennon@gmail.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-raspberrypi][PATCH 2/2] linux-raspberrypi:
>         build audio driver into kernel
> Message-ID: <8cc28d589389102b4fccf052fe2389c2@technux.se>
> Content-Type: text/plain; charset="utf-8"
>
>
>
> 2015-08-17 09:57 skrev Andrei Gherzan:
>
> > Hello,
> >
> > On Tuesday,
> August 11, 2015, Petter Mab?cker <petter@technux.se> wrote:
> >
> >>
> 2015-08-11 19:04 skrev Alex J Lennon:
> >>
> >>> Signed-off-by: Alex J
> Lennon <ajlennon@dynamicdevices.co.uk>
> >>> ---
> >>>
> recipes-kernel/linux/linux-raspberrypi.inc | 4 ++++
> >>> 1 file changed,
> 4 insertions(+)
> >>>
> >>> diff --git
> a/recipes-kernel/linux/linux-raspberrypi.inc
> b/recipes-kernel/linux/linux-raspberrypi.inc
> >>> index e38d905..8024412
> 100644
> >>> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> >>> +++
> b/recipes-kernel/linux/linux-raspberrypi.inc
> >>> @@ -6,6 +6,10 @@
> SECTION = "kernel"
> >>> LICENSE = "GPLv2"
> >>> LIC_FILES_CHKSUM =
> "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
> >>>
> >>> +SRC_URI
> += "
> >>> + file://build-in-audio.cfg
> >>> + "
> >
> > This one didn't make
> it.
> >
> > --
> > Andrei Gherzan
> >
> > --
> >
> > -- Andrei Gherzan
>
> Think
> you got the wrong receiver =) I notified Alex about this some days ago,
> Alex can you send up a v2 for this?
>
> BR, Petter
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20150817/7dfd79b7/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 3
> Date: Mon, 17 Aug 2015 09:06:08 +0000
> From: Gorny Krystian <krystian.gorny@wipotec.com>
> To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: [yocto] Kernel panic - not syncing: No working init found.
> Message-ID:
>         <
> 10D57FBA9FD7C14FB49EE17590E1AF9453C9160F@svr-exc-03.intern.wipotec.de>
>
> Content-Type: text/plain; charset="us-ascii"
>
> Hi,
>
> I have a problem with booting my Linux image. The boot error message is:
>
> (...)
> VFS: Mounted root (vfat filesystem) readonly on device 3:1.
> Devtmpfs: error mounting -2
> Freeing unused kernel memory: 636K (c1aa6000 - c1b45000)
> Write protecting the kernel text: 7544k
> Write protecting the kernel read-only  data: 2800k
> Kernel panic - not syncing: No working init found. Try passing init=
> option to kernel. See Linux Documentation/init.txt for guidance.
> CPU: 0 PID: 1 Comm: swapper/0 Not tainted
> 3.14.39ltsi-rt37-yocto-preempt-rt #1
> (...)
>
> I'm using the fido branch and build an core-image-rt for the genericx86
> machine. Create the yocto image works well. I have used the
> https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_Yocto_on_a_hard_drive.3F
> instructions to put my image to the hard drive. I use ext4 as file system.
> When I put the image to a VirtualBox hard drive the virtual machine boots
> correctly without issues. This issue occur only on my real hardware
> (industrial pc with intel atom cpu).
>
> I already tried to put init=/sbin/init or init=/sbin/init.sysvinit to
> grub.cfg without success. Any ideas?
>
> Thanks Krystian
>
> _____________________________________________________________________
>
> Krystian Gorny
> Research & Development
>
> Wipotec GmbH
> Adam-Hoffmann-Str. 26
> 67657 Kaiserslautern
>
> T +49.631.34146-0
> F +49.631.34146-8640
> http://www.wipotec.com
>
>
> [http://www.wipotec.com/fileadmin/user_upload/Signatur/W_Standard.jpg]<
> http://www.wipotec.com>
>
> Legal information:
> Wipotec Wiege- und Positioniersysteme GmbH
> HRB 2317 Kaiserslautern, Management: T. D?ppre, U. Wagner
>
> This e-mail may contain confidential and/or privileged information.
> If you are not the intended recipient (or have received this e-mail in
> error)
> please notify the sender immediately and delete this e-mail. Any
> unauthorized
> copying, disclosure or distribution of the material in this e-mail is
> strictly
> forbidden.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20150817/736de200/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 4
> Date: Mon, 17 Aug 2015 10:23:59 +0100
> From: Alex J Lennon <ajlennon@gmail.com>
> To: petter@technux.se, Andrei Gherzan <andrei@gherzan.ro>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-raspberrypi][PATCH 2/2] linux-raspberrypi:
>         build audio driver into kernel
> Message-ID: <55D1A82F.9020506@gmail.com>
> Content-Type: text/plain; charset=utf-8
>
> On 17/08/2015 09:11, Petter Mab?cker wrote:
> > 2015-08-17 09:57 skrev Andrei Gherzan:
> >
> >> Hello,
> >>
> >> On Tuesday, August 11, 2015, Petter Mab?cker <petter@technux.se
> >> <mailto:petter@technux.se>> wrote:
> >>
> >>     2015-08-11 19:04 skrev Alex J Lennon:
> >>
> >>         Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
> >>         ---
> >>          recipes-kernel/linux/linux-raspberrypi.inc | 4 ++++
> >>          1 file changed, 4 insertions(+)
> >>
> >>         diff --git a/recipes-kernel/linux/linux-raspberrypi.inc
> b/recipes-kernel/linux/linux-raspberrypi.inc
> >>         index e38d905..8024412 100644
> >>         --- a/recipes-kernel/linux/linux-raspberrypi.inc
> >>         +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> >>         @@ -6,6 +6,10 @@ SECTION = "kernel"
> >>          LICENSE = "GPLv2"
> >>          LIC_FILES_CHKSUM =
> "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
> >>
> >>         +SRC_URI += " \
> >>         +        file://build-in-audio.cfg \
> >>         +        "
> >>
> >>
> >> This one didn't make it.
> >>
> >>
> >>
> >>
> >> --
> >> Andrei Gherzan
> >>
> >>
> >> --
> >> --
> >> Andrei Gherzan
> >
> > Think you got the wrong receiver =) I notified Alex about this some days
> > ago, Alex can you send up a v2 for this?
> >
> >
>
> The build-in-audio.cfg patch was just for testing of fragment support.
> It's understood that we're not going to have this build into the kernel
> by default, although I do still need to find some words to add to the
> README on audio routing setup and so forth.
>
> I started testing a build with master over the weekend and it built OK.
> Just need to find some time to run up a couple of kernels and will
> resubmit the v2 patch with Petter's enhanced commit message.
>
> I don't have an RPiv1 around at the moment but I will probably double
> check the kernel does still actually build for RPiv1 machine
>
> Cheers,
>
> Alex
>
>
> >
> > BR, Petter
> >
>
>
>
> ------------------------------
>
> Message: 5
> Date: Mon, 17 Aug 2015 11:58:44 +0200
> From: Javier Martinez Canillas <javier@osg.samsung.com>
> To: Andrei Gherzan <andrei@gherzan.ro>, Khem Raj <raj.khem@gmail.com>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,  Derek Foreman
>         <derekf@osg.samsung.com>,       Mauro Carvalho Chehab
>         <mchehab@osg.samsung.com>
> Subject: Re: [yocto] [meta-raspberrypi][PATCH v2 4/4] README: Add a
>         section about graphic stacks
> Message-ID: <55D1B054.2050403@osg.samsung.com>
> Content-Type: text/plain; charset=utf-8
>
> Hello Andrei and Khem,
>
> Thanks a lot for your feedback.
>
> On 08/17/2015 09:57 AM, Andrei Gherzan wrote:
> > Hello,
> >
> > On Thursday, August 13, 2015, Khem Raj <raj.khem@gmail.com> wrote:
> >
> >>
> >>> On Aug 13, 2015, at 10:07 AM, Javier Martinez Canillas <
> >> javier@osg.samsung.com <javascript:;>> wrote:
> >>>
> >>> This patch adds to the README a section that explains the RPi can
> >> different
> >>> graphics stacks and that the user can choose by manually changing
> >> providers.
> >>>
> >>> Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com
> >> <javascript:;>>
> >>>
> >>> ---
> >>>
> >>> Changes in v2: None
> >>>
> >>> README | 9 +++++++++
> >>> 1 file changed, 9 insertions(+)
> >>>
> >>> diff --git a/README b/README
> >>> index 678c0eb4a4e3..0569b353870c 100644
> >>> --- a/README
> >>> +++ b/README
> >>> @@ -25,6 +25,7 @@ Contents:
> >>>     2.K. Boot to U-Boot
> >>>     2.L. Image with Initramfs
> >>>     2.M. Device tree support
> >>> +    2.O. Graphic stacks
> >>> 3. Extra apps
> >>>     3.A. omxplayer
> >>> 4. Source code and mirrors
> >>> @@ -195,6 +196,14 @@ kernels.
> >>> NOTE: KERNEL_DEVICETREE is default enabled for kernel >= 3.18 and
> always
> >> disabled for
> >>>       older kernel versions.
> >>>
> >>> +2.O. Graphic stacks
> >>> +===================
> >>> +The Raspberry Pi boards can use one of two graphics stacks: The
> userland
> >>> +user-space driver or the vc4 DRM/KMS kernel driver. By default
> userland
> >>> +is used since the vc4 is still experimental. But this can be changed
> by
> >>> +modifying the defaults for the kernel, egl, gles2, libgl and mesa
> >> providers.
> >>> +This is explained in the
> conf/machine/include/rpi-default-providers.inc
> >> file.
> >>> +
> >>
> >> you may want to add pointer to the commented out code that you have
> added
> >> to select them
> >> in rpi-default-providers.inc
> >>
> >
> > It would be nice to have some detailed info on what and where to comment
> > out the configuration.
> >
>
> On patch 3/4 I added that documentation to rpi-default-providers but didn't
> add it to the README and instead pointed out to rpi-default-providers to
> have a level of indirection in case the providers change and to not have
> duplicated information but I will add it to the README as well.
>
> Do you have comments on the other patches in the series so I can address
> all of them before re-spinning?
>
> > --
> > Andrei Gherzan
> >
> >
>
> Best regards,
> --
> Javier Martinez Canillas
> Open Source Group
> Samsung Research America
>
>
> ------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> End of yocto Digest, Vol 59, Issue 81
> *************************************
>

--001a1134e93c0f3728051d83a4f0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am getting this error when i try to run hob:<div><br></d=
iv><div><div>openatvbuilder@mani ~/poky/build $ hob</div><div>Please set DI=
SPLAY variable before running Hob.</div></div><div><br></div><div><br></div=
><div>Please help</div><div>Manish</div></div><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote">On Mon, Aug 17, 2015 at 3:28 PM,  <span dir=3D=
"ltr">&lt;<a href=3D"mailto:yocto-request@yoctoproject.org" target=3D"_blan=
k">yocto-request@yoctoproject.org</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">Send yocto mailing list submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproject.org">yocto=
@yoctoproject.org</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listi=
nfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/listinfo/yocto</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto-request@yoctoproject.or=
g">yocto-request@yoctoproject.org</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto-owner@yoctoproject.org"=
>yocto-owner@yoctoproject.org</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of yocto digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. Re: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi: build<=
br>
=C2=A0 =C2=A0 =C2=A0 audio driver into kernel (Andrei Gherzan)<br>
=C2=A0 =C2=A02. Re: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi: build<=
br>
=C2=A0 =C2=A0 =C2=A0 audio driver into kernel (Petter Mab?cker)<br>
=C2=A0 =C2=A03. Kernel panic - not syncing: No working init found.<br>
=C2=A0 =C2=A0 =C2=A0 (Gorny Krystian)<br>
=C2=A0 =C2=A04. Re: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi: build<=
br>
=C2=A0 =C2=A0 =C2=A0 audio driver into kernel (Alex J Lennon)<br>
=C2=A0 =C2=A05. Re: [meta-raspberrypi][PATCH v2 4/4] README: Add a section<=
br>
=C2=A0 =C2=A0 =C2=A0 about graphic stacks (Javier Martinez Canillas)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Mon, 17 Aug 2015 09:57:10 +0200<br>
From: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherza=
n.ro</a>&gt;<br>
To: &quot;<a href=3D"mailto:petter@technux.se">petter@technux.se</a>&quot; =
&lt;<a href=3D"mailto:petter@technux.se">petter@technux.se</a>&gt;<br>
Cc: &quot;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a>&gt;<br>
Subject: Re: [yocto] [meta-raspberrypi][PATCH 2/2] linux-raspberrypi:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 build audio driver into kernel<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:CAK18fxHq-iSARt0mEBHQoNC%=
2BjZuK%2B0ix50y6838OCpmRc7VyoQ@mail.gmail.com">CAK18fxHq-iSARt0mEBHQoNC+jZu=
K+0ix50y6838OCpmRc7VyoQ@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hello,<br>
<br>
On Tuesday, August 11, 2015, Petter Mab?cker &lt;<a href=3D"mailto:petter@t=
echnux.se">petter@technux.se</a>&gt; wrote:<br>
<br>
&gt; 2015-08-11 19:04 skrev Alex J Lennon:<br>
&gt;<br>
&gt; Signed-off-by: Alex J Lennon &lt;<a href=3D"mailto:ajlennon@dynamicdev=
ices.co.uk">ajlennon@dynamicdevices.co.uk</a> &lt;javascript:_e(%7B%7D,&#39=
;cvml&#39;,&#39;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk">ajlennon@d=
ynamicdevices.co.uk</a>&#39;);&gt;&gt;<br>
&gt; ---<br>
&gt;=C2=A0 recipes-kernel/linux/linux-raspberrypi.inc | 4 ++++<br>
&gt;=C2=A0 1 file changed, 4 insertions(+)<br>
&gt;<br>
&gt; diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kern=
el/linux/linux-raspberrypi.inc<br>
&gt; index e38d905..8024412 100644<br>
&gt; --- a/recipes-kernel/linux/linux-raspberrypi.inc<br>
&gt; +++ b/recipes-kernel/linux/linux-raspberrypi.inc<br>
&gt; @@ -6,6 +6,10 @@ SECTION =3D &quot;kernel&quot;<br>
&gt;=C2=A0 LICENSE =3D &quot;GPLv2&quot;<br>
&gt;=C2=A0 LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd7810fab7487fb0a=
ad327b76f1be7cd7&quot;<br>
&gt;<br>
&gt; +SRC_URI +=3D &quot; \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://build-in-audio.cfg \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
&gt;<br>
&gt;<br>
This one didn&#39;t make it.<br>
<br>
--<br>
Andrei Gherzan<br>
<br>
<br>
--<br>
--<br>
Andrei Gherzan<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20150817/bcd74813/attachment-0001.html" rel=3D"noreferrer" target=3D"_bl=
ank">http://lists.yoctoproject.org/pipermail/yocto/attachments/20150817/bcd=
74813/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Mon, 17 Aug 2015 10:11:13 +0200<br>
From: Petter Mab?cker &lt;<a href=3D"mailto:petter@technux.se">petter@techn=
ux.se</a>&gt;<br>
To: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.=
ro</a>&gt;, Alex J Lennon<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:ajlennon@gmail.com">ajlen=
non@gmail.com</a>&gt;<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] [meta-raspberrypi][PATCH 2/2] linux-raspberrypi:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 build audio driver into kernel<br>
Message-ID: &lt;<a href=3D"mailto:8cc28d589389102b4fccf052fe2389c2@technux.=
se">8cc28d589389102b4fccf052fe2389c2@technux.se</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
<br>
<br>
2015-08-17 09:57 skrev Andrei Gherzan:<br>
<br>
&gt; Hello,<br>
&gt;<br>
&gt; On Tuesday,<br>
August 11, 2015, Petter Mab?cker &lt;<a href=3D"mailto:petter@technux.se">p=
etter@technux.se</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt;<br>
2015-08-11 19:04 skrev Alex J Lennon:<br>
&gt;&gt;<br>
&gt;&gt;&gt; Signed-off-by: Alex J<br>
Lennon &lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk">ajlennon@dynami=
cdevices.co.uk</a>&gt;<br>
&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;<br>
recipes-kernel/linux/linux-raspberrypi.inc | 4 ++++<br>
&gt;&gt;&gt; 1 file changed,<br>
4 insertions(+)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; diff --git<br>
a/recipes-kernel/linux/linux-raspberrypi.inc<br>
b/recipes-kernel/linux/linux-raspberrypi.inc<br>
&gt;&gt;&gt; index e38d905..8024412<br>
100644<br>
&gt;&gt;&gt; --- a/recipes-kernel/linux/linux-raspberrypi.inc<br>
&gt;&gt;&gt; +++<br>
b/recipes-kernel/linux/linux-raspberrypi.inc<br>
&gt;&gt;&gt; @@ -6,6 +6,10 @@<br>
SECTION =3D &quot;kernel&quot;<br>
&gt;&gt;&gt; LICENSE =3D &quot;GPLv2&quot;<br>
&gt;&gt;&gt; LIC_FILES_CHKSUM =3D<br>
&quot;file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd7&quot;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; +SRC_URI<br>
+=3D &quot;<br>
&gt;&gt;&gt; + file://build-in-audio.cfg<br>
&gt;&gt;&gt; + &quot;<br>
&gt;<br>
&gt; This one didn&#39;t make<br>
it.<br>
&gt;<br>
&gt; --<br>
&gt; Andrei Gherzan<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; -- Andrei Gherzan<br>
<br>
Think<br>
you got the wrong receiver =3D) I notified Alex about this some days ago,<b=
r>
Alex can you send up a v2 for this?<br>
<br>
BR, Petter<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20150817/7dfd79b7/attachment-0001.html" rel=3D"noreferrer" target=3D"_bl=
ank">http://lists.yoctoproject.org/pipermail/yocto/attachments/20150817/7df=
d79b7/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 3<br>
Date: Mon, 17 Aug 2015 09:06:08 +0000<br>
From: Gorny Krystian &lt;<a href=3D"mailto:krystian.gorny@wipotec.com">krys=
tian.gorny@wipotec.com</a>&gt;<br>
To: &quot;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a>&gt;<br>
Subject: [yocto] Kernel panic - not syncing: No working init found.<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:10D57FBA9FD7C14FB49EE1759=
0E1AF9453C9160F@svr-exc-03.intern.wipotec.de">10D57FBA9FD7C14FB49EE17590E1A=
F9453C9160F@svr-exc-03.intern.wipotec.de</a>&gt;<br>
<br>
Content-Type: text/plain; charset=3D&quot;us-ascii&quot;<br>
<br>
Hi,<br>
<br>
I have a problem with booting my Linux image. The boot error message is:<br=
>
<br>
(...)<br>
VFS: Mounted root (vfat filesystem) readonly on device 3:1.<br>
Devtmpfs: error mounting -2<br>
Freeing unused kernel memory: 636K (c1aa6000 - c1b45000)<br>
Write protecting the kernel text: 7544k<br>
Write protecting the kernel read-only=C2=A0 data: 2800k<br>
Kernel panic - not syncing: No working init found. Try passing init=3D opti=
on to kernel. See Linux Documentation/init.txt for guidance.<br>
CPU: 0 PID: 1 Comm: swapper/0 Not tainted 3.14.39ltsi-rt37-yocto-preempt-rt=
 #1<br>
(...)<br>
<br>
I&#39;m using the fido branch and build an core-image-rt for the genericx86=
 machine. Create the yocto image works well. I have used the <a href=3D"htt=
ps://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_Yocto_on_a_hard_dr=
ive.3F" rel=3D"noreferrer" target=3D"_blank">https://wiki.yoctoproject.org/=
wiki/How_do_I#Q:_How_do_I_put_Yocto_on_a_hard_drive.3F</a> instructions to =
put my image to the hard drive. I use ext4 as file system. When I put the i=
mage to a VirtualBox hard drive the virtual machine boots correctly without=
 issues. This issue occur only on my real hardware (industrial pc with inte=
l atom cpu).<br>
<br>
I already tried to put init=3D/sbin/init or init=3D/sbin/init.sysvinit to g=
rub.cfg without success. Any ideas?<br>
<br>
Thanks Krystian<br>
<br>
_____________________________________________________________________<br>
<br>
Krystian Gorny<br>
Research &amp; Development<br>
<br>
Wipotec GmbH<br>
Adam-Hoffmann-Str. 26<br>
67657 Kaiserslautern<br>
<br>
T +49.631.34146-0<br>
F +49.631.34146-8640<br>
<a href=3D"http://www.wipotec.com" rel=3D"noreferrer" target=3D"_blank">htt=
p://www.wipotec.com</a><br>
<br>
<br>
[<a href=3D"http://www.wipotec.com/fileadmin/user_upload/Signatur/W_Standar=
d.jpg" rel=3D"noreferrer" target=3D"_blank">http://www.wipotec.com/fileadmi=
n/user_upload/Signatur/W_Standard.jpg</a>]&lt;<a href=3D"http://www.wipotec=
.com" rel=3D"noreferrer" target=3D"_blank">http://www.wipotec.com</a>&gt;<b=
r>
<br>
Legal information:<br>
Wipotec Wiege- und Positioniersysteme GmbH<br>
HRB 2317 Kaiserslautern, Management: T. D?ppre, U. Wagner<br>
<br>
This e-mail may contain confidential and/or privileged information.<br>
If you are not the intended recipient (or have received this e-mail in erro=
r)<br>
please notify the sender immediately and delete this e-mail. Any unauthoriz=
ed<br>
copying, disclosure or distribution of the material in this e-mail is stric=
tly<br>
forbidden.<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20150817/736de200/attachment-0001.html" rel=3D"noreferrer" target=3D"_bl=
ank">http://lists.yoctoproject.org/pipermail/yocto/attachments/20150817/736=
de200/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 4<br>
Date: Mon, 17 Aug 2015 10:23:59 +0100<br>
From: Alex J Lennon &lt;<a href=3D"mailto:ajlennon@gmail.com">ajlennon@gmai=
l.com</a>&gt;<br>
To: <a href=3D"mailto:petter@technux.se">petter@technux.se</a>, Andrei Gher=
zan &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt;<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] [meta-raspberrypi][PATCH 2/2] linux-raspberrypi:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 build audio driver into kernel<br>
Message-ID: &lt;<a href=3D"mailto:55D1A82F.9020506@gmail.com">55D1A82F.9020=
506@gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3Dutf-8<br>
<br>
On 17/08/2015 09:11, Petter Mab?cker wrote:<br>
&gt; 2015-08-17 09:57 skrev Andrei Gherzan:<br>
&gt;<br>
&gt;&gt; Hello,<br>
&gt;&gt;<br>
&gt;&gt; On Tuesday, August 11, 2015, Petter Mab?cker &lt;<a href=3D"mailto=
:petter@technux.se">petter@technux.se</a><br>
&gt;&gt; &lt;mailto:<a href=3D"mailto:petter@technux.se">petter@technux.se<=
/a>&gt;&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A02015-08-11 19:04 skrev Alex J Lennon:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Signed-off-by: Alex J Lennon &lt;=
<a href=3D"mailto:ajlennon@dynamicdevices.co.uk">ajlennon@dynamicdevices.co=
.uk</a>&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0---<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 recipes-kernel/linux/linux-raspb=
errypi.inc | 4 ++++<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1 file changed, 4 insertions(+)<=
br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0diff --git a/recipes-kernel/linux=
/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0index e38d905..8024412 100644<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--- a/recipes-kernel/linux/linux-=
raspberrypi.inc<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+++ b/recipes-kernel/linux/linux-=
raspberrypi.inc<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0@@ -6,6 +6,10 @@ SECTION =3D &quo=
t;kernel&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LICENSE =3D &quot;GPLv2&quot;<br=
>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LIC_FILES_CHKSUM =3D &quot;file:=
//COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd7&quot;<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+SRC_URI +=3D &quot; \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 file=
://build-in-audio.cfg \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quo=
t;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; This one didn&#39;t make it.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Andrei Gherzan<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; --<br>
&gt;&gt; Andrei Gherzan<br>
&gt;<br>
&gt; Think you got the wrong receiver =3D) I notified Alex about this some =
days<br>
&gt; ago, Alex can you send up a v2 for this?<br>
&gt;<br>
&gt;<br>
<br>
The build-in-audio.cfg patch was just for testing of fragment support.<br>
It&#39;s understood that we&#39;re not going to have this build into the ke=
rnel<br>
by default, although I do still need to find some words to add to the<br>
README on audio routing setup and so forth.<br>
<br>
I started testing a build with master over the weekend and it built OK.<br>
Just need to find some time to run up a couple of kernels and will<br>
resubmit the v2 patch with Petter&#39;s enhanced commit message.<br>
<br>
I don&#39;t have an RPiv1 around at the moment but I will probably double<b=
r>
check the kernel does still actually build for RPiv1 machine<br>
<br>
Cheers,<br>
<br>
Alex<br>
<br>
<br>
&gt;<br>
&gt; BR, Petter<br>
&gt;<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 5<br>
Date: Mon, 17 Aug 2015 11:58:44 +0200<br>
From: Javier Martinez Canillas &lt;<a href=3D"mailto:javier@osg.samsung.com=
">javier@osg.samsung.com</a>&gt;<br>
To: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.=
ro</a>&gt;, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gma=
il.com</a>&gt;<br>
Cc: &quot;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a>&gt;,=C2=A0 Derek Foreman<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:derekf@osg.samsung.com">d=
erekf@osg.samsung.com</a>&gt;,=C2=A0 =C2=A0 =C2=A0 =C2=A0Mauro Carvalho Che=
hab<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:mchehab@osg.samsung.com">=
mchehab@osg.samsung.com</a>&gt;<br>
Subject: Re: [yocto] [meta-raspberrypi][PATCH v2 4/4] README: Add a<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 section about graphic stacks<br>
Message-ID: &lt;<a href=3D"mailto:55D1B054.2050403@osg.samsung.com">55D1B05=
4.2050403@osg.samsung.com</a>&gt;<br>
Content-Type: text/plain; charset=3Dutf-8<br>
<br>
Hello Andrei and Khem,<br>
<br>
Thanks a lot for your feedback.<br>
<br>
On 08/17/2015 09:57 AM, Andrei Gherzan wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; On Thursday, August 13, 2015, Khem Raj &lt;<a href=3D"mailto:raj.khem@=
gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt;&gt; On Aug 13, 2015, at 10:07 AM, Javier Martinez Canillas &lt;<br=
>
&gt;&gt; <a href=3D"mailto:javier@osg.samsung.com">javier@osg.samsung.com</=
a> &lt;javascript:;&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; This patch adds to the README a section that explains the RPi =
can<br>
&gt;&gt; different<br>
&gt;&gt;&gt; graphics stacks and that the user can choose by manually chang=
ing<br>
&gt;&gt; providers.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Signed-off-by: Javier Martinez Canillas &lt;<a href=3D"mailto:=
javier@osg.samsung.com">javier@osg.samsung.com</a><br>
&gt;&gt; &lt;javascript:;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Changes in v2: None<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; README | 9 +++++++++<br>
&gt;&gt;&gt; 1 file changed, 9 insertions(+)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; diff --git a/README b/README<br>
&gt;&gt;&gt; index 678c0eb4a4e3..0569b353870c 100644<br>
&gt;&gt;&gt; --- a/README<br>
&gt;&gt;&gt; +++ b/README<br>
&gt;&gt;&gt; @@ -25,6 +25,7 @@ Contents:<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A02.K. Boot to U-Boot<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A02.L. Image with Initramfs<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A02.M. Device tree support<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 2.O. Graphic stacks<br>
&gt;&gt;&gt; 3. Extra apps<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A03.A. omxplayer<br>
&gt;&gt;&gt; 4. Source code and mirrors<br>
&gt;&gt;&gt; @@ -195,6 +196,14 @@ kernels.<br>
&gt;&gt;&gt; NOTE: KERNEL_DEVICETREE is default enabled for kernel &gt;=3D =
3.18 and always<br>
&gt;&gt; disabled for<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0older kernel versions.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; +2.O. Graphic stacks<br>
&gt;&gt;&gt; +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;&gt;&gt; +The Raspberry Pi boards can use one of two graphics stacks: T=
he userland<br>
&gt;&gt;&gt; +user-space driver or the vc4 DRM/KMS kernel driver. By defaul=
t userland<br>
&gt;&gt;&gt; +is used since the vc4 is still experimental. But this can be =
changed by<br>
&gt;&gt;&gt; +modifying the defaults for the kernel, egl, gles2, libgl and =
mesa<br>
&gt;&gt; providers.<br>
&gt;&gt;&gt; +This is explained in the conf/machine/include/rpi-default-pro=
viders.inc<br>
&gt;&gt; file.<br>
&gt;&gt;&gt; +<br>
&gt;&gt;<br>
&gt;&gt; you may want to add pointer to the commented out code that you hav=
e added<br>
&gt;&gt; to select them<br>
&gt;&gt; in rpi-default-providers.inc<br>
&gt;&gt;<br>
&gt;<br>
&gt; It would be nice to have some detailed info on what and where to comme=
nt<br>
&gt; out the configuration.<br>
&gt;<br>
<br>
On patch 3/4 I added that documentation to rpi-default-providers but didn&#=
39;t<br>
add it to the README and instead pointed out to rpi-default-providers to<br=
>
have a level of indirection in case the providers change and to not have<br=
>
duplicated information but I will add it to the README as well.<br>
<br>
Do you have comments on the other patches in the series so I can address<br=
>
all of them before re-spinning?<br>
<br>
&gt; --<br>
&gt; Andrei Gherzan<br>
&gt;<br>
&gt;<br>
<br>
Best regards,<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
Javier Martinez Canillas<br>
Open Source Group<br>
Samsung Research America<br>
<br>
<br>
------------------------------<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
End of yocto Digest, Vol 59, Issue 81<br>
*************************************<br>
</font></span></blockquote></div><br></div>

--001a1134e93c0f3728051d83a4f0--
