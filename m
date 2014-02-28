Return-Path: <fede.vitali@gmail.com>
Received: from mail-ob0-f172.google.com (mail-ob0-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00F79E00809
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 06:54:31 -0800 (PST)
Received: by mail-ob0-f172.google.com with SMTP id wm4so3992118obc.3
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 06:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=JTwWs+JC/hOHh5n4mfa5HthmnsDGfZpR0qoEqpNpy7g=;
	b=SDpnISKxNp4jn6zIAiSVeobUt7J0TfyBbVGyZBf12hbRw3sSXDfYJvCxARjtxarYiB
	9pRBRUHoQepFirqpW8wrwzsNzNf9OWhOO9HgqHsY3GJ6ISzAu6B4PAeyiBBX1wMjId23
	QYT03aFLASutM0ckuTSaKQQ9H4vzK59qnuphSJQNRBloEZHeWktkmmIYVvt9KAig6SO/
	xIo9PU6ZaNuym9BVZDvG1HqOVPFg2hhVj9S7DaktlLjM3DSr36CMtlx4YTa8kwfFjwRn
	jqrSjUYio0JiduW2lbV0cJo5cb2AJr5rmx276hRQ4LT/2Xq0WUziNwobsq0V/04gDZ1D
	kYng==
MIME-Version: 1.0
X-Received: by 10.182.28.134 with SMTP id b6mr13966152obh.27.1393599270348;
	Fri, 28 Feb 2014 06:54:30 -0800 (PST)
Received: by 10.76.101.11 with HTTP; Fri, 28 Feb 2014 06:54:30 -0800 (PST)
In-Reply-To: <531094E5.2050906@gmail.com>
References: <CAD78y+6bm_gdoQtU6RP9xHp_ASPD-r8SWU7Sg55SvtouzurvhQ@mail.gmail.com>
	<531094E5.2050906@gmail.com>
Date: Fri, 28 Feb 2014 15:54:30 +0100
Message-ID: <CAD78y+4iSnpT8itgc+qB74B+FrDWvHOYf9kpkNu5kGhGAVf+Tw@mail.gmail.com>
From: Federico Vitali <fede.vitali@gmail.com>
To: Marco Cavallini <koansoftware@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Build qemuarm compatible with freescale i.MX6
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
X-List-Received-Date: Fri, 28 Feb 2014 14:54:35 -0000
Content-Type: multipart/alternative; boundary=001a11c2903c77ee8004f3789dda

--001a11c2903c77ee8004f3789dda
Content-Type: text/plain; charset=ISO-8859-1

Thank you Marco.
so I can run a generic arm qemu kernel with the image created for my sabre
sd card?
I suppose I have to make a qemu armv7 kernel, am I wrong? In that case how
can I
configure my local.conf to make a qemu armv7 kernel?

Thank you again


2014-02-28 14:53 GMT+01:00 Marco <koansoftware@gmail.com>:

> Il 28/02/2014 11:03, Federico Vitali ha scritto:
>
>> Goodmorning,
>>
>>
>> I'm new to yocto project, I would like to know if there is the
>> possibility to build a qemuarm
>> kernel compatible with fsl i.MX6. I'm developing with a sabre SD board
>> and I would like to
>> run the same filesystem both on the real target and via qemu emulation
>> on my PC for application
>> developement purposes.
>>
>> Thank you in advance to anyone who wants to contribute!
>>
>>
>
> Federico,
> AFAIK the kernel can't be the same and moreover iMX6 generated system will
> use hw graphic acceleration, so probably couldn't be the same.
> You can use a generic ARM kernel on qemuarm and a specific one on iMX6
> with the same image type though.
>
> Ciao
> --
> Marco Cavallini | KOAN sas | Bergamo - Italia
>  embedded and real-time software engineering
> Phone:+39-035-255.235 - Fax:+39-178-22.39.748
>       http://www.KoanSoftware.com
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c2903c77ee8004f3789dda
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Marco.=A0<div>so I can run a generic arm qemu ke=
rnel with the image created for my sabre sd card?</div><div>I suppose I hav=
e to make a qemu armv7 kernel, am I wrong? In that case how can I=A0</div><=
div>
configure my local.conf to make a qemu armv7 kernel?</div><div><br></div><d=
iv>Thank you again</div></div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">2014-02-28 14:53 GMT+01:00 Marco <span dir=3D"ltr">&lt;<a =
href=3D"mailto:koansoftware@gmail.com" target=3D"_blank">koansoftware@gmail=
.com</a>&gt;</span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">Il 28/02/2014 11:03, Federic=
o Vitali ha scritto:<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">
Goodmorning,<div><div class=3D"h5"><br>
<br>
I&#39;m new to yocto project, I would like to know if there is the<br>
possibility to build a qemuarm<br>
kernel compatible with fsl i.MX6. I&#39;m developing with a sabre SD board<=
br>
and I would like to<br>
run the same filesystem both on the real target and via qemu emulation<br>
on my PC for application<br>
developement purposes.<br>
<br>
Thank you in advance to anyone who wants to contribute!<br>
<br>
</div></div></blockquote>
<br><div class=3D"">
<br>
Federico,<br>
AFAIK the kernel can&#39;t be the same and moreover iMX6 generated system w=
ill use hw graphic acceleration, so probably couldn&#39;t be the same.<br>
You can use a generic ARM kernel on qemuarm and a specific one on iMX6 with=
 the same image type though.<br>
<br>
Ciao<br>
-- <br>
Marco Cavallini | KOAN sas | Bergamo - Italia<br>
=A0embedded and real-time software engineering<br>
Phone:<a href=3D"tel:%2B39-035-255.235" value=3D"+39035255235" target=3D"_b=
lank">+39-035-255.235</a> - Fax:<a href=3D"tel:%2B39-178-22.39.748" value=
=3D"+391782239748" target=3D"_blank">+39-178-22.39.748</a><br>
=A0 =A0 =A0 <a href=3D"http://www.KoanSoftware.com" target=3D"_blank">http:=
//www.KoanSoftware.com</a><br></div>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--001a11c2903c77ee8004f3789dda--
