Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DD8BE00852; Wed, 27 Jan 2016 11:10:45 -0800 (PST)
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
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6268FE0079A
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 11:10:41 -0800 (PST)
Received: by mail-io0-f178.google.com with SMTP id f81so29771927iof.0
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 11:10:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Djh0yoiDZzOrEl3KgJYqtk04KLs8oIp4HqC1mniEck0=;
	b=04alRFdt1yTOAfkLLywGaRMfGiv1Dg4Cm3yj5IqmY/aKBIjcqtYB9b8TdgmILPBg0p
	Sqpgohy/oygZ0gzqvDoiTU4lY4FyG4cEOGE3uySlWf8R1rTV2mNxiqv/17EPhpGL1Cd1
	TJYU4ES/Ffu0OshYZaH+zuxauwBJxord8A7BntjdwgdZ91KndmFkB9kyaDJzyI4m4hQe
	QvQjM7FRVCR94F4GmdldWydIXhz1io/09PSxItfUyTaVRUIF7xiicaIXJzqrjgWcOmcX
	E3BNcrz/dbOyhdCAkwUKgNNNQVAhG6eqtrLGiWm1Vj9ocQV3Uo0g1o0+cXHerHxuFqZi
	b2nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Djh0yoiDZzOrEl3KgJYqtk04KLs8oIp4HqC1mniEck0=;
	b=G5+docZVZ+rmtox90JaTp845bqKmbXfnncsqROjpAimzcznafyzp27QofIeWP5PvPl
	QRMin97Pvmpm1N1oWITvzDylgY852dC5nyDIT3+XmiFoogaVdupAUDgYF8frelrOhHdY
	BR39QdOR/VJHcreArIG4QMjMW/WmvRW1nKQ0TdXnZTtZ05/a9lIJy1rLwbe6Si7z/yQq
	NODmWeDZjWouu2G7GD8dNbPRMUaWIaZM2W1x4M0Ejo8RINNju0fCZBv5lHq8xA7phfwS
	rr6q1qsbam1ExRQS55lSxo4xH3S1DBLctN1EtIUcpwAULNzYlfowlYceXMS7Ps1pNBbK
	2v4A==
X-Gm-Message-State: AG10YOQ8D0NoO2OYa4aUblNvomGsjBUVnjEB9BJDLviOH32VUTukX3hZ+M1STtAIiWpnuwDhbKnXwu41X9zY+A==
X-Received: by 10.107.9.224 with SMTP id 93mr28735423ioj.112.1453921841324;
	Wed, 27 Jan 2016 11:10:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.16.74 with HTTP; Wed, 27 Jan 2016 11:10:11 -0800 (PST)
In-Reply-To: <tencent_569636730269A1CE59E0E877@qq.com>
References: <tencent_569636730269A1CE59E0E877@qq.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 27 Jan 2016 14:10:11 -0500
Message-ID: <CAMKF1srrrJoyvJw8sfwk3MUPHPO4OAM8fiEVZS=ci+jtBkcaPQ@mail.gmail.com>
To: =?UTF-8?B?5byg5YGl?= <jackzhang1992@t.shu.edu.cn>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: About how port yocto to a customized MIPS cpu
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
X-List-Received-Date: Wed, 27 Jan 2016 19:10:45 -0000
Content-Type: multipart/alternative; boundary=001a113ebd7ce2330e052a558e52

--001a113ebd7ce2330e052a558e52
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 26, 2016 at 7:09 PM, =E5=BC=A0=E5=81=A5 <jackzhang1992@t.shu.ed=
u.cn> wrote:

> But I have no idea what's inside the .img files, and how to let my fpga
> board to understand the .img files.
>
> So this  is reason why I'm here to ask you guys for some help.
>
> And wish to know if it is possible to port the "yocto" to my own project.
>
>
=E2=80=8Bimage files are generated in several formats. There is option to g=
enerate
tarballs. You can always take the tarball and untar it and look what inside
secondly, for your FPGA to understand this, you probably will need tools to
download the binary to memory which is visitible to FPGA if I assume FPGA
is sitting along with a application processor which can then help you to
flash it to relevant memory parts.

if your application processor has a bootloader e.g. uboot which can use SD
cards as boot media then you can use wic tool to generate SD card
images directly from yocto. wic is documented in dev manual so please look
there on how to set it up. Or you can look at some other BSPs like
beaglebone ( angstrom ) or raspberrypi or freescale layer for scripts to
generate the SD card images and model your using those.=E2=80=8B

--001a113ebd7ce2330e052a558e52
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Jan 26, 2016 at 7:09 PM, =E5=BC=A0=E5=81=A5 <span dir=3D"ltr">&lt;<=
a href=3D"mailto:jackzhang1992@t.shu.edu.cn" target=3D"_blank">jackzhang199=
2@t.shu.edu.cn</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
>But I have no idea what&#39;s inside the .img files, and how to let my fpg=
a board to understand the .img files.=C2=A0</div><div><br></div><div>So thi=
s =C2=A0is reason why I&#39;m here to ask you guys for some help.</div><div=
><br></div><div>And wish to know if it is possible to port the &quot;yocto&=
quot; to my own project.</div><div><br></div><div></div></blockquote></div>=
<br><div class=3D"gmail_default" style=3D"font-family:georgia,serif">=E2=80=
=8Bimage files are generated in several formats. There is option to generat=
e tarballs. You can always take the tarball and untar it and look what insi=
de</div><div class=3D"gmail_default" style=3D"font-family:georgia,serif">se=
condly, for your FPGA to understand this, you probably will need tools to d=
ownload the binary to memory which is visitible to FPGA if I assume FPGA</d=
iv><div class=3D"gmail_default" style=3D"font-family:georgia,serif">is sitt=
ing along with a application processor which can then help you to flash it =
to relevant memory parts.=C2=A0</div><div class=3D"gmail_default" style=3D"=
font-family:georgia,serif"><br></div><div class=3D"gmail_default" style=3D"=
font-family:georgia,serif">if your application processor has a bootloader e=
.g. uboot which can use SD cards as boot media then you can use wic tool to=
 generate SD card</div><div class=3D"gmail_default" style=3D"font-family:ge=
orgia,serif">images directly from yocto. wic is documented in dev manual so=
 please look there on how to set it up. Or you can look at some other BSPs =
like</div><div class=3D"gmail_default" style=3D"font-family:georgia,serif">=
beaglebone ( angstrom ) or raspberrypi or freescale layer for scripts to ge=
nerate the SD card images and model your using those.=E2=80=8B</div><br></d=
iv></div>

--001a113ebd7ce2330e052a558e52--
