Return-Path: <jacob.kroon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85BDAE0054C; Thu, 31 Jul 2014 01:28:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jacob.kroon[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f49.google.com (mail-la0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3C83E004D1
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 01:28:51 -0700 (PDT)
Received: by mail-la0-f49.google.com with SMTP id hz20so1772731lab.36
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 01:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=BSuxsjImj5eHnqgdLAruohUTOhn8o6kjDRGtQIxkElM=;
	b=1AjX74jU04W6flarkOS2LRlKrstiB0pCkKhwDXlunwSPbS9NqcRrf/k7UCltojFAgV
	V8djR3SeZ5yGgEEi1ExKnEF5BoBZVeg9+BhKxOQ7vcBkkM9vz+AjqgbqPqz5JZu74aE9
	lat5LUcmgQH6FR9hKSD5pbj7M0GmUN8zhoD7X1z92dwcV0ypi0JrtmySxiPjafr5l+cf
	htbU7hebD96sj1QHs5xFLHbaV6vJbIdgX5X3+b5r+Cj12ozKeaHF7F129mGe/8x+rsGm
	5tbWEoQk/7/8p8x53fm/Yrhce4NXCPOH8hA0sRNpXlx2c7Tgki+bvIkeEFx50NPJaHKN
	p8Ag==
MIME-Version: 1.0
X-Received: by 10.112.161.72 with SMTP id xq8mr9750095lbb.18.1406795330725;
	Thu, 31 Jul 2014 01:28:50 -0700 (PDT)
Received: by 10.112.26.210 with HTTP; Thu, 31 Jul 2014 01:28:50 -0700 (PDT)
In-Reply-To: <1406187757-18043-1-git-send-email-jacob.kroon@mikrodidakt.se>
References: <1406187757-18043-1-git-send-email-jacob.kroon@mikrodidakt.se>
Date: Thu, 31 Jul 2014 10:28:50 +0200
Message-ID: <CAPbeDCnFOopGk3CBYkkcNaNORO185atDzeKFsUvTMobWRY9YRg@mail.gmail.com>
From: Jacob Kroon <jacob.kroon@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [meta-mingw][PATCH] *-mingw32: Do not set binutils-crosssdk preferred provider
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
X-List-Received-Date: Thu, 31 Jul 2014 08:28:56 -0000
Content-Type: multipart/alternative; boundary=001a11c26902f5ac3104ff790f6f

--001a11c26902f5ac3104ff790f6f
Content-Type: text/plain; charset=UTF-8

ping

On Thu, Jul 24, 2014 at 9:42 AM, Jacob Kroon <jacob.kroon@mikrodidakt.se>
wrote:

> Nowadays this is already set in OE-Core, in tcmode-default.inc.
>
> Fixes:
>
> WARNING: Variable key
>          PREFERRED_PROVIDER_virtual/${SDK_PREFIX}binutils-crosssdk
>          (binutils-crosssdk-${SDK_ARCH}) replaces original key
>          PREFERRED_PROVIDER_virtual/x86_64-oesdk-mingw32-binutils-crosssdk
>          (binutils-crosssdk-${SDK_ARCH}).
>
> Signed-off-by: Jacob Kroon <jacob.kroon@mikrodidakt.se>
> ---
>  conf/machine-sdk/i686-mingw32.conf   | 1 -
>  conf/machine-sdk/x86_64-mingw32.conf | 1 -
>  2 files changed, 2 deletions(-)
>
> diff --git a/conf/machine-sdk/i686-mingw32.conf
> b/conf/machine-sdk/i686-mingw32.conf
> index 2567e26..098fc3d 100644
> --- a/conf/machine-sdk/i686-mingw32.conf
> +++ b/conf/machine-sdk/i686-mingw32.conf
> @@ -3,7 +3,6 @@ SDK_OS = "mingw32"
>
>  GCCTHREADS_mingw32 = "win32"
>
> -PREFERRED_PROVIDER_virtual/${SDK_SYS}-binutils-crosssdk =
> "binutils-crosssdk-${SDK_ARCH}"
>  PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc =
> "nativesdk-mingw-w64-runtime"
>  PREFERRED_PROVIDER_virtual/nativesdk-libc = "nativesdk-mingw-w64-runtime"
>  PREFERRED_PROVIDER_virtual/nativesdk-libintl =
> "nativesdk-mingw-w64-runtime"
> diff --git a/conf/machine-sdk/x86_64-mingw32.conf
> b/conf/machine-sdk/x86_64-mingw32.conf
> index 6a66b60..ac66623 100644
> --- a/conf/machine-sdk/x86_64-mingw32.conf
> +++ b/conf/machine-sdk/x86_64-mingw32.conf
> @@ -3,7 +3,6 @@ SDK_OS = "mingw32"
>
>  GCCTHREADS_mingw32 = "win32"
>
> -PREFERRED_PROVIDER_virtual/${SDK_SYS}-binutils-crosssdk =
> "binutils-crosssdk-${SDK_ARCH}"
>  PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc =
> "nativesdk-mingw-w64-runtime"
>  PREFERRED_PROVIDER_virtual/nativesdk-libc = "nativesdk-mingw-w64-runtime"
>  PREFERRED_PROVIDER_virtual/nativesdk-libintl =
> "nativesdk-mingw-w64-runtime"
> --
> 1.9.3
>
>

--001a11c26902f5ac3104ff790f6f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">ping<br><div><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On Thu, Jul 24, 2014 at 9:42 AM, Jacob Kroon <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:jacob.kroon@mikrodidakt.se" target=3D"_blank">jacob.=
kroon@mikrodidakt.se</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Nowadays this is already set in OE-Core, in =
tcmode-default.inc.<br>
<br>
Fixes:<br>
<br>
WARNING: Variable key<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PREFERRED_PROVIDER_virtual/${SDK_PREFIX}b=
inutils-crosssdk<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(binutils-crosssdk-${SDK_ARCH}) replaces =
original key<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PREFERRED_PROVIDER_virtual/x86_64-oesdk-m=
ingw32-binutils-crosssdk<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(binutils-crosssdk-${SDK_ARCH}).<br>
<br>
Signed-off-by: Jacob Kroon &lt;<a href=3D"mailto:jacob.kroon@mikrodidakt.se=
">jacob.kroon@mikrodidakt.se</a>&gt;<br>
---<br>
=C2=A0conf/machine-sdk/i686-mingw32.conf =C2=A0 | 1 -<br>
=C2=A0conf/machine-sdk/x86_64-mingw32.conf | 1 -<br>
=C2=A02 files changed, 2 deletions(-)<br>
<br>
diff --git a/conf/machine-sdk/i686-mingw32.conf b/conf/machine-sdk/i686-min=
gw32.conf<br>
index 2567e26..098fc3d 100644<br>
--- a/conf/machine-sdk/i686-mingw32.conf<br>
+++ b/conf/machine-sdk/i686-mingw32.conf<br>
@@ -3,7 +3,6 @@ SDK_OS =3D &quot;mingw32&quot;<br>
<br>
=C2=A0GCCTHREADS_mingw32 =3D &quot;win32&quot;<br>
<br>
-PREFERRED_PROVIDER_virtual/${SDK_SYS}-binutils-crosssdk =3D &quot;binutils=
-crosssdk-${SDK_ARCH}&quot;<br>
=C2=A0PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc =3D &q=
uot;nativesdk-mingw-w64-runtime&quot;<br>
=C2=A0PREFERRED_PROVIDER_virtual/nativesdk-libc =3D &quot;nativesdk-mingw-w=
64-runtime&quot;<br>
=C2=A0PREFERRED_PROVIDER_virtual/nativesdk-libintl =3D &quot;nativesdk-ming=
w-w64-runtime&quot;<br>
diff --git a/conf/machine-sdk/x86_64-mingw32.conf b/conf/machine-sdk/x86_64=
-mingw32.conf<br>
index 6a66b60..ac66623 100644<br>
--- a/conf/machine-sdk/x86_64-mingw32.conf<br>
+++ b/conf/machine-sdk/x86_64-mingw32.conf<br>
@@ -3,7 +3,6 @@ SDK_OS =3D &quot;mingw32&quot;<br>
<br>
=C2=A0GCCTHREADS_mingw32 =3D &quot;win32&quot;<br>
<br>
-PREFERRED_PROVIDER_virtual/${SDK_SYS}-binutils-crosssdk =3D &quot;binutils=
-crosssdk-${SDK_ARCH}&quot;<br>
=C2=A0PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc =3D &q=
uot;nativesdk-mingw-w64-runtime&quot;<br>
=C2=A0PREFERRED_PROVIDER_virtual/nativesdk-libc =3D &quot;nativesdk-mingw-w=
64-runtime&quot;<br>
=C2=A0PREFERRED_PROVIDER_virtual/nativesdk-libintl =3D &quot;nativesdk-ming=
w-w64-runtime&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.9.3<br>
<br>
</font></span></blockquote></div><br></div></div></div>

--001a11c26902f5ac3104ff790f6f--
