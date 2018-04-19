Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7319EE00A1C; Wed, 18 Apr 2018 21:40:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67CF2E00756
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 21:40:48 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id p62-v6so3661690oie.10
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 21:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=V5xMe0quP8wg+MJAxB87AJ7rDeEKd9cb2C01IwTxd80=;
	b=VfiqobGDxNRM90XaxXMAysE1QTAPRvSIYtWXBxYs6dkQ5ztpOc3wJa/JP0Vqe2hqHM
	qe7wmViBK9W8uUny1nH9gTGKTbsOKYblYi+5owtfVCmBGCQcQyHsr/2ZPwDuuY5Nfp7o
	oWpSUFWT1EhBFJoGNsc8QHwYYqJi8C35SdEQQgK2Iu0742JFaF9NpvwLl09PvwUYagRA
	8DQSVu/T0JE0AxqLzm/bwxz3OuZOq4I4dFFwVErO57UiC7/lIXKN/Vz0PVZcgdzTRV2x
	zQFjgroJuJl11NrC0F4o7u+pSe+AQNVRrdcKp9Cb9//YeOBl33QkrgvOeHnGnbVRiRrK
	C/+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=V5xMe0quP8wg+MJAxB87AJ7rDeEKd9cb2C01IwTxd80=;
	b=D/rCK6pQpSMJMXbseEPSh9AIK6KLbM8K/YM/v4/Jof3859pe18L5E76pUJoA4RJPae
	uVi2G1m+50MDikslr64a9KIQS3TU75XH6o4SsiwhKaoL+oakB4Nzofh+rbK19zZOeRMn
	a/6t661f5wOF3yTPaL0fya9kwL1Rw0z6UjPZGIBbcWveddqMGhPJ0+AxdtuBJhe+kbzy
	oODpix3+ZRq2sMQVWB5AI2uFcZPKfyr+wakVxYko/U3/IYtpNu500qTEP2APIJEIujEO
	GSRsEHoiiqPWcY8R2Bx0I6F2K1/d8feQFbskL5EF14G4APlGv0gE2bMnQPahj4PtC+K5
	eo5A==
X-Gm-Message-State: ALQs6tBQumbAvn97l1unK82lhISykRvmIRTSYlbQXy2vntqgD7bLdOye
	JqBDC88VOCCVEjZlviHU6sZutcZNvYjZ1dldaFY=
X-Google-Smtp-Source: AIpwx49l/r7p3zl42iHuIC/1gEwVTw4cQjQQNYBLLtWXj9V+4aQ73fYhBeVp29BcoscHZ16EW38ELGlua4YbcEiQtwY=
X-Received: by 2002:aca:1107:: with SMTP id 7-v6mr2917535oir.25.1524112848372; 
	Wed, 18 Apr 2018 21:40:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8khVFOsFzoM=LWZnDMnsbO2o=eodSokurZFSteXTNHjGA@mail.gmail.com>
	<78ba1681-5c7d-2f2b-1784-474d29be6a8b@posteo.de>
	<CAEhQi8kVuBfTGy2Bx-cdnhYXtrd2_sWkWpoWqEiw7FNu3DjtJQ@mail.gmail.com>
	<CAEhQi8nQyVJ7zSbs7o-NbrC-gVem77GqH6KKif_4kG4NOuqRkw@mail.gmail.com>
	<17a6bf09-b738-c187-3b34-769556d041d5@posteo.de>
In-Reply-To: <17a6bf09-b738-c187-3b34-769556d041d5@posteo.de>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Thu, 19 Apr 2018 04:40:37 +0000
Message-ID: <CAEhQi8mVy3X5HAon2fg_n=e4V3R-4fhBmJG5i9dc_yFsZFOhMA@mail.gmail.com>
To: Dennis Menschel <menschel-d@posteo.de>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: rocko cmake buld cstdlib:75:15: fatal error: stdlib.h: No such file or directory
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
X-List-Received-Date: Thu, 19 Apr 2018 04:40:50 -0000
Content-Type: multipart/alternative; boundary="000000000000ecca8b056a2c2ce3"

--000000000000ecca8b056a2c2ce3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am building with the SDK (not extensible) but it is also built as a
recipe when building an image. The recipe is inheriting cmake but it is
only in the image build that I am experiencing this problem which I
shouldn't since the cmake_do_configure should be called. I will try and run
bitbake -e on the recepie to see if I get any clear if the
cmake_do_configure is part of it or not.

Thanks for your time I appreciate it.

Br
Mans Zigher


On Wed, Apr 18, 2018, 22:47 Dennis Menschel <menschel-d@posteo.de> wrote:

> Hi Mans,
>
> Am 18.04.2018 um 06:56 schrieb M=C3=A5ns Zigher:
> > Hi Dennis,
> >
> > This makes me a bot confused in cmake_do_configure we have
> >
> >           -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 \
> >           ${EXTRA_OECMAKE} \
> >           -Wno-dev
> >
> > I would think that I am using this cmake_do_configure so then the
> > -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 should already be called correct?
> >
> > BR
> > Mans Zigher
>
> if you use "devtool build" from the extensible SDK to build a recipe
> that inherits cmake.bbclass, then the function cmake_do_configure() will
> be called implicitly.
>
> But if you manually compile a cmake project with the SDK, then that
> function won't be used. If your SDK contains the package
> nativesdk-cmake, then the SDK contains the following file:
>
>   $OECORE_NATIVE_SYSROOT/environment-setup.d/cmake.sh
>
> This file will be sourced along with the rest of the SDK and set an
> alias for cmake with an SDK-specific toolchain file.
>
> To verify if the option CMAKE_NO_SYSTEM_FROM_IMPORTED has been set by
> cmake, you can check if the file CMakeCache.txt (in the build directory)
> contains an entry for CMAKE_NO_SYSTEM_FROM_IMPORTED. An alternative way
> is to inspect the configuration via ccmake after calling cmake.
>
> Best regards,
> Dennis
>
>

--000000000000ecca8b056a2c2ce3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">I am bui=
lding with the SDK (not extensible) but it is also built as a recipe when b=
uilding an image. The recipe is inheriting cmake but it is only in the imag=
e build that I am experiencing this problem which I shouldn&#39;t since the=
 cmake_do_configure should be called. I will try and run bitbake -e on the =
recepie to see if I get any clear if the cmake_do_configure is part of it o=
r not.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks for your t=
ime I appreciate it.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Br<=
/div><div dir=3D"auto">Mans Zigher</div><br><br><div class=3D"gmail_quote" =
dir=3D"auto"><div dir=3D"ltr">On Wed, Apr 18, 2018, 22:47 Dennis Menschel &=
lt;<a href=3D"mailto:menschel-d@posteo.de">menschel-d@posteo.de</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">Hi Mans,<br>
<br>
Am 18.04.2018 um 06:56 schrieb M=C3=A5ns Zigher:<br>
&gt; Hi Dennis,<br>
&gt; <br>
&gt; This makes me a bot confused in cmake_do_configure we have<br>
&gt; <br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1=
 \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${EXTRA_OECMAKE} \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -Wno-dev<br>
&gt; <br>
&gt; I would think that I am using this cmake_do_configure so then the<br>
&gt; -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 should already be called correct?<=
br>
&gt; <br>
&gt; BR<br>
&gt; Mans Zigher<br>
<br>
if you use &quot;devtool build&quot; from the extensible SDK to build a rec=
ipe<br>
that inherits cmake.bbclass, then the function cmake_do_configure() will<br=
>
be called implicitly.<br>
<br>
But if you manually compile a cmake project with the SDK, then that<br>
function won&#39;t be used. If your SDK contains the package<br>
nativesdk-cmake, then the SDK contains the following file:<br>
<br>
=C2=A0 $OECORE_NATIVE_SYSROOT/environment-setup.d/cmake.sh<br>
<br>
This file will be sourced along with the rest of the SDK and set an<br>
alias for cmake with an SDK-specific toolchain file.<br>
<br>
To verify if the option CMAKE_NO_SYSTEM_FROM_IMPORTED has been set by<br>
cmake, you can check if the file CMakeCache.txt (in the build directory)<br=
>
contains an entry for CMAKE_NO_SYSTEM_FROM_IMPORTED. An alternative way<br>
is to inspect the configuration via ccmake after calling cmake.<br>
<br>
Best regards,<br>
Dennis<br>
<br>
</blockquote></div></div>

--000000000000ecca8b056a2c2ce3--
