Return-Path: <leon@sidebranch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6963DE0082A; Mon, 16 Jan 2017 01:57:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f179.google.com (mail-ot0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26B93E00805
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 01:57:51 -0800 (PST)
Received: by mail-ot0-f179.google.com with SMTP id f9so41899971otd.1
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 01:57:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ov93EdLqh/d3CT9Bc+l6YvAgOieredgsS02bDPpzYOs=;
	b=ads7uIxTBXhoL3AfVAOk9izqacsy/wgCS7t1ZJMov1Vjy8X0gsxCKxXrWx5aU72Xhz
	I4uvDmOJsfcBqn9pl8vx0e/OroLzlcAXrKdR/GHvg2lJ9UjlV8WM6yU5NkL5f97jyBOM
	Fte6AkVGx7nhmLZ8y1u49bg5Nr6aXROg1TvdGtmoOM37QPvHEMGFLjLrf9/TCHc/PbF2
	OUeHaRoXpR7BDthIVWEAx1qk5x4870AjWvH/hyVSfR3+1g6f9PvHkxqXiVJfeLiU/T1/
	oG7I6+VKknxxxfV9WTbQbcZLO9ZUUpoCCjdZtnodbNkt5Aba43CQ0ErKchyR/M1FoMK5
	NIeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ov93EdLqh/d3CT9Bc+l6YvAgOieredgsS02bDPpzYOs=;
	b=HfISxNF0G5PU/TtLNaQ5A6mvE9IPMi63D23Tllq6Ekj6lyj+9tIhEeD/EDK0JtljKm
	diYi2ke5JzWpoMPhajYqA95kp10SbMttWXu628vW1O5gS4VjMPqMeFv01ZLSdA+Vk8v/
	cJXm3pTZSDu0RU4pK19ZyezBmiS/bmkRMr2aZCZZL9T72MOfcjGh9p9yv6Z6TXGoJWvL
	6OfJL7oRqGlNs8ZbwgdXK4dPID1V5KwnjelvSm2ExiJpGIogP6W4W8iA2faBtPD8Kiil
	doT6RRkCBCey8WpFjexKDoYTCr9oa0k+0DsQeKKAhhBQw+agn95plgF5qMVho9SE8272
	RkXg==
X-Gm-Message-State: AIkVDXJhkoOfvXJLvSYKMsTPFOueWMhNRsSfSLpmu9q0JoBep70aBt3SYEGDsEwef46RqKjeqieWY0nn64E1Yw==
X-Received: by 10.157.14.52 with SMTP id c49mr17182422otc.228.1484560671182;
	Mon, 16 Jan 2017 01:57:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.48.108 with HTTP; Mon, 16 Jan 2017 01:57:50 -0800 (PST)
In-Reply-To: <MMXP123MB0125266F42AF93B43F4F1BD7DA7D0@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
References: <MMXP123MB0125266F42AF93B43F4F1BD7DA7D0@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Mon, 16 Jan 2017 10:57:50 +0100
Message-ID: <CAMjhiJh+bbE1v1FRSWtaRoY+ncCxhr7Oqgb07soTfiipU6Qy8Q@mail.gmail.com>
To: Chris Trobridge <christrobridge@hotmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Illegal Instruction Generate for Intel Atom
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
X-List-Received-Date: Mon, 16 Jan 2017 09:57:53 -0000
Content-Type: multipart/alternative; boundary=001a113dc35274260705463337b4

--001a113dc35274260705463337b4
Content-Type: text/plain; charset=UTF-8

Hello Chris,

Probably unrelated, but yesterday my krogoth build failed on an Atom
*host/build* system. I was just about to debug this when I saw your email.

The configure stage of gmp-native decided to choose -march=k8 and -mtune=k8
-m64. I am debugging this currently.

Maybe check if the asterix recipe tries to be smart in a similar way? And
verify the do_compile log for actual compiler options.

Regards,

Leon.



build/tmp-glibc/work/x86_64-linux/gmp-native/6.1.0-r0

configure:

checking compiler gcc  -O2 -pedantic -fomit-frame-pointer -m64 ... yes
checking compiler gcc  -O2 -pedantic -fomit-frame-pointer -m64
-mtune=k8... yes
checking compiler gcc  -O2 -pedantic -fomit-frame-pointer -m64 -mtune=k8
-march=k8... yes

"-m64 -mtune=k8 -march=k8" on gcc 5.4.0:

x86_64-linux-libtool: compile:  g++ -DHAVE_CONFIG_H -I.
-I../../gmp-6.1.0/cxx -I.. -D__GMP_WITHIN_GMPXX -I../../gmp-6.1.0
-isystem/home/leon/build/tmp-glibc/sysroots/x86_64-linux/usr/include -O2
-pedantic -fomit-frame-pointer -m64 -mtune=k8 -march=k8
-isystem/home/leon/build/tmp-glibc/sysroots/x86_64-linux/usr/include -O2
-pipe -c ../../gmp-6.1.0/cxx/osmpq.cc  -fPIC -DPIC -o .libs/osmpq.o
../x86_64-linux-libtool  --tag=CXX   --mode=compile g++  -DHAVE_CONFIG_H
-I. -I../../gmp-6.1.0/cxx -I..  -D__GMP_WITHIN_GMPXX -I../../gmp-6.1.0
-isystem/home/leon/build/tmp-glibc/sysroots/x86_64-linux/usr/include  -O2
-pedantic -fomit-frame-pointer -m64 -mtune=k8 -march=k8
-isystem/home/leon/build/tmp-glibc/sysroots/x86_64-linux/usr/include -O2
-pipe -c -o osmpz.lo ../../gmp-6.1.0/cxx/osmpz.cc
make[2]: *** [osmpz.lo] Segmentation fault


On Mon, Jan 16, 2017 at 9:46 AM, Chris Trobridge <christrobridge@hotmail.com
> wrote:

> This arose building asterisk switching from 13.7 to 13.11+.
>
>
> The executable core dumps immediately with an illegal instruction
> instruction, which gdb reported as 'andn'.  This is part of BMI1, which
> was introduced with Haswell.  I am targeting a (32-bit) Z5xx Atom
> processor, which predates this instruction.
>
>
> I don't know what changed in the Asterisk build to cause this (the
> instruction is in some regular compiler generate code) but the compiler is
> still generating legal core2 code and tune-core2.inc is recommended for
> Atom processors:
>
>
> "This tune is recommended for the Intel Core 2 CPU family, including
> Conroe, Merom and beyond, as well as the first Atom CPUs, Diamondville,
> and beyond."
>
>
> I am still considering this output is down to some quirk in my
> configuration but I found that -mtune and -march options were added for
> Atom in GCC in 4.5, so this could be another line of attack, although I
> didn't find any explicit code for this in meta/meta-intel.
>
>
> Any ideas?
>
>
> My initial plan is to try to acoid the core2 tuning and then, if that
> helps, attempt to get atom tuning working, unless that's likely to be cause
> further breakages due to being unexpected.
>
>
> Regards,
>
> Chris
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113dc35274260705463337b4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Chris,<br><br>Probably unrelated, but yesterday=
 my krogoth build failed on an Atom *host/build* system. I was just about t=
o debug this when I saw your email.<br><br>The configure stage of gmp-nativ=
e decided to choose -march=3Dk8 and -mtune=3Dk8 -m64. I am debugging this c=
urrently.<br><br></div><div>Maybe check if the asterix recipe tries to be s=
mart in a similar way? And verify the do_compile log for actual compiler op=
tions.<br><br></div><div>Regards,<br><br></div><div>Leon.<br></div><div><br=
></div><div><br></div><div><br>build/tmp-glibc/work/x86_64-linux/gmp-native=
/6.1.0-r0<br><br></div>configure:<br><br>checking compiler gcc=C2=A0 -O2 -p=
edantic -fomit-frame-pointer -m64 ... yes<br>checking compiler gcc=C2=A0 -O=
2 -pedantic -fomit-frame-pointer -m64=C2=A0 -mtune=3Dk8... yes<br>checking =
compiler gcc=C2=A0 -O2 -pedantic -fomit-frame-pointer -m64 -mtune=3Dk8=C2=
=A0 -march=3Dk8... yes<br><div><br>&quot;-m64 -mtune=3Dk8 -march=3Dk8&quot;=
 on gcc 5.4.0:<br><br>x86_64-linux-libtool: compile:=C2=A0 g++ -DHAVE_CONFI=
G_H -I. -I../../gmp-6.1.0/cxx -I.. -D__GMP_WITHIN_GMPXX -I../../gmp-6.1.0 -=
isystem/home/leon/build/tmp-glibc/sysroots/x86_64-linux/usr/include -O2 -pe=
dantic -fomit-frame-pointer -m64 -mtune=3Dk8 -march=3Dk8 -isystem/home/leon=
/build/tmp-glibc/sysroots/x86_64-linux/usr/include -O2 -pipe -c ../../gmp-6=
.1.0/cxx/osmpq.cc=C2=A0 -fPIC -DPIC -o .libs/osmpq.o<br>../x86_64-linux-lib=
tool=C2=A0 --tag=3DCXX=C2=A0=C2=A0 --mode=3Dcompile g++=C2=A0 -DHAVE_CONFIG=
_H -I. -I../../gmp-6.1.0/cxx -I..=C2=A0 -D__GMP_WITHIN_GMPXX -I../../gmp-6.=
1.0 -isystem/home/leon/build/tmp-glibc/sysroots/x86_64-linux/usr/include=C2=
=A0 -O2 -pedantic -fomit-frame-pointer -m64 -mtune=3Dk8 -march=3Dk8 -isyste=
m/home/leon/build/tmp-glibc/sysroots/x86_64-linux/usr/include -O2 -pipe -c =
-o osmpz.lo ../../gmp-6.1.0/cxx/osmpz.cc<br>make[2]: *** [osmpz.lo] Segment=
ation fault<br><br></div></div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Mon, Jan 16, 2017 at 9:46 AM, Chris Trobridge <span dir=3D=
"ltr">&lt;<a href=3D"mailto:christrobridge@hotmail.com" target=3D"_blank">c=
hristrobridge@hotmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">




<div dir=3D"ltr">
<div id=3D"m_1221039791643424416divtagdefaultwrapper" style=3D"font-size:12=
pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif" dir=3D"ltr=
">
<p>This arose building asterisk switching from 13.7 to 13.11+.</p>
<p><br>
</p>
<p>The executable core dumps immediately with an illegal instruction instru=
ction, which gdb reported as &#39;andn&#39;.=C2=A0 This is part of=C2=A0<sp=
an>BMI1, which was introduced with Haswell. =C2=A0</span><span style=3D"fon=
t-size:12pt">I am targeting a (32-bit) Z5xx=C2=A0Atom processor,
 which predates this instruction.</span></p>
<p><span><br>
</span></p>
<p><span>I don&#39;t know what changed in the Asterisk build to cause this =
(the instruction is in some regular compiler generate code)=C2=A0but the co=
mpiler is still generating legal core2 code and tune-core2.inc is recommend=
ed for Atom processors:</span></p>
<p><span><br>
</span></p>
<p><span>&quot;</span><span style=3D"font-size:12pt">This tune is recommend=
ed for the Intel Core 2 CPU family, including Conroe,=C2=A0</span><span sty=
le=3D"font-size:12pt">Merom and beyond, as well as the first Atom CPUs, Dia=
mondville, and beyond.&quot;</span></p>
<p><span style=3D"font-size:12pt"><br>
</span></p>
<p><span style=3D"font-size:12pt">I am still considering this output is dow=
n to some quirk in my configuration but I found that -mtune and -march opti=
ons were added for Atom in GCC in 4.5, so this could be another line of att=
ack, although I didn&#39;t find any
 explicit code for this in meta/meta-intel.</span></p>
<p><span style=3D"font-size:12pt"><br>
</span></p>
<p><span style=3D"font-size:12pt">Any ideas?</span></p>
<p><span style=3D"font-size:12pt"><br>
</span></p>
<p><span style=3D"font-size:12pt">My initial plan is to try to acoid the co=
re2 tuning and then, if that helps, attempt to get atom tuning working, unl=
ess that&#39;s likely to be cause further breakages due to being unexpected=
.</span></p>
<p><span style=3D"font-size:12pt"><br>
</span></p>
<p><span style=3D"font-size:12pt">Regards,</span></p>
<p><span style=3D"font-size:12pt">Chris</span></p>
<p><br>
</p>
<p><br>
</p>
</div>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a113dc35274260705463337b4--
