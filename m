Return-Path: <pknopf@medxchange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27F6FE008B8; Sat, 14 May 2016 15:46:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EEA3E0085E
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 15:46:43 -0700 (PDT)
Received: by mail-vk0-f43.google.com with SMTP id s184so175917431vkb.3
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 15:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=medxchange-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=V9EhyPgNqclbYcDtsDgJWFFkEwd5pMoZGZ9xI6NOGqQ=;
	b=H0DtXSSuwoBqbVATIBgzt1Umht1gIinzDZHAz23YVDLECpC/mrLEwhSc2M39jODh4J
	VvVKM/Y930thqtgvwJker5asj3loxImofBYuNBEYeB9CeYJ3bzGgHmTPRWvmhdNZk+GF
	JvucOBZ8I/mU0oEau4u/Zu84i7zD5bOgdk65yEGGOGK122vuxL25HkvJZ8I/BGCpggJx
	4Usj4amQj+9MqvcICjkbUZdVpWuxUXq+i9CQ8gLUSjd9mVfSII4ImrWi7tyzMXmLg8hp
	yrJCBYBOLCFOYOPfhuhgWSvZ+LfMbuzCSbSv7UmDRIj/ozM3vPO8K7ccD2XT6xYa+tEQ
	Wn1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=V9EhyPgNqclbYcDtsDgJWFFkEwd5pMoZGZ9xI6NOGqQ=;
	b=PaVlqLirIQ0pF/zxFumYPJdD6Ur1NIGWazt1YAbsguU90kQMvy8v0wuMzFUPgsYRuU
	EIwGtYCV8WtPAsYnOw+weGfZkp3jZ3DDDCKmTvvH+hUagNdgUvNDPMg1KaS9hmijk2ZL
	HFwWWQJYfpB8Y6Dm59FK22WtWmwTFGt2dQ5YBWB8cPHSxmZiGBVExHcXf2iMTPXYkeJj
	f1eEFKZbuFcG+5n9iVxzSLaXxd13MO5YFWdCBnKcsba+n2Z7qxctoOxzGvo3QnMY9/nf
	PolD8CIU5UxsruUfsJhK5aH/s6l4bAlE+J1/VStYM/N/+9CW9RV3J8jerkFi9t8ji1Pl
	YXYA==
X-Gm-Message-State: AOPr4FU5y3zUYwpaCLfT14hvXYD9ind1gqzm/XiOHaaJv+3tTNPiO26IDOvLZjpuDW04wZLvvdlmcP0LAMVeUw==
MIME-Version: 1.0
X-Received: by 10.176.2.14 with SMTP id 14mr11619355uas.10.1463266002656; Sat,
	14 May 2016 15:46:42 -0700 (PDT)
Received: by 10.31.193.20 with HTTP; Sat, 14 May 2016 15:46:42 -0700 (PDT)
In-Reply-To: <CABfz71fcyMhkU3oH7msO8p2rAp1x4wozU9ordW2ZP7dqQVCNGQ@mail.gmail.com>
References: <CABfz71dsLkf5W9LDsEewXj2Rmw715jqqMFvwKE7WYT=83iAs6g@mail.gmail.com>
	<CAMKF1so7vzL4iKu5LiBKNK2cNBbV_0fuRoD_c7aVaN8x+kAh3Q@mail.gmail.com>
	<CABfz71dAJ4L6rKFgCOQgYNdqmr9jk5UaSLkMO=2PJ58gMBCLkw@mail.gmail.com>
	<CABfz71e32ixS10u7Wyr+XnZm+N93s6tPNorYNRqf276xh5ay9Q@mail.gmail.com>
	<CAMKF1srhr1uYJq53LZ+CKUNqYPAv3uq2onv3PtY=nVVyz7+bgA@mail.gmail.com>
	<CABfz71fcyMhkU3oH7msO8p2rAp1x4wozU9ordW2ZP7dqQVCNGQ@mail.gmail.com>
Date: Sat, 14 May 2016 18:46:42 -0400
Message-ID: <CABfz71c3eZDAXRJ-2RcqjnwAe9bhfkqz8aF1FHFiPYSVwA5ZBg@mail.gmail.com>
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
X-List-Received-Date: Sat, 14 May 2016 22:46:46 -0000
Content-Type: multipart/alternative; boundary=001a113ed1a24cf5e80532d52a48

--001a113ed1a24cf5e80532d52a48
Content-Type: text/plain; charset=UTF-8

This is what I am thinking.

DEFAULTTUNE = "cortexa9hf"
require conf/machine/include/tune-cortexa9.inc

Does this sound right? I am using "hf" because in the crosstools-ng has
CT_ARCH_FLOAT="hard", and cortexa9 because of CT_ARCH_CPU="cortex-a9" and
CT_ARCH_TUNE="cortex-a9".

Sorry, I'm that familiar with embedded processors. Any guidance would be
greatly appreciated.

Thanks,
Paul Knopf
Software Engineer
Med X Change, Inc
pknopf@medxchange.com

On Sat, May 14, 2016 at 6:32 PM, Paul Knopf <pknopf@medxchange.com> wrote:

> That layer is for the tk1, not the tx1. I am asking for the proper include
> files to build for the tx1.
>
> Thanks,
> Paul Knopf
> Software Engineer
> Med X Change, Inc
> pknopf@medxchange.com
>
> On Sat, May 14, 2016 at 6:27 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Sat, May 14, 2016 at 3:23 PM, Paul Knopf <pknopf@medxchange.com>
>> wrote:
>> > NVideo provides the following crosstools-ng config for building a
>> > cross-compile toolchain.
>> >
>> > https://gist.github.com/anonymous/95b2ec71aebf8df644b1789bc3ed958d
>> >
>>
>> with OE it will build everything for you
>> just clone
>>
>> https://github.com/kraj/meta-jetson-tk1
>>
>> add it to bblayers.conf
>> and then set MACHINE = "jetson-tk1"
>> and bitbake core-image-minimal
>>
>>
>> > Some parts I think that are relevant...
>> >
>> > ---------
>> > CT_ARCH="arm"
>> > CT_ARCH_SUPPORTS_BOTH_MMU=y
>> > CT_ARCH_SUPPORTS_BOTH_ENDIAN=y
>> > CT_ARCH_SUPPORTS_32=y
>> > CT_ARCH_SUPPORTS_WITH_ARCH=y
>> > CT_ARCH_SUPPORTS_WITH_CPU=y
>> > CT_ARCH_SUPPORTS_WITH_TUNE=y
>> > CT_ARCH_SUPPORTS_WITH_FLOAT=y
>> > CT_ARCH_SUPPORTS_WITH_FPU=y
>> > CT_ARCH_SUPPORTS_SOFTFP=y
>> > CT_ARCH_DEFAULT_HAS_MMU=y
>> > CT_ARCH_DEFAULT_LE=y
>> > CT_ARCH_DEFAULT_32=y
>> > CT_ARCH_ARCH="armv7-a"
>> > CT_ARCH_CPU="cortex-a9"
>> > CT_ARCH_TUNE="cortex-a9"
>> > CT_ARCH_FPU=""
>> > # CT_ARCH_BE is not set
>> > CT_ARCH_LE=y
>> > CT_ARCH_32=y
>> > CT_ARCH_BITNESS=32
>> > CT_ARCH_FLOAT_HW=y
>> > # CT_ARCH_FLOAT_SW is not set
>> > CT_TARGET_CFLAGS=""
>> > CT_TARGET_LDFLAGS=""
>> > # CT_ARCH_alpha is not set
>> > CT_ARCH_arm=y
>> > # CT_ARCH_avr32 is not set
>> > # CT_ARCH_blackfin is not set
>> > # CT_ARCH_m68k is not set
>> > # CT_ARCH_mips is not set
>> > # CT_ARCH_powerpc is not set
>> > # CT_ARCH_s390 is not set
>> > # CT_ARCH_sh is not set
>> > # CT_ARCH_sparc is not set
>> > # CT_ARCH_x86 is not set
>> > CT_ARCH_alpha_AVAILABLE=y
>> > CT_ARCH_arm_AVAILABLE=y
>> > CT_ARCH_avr32_AVAILABLE=y
>> > CT_ARCH_blackfin_AVAILABLE=y
>> > CT_ARCH_m68k_AVAILABLE=y
>> > CT_ARCH_mips_AVAILABLE=y
>> > CT_ARCH_powerpc_AVAILABLE=y
>> > CT_ARCH_s390_AVAILABLE=y
>> > CT_ARCH_sh_AVAILABLE=y
>> > CT_ARCH_sparc_AVAILABLE=y
>> > CT_ARCH_x86_AVAILABLE=y
>> > ---------
>> >
>> > What files do I need to build with this cross-toolchain, inside of
>> Yocto?
>> >
>> >
>> > Thanks,
>> > Paul Knopf
>> > Software Engineer
>> > Med X Change, Inc
>> > pknopf@medxchange.com
>> >
>> > On Sat, May 14, 2016 at 6:14 PM, Paul Knopf <pknopf@medxchange.com>
>> wrote:
>> >>
>> >> They are using "require conf/machine/include/tune-cortexa15.inc" for
>> the
>> >> TK1, but the TX1 uses a Cortex A57, not a A15. There is no
>> "tune-cortexa57".
>> >>
>> >> Thanks,
>> >> Paul Knopf
>> >> Software Engineer
>> >> Med X Change, Inc
>> >> pknopf@medxchange.com
>> >>
>> >> On Sat, May 14, 2016 at 6:08 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> >>>
>> >>> Look at kraj/meta-jetson-tk1 on github
>> >>>
>> >>> On May 14, 2016 2:17 PM, "Paul Knopf" <pknopf@medxchange.com> wrote:
>> >>>>
>> >>>> What configs do I need to include in my machine.conf to support this
>> >>>> processor?
>> >>>>
>> >>>> http://www.nvidia.com/object/jetson-tx1-dev-kit.html
>> >>>>
>> >>>> "require conf/machine/include/arm/arch-*.inc" ?
>> >>>>
>> >>>> Thanks,
>> >>>> Paul Knopf
>> >>>> Software Engineer
>> >>>> Med X Change, Inc
>> >>>> pknopf@medxchange.com
>> >>>>
>> >>>> --
>> >>>> _______________________________________________
>> >>>> yocto mailing list
>> >>>> yocto@yoctoproject.org
>> >>>> https://lists.yoctoproject.org/listinfo/yocto
>> >>>>
>> >>
>> >
>>
>
>

--001a113ed1a24cf5e80532d52a48
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This is what I am thinking.<div><br><div><div>DEFAULTTUNE =
=3D &quot;cortexa9hf&quot;</div><div>require conf/machine/include/tune-cort=
exa9.inc</div></div></div><div><br></div><div>Does this sound right? I am u=
sing &quot;hf&quot; because in the crosstools-ng has CT_ARCH_FLOAT=3D&quot;=
hard&quot;, and cortexa9 because of CT_ARCH_CPU=3D&quot;cortex-a9&quot; and=
 CT_ARCH_TUNE=3D&quot;cortex-a9&quot;.</div><div><br></div><div>Sorry, I&#3=
9;m that familiar with embedded processors. Any guidance would be greatly a=
ppreciated.</div></div><div class=3D"gmail_extra"><br clear=3D"all"><div><d=
iv class=3D"gmail_signature"><div dir=3D"ltr"><div>Thanks,</div><div>Paul K=
nopf</div><div>Software Engineer</div><div>Med X Change, Inc</div><div><a h=
ref=3D"mailto:pknopf@medxchange.com" target=3D"_blank">pknopf@medxchange.co=
m</a></div></div></div></div>
<br><div class=3D"gmail_quote">On Sat, May 14, 2016 at 6:32 PM, Paul Knopf =
<span dir=3D"ltr">&lt;<a href=3D"mailto:pknopf@medxchange.com" target=3D"_b=
lank">pknopf@medxchange.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div dir=3D"ltr">That layer is for the tk1, not the tx1. I am aski=
ng for the proper include files to build for the tx1.</div><div class=3D"gm=
ail_extra"><span class=3D""><br clear=3D"all"><div><div><div dir=3D"ltr"><d=
iv>Thanks,</div><div>Paul Knopf</div><div>Software Engineer</div><div>Med X=
 Change, Inc</div><div><a href=3D"mailto:pknopf@medxchange.com" target=3D"_=
blank">pknopf@medxchange.com</a></div></div></div></div>
<br></span><div><div class=3D"h5"><div class=3D"gmail_quote">On Sat, May 14=
, 2016 at 6:27 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><span>On Sat, May 14, 2016 at 3:23 PM, Paul =
Knopf &lt;<a href=3D"mailto:pknopf@medxchange.com" target=3D"_blank">pknopf=
@medxchange.com</a>&gt; wrote:<br>
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
<div><div><br>
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
&gt; <a href=3D"mailto:pknopf@medxchange.com" target=3D"_blank">pknopf@medx=
change.com</a><br>
&gt;<br>
&gt; On Sat, May 14, 2016 at 6:14 PM, Paul Knopf &lt;<a href=3D"mailto:pkno=
pf@medxchange.com" target=3D"_blank">pknopf@medxchange.com</a>&gt; wrote:<b=
r>
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
&gt;&gt; <a href=3D"mailto:pknopf@medxchange.com" target=3D"_blank">pknopf@=
medxchange.com</a><br>
&gt;&gt;<br>
&gt;&gt; On Sat, May 14, 2016 at 6:08 PM, Khem Raj &lt;<a href=3D"mailto:ra=
j.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Look at kraj/meta-jetson-tk1 on github<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On May 14, 2016 2:17 PM, &quot;Paul Knopf&quot; &lt;<a href=3D=
"mailto:pknopf@medxchange.com" target=3D"_blank">pknopf@medxchange.com</a>&=
gt; wrote:<br>
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
&gt;&gt;&gt;&gt; <a href=3D"mailto:pknopf@medxchange.com" target=3D"_blank"=
>pknopf@medxchange.com</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank=
">yocto@yoctoproject.org</a><br>
&gt;&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinf=
o/yocto</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div></div></div>
</blockquote></div><br></div>

--001a113ed1a24cf5e80532d52a48--
