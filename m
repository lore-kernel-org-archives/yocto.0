Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E285E005B3; Thu,  3 Dec 2015 11:09:11 -0800 (PST)
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
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B93D0E00349
	for <yocto@yoctoproject.org>; Thu,  3 Dec 2015 11:09:08 -0800 (PST)
Received: by lfdl133 with SMTP id l133so96741857lfd.2
	for <yocto@yoctoproject.org>; Thu, 03 Dec 2015 11:09:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Z6qW/DgSCih0DLJ2LyKSYiXifoBA+ecU0/MaNEQqp24=;
	b=XaMJGmNVydqeAZIkjfqVDLNQcWhuFxKFZ7PI/esTd+bUiG+Ix9xowAIhCYs7RUTC0k
	E+MF3eaeDlTrQadoQ3mbvTo5HNaDSf+6cw8SrxEFoZPJBINcbbyxjcN8mds9vmRrH80K
	2fbGSnOKXtt8ALIYEYhA7SigtpNLJexXGGjvqzvjVSUAJp8w9sMaig9cIzrfpD1pG5Gc
	FPjqc0fOPp8KTBqkbegmYH7JhCgNQorSfw2pNS1D/jY+UU4a//dlwwbnet08R4M5NxgW
	0bltTcm/7BnhHCyTykdN7bvAS2VrHk+QpDNAL2e+HAGFXKMXrQSZvy00mzOYwN6bJWFz
	rIsQ==
MIME-Version: 1.0
X-Received: by 10.25.43.138 with SMTP id r132mr6348592lfr.103.1449169747095;
	Thu, 03 Dec 2015 11:09:07 -0800 (PST)
Received: by 10.114.11.226 with HTTP; Thu, 3 Dec 2015 11:09:07 -0800 (PST)
In-Reply-To: <56606EB5.6010906@mlbassoc.com>
References: <CAOsp8o_kjTeXnmQWgR2GM7XiWHtKZPudSPUp3qR+Y5Wdfnye9g@mail.gmail.com>
	<56606EB5.6010906@mlbassoc.com>
Date: Thu, 3 Dec 2015 13:09:07 -0600
Message-ID: <CAOsp8o-dik=uKmb5YnVoZLRWGjo0tid151vqXeMbAdK+bfZJ-A@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: Pure initramfs image
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
X-List-Received-Date: Thu, 03 Dec 2015 19:09:11 -0000
Content-Type: multipart/alternative; boundary=001a113fadfcfeb4580526031fa9

--001a113fadfcfeb4580526031fa9
Content-Type: text/plain; charset=UTF-8

Oh well that's easy. I figured it was already added because it was in the
deployed directory, but I guess the tasks behave differently.

On Thu, Dec 3, 2015 at 10:32 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2015-12-03 09:24, Michael Habibi wrote:
>
>> All,
>>
>> I have interest in creating an image that runs purely in an initramfs
>> space. It seems that overall this shouldn't be too difficult - I can set my
>> IMAGE_FSTYPE to cpio.gz, and as
>> long as it's a reasonable size, it shouldn't be an issue to point to it
>> as an initrd. The only quirk is that kernel modules are split out from the
>> rootfs deployment (two separate
>> archives). Is there a way to combine the modules directly into the rootfs
>> archive?
>>
>
> Just add the kernel-modules package to your install.  This
> will install all of the kernel modules into your rootfs.
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113fadfcfeb4580526031fa9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Oh well that&#39;s easy. I figured it was already added be=
cause it was in the deployed directory, but I guess the tasks behave differ=
ently.</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Th=
u, Dec 3, 2015 at 10:32 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On 2015-12-03 09:=
24, Michael Habibi wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
All,<br>
<br>
I have interest in creating an image that runs purely in an initramfs space=
. It seems that overall this shouldn&#39;t be too difficult - I can set my =
IMAGE_FSTYPE to cpio.gz, and as<br>
long as it&#39;s a reasonable size, it shouldn&#39;t be an issue to point t=
o it as an initrd. The only quirk is that kernel modules are split out from=
 the rootfs deployment (two separate<br>
archives). Is there a way to combine the modules directly into the rootfs a=
rchive?<br>
</blockquote>
<br></span>
Just add the kernel-modules package to your install.=C2=A0 This<br>
will install all of the kernel modules into your rootfs.<span class=3D"HOEn=
Zb"><font color=3D"#888888"><br>
<br>
-- <br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a113fadfcfeb4580526031fa9--
