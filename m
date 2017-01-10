Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7D44E00A73; Tue, 10 Jan 2017 11:39:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B02CE00A64
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 11:39:33 -0800 (PST)
Received: by mail-vk0-f53.google.com with SMTP id 137so366558910vkl.0
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 11:39:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=uecz2KmCQzbph5mbbCxayxOxRjFqA9jXblgt/WOpSJ8=;
	b=H6+OGU0Jr2vahdUYDrL4q0OIS/x9w8LN2PwlGZh8GNNVAB8Ozn5qqmUvdvj4+MOKr6
	Henr0WH4ZsLg4YzqW/JtA+aWuoUYPxjKDX7OBhrcO5KZQli7/b5rtT4Vtoa3fk8PYxmX
	Qe3CQ8Hua1ZAmfdIbvNmgYgp2tyubE1LsQsjZTsA8xyL64J7HATNq9yOAKrZvGn2P50R
	6KrhZc+ThoBzT9rNDf24P7Ubi1wOmPGIaVsYRTm+58AV1Ctt2fFrSEAZVh+rcbUUUfjA
	CW1YN+t4dPyCfwEildQYVJf+TL/8GzurDMKmaIHVUCuIrvG5aqMCYQwBs+C8FGktqEDl
	X/0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=uecz2KmCQzbph5mbbCxayxOxRjFqA9jXblgt/WOpSJ8=;
	b=thW3iPu6lsIiA1sUBSrYia5bHaR6DuMma5IRH/iAlr9OJtgo6x+kc8eoltbbmrPgqX
	53S2YEpKhflHu8plHRqTAmq7T9/GthQzhKFzywqHgkdyEk+sUijeg4sc2nKEZgnVexPI
	7o6H9vvkIfvc//90jEonAu96ssgY/yoKnuy2VOmuBj/tGW8/ajomy16WjnuN0+uOC1zS
	aiSGu+azuhpjmoT/KYeOu7T4/rDYYWQL6DIQmy1bnUqVIUivJcR8DYoAWUtT2IR8o9Yk
	wt+qgNeoUfWLR/HABKhBOhYUaumCuxT3xMaOJohjHYLUOhmNyKdi0mbTce038afoz2tq
	AfDQ==
X-Gm-Message-State: AIkVDXLUYgCz7G/NC1hAv77bnMwzVQqo4AKU2RNblW8xNfrplZuLslEz0ywEWg/GjRIpIOkX9bNPlZ7yzm+Hkg==
X-Received: by 10.31.234.199 with SMTP id i190mr2275052vkh.31.1484077172550;
	Tue, 10 Jan 2017 11:39:32 -0800 (PST)
MIME-Version: 1.0
References: <AMSPR01MB18430DE5FD33B321C4C42E192670@AMSPR01MB184.eurprd01.prod.exchangelabs.com>
In-Reply-To: <AMSPR01MB18430DE5FD33B321C4C42E192670@AMSPR01MB184.eurprd01.prod.exchangelabs.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 10 Jan 2017 19:39:21 +0000
Message-ID: <CAMKF1soquB9=wLxYz2sR4r1uC5wz34rAH=4EJHNMuOkxN6zpGQ@mail.gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>, yocto <yocto@yoctoproject.org>
Subject: Re: [bitbake] OECORE_TARGET_SYSROOT and OECORE_NATIVE_SYSROOT variables not availables ?
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
X-List-Received-Date: Tue, 10 Jan 2017 19:39:34 -0000
Content-Type: multipart/alternative; boundary=94eb2c095036b070f50545c2a456

--94eb2c095036b070f50545c2a456
Content-Type: text/plain; charset=UTF-8

These are specified differently when using the Yocto build system you
should not be using these variables in your makefiles
On Tue, Jan 10, 2017 at 8:11 AM Karim ATIKI <karim_atiki@hotmail.com> wrote:

>
>
>
>
>
>
>
>
>
>
>
>
>
>
> Hi,
>
>
>
>
>
>
>
> I'm using generated Poky SDK to cross-compile our program source-codes,
> which works fine.
>
>
>
>
>
>
>
> Now I wish to integrate the build of the project into Yocto recipes using
> our makefiles.
>
>
>
>
>
>
>
> However, some custom parameters in the makefiles are using the variables OECORE_TARGET_SYSROOT
>  and OECORE_NATIVE_SYSROOT to manage paths.
>
>
>
> But it appears that these 2 variables do not exists when the makefiles are
> called in a do_compile() function of a recipe.
>
>
>
>
>
>
>
> Is it normal ? Did I did something wrong ?
>
>
> Should my recipe inherit something specific?
>
>
>
>
>
>
>
> Or should I "source" my "environment-setup-cortexa9hf-vfp-neon-poky-linux-gnueabi"
> from the SDK into my recipe file ? (=> not portable)
>
>
>
>
>
>
>
> Thanks.
>
>
>
>
>
>
>
> Z.
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> --
>
> _______________________________________________
>
> yocto mailing list
>
> yocto@yoctoproject.org
>
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c095036b070f50545c2a456
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div>These are specified differently when using the Yocto build system you =
should not be using these variables in your makefiles<br><div class=3D"gmai=
l_quote"><div>On Tue, Jan 10, 2017 at 8:11 AM Karim ATIKI &lt;<a href=3D"ma=
ilto:karim_atiki@hotmail.com">karim_atiki@hotmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><br><br><br><br><br><br><br><br><br><br><=
div class=3D"gmail_msg"><br><br><div id=3D"m_-122696988478732757divtagdefau=
ltwrapper" style=3D"font-size:12pt;color:#000000;font-family:Calibri,Arial,=
Helvetica,sans-serif" class=3D"gmail_msg"><br><br><p class=3D"gmail_msg">Hi=
,</p><br><br><p class=3D"gmail_msg"><br class=3D"gmail_msg"><br><br></p><br=
><br><p class=3D"gmail_msg">I&#39;m using generated=C2=A0Poky SDK to cross-=
compile our program source-codes, which works fine.</p><br><br><p class=3D"=
gmail_msg"><br class=3D"gmail_msg"><br><br></p><br><br><p class=3D"gmail_ms=
g">Now I wish to integrate the build of the project into Yocto recipes usin=
g our makefiles.</p><br><br><p class=3D"gmail_msg"><br class=3D"gmail_msg">=
<br><br></p><br><br><p class=3D"gmail_msg">However, some custom parameters =
in the makefiles are using the variables=C2=A0<span class=3D"gmail_msg">OEC=
ORE_TARGET_SYSROOT =C2=A0and=C2=A0<span class=3D"gmail_msg">OECORE_NATIVE_S=
YSROOT to manage paths.</span></span></p><br><div id=3D"m_-1226969884787327=
57divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font-family:C=
alibri,Arial,Helvetica,sans-serif" class=3D"gmail_msg"><br></div><br><p cla=
ss=3D"gmail_msg">But it appears that these 2 variables do not exists when t=
he makefiles are called in a do_compile() function of a recipe.</p><br><br>=
<p class=3D"gmail_msg"><br class=3D"gmail_msg"><br><br></p><br><br><p class=
=3D"gmail_msg">Is it normal ? Did I did something wrong ?=C2=A0</p><br><br>=
<p class=3D"gmail_msg">Should my recipe inherit something specific?=C2=A0</=
p><br><br><p class=3D"gmail_msg"><br class=3D"gmail_msg"><br><br></p><br><b=
r><p class=3D"gmail_msg">Or should I &quot;source&quot; my &quot;<span styl=
e=3D"font-size:12pt" class=3D"gmail_msg">environment-setup-cortexa9hf-vfp-n=
eon-poky-linux-gnueabi&quot; from the SDK into my recipe file ? (=3D&gt; no=
t portable)</span></p><br><br><p class=3D"gmail_msg"><br class=3D"gmail_msg=
"><br><br></p><br><br><p class=3D"gmail_msg">Thanks.</p><br><br><p class=3D=
"gmail_msg"><br class=3D"gmail_msg"><br><br></p><br><br><p class=3D"gmail_m=
sg">Z.<br class=3D"gmail_msg"><br><br><span style=3D"font-size:12pt" class=
=3D"gmail_msg"></span></p><br><br><div class=3D"gmail_msg"><br class=3D"gma=
il_msg"><br><br></div><br><br><p class=3D"gmail_msg"></p><br><br><p class=
=3D"gmail_msg"><br class=3D"gmail_msg"><br><br></p><br><br><p class=3D"gmai=
l_msg"><br class=3D"gmail_msg"><br><br></p><br><br></div><br><br></div><br>=
<br><br><br>--<br class=3D"gmail_msg"><br>_________________________________=
______________<br class=3D"gmail_msg"><br>yocto mailing list<br class=3D"gm=
ail_msg"><br><a href=3D"mailto:yocto@yoctoproject.org" class=3D"gmail_msg" =
target=3D"_blank">yocto@yoctoproject.org</a><br class=3D"gmail_msg"><br><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer" c=
lass=3D"gmail_msg" target=3D"_blank">https://lists.yoctoproject.org/listinf=
o/yocto</a><br class=3D"gmail_msg"><br></blockquote></div></div>

--94eb2c095036b070f50545c2a456--
