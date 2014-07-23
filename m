Return-Path: <anoojgopi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBB70E00576; Wed, 23 Jul 2014 00:19:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (anoojgopi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E41BE00524
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 00:18:57 -0700 (PDT)
Received: by mail-wg0-f50.google.com with SMTP id n12so690563wgh.33
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 00:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=HphwNUo4DKKhGwfNvczddGDJNFpWGu/KA4XiNfQqo2U=;
	b=zqb3+rXbmQPTEwWb/UnhannRh2KIKdy4AgWpahbxKCyDtFGx3IVPmQCXXy3rjCkXcU
	5BBtIuNODeAHyRVFExA8tIZQ4boWJi78FtrS25i10xq893F1v2NoZbpQuKVP9cqI6iWf
	dX0AJ4LEZx1/KdESRRmOxOzuexFPe4uxCn2+PKs53dBvH1MuLaQd0y5Hi26GeRIGqSzc
	i2nTE9wbYMKqDedZxyFnBAwP5ev7bkr/YoYSMSxX+eGWa8EtJtoMGs6t5qDRTLQ16Sje
	8w6wLZervRG8ISFA+iT7QA+PANHRLTPHhADG9bAwdtoGxP8t+xjNyDiBA7yabkRKqKid
	ViPA==
MIME-Version: 1.0
X-Received: by 10.180.79.202 with SMTP id l10mr21566865wix.18.1406099936423;
	Wed, 23 Jul 2014 00:18:56 -0700 (PDT)
Received: by 10.194.19.161 with HTTP; Wed, 23 Jul 2014 00:18:56 -0700 (PDT)
In-Reply-To: <CAJrRHk6A_S98KrnddvaacU7WmhAuuv2gkxwfduAvQTJftuWNgg@mail.gmail.com>
References: <CAJrRHk6A_S98KrnddvaacU7WmhAuuv2gkxwfduAvQTJftuWNgg@mail.gmail.com>
Date: Wed, 23 Jul 2014 09:18:56 +0200
Message-ID: <CALkREYBOB8sO2SorLLshZZGtk6f=PJpEtUi=sJnHtkGHerm7wA@mail.gmail.com>
From: Anooj Gopi <anoojgopi@gmail.com>
To: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK not contianing archive libraries
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
X-List-Received-Date: Wed, 23 Jul 2014 07:19:02 -0000
Content-Type: multipart/alternative; boundary=f46d044286843ab4ab04fed7277d

--f46d044286843ab4ab04fed7277d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

The package installed tmp/sysroot and your SDK sysroot are not same by
default.
You have to find in which package your .a files are. Adding it to
"TOOLCHAIN_HOST_TASK" may help.
I am not sure if this will help as I am currently through the similar
issues.


On Wed, Jul 23, 2014 at 5:20 AM, Joseph Andrew de la Pe=C3=B1a <
jdelapena@lexmark.com> wrote:

> Good day,
>
> I have bumped into a problem when compiling from my generated SDK (-c
> populate_sdk). I have archive libraries (.a) that were not reflected in m=
y
> SDK's lib dir in sysroots. However, my shared objects (.so) are present. =
I
> needed both .a and .so to be present in my SDK. With the former being the
> problem, how can archive libraries be included in SDK? I've checked in my
> poky and all .a are installed successfully in tmp/sysroots.
>
> Thanks,
> Joseph
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--f46d044286843ab4ab04fed7277d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The package installed tmp/sysroot and your SDK sysroot are=
 not same by default.<br>You have to find in which package your .a files ar=
e. Adding it to &quot;TOOLCHAIN_HOST_TASK&quot; may help.<br>I am not sure =
if this will help as I am currently through the similar=C2=A0 issues.<br>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed,=
 Jul 23, 2014 at 5:20 AM, Joseph Andrew de la Pe=C3=B1a <span dir=3D"ltr">&=
lt;<a href=3D"mailto:jdelapena@lexmark.com" target=3D"_blank">jdelapena@lex=
mark.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Good day,<div><br></div><di=
v>I have bumped into a problem when compiling from my generated SDK (-c pop=
ulate_sdk). I have archive libraries (.a) that were not reflected in my SDK=
&#39;s lib dir in sysroots. However, my shared objects (.so) are present. I=
 needed both .a and .so to be present in my SDK. With the former being the =
problem, how can archive libraries be included in SDK? I&#39;ve checked in =
my poky and all .a are installed successfully in tmp/sysroots.</div>

<div><br></div><div>Thanks,</div><div>Joseph</div></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--f46d044286843ab4ab04fed7277d--
