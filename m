Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5071FE00D6B; Thu,  9 May 2019 12:32:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.65 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
	[209.85.167.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACB7EE00798
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 12:32:42 -0700 (PDT)
Received: by mail-lf1-f65.google.com with SMTP id x132so2425691lfd.0
	for <yocto@yoctoproject.org>; Thu, 09 May 2019 12:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=A0e1MF7JQRAqP/o28ApkZ19p92wVJnfRc+iPAVL9Nk0=;
	b=uEOKRgFAWMrKRTnlstZ1bQ4cbhnCvTdmB3nigxmrwTMprzTL9Qb2iDbGy2EX9dnq3p
	8eLCCtsUJBPDtW2oYBcAHtXeGD2XiwLbstH8tf54ZXlR+0C4vNbObqdklrTtNp47UK/j
	lLxVypcYS3JQxT0mh4QYn8tl5FUDmeUJon1yTAvMAfoBkmBwKzV6/PeiwCdbHQZA7Egd
	PY9QSPuUQqJkDQBZ+s+cS8Gi7bgVRIIO2t1MHM1Anz+8VjKhKrQg9TUbi/8ojaF7Pwvt
	1ju6lhOVgykJaD62ISZX8fDVIqbkj+KqWh9NVmVAb8pXer8uS8U7QZrVlGO33ctRA04b
	blUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=A0e1MF7JQRAqP/o28ApkZ19p92wVJnfRc+iPAVL9Nk0=;
	b=WRGQg+9UUqJ3rM8sfLbsziCVOwsZG9zZEV66hKSivep99C9yOwmXedMYpkYLkyFOYU
	hApAfvTh92v07wyzKDpAEZE3oYeVAtYznl+sbJIti4NdZ40GhKFMvWQa781hN7E4CESr
	1rL89T5hD54/3kU4xH3tYlT+CmdKErSZTetJoxqRLMnf81w0dPVZ3DIbGL57y/yOJOmn
	35EzudwPMFKOynqVtHTvs3WdRJB2H+VYpFe9DQHz3Qchsv0Lr1MHHiqOh3Rotk8Ab781
	8amnEOffkIJzOTRQYPI+KpTSQ0Pbyb/9im8kAPlTJfqoPuvXEhUHrD2PlmzGtyQA0Fi9
	UUhg==
X-Gm-Message-State: APjAAAUCfQREWHXv9iGtS9Y1Uoch0QiXVxpqzdELwgOfkX4t8BIWjQS9
	qXjb1FA8TpfYGNwuqM7sVlSg9cdnBVUi7Y/2iYo=
X-Google-Smtp-Source: APXvYqwXCx96eUdNrVBJ77LR3PNIXsHXl9lklmSNe8e/QmQbAKKG4cBk8N+f1rYfxhk/FROEwaN+Yephkj5ATWyZYjg=
X-Received: by 2002:a19:5507:: with SMTP id n7mr3688480lfe.140.1557430361317; 
	Thu, 09 May 2019 12:32:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190509115933.23465-1-kexin.hao@windriver.com>
	<CADkTA4Ocyat40N4Fcgf3d95WT27fDnPMppiFWvPuFKj5ATOw4g@mail.gmail.com>
	<CAGAf8LzL9W7gX4gfadTbcsrMDwE4_S3cmn629FeJWheJuniEfA@mail.gmail.com>
In-Reply-To: <CAGAf8LzL9W7gX4gfadTbcsrMDwE4_S3cmn629FeJWheJuniEfA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 9 May 2019 15:32:30 -0400
Message-ID: <CADkTA4MnWTA6omqQ5Hu9zED9zWf4i_HMj24ydCgaYgN7VZv80Q@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH] meta-yocto-bsp: Bump to the latest stable kernel for all the BSP
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
X-List-Received-Date: Thu, 09 May 2019 19:32:44 -0000
Content-Type: multipart/alternative; boundary="00000000000072e4b2058879836a"

--00000000000072e4b2058879836a
Content-Type: text/plain; charset="UTF-8"

On Thu, May 9, 2019 at 12:30 PM Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> From yesterday... Latest stable release of:
> https://github.com/jumpnow/meta-bbb
>
> My GitHub for BBB (BeagleBone Black):
> https://github.com/ZoranStojsavljevic/bbb-yocto
>
> Both worked out for my bash script (adopted for my needs -> sticks and
> ropes) and KAS tool!
>
> https://github.com/ZoranStojsavljevic/bbb-yocto/tree/master/bbb-releases/bbb-warrior
>
> Kernel 5.0.13 (please, look into/upon the traces):
>
> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bbb-warrior/target-bbb-platform-traces.txt
>
>
While interesting .. it really isn't relevant in this context. But thanks
for sharing anyway!

Cheers,

Bruce



> Thank you,
> Zoran
> _______
>
> On Thu, May 9, 2019 at 2:53 PM Bruce Ashfield <bruce.ashfield@gmail.com>
> wrote:
> >
> >
> >
> > On Thu, May 9, 2019 at 8:10 AM Kevin Hao <kexin.hao@windriver.com>
> wrote:
> >>
> >> Boot test for all these boards.
> >>
> >
> > I do have more -stable updates coming, and you are seeing some queued
> 5.0.x changes that I haven't sent yet (since I'm hung up on resolving a
> 4.19 conflict for one of the SoC branches), but yes, the changes here are
> good and I'll be bumping the qemu boards in the next day or so.
> >
> > Bruce
> >
> >
> >>
> >> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> >> ---
> >>  .../recipes-kernel/linux/linux-yocto_4.19.bbappend   | 20
> ++++++++++----------
> >>  .../recipes-kernel/linux/linux-yocto_5.0.bbappend    | 20
> ++++++++++----------
> >>  2 files changed, 20 insertions(+), 20 deletions(-)
> >>
> >> diff --git
> a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
> b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
> >> index 6025230c7306..ec269d905c4b 100644
> >> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
> >> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
> >> @@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
> >>  KMACHINE_genericx86-64 ?= "common-pc-64"
> >>  KMACHINE_beaglebone-yocto ?= "beaglebone"
> >>
> >> -SRCREV_machine_genericx86    ?=
> "11e0e616ed095bb8012e1b4a231254c9656a0193"
> >> -SRCREV_machine_genericx86-64 ?=
> "11e0e616ed095bb8012e1b4a231254c9656a0193"
> >> -SRCREV_machine_edgerouter ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
> >> -SRCREV_machine_beaglebone-yocto ?=
> "eebb51300a07804a020ec468b5f8c5bf720198d9"
> >> -SRCREV_machine_mpc8315e-rdb ?=
> "8b60f968823256f5d2889c4520d70299ca21411b"
> >> +SRCREV_machine_genericx86    ?=
> "5664dc14399edcaad210bbeb6343d84561fb3ea8"
> >> +SRCREV_machine_genericx86-64 ?=
> "5664dc14399edcaad210bbeb6343d84561fb3ea8"
> >> +SRCREV_machine_edgerouter ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
> >> +SRCREV_machine_beaglebone-yocto ?=
> "5664dc14399edcaad210bbeb6343d84561fb3ea8"
> >> +SRCREV_machine_mpc8315e-rdb ?=
> "d419f4ca6ba4b097b8ad710a93b89510f5b2998c"
> >>
> >>  COMPATIBLE_MACHINE_genericx86 = "genericx86"
> >>  COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
> >> @@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
> >>  COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
> >>  COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
> >>
> >> -LINUX_VERSION_genericx86 = "4.19.19"
> >> -LINUX_VERSION_genericx86-64 = "4.19.19"
> >> -LINUX_VERSION_edgerouter = "4.19.14"
> >> -LINUX_VERSION_beaglebone-yocto = "4.19.14"
> >> -LINUX_VERSION_mpc8315e-rdb = "4.19.14"
> >> +LINUX_VERSION_genericx86 = "4.19.34"
> >> +LINUX_VERSION_genericx86-64 = "4.19.34"
> >> +LINUX_VERSION_edgerouter = "4.19.34"
> >> +LINUX_VERSION_beaglebone-yocto = "4.19.34"
> >> +LINUX_VERSION_mpc8315e-rdb = "4.19.34"
> >> diff --git
> a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
> b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
> >> index 5cf6e1f0649e..d7cf1216f45d 100644
> >> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
> >> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
> >> @@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
> >>  KMACHINE_genericx86-64 ?= "common-pc-64"
> >>  KMACHINE_beaglebone-yocto ?= "beaglebone"
> >>
> >> -SRCREV_machine_genericx86    ?=
> "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
> >> -SRCREV_machine_genericx86-64 ?=
> "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
> >> -SRCREV_machine_edgerouter ?= "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
> >> -SRCREV_machine_beaglebone-yocto ?=
> "3df4aae6074e94e794e27fe7f17451d9353cdf3d"
> >> -SRCREV_machine_mpc8315e-rdb ?=
> "8b62af7f252af10588276802c4c6d7c502e875be"
> >> +SRCREV_machine_genericx86    ?=
> "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
> >> +SRCREV_machine_genericx86-64 ?=
> "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
> >> +SRCREV_machine_edgerouter ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
> >> +SRCREV_machine_beaglebone-yocto ?=
> "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
> >> +SRCREV_machine_mpc8315e-rdb ?=
> "670ce7e9db627d0c2067cfdb571ddc1f117818d8"
> >>
> >>  COMPATIBLE_MACHINE_genericx86 = "genericx86"
> >>  COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
> >> @@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
> >>  COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
> >>  COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
> >>
> >> -LINUX_VERSION_genericx86 = "5.0.3"
> >> -LINUX_VERSION_genericx86-64 = "5.0.3"
> >> -LINUX_VERSION_edgerouter = "5.0.3"
> >> -LINUX_VERSION_beaglebone-yocto = "5.0.3"
> >> -LINUX_VERSION_mpc8315e-rdb = "5.0.3"
> >> +LINUX_VERSION_genericx86 = "5.0.13"
> >> +LINUX_VERSION_genericx86-64 = "5.0.13"
> >> +LINUX_VERSION_edgerouter = "5.0.13"
> >> +LINUX_VERSION_beaglebone-yocto = "5.0.13"
> >> +LINUX_VERSION_mpc8315e-rdb = "5.0.13"
> >> --
> >> 2.14.4
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> >
> > --
> > - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> > - "Use the force Harry" - Gandalf, Star Trek II
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--00000000000072e4b2058879836a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, May 9, 2019 at 12:30 PM Zoran Stojsavljevic=
 &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com">zoran.stojsavljevic@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">From yesterday... Latest stable release of:<br>
<a href=3D"https://github.com/jumpnow/meta-bbb" rel=3D"noreferrer" target=
=3D"_blank">https://github.com/jumpnow/meta-bbb</a><br>
<br>
My GitHub for BBB (BeagleBone Black):<br>
<a href=3D"https://github.com/ZoranStojsavljevic/bbb-yocto" rel=3D"noreferr=
er" target=3D"_blank">https://github.com/ZoranStojsavljevic/bbb-yocto</a><b=
r>
<br>
Both worked out for my bash script (adopted for my needs -&gt; sticks and<b=
r>
ropes) and KAS tool!<br>
<a href=3D"https://github.com/ZoranStojsavljevic/bbb-yocto/tree/master/bbb-=
releases/bbb-warrior" rel=3D"noreferrer" target=3D"_blank">https://github.c=
om/ZoranStojsavljevic/bbb-yocto/tree/master/bbb-releases/bbb-warrior</a><br=
>
<br>
Kernel 5.0.13 (please, look into/upon the traces):<br>
<a href=3D"https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-=
releases/bbb-warrior/target-bbb-platform-traces.txt" rel=3D"noreferrer" tar=
get=3D"_blank">https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/=
bbb-releases/bbb-warrior/target-bbb-platform-traces.txt</a><br>
<br></blockquote><div><br></div><div><div class=3D"gmail_default" style=3D"=
font-size:small">While interesting .. it really isn&#39;t relevant in this =
context. But thanks for sharing anyway!</div><div class=3D"gmail_default" s=
tyle=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-size:small">Cheers,</div><div class=3D"gmail_default" style=3D"font-size=
:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small">Br=
uce</div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
Thank you,<br>
Zoran<br>
_______<br>
<br>
On Thu, May 9, 2019 at 2:53 PM Bruce Ashfield &lt;<a href=3D"mailto:bruce.a=
shfield@gmail.com" target=3D"_blank">bruce.ashfield@gmail.com</a>&gt; wrote=
:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Thu, May 9, 2019 at 8:10 AM Kevin Hao &lt;<a href=3D"mailto:kexin.h=
ao@windriver.com" target=3D"_blank">kexin.hao@windriver.com</a>&gt; wrote:<=
br>
&gt;&gt;<br>
&gt;&gt; Boot test for all these boards.<br>
&gt;&gt;<br>
&gt;<br>
&gt; I do have more -stable updates coming, and you are seeing some queued =
5.0.x changes that I haven&#39;t sent yet (since I&#39;m hung up on resolvi=
ng a 4.19 conflict for one of the SoC branches), but yes, the changes here =
are good and I&#39;ll be bumping the qemu boards in the next day or so.<br>
&gt;<br>
&gt; Bruce<br>
&gt;<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Kevin Hao &lt;<a href=3D"mailto:kexin.hao@windriver=
.com" target=3D"_blank">kexin.hao@windriver.com</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 .../recipes-kernel/linux/linux-yocto_4.19.bbappend=C2=A0 =C2=
=A0| 20 ++++++++++----------<br>
&gt;&gt;=C2=A0 .../recipes-kernel/linux/linux-yocto_5.0.bbappend=C2=A0 =C2=
=A0 | 20 ++++++++++----------<br>
&gt;&gt;=C2=A0 2 files changed, 20 insertions(+), 20 deletions(-)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.=
bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend<br=
>
&gt;&gt; index 6025230c7306..ec269d905c4b 100644<br>
&gt;&gt; --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappen=
d<br>
&gt;&gt; +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappen=
d<br>
&gt;&gt; @@ -8,11 +8,11 @@ KMACHINE_genericx86 ?=3D &quot;common-pc&quot;<b=
r>
&gt;&gt;=C2=A0 KMACHINE_genericx86-64 ?=3D &quot;common-pc-64&quot;<br>
&gt;&gt;=C2=A0 KMACHINE_beaglebone-yocto ?=3D &quot;beaglebone&quot;<br>
&gt;&gt;<br>
&gt;&gt; -SRCREV_machine_genericx86=C2=A0 =C2=A0 ?=3D &quot;11e0e616ed095bb=
8012e1b4a231254c9656a0193&quot;<br>
&gt;&gt; -SRCREV_machine_genericx86-64 ?=3D &quot;11e0e616ed095bb8012e1b4a2=
31254c9656a0193&quot;<br>
&gt;&gt; -SRCREV_machine_edgerouter ?=3D &quot;eebb51300a07804a020ec468b5f8=
c5bf720198d9&quot;<br>
&gt;&gt; -SRCREV_machine_beaglebone-yocto ?=3D &quot;eebb51300a07804a020ec4=
68b5f8c5bf720198d9&quot;<br>
&gt;&gt; -SRCREV_machine_mpc8315e-rdb ?=3D &quot;8b60f968823256f5d2889c4520=
d70299ca21411b&quot;<br>
&gt;&gt; +SRCREV_machine_genericx86=C2=A0 =C2=A0 ?=3D &quot;5664dc14399edca=
ad210bbeb6343d84561fb3ea8&quot;<br>
&gt;&gt; +SRCREV_machine_genericx86-64 ?=3D &quot;5664dc14399edcaad210bbeb6=
343d84561fb3ea8&quot;<br>
&gt;&gt; +SRCREV_machine_edgerouter ?=3D &quot;5664dc14399edcaad210bbeb6343=
d84561fb3ea8&quot;<br>
&gt;&gt; +SRCREV_machine_beaglebone-yocto ?=3D &quot;5664dc14399edcaad210bb=
eb6343d84561fb3ea8&quot;<br>
&gt;&gt; +SRCREV_machine_mpc8315e-rdb ?=3D &quot;d419f4ca6ba4b097b8ad710a93=
b89510f5b2998c&quot;<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 COMPATIBLE_MACHINE_genericx86 =3D &quot;genericx86&quot;<br>
&gt;&gt;=C2=A0 COMPATIBLE_MACHINE_genericx86-64 =3D &quot;genericx86-64&quo=
t;<br>
&gt;&gt; @@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter =3D &quot;edgerout=
er&quot;<br>
&gt;&gt;=C2=A0 COMPATIBLE_MACHINE_beaglebone-yocto =3D &quot;beaglebone-yoc=
to&quot;<br>
&gt;&gt;=C2=A0 COMPATIBLE_MACHINE_mpc8315e-rdb =3D &quot;mpc8315e-rdb&quot;=
<br>
&gt;&gt;<br>
&gt;&gt; -LINUX_VERSION_genericx86 =3D &quot;4.19.19&quot;<br>
&gt;&gt; -LINUX_VERSION_genericx86-64 =3D &quot;4.19.19&quot;<br>
&gt;&gt; -LINUX_VERSION_edgerouter =3D &quot;4.19.14&quot;<br>
&gt;&gt; -LINUX_VERSION_beaglebone-yocto =3D &quot;4.19.14&quot;<br>
&gt;&gt; -LINUX_VERSION_mpc8315e-rdb =3D &quot;4.19.14&quot;<br>
&gt;&gt; +LINUX_VERSION_genericx86 =3D &quot;4.19.34&quot;<br>
&gt;&gt; +LINUX_VERSION_genericx86-64 =3D &quot;4.19.34&quot;<br>
&gt;&gt; +LINUX_VERSION_edgerouter =3D &quot;4.19.34&quot;<br>
&gt;&gt; +LINUX_VERSION_beaglebone-yocto =3D &quot;4.19.34&quot;<br>
&gt;&gt; +LINUX_VERSION_mpc8315e-rdb =3D &quot;4.19.34&quot;<br>
&gt;&gt; diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.b=
bappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend<br>
&gt;&gt; index 5cf6e1f0649e..d7cf1216f45d 100644<br>
&gt;&gt; --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend=
<br>
&gt;&gt; +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend=
<br>
&gt;&gt; @@ -8,11 +8,11 @@ KMACHINE_genericx86 ?=3D &quot;common-pc&quot;<b=
r>
&gt;&gt;=C2=A0 KMACHINE_genericx86-64 ?=3D &quot;common-pc-64&quot;<br>
&gt;&gt;=C2=A0 KMACHINE_beaglebone-yocto ?=3D &quot;beaglebone&quot;<br>
&gt;&gt;<br>
&gt;&gt; -SRCREV_machine_genericx86=C2=A0 =C2=A0 ?=3D &quot;3df4aae6074e94e=
794e27fe7f17451d9353cdf3d&quot;<br>
&gt;&gt; -SRCREV_machine_genericx86-64 ?=3D &quot;3df4aae6074e94e794e27fe7f=
17451d9353cdf3d&quot;<br>
&gt;&gt; -SRCREV_machine_edgerouter ?=3D &quot;3df4aae6074e94e794e27fe7f174=
51d9353cdf3d&quot;<br>
&gt;&gt; -SRCREV_machine_beaglebone-yocto ?=3D &quot;3df4aae6074e94e794e27f=
e7f17451d9353cdf3d&quot;<br>
&gt;&gt; -SRCREV_machine_mpc8315e-rdb ?=3D &quot;8b62af7f252af10588276802c4=
c6d7c502e875be&quot;<br>
&gt;&gt; +SRCREV_machine_genericx86=C2=A0 =C2=A0 ?=3D &quot;f990fd0ce123aa6=
035042efad09b2ddc3e7d48f4&quot;<br>
&gt;&gt; +SRCREV_machine_genericx86-64 ?=3D &quot;f990fd0ce123aa6035042efad=
09b2ddc3e7d48f4&quot;<br>
&gt;&gt; +SRCREV_machine_edgerouter ?=3D &quot;f990fd0ce123aa6035042efad09b=
2ddc3e7d48f4&quot;<br>
&gt;&gt; +SRCREV_machine_beaglebone-yocto ?=3D &quot;f990fd0ce123aa6035042e=
fad09b2ddc3e7d48f4&quot;<br>
&gt;&gt; +SRCREV_machine_mpc8315e-rdb ?=3D &quot;670ce7e9db627d0c2067cfdb57=
1ddc1f117818d8&quot;<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 COMPATIBLE_MACHINE_genericx86 =3D &quot;genericx86&quot;<br>
&gt;&gt;=C2=A0 COMPATIBLE_MACHINE_genericx86-64 =3D &quot;genericx86-64&quo=
t;<br>
&gt;&gt; @@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter =3D &quot;edgerout=
er&quot;<br>
&gt;&gt;=C2=A0 COMPATIBLE_MACHINE_beaglebone-yocto =3D &quot;beaglebone-yoc=
to&quot;<br>
&gt;&gt;=C2=A0 COMPATIBLE_MACHINE_mpc8315e-rdb =3D &quot;mpc8315e-rdb&quot;=
<br>
&gt;&gt;<br>
&gt;&gt; -LINUX_VERSION_genericx86 =3D &quot;5.0.3&quot;<br>
&gt;&gt; -LINUX_VERSION_genericx86-64 =3D &quot;5.0.3&quot;<br>
&gt;&gt; -LINUX_VERSION_edgerouter =3D &quot;5.0.3&quot;<br>
&gt;&gt; -LINUX_VERSION_beaglebone-yocto =3D &quot;5.0.3&quot;<br>
&gt;&gt; -LINUX_VERSION_mpc8315e-rdb =3D &quot;5.0.3&quot;<br>
&gt;&gt; +LINUX_VERSION_genericx86 =3D &quot;5.0.13&quot;<br>
&gt;&gt; +LINUX_VERSION_genericx86-64 =3D &quot;5.0.13&quot;<br>
&gt;&gt; +LINUX_VERSION_edgerouter =3D &quot;5.0.13&quot;<br>
&gt;&gt; +LINUX_VERSION_beaglebone-yocto =3D &quot;5.0.13&quot;<br>
&gt;&gt; +LINUX_VERSION_mpc8315e-rdb =3D &quot;5.0.13&quot;<br>
&gt;&gt; --<br>
&gt;&gt; 2.14.4<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto<=
/a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; - Thou shalt not follow the NULL pointer, for chaos and madness await =
thee at its end<br>
&gt; - &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end<br>- &quot;Use the force Harry&quot; =
- Gandalf, Star Trek II<br><br></div></div>

--00000000000072e4b2058879836a--
