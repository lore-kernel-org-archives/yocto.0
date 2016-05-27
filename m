Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4514EE00E10; Fri, 27 May 2016 00:20:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C755CE00D49
	for <yocto@yoctoproject.org>; Fri, 27 May 2016 00:20:22 -0700 (PDT)
Received: by mail-qk0-f196.google.com with SMTP id z80so4043322qkb.2
	for <yocto@yoctoproject.org>; Fri, 27 May 2016 00:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=ppuknrAlL3ApwzAUmIzLbzDYlKkwoM/1CNQ4sjHm+u4=;
	b=LA8ND2ewYt2r65ew1VsFS8Dt6iv5g9e6mV8uk7MKNvT6LJDogGTFBrGbBbGlp3fbOe
	mDPbUeJgi1EbHucOGJ352ld2G8JWiU0LP4j4rQ9M9WtxWfJTckHG14206rP3Mgq8WwzF
	3IFp6TQ6HDse8p24s0NrFEMUd1ioTnsaNdX7/jlLMS98Vj8WPkPX/mYDbS9R9ElyDhTB
	2ZSZyHM0+N5+O3QRjwnBMVb2dcP4DSR6vpOAXlhAo+y8tjw9ewhvu3NTQuth/Apa3pnG
	MEacb+vIYDw1SsoBoam1fazXEMxgECyx4n/SNgwUrP2NdEz6C1e7UUs8G/ii+aoXLUQD
	SAaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=ppuknrAlL3ApwzAUmIzLbzDYlKkwoM/1CNQ4sjHm+u4=;
	b=HWBqROnyradqxErbO37w/kDDKDOmzqBrX0KRWHJbAywJv5shy/xogN9xgI0yLQJ1zl
	GF6qiegCT707sY4Zivhn5rSmnpvMRo9HZ5jfLUO+z0G+uhJsMlvGVN0vrxI4I56WZ4l9
	AT1Y5jIkB06uZC8p4qjAs60MvqSAozZxXA5jlBrlBe+5ilcjye/D3WSusweayaKDD/Jg
	XJn8MphS4+ppHgF1DtyaXBbrYuAjgaK1/1U5iF8kvZovQ8AU535W8/ge5i9qEGF6vfjm
	6C6AtBXunAZcnU2mJQDkX2nTY7ISBt7SD39xYwcD2Tmvue0iWkaRXiUeQ8x/diycPY6F
	c21A==
X-Gm-Message-State: ALyK8tI0SF15Saixf+mZVlZ5SAeWPjgiZQrScmSe55bDziNu5G5sshi09G74MrmZU6u5iAyGxZu/J5vD7IF1nA==
MIME-Version: 1.0
X-Received: by 10.55.107.132 with SMTP id g126mr12912073qkc.152.1464333621664; 
	Fri, 27 May 2016 00:20:21 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Fri, 27 May 2016 00:20:20 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Fri, 27 May 2016 00:20:20 -0700 (PDT)
In-Reply-To: <402820becd8447d1a6740c206eeab042@nalasexr02c.na.qualcomm.com>
References: <402820becd8447d1a6740c206eeab042@nalasexr02c.na.qualcomm.com>
Date: Fri, 27 May 2016 10:20:20 +0300
Message-ID: <CAMKF1sqt2QLtiesu7A7Q8XXxNDWZywwFFb+-yvsXbYYZa_iG9w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Glenn Stroz <gstroz@qti.qualcomm.com>
Cc: yocto@yoctoproject.org
Subject: Re: On target gdb support for multiple architectures?
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
X-List-Received-Date: Fri, 27 May 2016 07:20:25 -0000
Content-Type: multipart/alternative; boundary=001a11487acc5a23e10533cdbd07

--001a11487acc5a23e10533cdbd07
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

There should be two gdb executables on your target.
On May 26, 2016 3:34 PM, "Stroz, Glenn" <gstroz@qti.qualcomm.com> wrote:

> Hello,
>
>
>
> We=E2=80=99re trying to setup our target for onboard debugging. We have m=
ultiple
> architectures being built with multilib. An armv7 variant which is 32 bit
> and an armv8 variant which is 64 bit. We would like the gdb installed in
> the image to support both architectures. Right now, even when adding both
> gdb and lib32-gdb to the image we see it only supports aarch64.
>
>
>
> #
>
> # Multilib configuration
>
> #
>
> # This sets any packages preprended with lib32- to be built with
>
> # the armv7a tuning (32 bit) instead of 64 bit aarch.
>
> #
>
> require conf/multilib.conf
>
> MULTILIBS =3D "multilib:lib32"
>
> DEFAULTTUNE_virtclass-multilib-lib32 =3D "armv7a-neon"
>
>
>
> When adding lib32-gdb and gdb to image:
>
> (gdb) set architecture
>
> Requires an argument. Valid arguments are aarch64, aarch64:ilp32, auto.
>
>
>
> When adding only lib32-gdb to image:
>
> (gdb) set architecture
>
> Requires an argument. Valid arguments are arm, armv2, armv2a, armv3,
> armv3m, armv4, armv4t, armv5, armv5t, armv5te, xscale, ep9312, iwmmxt,
> iwmmxt2, auto.
>
>
>
> Is there any method of getting the build system to combine the two lists
> of architectures into one binary that supports them all?
>
>
>
> Thanks,
>
> Glenn
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11487acc5a23e10533cdbd07
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">There should be two gdb executables on your target.</p>
<div class=3D"gmail_quote">On May 26, 2016 3:34 PM, &quot;Stroz, Glenn&quot=
; &lt;<a href=3D"mailto:gstroz@qti.qualcomm.com">gstroz@qti.qualcomm.com</a=
>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div>
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">We=E2=80=99re trying to setup our target for onboard=
 debugging. We have multiple architectures being built with multilib. An ar=
mv7 variant which is 32 bit and an armv8 variant which is 64 bit. We would =
like the gdb installed in the image to support
 both architectures. Right now, even when adding both gdb and lib32-gdb to =
the image we see it only supports aarch64.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">#<u></u><u></u></p>
<p class=3D"MsoNormal"># Multilib configuration<u></u><u></u></p>
<p class=3D"MsoNormal">#<u></u><u></u></p>
<p class=3D"MsoNormal"># This sets any packages preprended with lib32- to b=
e built with<u></u><u></u></p>
<p class=3D"MsoNormal"># the armv7a tuning (32 bit) instead of 64 bit aarch=
.<u></u><u></u></p>
<p class=3D"MsoNormal">#<u></u><u></u></p>
<p class=3D"MsoNormal">require conf/multilib.conf<u></u><u></u></p>
<p class=3D"MsoNormal">MULTILIBS =3D &quot;multilib:lib32&quot;<u></u><u></=
u></p>
<p class=3D"MsoNormal">DEFAULTTUNE_virtclass-multilib-lib32 =3D &quot;armv7=
a-neon&quot;<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">When adding lib32-gdb and gdb to image:<u></u><u></u=
></p>
<p class=3D"MsoNormal">(gdb) set architecture<u></u><u></u></p>
<p class=3D"MsoNormal">Requires an argument. Valid arguments are aarch64, a=
arch64:ilp32, auto.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">When adding only lib32-gdb to image:<u></u><u></u></=
p>
<p class=3D"MsoNormal">(gdb) set architecture<u></u><u></u></p>
<p class=3D"MsoNormal">Requires an argument. Valid arguments are arm, armv2=
, armv2a, armv3, armv3m, armv4, armv4t, armv5, armv5t, armv5te, xscale, ep9=
312, iwmmxt, iwmmxt2, auto.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Is there any method of getting the build system to c=
ombine the two lists of architectures into one binary that supports them al=
l?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">Glenn<u></u><u></u></p>
</div>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div>

--001a11487acc5a23e10533cdbd07--
