Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77E41E0140A;
	Thu, 23 May 2013 19:25:27 -0700 (PDT)
Received: by mail-la0-f45.google.com with SMTP id ec20so3978159lab.32
	for <multiple recipients>; Thu, 23 May 2013 19:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=5WQesnFLLCUlH/YT+EibNTpZ0hERKfM836DXMJnKO6w=;
	b=gTovq/+OG6z4whCcMNSlGzGMBAvQOlLPHy+hKe6B5HIsXxbIc/qtkO42yJfvmDy+bG
	NlwMXViaEyp+HMSWTPtrKixSobSOl5xM+E9ontKGJcEvtzdO8ToDPbkvyHbi8hVGw09h
	PpIs/Qv/Pskwb4g3gdfAHKsNqg9iU3ggMJW6lEty3bK5QasQaEj79cVtTwB6YuT2QHCr
	U6NwcNdXPxOTVpEl7Df1wYpUysarp5y9s36PhLq4yd8Fm6Q4dGTOoxoWqGB01reA855s
	GGxCVMdKT4i88eAe5XrU4Zwrjz4ODOnWla1c+ZJSQSV+RoE2eMdWMG3Gsi+ZOa27bPe3
	5Qcw==
X-Received: by 10.152.28.163 with SMTP id c3mr7837726lah.26.1369362325857;
	Thu, 23 May 2013 19:25:25 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.141.74 with HTTP; Thu, 23 May 2013 19:25:05 -0700 (PDT)
In-Reply-To: <17797116383D4341B029FDF34C22BF6A52C4B2FC51@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <mailman.2471.1369267014.19864.yocto@yoctoproject.org>
	<17797116383D4341B029FDF34C22BF6A52C4B2FC51@GUREXMB01.ASIAN.AD.ARICENT.COM>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 23 May 2013 19:25:05 -0700
X-Google-Sender-Auth: du-dCRKg2NGp4ECI15yllt2aEiA
Message-ID: <CABcZANn9wJyX_w=Z=r49DvEaBTL2=8=4KxZj7qsnDqJ62AzsDw@mail.gmail.com>
To: Rohit2 Jindal <rohit2.jindal@aricent.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yocto-owner@yoctoproject.org" <yocto-owner@yoctoproject.org>
Subject: Re: External-Sourcery-Toolchain Related Issue
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
X-List-Received-Date: Fri, 24 May 2013 02:25:28 -0000
Content-Type: multipart/alternative; boundary=089e0160babe006be004dd6d8323

--089e0160babe006be004dd6d8323
Content-Type: text/plain; charset=UTF-8

On Thu, May 23, 2013 at 12:39 AM, Rohit2 Jindal
<rohit2.jindal@aricent.com>wrote:

> I want to install my existing Toolchain to Yocto Sysroot bypassing default
> yocto toolchain functionality.****
>
> ** **
>
> My requirements are****
>
> ** **
>
> 1I will download toolchain from my git source ie tar file.****
>
> 2I just want to install this toolchain to tmp/sysroot folder in build
> directory skipping compilation step.****
>
> ** **
>
> ** **
>
> Steps implemented****
>
> ** **
>
> 1 SRC_URI = "file:///home/toolchains_bin.tar"****
>
> 2 TCMODE="external-csl" ****
>
> 3 EXTERNAL_TOOLCHAIN =
> "/home/yocto/poky/build/tmp/work/mips64-poky-linux/external-sourcery-toolchain/GCC-r8/toolchains_bin/mipscross/linux"
> ****
>
> 4CSL_TARGET_SYS_mips64 = "${TARGET_ARCH}${TARGET_TC_VENDOR}-${TCTYPE}"****
>
> 5CSL_TARGET_SYS = "${TARGET_ARCH}${TARGET_TC_VENDOR}-${TCTYPE}"****
>
> 6 TARGET_PREFIX = "${CSL_TARGET_SYS_mips64}-"
>

The sourcery toolchain recipe pulls files from a codesourcery / mentor
graphics Sourcery G++ toolchain installed at the EXTERNAL_TOOLCHAIN path.
That SRC_URI will not do anything, and it expects the compiler to be
available at parse time. Basically, the tcmode and recipe for sourcery is
designed for a particular toolchain, not any random one, and is not
structured at this time to allow extraction of a toolchain binary tarball.
You'd have to customize / create your own based on the existing bits, using
them as examples.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e0160babe006be004dd6d8323
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, May 23, 2013 at 12:39 AM, Rohit2 Jindal <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:rohit2.jindal@aricent.com" target=3D"_blank">rohit2.jindal@ari=
cent.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><p><span style>I want to install my existing=
 Toolchain to Yocto Sysroot bypassing default yocto toolchain functionality=
.<u></u><u></u></span></p>


<p><span style><u></u>=C2=A0<u></u></span></p>
<p><span style>My requirements are<u></u><u></u></span></p>
<p><span style><u></u>=C2=A0<u></u></span></p>
<p><span style>1I will download toolchain from my git source ie tar file.<u=
></u><u></u></span></p>
<p><span style>2I just want to install this toolchain to tmp/sysroot folder=
 in build directory skipping compilation step.<u></u><u></u></span></p>
<p><span style><u></u>=C2=A0<u></u></span></p>
<p><span style><u></u>=C2=A0<u></u></span></p>
<p><span style>Steps implemented<u></u><u></u></span></p>
<p><span style><u></u>=C2=A0<u></u></span></p>
<p><span style>1 SRC_URI =3D &quot;<a>file:///home/toolchains_bin.tar</a>&q=
uot;<u></u><u></u></span></p>
<p><span style>2 TCMODE=3D&quot;external-csl&quot; <u></u><u></u></span></p=
>
<p><span style>3 EXTERNAL_TOOLCHAIN =3D &quot;/home/yocto/poky/build/tmp/wo=
rk/mips64-poky-linux/external-sourcery-toolchain/GCC-r8/toolchains_bin/mips=
cross/linux&quot;<u></u><u></u></span></p>
<p><span style>4CSL_TARGET_SYS_mips64 =3D &quot;${TARGET_ARCH}${TARGET_TC_V=
ENDOR}-${TCTYPE}&quot;<u></u><u></u></span></p>
<p><span style>5CSL_TARGET_SYS =3D &quot;${TARGET_ARCH}${TARGET_TC_VENDOR}-=
${TCTYPE}&quot;<u></u><u></u></span></p>
<p><span style>6 TARGET_PREFIX =3D &quot;${CSL_TARGET_SYS_mips64}-&quot;</s=
pan></p></blockquote></div><br>The sourcery toolchain recipe pulls files fr=
om a codesourcery / mentor graphics Sourcery G++ toolchain installed at the=
 EXTERNAL_TOOLCHAIN path. That SRC_URI will not do anything, and it expects=
 the compiler to be available at parse time. Basically, the tcmode and reci=
pe for sourcery is designed for a particular toolchain, not any random one,=
 and is not structured at this time to allow extraction of a toolchain bina=
ry tarball. You&#39;d have to customize / create your own based on the exis=
ting bits, using them as examples.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--089e0160babe006be004dd6d8323--
