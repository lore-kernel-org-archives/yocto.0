Return-Path: <pknopf@medxchange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B725FE0088C; Sat, 14 May 2016 15:23:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94614E00849
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 15:23:22 -0700 (PDT)
Received: by mail-vk0-f51.google.com with SMTP id z184so22093237vkg.0
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 15:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=medxchange-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=scc41cJCKBRw+5p9d+x7tCMQ25GcW4oLvyJRAQqU8YQ=;
	b=L3nrS8Mwck14T5HnHlj4NXtC9A4+IT8yczGiCVmDUfZ85EluPg0GMoPr3oNPuO1HuB
	1eC89JyChl78pts3opBmPpUcfc7xdgoe635fQ1oLZpBl1rOklGWn6THO6pQSCSKMQpps
	pfIOe6Jl9UikPg3z+LpR3tt9z+bpCasf+CQTynb8TU5AyMq04/ScO5as1iLFImYrF5QY
	tBZFLMYLhNZqdWhFlOHMVdz2zcBienV9A40bVBBdepA7oxU5InSSHl2zXf6AB1PgUy1s
	jrwEVi88Nwwr8pmqbqzXm6kkDb89ozMiZcUHXlqLQX3XJ/Q//jexv4hufxufMhWkrCK+
	ZvAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=scc41cJCKBRw+5p9d+x7tCMQ25GcW4oLvyJRAQqU8YQ=;
	b=Zk3eW+xDV8XxRdFMkQ7rW6rTV3pyoU3Yyq+qz5M+InylcZNNIXucjsphxWxQmWmoeO
	w3O9GOOZPXHdbr9OJr0QQbY/JVVnD59ZaKkvk6jn4dMA0tDLO1rHR9vdIHnIZlzOv+sz
	51JGs48SrHxyFCPIFM7LWeu9hcypir/fCHCweqKv+0kgiC3LTH0M9LUmM+M/fsuoyg81
	0D4MhyCaCqrQNUssmGXW+UG/w/BrSOoD48g7t8jHiZxmYUGTlPjNhjRjgRjj2ClI6CJz
	m0+XQ2rvCCdNHRlXAszULw3PqMLOCgCtTkxgYDI6/MN/QWJslAfEIvEtp57knsLfUGtb
	3qpQ==
X-Gm-Message-State: AOPr4FVp34biBQxu+kGBnIm72krkUtGcnyf0W3Z4uyhdLNCYaNDFu2YznrF/cUeIllML/zJCigOalb0v5LA4qQ==
MIME-Version: 1.0
X-Received: by 10.31.152.211 with SMTP id a202mr11181939vke.115.1463264601352; 
	Sat, 14 May 2016 15:23:21 -0700 (PDT)
Received: by 10.31.193.20 with HTTP; Sat, 14 May 2016 15:23:21 -0700 (PDT)
In-Reply-To: <CABfz71dAJ4L6rKFgCOQgYNdqmr9jk5UaSLkMO=2PJ58gMBCLkw@mail.gmail.com>
References: <CABfz71dsLkf5W9LDsEewXj2Rmw715jqqMFvwKE7WYT=83iAs6g@mail.gmail.com>
	<CAMKF1so7vzL4iKu5LiBKNK2cNBbV_0fuRoD_c7aVaN8x+kAh3Q@mail.gmail.com>
	<CABfz71dAJ4L6rKFgCOQgYNdqmr9jk5UaSLkMO=2PJ58gMBCLkw@mail.gmail.com>
Date: Sat, 14 May 2016 18:23:21 -0400
Message-ID: <CABfz71e32ixS10u7Wyr+XnZm+N93s6tPNorYNRqf276xh5ay9Q@mail.gmail.com>
From: Paul Knopf <pknopf@medxchange.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Sat, 14 May 2016 22:23:25 -0000
Content-Type: multipart/alternative; boundary=001a1141f4ecc6c2250532d4d653

--001a1141f4ecc6c2250532d4d653
Content-Type: text/plain; charset=UTF-8

NVideo provides the following crosstools-ng config for building a
cross-compile toolchain.

https://gist.github.com/anonymous/95b2ec71aebf8df644b1789bc3ed958d

Some parts I think that are relevant...

---------
CT_ARCH="arm"
CT_ARCH_SUPPORTS_BOTH_MMU=y
CT_ARCH_SUPPORTS_BOTH_ENDIAN=y
CT_ARCH_SUPPORTS_32=y
CT_ARCH_SUPPORTS_WITH_ARCH=y
CT_ARCH_SUPPORTS_WITH_CPU=y
CT_ARCH_SUPPORTS_WITH_TUNE=y
CT_ARCH_SUPPORTS_WITH_FLOAT=y
CT_ARCH_SUPPORTS_WITH_FPU=y
CT_ARCH_SUPPORTS_SOFTFP=y
CT_ARCH_DEFAULT_HAS_MMU=y
CT_ARCH_DEFAULT_LE=y
CT_ARCH_DEFAULT_32=y
CT_ARCH_ARCH="armv7-a"
CT_ARCH_CPU="cortex-a9"
CT_ARCH_TUNE="cortex-a9"
CT_ARCH_FPU=""
# CT_ARCH_BE is not set
CT_ARCH_LE=y
CT_ARCH_32=y
CT_ARCH_BITNESS=32
CT_ARCH_FLOAT_HW=y
# CT_ARCH_FLOAT_SW is not set
CT_TARGET_CFLAGS=""
CT_TARGET_LDFLAGS=""
# CT_ARCH_alpha is not set
CT_ARCH_arm=y
# CT_ARCH_avr32 is not set
# CT_ARCH_blackfin is not set
# CT_ARCH_m68k is not set
# CT_ARCH_mips is not set
# CT_ARCH_powerpc is not set
# CT_ARCH_s390 is not set
# CT_ARCH_sh is not set
# CT_ARCH_sparc is not set
# CT_ARCH_x86 is not set
CT_ARCH_alpha_AVAILABLE=y
CT_ARCH_arm_AVAILABLE=y
CT_ARCH_avr32_AVAILABLE=y
CT_ARCH_blackfin_AVAILABLE=y
CT_ARCH_m68k_AVAILABLE=y
CT_ARCH_mips_AVAILABLE=y
CT_ARCH_powerpc_AVAILABLE=y
CT_ARCH_s390_AVAILABLE=y
CT_ARCH_sh_AVAILABLE=y
CT_ARCH_sparc_AVAILABLE=y
CT_ARCH_x86_AVAILABLE=y
---------

What files do I need to build with this cross-toolchain, inside of Yocto?


Thanks,
Paul Knopf
Software Engineer
Med X Change, Inc
pknopf@medxchange.com

On Sat, May 14, 2016 at 6:14 PM, Paul Knopf <pknopf@medxchange.com> wrote:

> They are using "require conf/machine/include/tune-cortexa15.inc" for the
> TK1, but the TX1 uses a Cortex A57, not a A15. There is no "tune-cortexa57".
>
> Thanks,
> Paul Knopf
> Software Engineer
> Med X Change, Inc
> pknopf@medxchange.com
>
> On Sat, May 14, 2016 at 6:08 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> Look at kraj/meta-jetson-tk1 on github
>> On May 14, 2016 2:17 PM, "Paul Knopf" <pknopf@medxchange.com> wrote:
>>
>>> What configs do I need to include in my machine.conf to support this
>>> processor?
>>>
>>> http://www.nvidia.com/object/jetson-tx1-dev-kit.html
>>>
>>> "require conf/machine/include/arm/arch-*.inc" ?
>>>
>>> Thanks,
>>> Paul Knopf
>>> Software Engineer
>>> Med X Change, Inc
>>> pknopf@medxchange.com
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>

--001a1141f4ecc6c2250532d4d653
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">NVideo provides the following crosstools-ng config for bui=
lding a cross-compile toolchain.<div><br></div><div><a href=3D"https://gist=
.github.com/anonymous/95b2ec71aebf8df644b1789bc3ed958d">https://gist.github=
.com/anonymous/95b2ec71aebf8df644b1789bc3ed958d</a><br></div><div><br></div=
><div>Some parts I think that are relevant...</div><div><br></div><div>----=
-----</div><div><div>CT_ARCH=3D&quot;arm&quot;</div><div>CT_ARCH_SUPPORTS_B=
OTH_MMU=3Dy</div><div>CT_ARCH_SUPPORTS_BOTH_ENDIAN=3Dy</div><div>CT_ARCH_SU=
PPORTS_32=3Dy</div><div>CT_ARCH_SUPPORTS_WITH_ARCH=3Dy</div><div>CT_ARCH_SU=
PPORTS_WITH_CPU=3Dy</div><div>CT_ARCH_SUPPORTS_WITH_TUNE=3Dy</div><div>CT_A=
RCH_SUPPORTS_WITH_FLOAT=3Dy</div><div>CT_ARCH_SUPPORTS_WITH_FPU=3Dy</div><d=
iv>CT_ARCH_SUPPORTS_SOFTFP=3Dy</div><div>CT_ARCH_DEFAULT_HAS_MMU=3Dy</div><=
div>CT_ARCH_DEFAULT_LE=3Dy</div><div>CT_ARCH_DEFAULT_32=3Dy</div><div>CT_AR=
CH_ARCH=3D&quot;armv7-a&quot;</div><div>CT_ARCH_CPU=3D&quot;cortex-a9&quot;=
</div><div>CT_ARCH_TUNE=3D&quot;cortex-a9&quot;</div><div>CT_ARCH_FPU=3D&qu=
ot;&quot;</div><div># CT_ARCH_BE is not set</div><div>CT_ARCH_LE=3Dy</div><=
div>CT_ARCH_32=3Dy</div><div>CT_ARCH_BITNESS=3D32</div><div>CT_ARCH_FLOAT_H=
W=3Dy</div><div># CT_ARCH_FLOAT_SW is not set</div><div>CT_TARGET_CFLAGS=3D=
&quot;&quot;</div><div>CT_TARGET_LDFLAGS=3D&quot;&quot;</div><div># CT_ARCH=
_alpha is not set</div><div>CT_ARCH_arm=3Dy</div><div># CT_ARCH_avr32 is no=
t set</div><div># CT_ARCH_blackfin is not set</div><div># CT_ARCH_m68k is n=
ot set</div><div># CT_ARCH_mips is not set</div><div># CT_ARCH_powerpc is n=
ot set</div><div># CT_ARCH_s390 is not set</div><div># CT_ARCH_sh is not se=
t</div><div># CT_ARCH_sparc is not set</div><div># CT_ARCH_x86 is not set</=
div><div>CT_ARCH_alpha_AVAILABLE=3Dy</div><div>CT_ARCH_arm_AVAILABLE=3Dy</d=
iv><div>CT_ARCH_avr32_AVAILABLE=3Dy</div><div>CT_ARCH_blackfin_AVAILABLE=3D=
y</div><div>CT_ARCH_m68k_AVAILABLE=3Dy</div><div>CT_ARCH_mips_AVAILABLE=3Dy=
</div><div>CT_ARCH_powerpc_AVAILABLE=3Dy</div><div>CT_ARCH_s390_AVAILABLE=
=3Dy</div><div>CT_ARCH_sh_AVAILABLE=3Dy</div><div>CT_ARCH_sparc_AVAILABLE=
=3Dy</div><div>CT_ARCH_x86_AVAILABLE=3Dy</div></div><div>---------<br></div=
><div><br></div><div>What files do I need to build with this cross-toolchai=
n, inside of Yocto?</div><div><br></div></div><div class=3D"gmail_extra"><b=
r clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div>T=
hanks,</div><div>Paul Knopf</div><div>Software Engineer</div><div>Med X Cha=
nge, Inc</div><div><a href=3D"mailto:pknopf@medxchange.com" target=3D"_blan=
k">pknopf@medxchange.com</a></div></div></div></div>
<br><div class=3D"gmail_quote">On Sat, May 14, 2016 at 6:14 PM, Paul Knopf =
<span dir=3D"ltr">&lt;<a href=3D"mailto:pknopf@medxchange.com" target=3D"_b=
lank">pknopf@medxchange.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div dir=3D"ltr">They are using &quot;require conf/machine/include=
/tune-cortexa15.inc&quot; for the TK1, but the TX1 uses a=C2=A0Cortex A57, =
not a A15. There is no &quot;tune-cortexa57&quot;.</div><div class=3D"gmail=
_extra"><span class=3D""><br clear=3D"all"><div><div><div dir=3D"ltr"><div>=
Thanks,</div><div>Paul Knopf</div><div>Software Engineer</div><div>Med X Ch=
ange, Inc</div><div><a href=3D"mailto:pknopf@medxchange.com" target=3D"_bla=
nk">pknopf@medxchange.com</a></div></div></div></div>
<br></span><div><div class=3D"h5"><div class=3D"gmail_quote">On Sat, May 14=
, 2016 at 6:08 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><p dir=3D"ltr">Look at kraj/meta-jetson-tk1 =
on github</p>
<div class=3D"gmail_quote"><div><div>On May 14, 2016 2:17 PM, &quot;Paul Kn=
opf&quot; &lt;<a href=3D"mailto:pknopf@medxchange.com" target=3D"_blank">pk=
nopf@medxchange.com</a>&gt; wrote:<br type=3D"attribution"></div></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div><div><div dir=3D"ltr"><div>What configs do =
I need to include in my machine.conf to support this processor?</div><div><=
br></div><div><a href=3D"http://www.nvidia.com/object/jetson-tx1-dev-kit.ht=
ml" target=3D"_blank">http://www.nvidia.com/object/jetson-tx1-dev-kit.html<=
/a><br></div><div><br></div><div>&quot;require conf/machine/include/arm/arc=
h-*.inc&quot; ?<br></div><div><br></div><div><div><div dir=3D"ltr"><div>Tha=
nks,</div><div>Paul Knopf</div><div>Software Engineer</div><div>Med X Chang=
e, Inc</div><div><a href=3D"mailto:pknopf@medxchange.com" target=3D"_blank"=
>pknopf@medxchange.com</a></div></div></div></div>
</div>
<br></div></div><span><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></font></span></blockquote></div>
</blockquote></div><br></div></div></div>
</blockquote></div><br></div>

--001a1141f4ecc6c2250532d4d653--
