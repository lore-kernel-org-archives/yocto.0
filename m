Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72754E00D13; Fri, 24 Jun 2016 04:39:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FA7BE00CE9
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2016 04:39:44 -0700 (PDT)
Received: by mail-it0-f51.google.com with SMTP id a5so12908229ita.1
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2016 04:39:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RWuJ8oNzpNWoK5M+zk5zXUH7PktFV/mR5/dkjXFEYfk=;
	b=13S5uG+x1OTN5hryWRh3Cwzxeir8KquyLNBRr/VYIAxteiE+fl7dHy51kOvumiZyWB
	XQxJnu18DjeVn4DjBr11HjrxTBEJTsrJqCsLgaydGXqaVr+Z71Z5n3Lob01Yup3HVKdd
	VmekbCGS8sujSOjAlM3ckFrZgrLyFCbAP3riZBZf9ZHgl+qRyw7FvCflOVgjSB+kw+uU
	mf+AXPJIjMwk6fXn/Ozl3l86HoAIVoNL6O4WINdlxwMCNo506YZcak6AxWm2AH3a5jW1
	sKJHdGAE41R7RLwZovUOxRq499gEENo1n5aVyqnlqpkb/lCcm7SvMxiZRjY/qmhLAUiR
	+lgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RWuJ8oNzpNWoK5M+zk5zXUH7PktFV/mR5/dkjXFEYfk=;
	b=ObGp2E6e2jrY31Ejc9J6HIYDU0Ab+frNJtlxfSspKhiv3jzJW/2HR/56kfMhL06KwG
	j/9t/xWqnanm4B/68OTY2UlAEmov7nVPX36B+/7fxcZTKON97xsRyYF0peFETkHnHWBW
	t3j8oXwH+i2ZspT/FgAydtec/1P9GqEd67Zlts5iVazwkeTKta4UJP/qgoxBfDuqCiaF
	LkwdJwq5NHkglG7i9ALN1XyByRpLQhp0n3bRK8QgWywnHexNnI2rchutq99DeuMow4Ga
	0+1La/zbV3WyVj14yb+KTUPau5KUjrYw6S7EVgsHFT57YKgJZXyKKJtV7STfXP9vrOh/
	7pcA==
X-Gm-Message-State: ALyK8tJ4hx1oXTkHJ2ytLUdgWR0CT71U03vtjRApPUF/GUIgjID42qKFmuOd22CwyV3H871q9WexH/Q7iQFBfzYw
X-Received: by 10.36.48.80 with SMTP id q77mr5285182itq.83.1466768383399; Fri,
	24 Jun 2016 04:39:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Fri, 24 Jun 2016 04:39:23 -0700 (PDT)
In-Reply-To: <d023141f03804bacb323bdfb95daee19@HIBDWSMB02.ad.harman.com>
References: <d023141f03804bacb323bdfb95daee19@HIBDWSMB02.ad.harman.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 24 Jun 2016 12:39:23 +0100
Message-ID: <CAJTo0LYiA-mxZUuK8bOx64tFMvPmvRBBzExcQNfxsc5q6JvxMw@mail.gmail.com>
To: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: setcap using recipe
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
X-List-Received-Date: Fri, 24 Jun 2016 11:39:46 -0000
Content-Type: multipart/alternative; boundary=001a11c007d875f478053604a0dc

--001a11c007d875f478053604a0dc
Content-Type: text/plain; charset=UTF-8

Hi,

On 24 June 2016 at 11:41, Kumar, Shrawan <Shrawan.Kumar@harman.com> wrote:

> Is there a way to  add a capability to a binary (cap_net_raw+ep),into a
> recipe?
>
>
>
> Example :
>
> do_install() {
>
>            install -d ${D}${bindir}
>
>            install -m 0755 helloworld ${D}${bindir}
>
>            install -d ${D}/lib/systemd/system
>
>            install -m 0755 hello.service ${D}/lib/systemd/system/
>
>            setcap cap_net_raw+ep  ${D}${bindir}/helloworld
>
> }
>
>
>
> If yes is this correct approach to achieve the same from  package recipe
> itself ?
>

capabilities on files are just extended attributes, so assuming that you
have a fairly recent Yocto and your host and target filesystems support
extended attributes, yes this should work.

Ross

--001a11c007d875f478053604a0dc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi,</div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">On 24 June 2016 at 11:41, Kumar, Shrawa=
n <span dir=3D"ltr">&lt;<a href=3D"mailto:Shrawan.Kumar@harman.com" target=
=3D"_blank">Shrawan.Kumar@harman.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><p>Is there a way to =C2=A0add a capability to a binary (=
cap_net_raw+ep),into a recipe?
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p>Example :<u></u><u></u></p>
<p>do_install() {<u></u><u></u></p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}$=
{bindir}<u></u><u></u></p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 install -m 0755 =
helloworld ${D}${bindir}<u></u><u></u></p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}/=
lib/systemd/system<u></u><u></u></p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 install -m 0755 =
hello.service ${D}/lib/systemd/system/<u></u><u></u></p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0setcap cap_=
net_raw+ep=C2=A0 ${D}${bindir}/helloworld=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
<u></u><u></u></p>
<p>}<u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<p>If yes is this correct approach to achieve the same from=C2=A0 package r=
ecipe itself ?</p></blockquote></div><br>capabilities on files are just ext=
ended attributes, so assuming that you have a fairly recent Yocto and your =
host and target filesystems support extended attributes, yes this should wo=
rk.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ro=
ss</div></div>

--001a11c007d875f478053604a0dc--
