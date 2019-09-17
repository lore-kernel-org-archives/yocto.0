Return-Path: <jku@goto.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AA66E00D47; Tue, 17 Sep 2019 03:49:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
	[209.85.208.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D80A2E00CD5
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2019 03:49:12 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id y23so2956575lje.9
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2019 03:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goto.fi; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=UGNkLR3HFL2sDUUhmRJCjjqvFluZa5DcXR0p0IOijX0=;
	b=IW2c4iIz34e1aHjNO6wgqF4EA9bfCjvQp3o3YWymb5MZU2BsLKBlBr4UlccVJ67v0B
	PpdCtzusb7qEryAFbBQw5f9VU98icAIz8BWsqEKmkCsVPk08nhXZBlB/jZVO7deGe/wO
	iiRQbZq3glRVucUpOkkFaDsKEEqAjdtaN/Pr8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=UGNkLR3HFL2sDUUhmRJCjjqvFluZa5DcXR0p0IOijX0=;
	b=WFrhXRcuB1TeM5gqT/u2v7oA7okvNUKPvjfzS3fTN598Ht2Jf93FDgO5I7FbI0NVjO
	w/qB19aGIaCedvzhlFLcaWw8Ar5TAXVNpyCN6l0QhUiAl+aedVIEznzct8nC3A6mUyRJ
	TckBatcy3/be3537WnK405Mae23NA6COOBRvZySPzSq4pv5qZ9lApmDFYbZqMerlHxza
	Mw72RYIhBSJNcmhbtpw+s5dQ4gfIWNXqm8g4/s2m2ohddZ+agJdrbo5VMXbwNn0Rm3Pn
	YaO6ebD/A4ImAwo9CYlui60c8ANs0YyZH9xhzlI+byFvaEsEoruD631iR2ATKzFweLA4
	5g2g==
X-Gm-Message-State: APjAAAUxEodHsNKYFIpU+suyq2/UeO8ZOFUBklTC/Ka52qcYs40Swpab
	U65YL8JlZGc+JyuKTqomPgba/89e9PfmNi2f74IXNQ==
X-Google-Smtp-Source: APXvYqxg/tKm9ZlcPWL2QVhJ2kpHD+qPaMfwWjSvVS2o67p3VHKK3RZWumzKoJ22GjukKHJ2sHq1Uv54M2U+C2oI5wI=
X-Received: by 2002:a2e:b00b:: with SMTP id y11mr1448228ljk.50.1568717351687; 
	Tue, 17 Sep 2019 03:49:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAAmVmrr-EA1B_-SY06s0OP000QXFDWV36j1EDr_+2om-MhAx7A@mail.gmail.com>
In-Reply-To: <CAAmVmrr-EA1B_-SY06s0OP000QXFDWV36j1EDr_+2om-MhAx7A@mail.gmail.com>
From: Jussi Kukkonen <jku@goto.fi>
Date: Tue, 17 Sep 2019 13:48:55 +0300
Message-ID: <CAD5=o+ohvT6U0KoVNjw81WAGQeevQZ4e7J99oi4RJm87v0nGvw@mail.gmail.com>
To: Teemu K <maillinglists18@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Wayland-scanner missing from SDK
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
X-List-Received-Date: Tue, 17 Sep 2019 10:49:14 -0000
Content-Type: multipart/alternative; boundary="000000000000802e190592bd78d2"

--000000000000802e190592bd78d2
Content-Type: text/plain; charset="UTF-8"

On Tue, 17 Sep 2019 at 13:23, Teemu K <maillinglists18@gmail.com> wrote:

> Hi,
>
> I'm trying to create SDK for my image created with Yocto's rocko -
> branch. It goes fine except wayland-scanner is missing from native
> toolchain.
>
> I found this patch and verified those changes are in place:
> https://patchwork.openembedded.org/patch/126669/
>
> Still the wayland-scanner is not  appearing to native toolchain side.
> The target side it is.
>

The scanner is in -dev package IIRC. There was a discussion later last year
where  someone tried to add -dev for that reason but that received critique
(because of the heavy price in dependencies).

There was a later attempt at tweaking the packaging (
https://patchwork.openembedded.org/patch/154282/) but that was not merged
I guess? I'm guessing that failed on autobuilder because builds that were
expecting to find the scanner suddenly didn't...

Jussi


> I'm using command 'populate_sdk' to create sdk. How do I get
> wayland-scanner to native toolchain side too?
>
> I tested with thud-branch and it has same issue.
>
> Hopefully this comes to correct mailing list.
>
> -Teemu Keskinarkaus
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000802e190592bd78d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, 17 Sep 2019 at 13:23, Teemu K &lt;<a =
href=3D"mailto:maillinglists18@gmail.com">maillinglists18@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
I&#39;m trying to create SDK for my image created with Yocto&#39;s rocko -<=
br>
branch. It goes fine except wayland-scanner is missing from native<br>
toolchain.<br>
<br>
I found this patch and verified those changes are in place:<br>
<a href=3D"https://patchwork.openembedded.org/patch/126669/" rel=3D"norefer=
rer" target=3D"_blank">https://patchwork.openembedded.org/patch/126669/</a>=
<br>
<br>
Still the wayland-scanner is not=C2=A0 appearing to native toolchain side.<=
br>
The target side it is.<br></blockquote><div><br></div><div>The scanner is i=
n -dev package IIRC. There was a discussion later last year where=C2=A0 som=
eone tried to add -dev for that reason but that received critique (because =
of the heavy price in dependencies).=C2=A0=C2=A0</div><div><br></div><div>T=
here was a later attempt at tweaking the packaging (<a href=3D"https://patc=
hwork.openembedded.org/patch/154282/">https://patchwork.openembedded.org/pa=
tch/154282/</a>) but that was not merged=C2=A0 I guess? I&#39;m guessing th=
at failed on autobuilder because builds that were expecting to find the sca=
nner suddenly didn&#39;t...</div><div><br></div><div>Jussi</div><div>=C2=A0=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
I&#39;m using command &#39;populate_sdk&#39; to create sdk. How do I get<br=
>
wayland-scanner to native toolchain side too?<br>
<br>
I tested with thud-branch and it has same issue.<br>
<br>
Hopefully this comes to correct mailing list.<br>
<br>
-Teemu Keskinarkaus<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--000000000000802e190592bd78d2--
