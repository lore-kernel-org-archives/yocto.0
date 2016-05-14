Return-Path: <pknopf@medxchange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 555BEE0088C; Sat, 14 May 2016 15:32:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57E53E00849
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 15:32:38 -0700 (PDT)
Received: by mail-vk0-f54.google.com with SMTP id s184so175751685vkb.3
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 15:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=medxchange-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=G6dSTvnYsfwD8rRxGKfLL3tS9PhmuuziTUDKUSGTIUg=;
	b=LX+AD4VODPG6tIuCH0rGFpgDaekkA43nexR5jiKUjOzVXchTuYu4HBgztT+VjjBucB
	N/q6/K2cWoy2YRsoxUhy6PrZkJ6dAsBhuNSkH3S7Jt36CdVBcFbGIxfYpxV76JjWmiTe
	8nN5BTr7bXoCfHaUy7in8+kyF2JzXPni//Q3TVSHNjdoj4oY/TxLjRC0euW/MWa2wfGD
	+bt3g53aTuFuEryorOrovEB9Lj2g9FYD4m952/hgtGoi6DXiTm9PV6E61o9BydUnY0wp
	ADHl+37hKdIiNTV61j+w5a9MJwg/RPBY4agaTCo9uSDyk7hmZ1rjSpWK75h6q5SgdJyX
	91RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=G6dSTvnYsfwD8rRxGKfLL3tS9PhmuuziTUDKUSGTIUg=;
	b=ePXWU2wCVfMiWdn2UVT/VVAS2CgNCDhWYAlOIJMm/Z6FXbkPQLYuRoyl28/MH2g+5M
	/cndpMxQcEcsbncsQXH31eOiEKRy+fup+r9yPcbzhEhhZYbDZkv7oMeqDSkqzRo78lSr
	ZDk0iKxV8XvQ8ROP66NKNC4PanUzV69uGLxH1TM1OsUhhDaSy28usz2J1cDhKhss6MDU
	yXZPYfnOBos6GZAUI78pf3KTVztgpd9ya8Cq2LRg26BI0RzOL000FWo+WPQwJajMVb+n
	OvI6UyYd5/7DMOY4nQ2iYv03DrJA/uzbBDwl6Cvml53wz5KwsQ0feEB/x28P/47/eYr1
	hRGQ==
X-Gm-Message-State: AOPr4FVE1NTP0DxmndCxYmpuBu3e3PrlqAjIZCoqPA3/mw4RdsipG5Vm3rwKOZXBDTcUoA0Cp8rzB8v+L8iggA==
MIME-Version: 1.0
X-Received: by 10.176.2.14 with SMTP id 14mr11599595uas.10.1463265157912; Sat,
	14 May 2016 15:32:37 -0700 (PDT)
Received: by 10.31.193.20 with HTTP; Sat, 14 May 2016 15:32:37 -0700 (PDT)
In-Reply-To: <CAMKF1srhr1uYJq53LZ+CKUNqYPAv3uq2onv3PtY=nVVyz7+bgA@mail.gmail.com>
References: <CABfz71dsLkf5W9LDsEewXj2Rmw715jqqMFvwKE7WYT=83iAs6g@mail.gmail.com>
	<CAMKF1so7vzL4iKu5LiBKNK2cNBbV_0fuRoD_c7aVaN8x+kAh3Q@mail.gmail.com>
	<CABfz71dAJ4L6rKFgCOQgYNdqmr9jk5UaSLkMO=2PJ58gMBCLkw@mail.gmail.com>
	<CABfz71e32ixS10u7Wyr+XnZm+N93s6tPNorYNRqf276xh5ay9Q@mail.gmail.com>
	<CAMKF1srhr1uYJq53LZ+CKUNqYPAv3uq2onv3PtY=nVVyz7+bgA@mail.gmail.com>
Date: Sat, 14 May 2016 18:32:37 -0400
Message-ID: <CABfz71fcyMhkU3oH7msO8p2rAp1x4wozU9ordW2ZP7dqQVCNGQ@mail.gmail.com>
From: Paul Knopf <pknopf@medxchange.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: machine arch files for Jetson TX1 (Quad-core ARMCortex-A57 MPCore Processor)
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
X-List-Received-Date: Sat, 14 May 2016 22:32:41 -0000
Content-Type: multipart/alternative; boundary=001a113ed1a2f321200532d4f704

--001a113ed1a2f321200532d4f704
Content-Type: text/plain; charset=UTF-8

That layer is for the tk1, not the tx1. I am asking for the proper include
files to build for the tx1.

Thanks,
Paul Knopf
Software Engineer
Med X Change, Inc
pknopf@medxchange.com

On Sat, May 14, 2016 at 6:27 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Sat, May 14, 2016 at 3:23 PM, Paul Knopf <pknopf@medxchange.com> wrote:
> > NVideo provides the following crosstools-ng config for building a
> > cross-compile toolchain.
> >
> > https://gist.github.com/anonymous/95b2ec71aebf8df644b1789bc3ed958d
> >
>
> with OE it will build everything for you
> just clone
>
> https://github.com/kraj/meta-jetson-tk1
>
> add it to bblayers.conf
> and then set MACHINE = "jetson-tk1"
> and bitbake core-image-minimal
>
>
> > Some parts I think that are relevant...
> >
> > ---------
> > CT_ARCH="arm"
> > CT_ARCH_SUPPORTS_BOTH_MMU=y
> > CT_ARCH_SUPPORTS_BOTH_ENDIAN=y
> > CT_ARCH_SUPPORTS_32=y
> > CT_ARCH_SUPPORTS_WITH_ARCH=y
> > CT_ARCH_SUPPORTS_WITH_CPU=y
> > CT_ARCH_SUPPORTS_WITH_TUNE=y
> > CT_ARCH_SUPPORTS_WITH_FLOAT=y
> > CT_ARCH_SUPPORTS_WITH_FPU=y
> > CT_ARCH_SUPPORTS_SOFTFP=y
> > CT_ARCH_DEFAULT_HAS_MMU=y
> > CT_ARCH_DEFAULT_LE=y
> > CT_ARCH_DEFAULT_32=y
> > CT_ARCH_ARCH="armv7-a"
> > CT_ARCH_CPU="cortex-a9"
> > CT_ARCH_TUNE="cortex-a9"
> > CT_ARCH_FPU=""
> > # CT_ARCH_BE is not set
> > CT_ARCH_LE=y
> > CT_ARCH_32=y
> > CT_ARCH_BITNESS=32
> > CT_ARCH_FLOAT_HW=y
> > # CT_ARCH_FLOAT_SW is not set
> > CT_TARGET_CFLAGS=""
> > CT_TARGET_LDFLAGS=""
> > # CT_ARCH_alpha is not set
> > CT_ARCH_arm=y
> > # CT_ARCH_avr32 is not set
> > # CT_ARCH_blackfin is not set
> > # CT_ARCH_m68k is not set
> > # CT_ARCH_mips is not set
> > # CT_ARCH_powerpc is not set
> > # CT_ARCH_s390 is not set
> > # CT_ARCH_sh is not set
> > # CT_ARCH_sparc is not set
> > # CT_ARCH_x86 is not set
> > CT_ARCH_alpha_AVAILABLE=y
> > CT_ARCH_arm_AVAILABLE=y
> > CT_ARCH_avr32_AVAILABLE=y
> > CT_ARCH_blackfin_AVAILABLE=y
> > CT_ARCH_m68k_AVAILABLE=y
> > CT_ARCH_mips_AVAILABLE=y
> > CT_ARCH_powerpc_AVAILABLE=y
> > CT_ARCH_s390_AVAILABLE=y
> > CT_ARCH_sh_AVAILABLE=y
> > CT_ARCH_sparc_AVAILABLE=y
> > CT_ARCH_x86_AVAILABLE=y
> > ---------
> >
> > What files do I need to build with this cross-toolchain, inside of Yocto?
> >
> >
> > Thanks,
> > Paul Knopf
> > Software Engineer
> > Med X Change, Inc
> > pknopf@medxchange.com
> >
> > On Sat, May 14, 2016 at 6:14 PM, Paul Knopf <pknopf@medxchange.com>
> wrote:
> >>
> >> They are using "require conf/machine/include/tune-cortexa15.inc" for the
> >> TK1, but the TX1 uses a Cortex A57, not a A15. There is no
> "tune-cortexa57".
> >>
> >> Thanks,
> >> Paul Knopf
> >> Software Engineer
> >> Med X Change, Inc
> >> pknopf@medxchange.com
> >>
> >> On Sat, May 14, 2016 at 6:08 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >>>
> >>> Look at kraj/meta-jetson-tk1 on github
> >>>
> >>> On May 14, 2016 2:17 PM, "Paul Knopf" <pknopf@medxchange.com> wrote:
> >>>>
> >>>> What configs do I need to include in my machine.conf to support this
> >>>> processor?
> >>>>
> >>>> http://www.nvidia.com/object/jetson-tx1-dev-kit.html
> >>>>
> >>>> "require conf/machine/include/arm/arch-*.inc" ?
> >>>>
> >>>> Thanks,
> >>>> Paul Knopf
> >>>> Software Engineer
> >>>> Med X Change, Inc
> >>>> pknopf@medxchange.com
> >>>>
> >>>> --
> >>>> _______________________________________________
> >>>> yocto mailing list
> >>>> yocto@yoctoproject.org
> >>>> https://lists.yoctoproject.org/listinfo/yocto
> >>>>
> >>
> >
>

--001a113ed1a2f321200532d4f704
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That layer is for the tk1, not the tx1. I am asking for th=
e proper include files to build for the tx1.</div><div class=3D"gmail_extra=
"><br clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr"><d=
iv>Thanks,</div><div>Paul Knopf</div><div>Software Engineer</div><div>Med X=
 Change, Inc</div><div><a href=3D"mailto:pknopf@medxchange.com" target=3D"_=
blank">pknopf@medxchange.com</a></div></div></div></div>
<br><div class=3D"gmail_quote">On Sat, May 14, 2016 at 6:27 PM, Khem Raj <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank"=
>raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><span class=3D"">On Sat, May 14, 2016 at 3:23 PM, Paul Knopf &lt;<a href=
=3D"mailto:pknopf@medxchange.com">pknopf@medxchange.com</a>&gt; wrote:<br>
&gt; NVideo provides the following crosstools-ng config for building a<br>
&gt; cross-compile toolchain.<br>
&gt;<br>
&gt; <a href=3D"https://gist.github.com/anonymous/95b2ec71aebf8df644b1789bc=
3ed958d" rel=3D"noreferrer" target=3D"_blank">https://gist.github.com/anony=
mous/95b2ec71aebf8df644b1789bc3ed958d</a><br>
&gt;<br>
<br>
</span>with OE it will build everything for you<br>
just clone<br>
<br>
<a href=3D"https://github.com/kraj/meta-jetson-tk1" rel=3D"noreferrer" targ=
et=3D"_blank">https://github.com/kraj/meta-jetson-tk1</a><br>
<br>
add it to bblayers.conf<br>
and then set MACHINE =3D &quot;jetson-tk1&quot;<br>
and bitbake core-image-minimal<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt; Some parts I think that are relevant...<br>
&gt;<br>
&gt; ---------<br>
&gt; CT_ARCH=3D&quot;arm&quot;<br>
&gt; CT_ARCH_SUPPORTS_BOTH_MMU=3Dy<br>
&gt; CT_ARCH_SUPPORTS_BOTH_ENDIAN=3Dy<br>
&gt; CT_ARCH_SUPPORTS_32=3Dy<br>
&gt; CT_ARCH_SUPPORTS_WITH_ARCH=3Dy<br>
&gt; CT_ARCH_SUPPORTS_WITH_CPU=3Dy<br>
&gt; CT_ARCH_SUPPORTS_WITH_TUNE=3Dy<br>
&gt; CT_ARCH_SUPPORTS_WITH_FLOAT=3Dy<br>
&gt; CT_ARCH_SUPPORTS_WITH_FPU=3Dy<br>
&gt; CT_ARCH_SUPPORTS_SOFTFP=3Dy<br>
&gt; CT_ARCH_DEFAULT_HAS_MMU=3Dy<br>
&gt; CT_ARCH_DEFAULT_LE=3Dy<br>
&gt; CT_ARCH_DEFAULT_32=3Dy<br>
&gt; CT_ARCH_ARCH=3D&quot;armv7-a&quot;<br>
&gt; CT_ARCH_CPU=3D&quot;cortex-a9&quot;<br>
&gt; CT_ARCH_TUNE=3D&quot;cortex-a9&quot;<br>
&gt; CT_ARCH_FPU=3D&quot;&quot;<br>
&gt; # CT_ARCH_BE is not set<br>
&gt; CT_ARCH_LE=3Dy<br>
&gt; CT_ARCH_32=3Dy<br>
&gt; CT_ARCH_BITNESS=3D32<br>
&gt; CT_ARCH_FLOAT_HW=3Dy<br>
&gt; # CT_ARCH_FLOAT_SW is not set<br>
&gt; CT_TARGET_CFLAGS=3D&quot;&quot;<br>
&gt; CT_TARGET_LDFLAGS=3D&quot;&quot;<br>
&gt; # CT_ARCH_alpha is not set<br>
&gt; CT_ARCH_arm=3Dy<br>
&gt; # CT_ARCH_avr32 is not set<br>
&gt; # CT_ARCH_blackfin is not set<br>
&gt; # CT_ARCH_m68k is not set<br>
&gt; # CT_ARCH_mips is not set<br>
&gt; # CT_ARCH_powerpc is not set<br>
&gt; # CT_ARCH_s390 is not set<br>
&gt; # CT_ARCH_sh is not set<br>
&gt; # CT_ARCH_sparc is not set<br>
&gt; # CT_ARCH_x86 is not set<br>
&gt; CT_ARCH_alpha_AVAILABLE=3Dy<br>
&gt; CT_ARCH_arm_AVAILABLE=3Dy<br>
&gt; CT_ARCH_avr32_AVAILABLE=3Dy<br>
&gt; CT_ARCH_blackfin_AVAILABLE=3Dy<br>
&gt; CT_ARCH_m68k_AVAILABLE=3Dy<br>
&gt; CT_ARCH_mips_AVAILABLE=3Dy<br>
&gt; CT_ARCH_powerpc_AVAILABLE=3Dy<br>
&gt; CT_ARCH_s390_AVAILABLE=3Dy<br>
&gt; CT_ARCH_sh_AVAILABLE=3Dy<br>
&gt; CT_ARCH_sparc_AVAILABLE=3Dy<br>
&gt; CT_ARCH_x86_AVAILABLE=3Dy<br>
&gt; ---------<br>
&gt;<br>
&gt; What files do I need to build with this cross-toolchain, inside of Yoc=
to?<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Paul Knopf<br>
&gt; Software Engineer<br>
&gt; Med X Change, Inc<br>
&gt; <a href=3D"mailto:pknopf@medxchange.com">pknopf@medxchange.com</a><br>
&gt;<br>
&gt; On Sat, May 14, 2016 at 6:14 PM, Paul Knopf &lt;<a href=3D"mailto:pkno=
pf@medxchange.com">pknopf@medxchange.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; They are using &quot;require conf/machine/include/tune-cortexa15.i=
nc&quot; for the<br>
&gt;&gt; TK1, but the TX1 uses a Cortex A57, not a A15. There is no &quot;t=
une-cortexa57&quot;.<br>
&gt;&gt;<br>
&gt;&gt; Thanks,<br>
&gt;&gt; Paul Knopf<br>
&gt;&gt; Software Engineer<br>
&gt;&gt; Med X Change, Inc<br>
&gt;&gt; <a href=3D"mailto:pknopf@medxchange.com">pknopf@medxchange.com</a>=
<br>
&gt;&gt;<br>
&gt;&gt; On Sat, May 14, 2016 at 6:08 PM, Khem Raj &lt;<a href=3D"mailto:ra=
j.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Look at kraj/meta-jetson-tk1 on github<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On May 14, 2016 2:17 PM, &quot;Paul Knopf&quot; &lt;<a href=3D=
"mailto:pknopf@medxchange.com">pknopf@medxchange.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; What configs do I need to include in my machine.conf to su=
pport this<br>
&gt;&gt;&gt;&gt; processor?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; <a href=3D"http://www.nvidia.com/object/jetson-tx1-dev-kit=
.html" rel=3D"noreferrer" target=3D"_blank">http://www.nvidia.com/object/je=
tson-tx1-dev-kit.html</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; &quot;require conf/machine/include/arm/arch-*.inc&quot; ?<=
br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Thanks,<br>
&gt;&gt;&gt;&gt; Paul Knopf<br>
&gt;&gt;&gt;&gt; Software Engineer<br>
&gt;&gt;&gt;&gt; Med X Change, Inc<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:pknopf@medxchange.com">pknopf@medxchange=
.com</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproje=
ct.org</a><br>
&gt;&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinf=
o/yocto</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--001a113ed1a2f321200532d4f704--
