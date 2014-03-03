Return-Path: <fede.vitali@gmail.com>
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EB8AE008E5
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 01:09:55 -0800 (PST)
Received: by mail-ob0-f173.google.com with SMTP id gq1so6549760obb.18
	for <yocto@yoctoproject.org>; Mon, 03 Mar 2014 01:09:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=oH2gJut0jeAxhRhwWzLxi4/5wHiyOnxmazaEvIM+8bY=;
	b=PgU6cHUYg5zCJbV3I8qzJvciV/2jfbVJqiNltGSfWLHdJtPVBRuhWf1TJu9cncbSzK
	OFD7k42/aznA0KZPiqCK/htQ2ifejyN1mcVY4i0KuTwFYnVlSiYL62DUaCBaPmPOxtJE
	1sv02fQF4mFXeQuasLg39ASsUTr+lDMkTwh3tTayuSK83CKruqzscLZDsINrZmz7slfQ
	0LZ+Jy9XhWc0e56I0OoDiYTzdG8I7+MncwyEAKuos8Oqnx4/ND3Lmx/Pkq/XFZjA+x6O
	IXZ/sMeqctt+fTkWbrUh2FOlv3cg3vUAijhtDWrbmCYczL7R9HRbBNAub1Vzg15BaUjC
	5OCw==
MIME-Version: 1.0
X-Received: by 10.182.87.42 with SMTP id u10mr25965032obz.22.1393837794219;
	Mon, 03 Mar 2014 01:09:54 -0800 (PST)
Received: by 10.76.101.11 with HTTP; Mon, 3 Mar 2014 01:09:54 -0800 (PST)
In-Reply-To: <5310A4ED.2050903@gmail.com>
References: <CAD78y+6bm_gdoQtU6RP9xHp_ASPD-r8SWU7Sg55SvtouzurvhQ@mail.gmail.com>
	<531094E5.2050906@gmail.com>
	<CAD78y+4iSnpT8itgc+qB74B+FrDWvHOYf9kpkNu5kGhGAVf+Tw@mail.gmail.com>
	<5310A4ED.2050903@gmail.com>
Date: Mon, 3 Mar 2014 10:09:54 +0100
Message-ID: <CAD78y+4wpUVEtNe=fZJ8p_sJTvpc4q1sKTLsdj2e-BfWOAV5BQ@mail.gmail.com>
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
X-List-Received-Date: Mon, 03 Mar 2014 09:09:58 -0000
Content-Type: multipart/alternative; boundary=089e013cba6299610d04f3b02634

--089e013cba6299610d04f3b02634
Content-Type: text/plain; charset=ISO-8859-1

Thank you Marco! What is the best pratice for application developement
purposed?
Should I use a qemuarm arch or a qemux86 is better for performance reasons
debugging
on a x86_64 machine?

Thank you again


2014-02-28 16:02 GMT+01:00 Marco <koansoftware@gmail.com>:

> Il 28/02/2014 15:54, Federico Vitali ha scritto:
>
>  Thank you Marco.
>> so I can run a generic arm qemu kernel with the image created for my
>> sabre sd card?
>> I suppose I have to make a qemu armv7 kernel, am I wrong? In that case
>> how can I
>> configure my local.conf to make a qemu armv7 kernel?
>>
>> Thank you again
>>
>>
>>
>
> Federico,
> The kernel and image you create for iMX6 is cortexa9hf
> the one created for qemuarm is arm926ejs
> You can do tests with quemuarm but the binaries aren't compatible.
> So returning to your original question, no you can't run the same
> filesystem both on the real target and via qemu emulation.
>
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

--089e013cba6299610d04f3b02634
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Marco! What is the best pratice for application =
developement purposed?=A0<div>Should I use a qemuarm arch or a qemux86 is b=
etter for performance reasons debugging</div><div>on a x86_64 machine?</div=
>
<div><br></div><div>Thank you again</div></div><div class=3D"gmail_extra"><=
br><br><div class=3D"gmail_quote">2014-02-28 16:02 GMT+01:00 Marco <span di=
r=3D"ltr">&lt;<a href=3D"mailto:koansoftware@gmail.com" target=3D"_blank">k=
oansoftware@gmail.com</a>&gt;</span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Il 28/02/2014 15:54, Federico Vitali ha scri=
tto:<div class=3D""><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Thank you Marco.<br>
so I can run a generic arm qemu kernel with the image created for my<br>
sabre sd card?<br>
I suppose I have to make a qemu armv7 kernel, am I wrong? In that case<br>
how can I<br>
configure my local.conf to make a qemu armv7 kernel?<br>
<br>
Thank you again<br>
<br>
<br>
</blockquote>
<br>
<br></div>
Federico,<br>
The kernel and image you create for iMX6 is cortexa9hf<br>
the one created for qemuarm is arm926ejs<br>
You can do tests with quemuarm but the binaries aren&#39;t compatible.<br>
So returning to your original question, no you can&#39;t run the same files=
ystem both on the real target and via qemu emulation.<div class=3D"HOEnZb">=
<div class=3D"h5"><br>
<br>
Ciao<br>
-- <br>
Marco Cavallini | KOAN sas | Bergamo - Italia<br>
=A0embedded and real-time software engineering<br>
Phone:<a href=3D"tel:%2B39-035-255.235" value=3D"+39035255235" target=3D"_b=
lank">+39-035-255.235</a> - Fax:<a href=3D"tel:%2B39-178-22.39.748" value=
=3D"+391782239748" target=3D"_blank">+39-178-22.39.748</a><br>
=A0 =A0 =A0 <a href=3D"http://www.KoanSoftware.com" target=3D"_blank">http:=
//www.KoanSoftware.com</a><br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--089e013cba6299610d04f3b02634--
