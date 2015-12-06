Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 315F8E009BF; Sun,  6 Dec 2015 06:57:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A65C7E008C8
	for <yocto@yoctoproject.org>; Sun,  6 Dec 2015 06:57:30 -0800 (PST)
Received: by lbblt2 with SMTP id lt2so43612807lbb.3
	for <yocto@yoctoproject.org>; Sun, 06 Dec 2015 06:57:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ro3cnF/qRAD/sWweOszVVzIEKDcb7kuiiz9OjFG47Dk=;
	b=JBg0pBiPgxaQt1iM4OGLfFnNTgJoP2FnT9QRr9HmbOXmgM6G9+5QPdKBjtsZRUMR60
	qx9KdSZAk9YX+qQkXEDFXwkjxNLJYI3fH90g3o1B+WM8jbW2etP6sEl4XodZ6soVFD0w
	BZaYWa1cdUVJiDtdVZeZhhJ0QxjZo46fZV9tlTWYowTSpAHu8PLfbbjUDtGQB8PxzPTi
	aKg5EoN/fBXyfQ+O51RNZxKyfR68UVEV5gNC92tdeAz6zrhCXV3F/dCgA2TWpj0/qZ7m
	wshD4cHN8oDAFWRP0nhMYOI4aqEm/Nt3avSVqKx4LllT5KLuivPYImkx/faP3hqQf9BD
	6BJg==
MIME-Version: 1.0
X-Received: by 10.112.16.135 with SMTP id g7mr12582402lbd.80.1449413849797;
	Sun, 06 Dec 2015 06:57:29 -0800 (PST)
Received: by 10.114.11.226 with HTTP; Sun, 6 Dec 2015 06:57:29 -0800 (PST)
In-Reply-To: <56640B0C.2000107@posteo.de>
References: <56640B0C.2000107@posteo.de>
Date: Sun, 6 Dec 2015 08:57:29 -0600
Message-ID: <CAOsp8o_+Tf4n2a7_TzScRK1=b56F6=ikknXgrrwt4T8CEJYUrg@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: kaffeesurrogat@posteo.de
Cc: yocto@yoctoproject.org
Subject: Re: BeagleBone...bitbake -v core-image-sato stops
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
X-List-Received-Date: Sun, 06 Dec 2015 14:57:34 -0000
Content-Type: multipart/alternative; boundary=001a11c3c778a65c0305263bf5d0

--001a11c3c778a65c0305263bf5d0
Content-Type: text/plain; charset=UTF-8

You may be able to look under ${WORKDIR}/temp/log.do_compile to see what
the logs are saying it got stuck doing.

On Sun, Dec 6, 2015 at 4:16 AM, <kaffeesurrogat@posteo.de> wrote:

> Hello to all,
>
> this is my first question ;-) I'm doing my first steps with a beaglebone
> black and yocto. I've bought the beaglebone book "Using Yocto Project with
> Beaglebone Black" and started the bitbake with "bitbake -v
> core-image-sato". After a while the bitbake-process reached a package
> called attr-native-2.4.47-r0 and it was not able to move on. Bitmaker did
> not complain about anything, but I've started the process yesterday in the
> morning and until now there was no progress.
>
> I've downloaded the source with:
>
> git clone -b daisy git://git.yoctoproject.org/poky.git
>
> My Distro is:
>
> gentoo
>
> I've started the bitbake with:
>
> bitbake -v core-image-sato
>
>
> Now I'm wondering, if I did something wrong .....
>
> Greetings,
>
> kaffeesurrogat
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11c3c778a65c0305263bf5d0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You may be able to look under ${WORKDIR}/temp/log.do_compi=
le to see what the logs are saying it got stuck doing.</div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Sun, Dec 6, 2015 at 4:16 AM, =
 <span dir=3D"ltr">&lt;<a href=3D"mailto:kaffeesurrogat@posteo.de" target=
=3D"_blank">kaffeesurrogat@posteo.de</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">Hello to all,<br>
<br>
this is my first question ;-) I&#39;m doing my first steps with a beaglebon=
e black and yocto. I&#39;ve bought the beaglebone book &quot;Using Yocto Pr=
oject with Beaglebone Black&quot; and started the bitbake with &quot;bitbak=
e -v core-image-sato&quot;. After a while the bitbake-process reached a pac=
kage called attr-native-2.4.47-r0 and it was not able to move on. Bitmaker =
did not complain about anything, but I&#39;ve started the process yesterday=
 in the morning and until now there was no progress.<br>
<br>
I&#39;ve downloaded the source with:<br>
<br>
git clone -b daisy git://<a href=3D"http://git.yoctoproject.org/poky.git" r=
el=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/poky.git</a><br>
<br>
My Distro is:<br>
<br>
gentoo<br>
<br>
I&#39;ve started the bitbake with:<br>
<br>
bitbake -v core-image-sato<br>
<br>
<br>
Now I&#39;m wondering, if I did something wrong .....<br>
<br>
Greetings,<br>
<br>
kaffeesurrogat<br>
<br>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a11c3c778a65c0305263bf5d0--
