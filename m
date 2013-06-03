Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1555AE013E4
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 00:51:12 -0700 (PDT)
Received: by mail-ob0-f170.google.com with SMTP id ef5so6675422obb.1
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2013 00:51:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=qLoVJ6Jzw/9fyGR6yhSWc6ypGEn54p0PH6JsjpmXLs0=;
	b=bgcVl1qKGrfuo81XAgLmHFpHk1MbtFRFQXYZCjH+EemyQ30w20DC2a68XLc2acABqq
	Mwci0Ghls83u0ZtGojneOA6dYfGheC70FP3rJvjS5ipyB6pObk26V2tYXhnVzPwbEE8w
	m1q/Fgl8svAT40tIDOPlOsIT4Zo5tPlegwRNPeyouyQ3JUQgUituk5h7F0yfO7oekycy
	fVTbYVyA2ksRjtYP4uv193iF51OIK05PMGDuYnEx4Z72hKNEGqo32mXEOXLAhrARDXbe
	MgbBFIwXjrH6woOXXzSv1Q57Mp1uQ1adS9P4t8iTSNejLYY5J12OhbAKC0Yv0YSTcfEA
	MIRw==
X-Received: by 10.60.68.13 with SMTP id r13mr543556oet.71.1370245871181; Mon,
	03 Jun 2013 00:51:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.27.165 with HTTP; Mon, 3 Jun 2013 00:50:51 -0700 (PDT)
In-Reply-To: <CAPwJhUMczwf56zG0eXQ-kxZJ+3qxtECsmHqbtxpuG+ke54ypnA@mail.gmail.com>
References: <CAPwJhUMczwf56zG0eXQ-kxZJ+3qxtECsmHqbtxpuG+ke54ypnA@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 3 Jun 2013 09:50:51 +0200
Message-ID: <CAP71WjyikSX89Pd+cbwXO0fNp7Kp6akYs47cfu6cve0Gss_fRg@mail.gmail.com>
To: Florian Augustin <florianaug@gmail.com>
X-Gm-Message-State: ALoCoQlgXPlpETK5rP7+v5rONNHNNl8beJfT8/wbPmgeVaCwrspZVSP+hzNqA74L/sm6U76Yq2nx
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Settings for HardFP and some general things
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
X-List-Received-Date: Mon, 03 Jun 2013 07:51:12 -0000
Content-Type: multipart/alternative; boundary=001a11331a7668336704de3b3acc

--001a11331a7668336704de3b3acc
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Jun 1, 2013 at 11:01 AM, Florian Augustin <florianaug@gmail.com>wrote:

> Hello experts :)
>
> I'm currently trying to set up Yocto poky for a Wandboard-Solo with i.mx6
> solo.
> My questions are:
> - How can I configure Yocto to use Hard Floating (VFPv3 or better NEON)? I
> read some stuff on the net to set DEFAULTTUNE with specific parameters?
>
you can find more information about ARM 'tuning' features here:
http://cgit.openembedded.org/openembedded-core/tree/meta/conf/machine/include/arm/README

what you need is to add this:
DEFAULTTUNE ?= "armv7athf-neon"

in one of the following configuration: machine , distro, or eventually
local.conf.

the 'logic' for this parameter is defined in this file:
http://cgit.openembedded.org/openembedded-core/tree/meta/conf/machine/include/arm/arch-armv7a.inc,
and the actually 'compiler' options when enabling HF are done here:

http://cgit.openembedded.org/openembedded-core/tree/meta/conf/machine/include/arm/feature-arm-vfp.inc


- When "MACHINE ??= 'wandboard-solo'" is set where can I find further
> informations about what setting are then used? I searched a lot in the
> Yocto directory but didn't find anything regarding to this.
>
you need to look at the machine .conf file in <layer>/conf/machine/<machine
name>.conf. in your case, this is this one i suspect:

https://github.com/Freescale/meta-fsl-arm-extra/blob/master/conf/machine/wandboard-solo.conf


all the machine parameters are defined here, you need to look at all
included .inc files and variables.

 - Is it possible to configure the drivers that are compiled to the kernel?
> I don't need sound and so on and this should speed up.. If yes, please give
> me some information how it's done!
>
yes. but it largely depends on how your kernel is managed. if you use the
"Yocto kernel" you can refer to this documentation:

http://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html

if you use a custom kernel not 'managed' using the Yocto tools, then you
need to check with whoever manages your kernel.


> Thank you a lot for your help!!
>
> Best regards,
> Florian
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11331a7668336704de3b3acc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Sat, Jun 1, 2013 at 11:01 AM, Florian Augustin <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:florianaug@gmail.com" target=3D"_blank">florianaug@g=
mail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><p dir=3D"ltr">Hello experts :)</p>
<p dir=3D"ltr">I&#39;m currently trying to set up Yocto poky for a Wandboar=
d-Solo with i.mx6 solo.<br>
My questions are:<br>
- How can I configure Yocto to use Hard Floating (VFPv3 or better NEON)? I =
read some stuff on the net to set DEFAULTTUNE with specific parameters?<br>=
</p></blockquote><div style>you can find more information about ARM &#39;tu=
ning&#39; features here:=A0</div>

<div><a href=3D"http://cgit.openembedded.org/openembedded-core/tree/meta/co=
nf/machine/include/arm/README">http://cgit.openembedded.org/openembedded-co=
re/tree/meta/conf/machine/include/arm/README</a><br></div><div><br></div>

<div style>what you need is to add this:</div><div style><span style=3D"col=
or:rgb(0,0,0);font-family:monospace;font-size:12px;white-space:pre">DEFAULT=
TUNE=A0?=3D=A0&quot;armv7athf-neon&quot;</span><br></div><div style><span s=
tyle=3D"color:rgb(0,0,0);font-family:monospace;font-size:12px;white-space:p=
re"><br>

</span></div><div style>in one of the following configuration: machine , di=
stro, or eventually local.conf.<br></div><div><br></div><div style>the &#39=
;logic&#39; for this parameter is defined in this file:=A0<a href=3D"http:/=
/cgit.openembedded.org/openembedded-core/tree/meta/conf/machine/include/arm=
/arch-armv7a.inc">http://cgit.openembedded.org/openembedded-core/tree/meta/=
conf/machine/include/arm/arch-armv7a.inc</a>, and the actually &#39;compile=
r&#39; options when enabling HF are done here:=A0</div>

<div style>=A0</div><div><a href=3D"http://cgit.openembedded.org/openembedd=
ed-core/tree/meta/conf/machine/include/arm/feature-arm-vfp.inc">http://cgit=
.openembedded.org/openembedded-core/tree/meta/conf/machine/include/arm/feat=
ure-arm-vfp.inc</a>=A0</div>

<div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-lef=
t-style:solid;padding-left:1ex"><p dir=3D"ltr">
- When &quot;MACHINE ??=3D &#39;wandboard-solo&#39;&quot; is set where can =
I find further informations about what setting are then used? I searched a =
lot in the Yocto directory but didn&#39;t find anything regarding to this.<=
br>

</p></blockquote><div style>you need to look at the machine .conf file in &=
lt;layer&gt;/conf/machine/&lt;machine name&gt;.conf. in your case, this is =
this one i suspect:</div><div style><br></div><div style><a href=3D"https:/=
/github.com/Freescale/meta-fsl-arm-extra/blob/master/conf/machine/wandboard=
-solo.conf">https://github.com/Freescale/meta-fsl-arm-extra/blob/master/con=
f/machine/wandboard-solo.conf</a>=A0</div>

<div style><br></div><div style>all the machine parameters are defined here=
, you need to look at all included .inc files and variables.</div><div styl=
e><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-s=
tyle:solid;padding-left:1ex">

<p dir=3D"ltr">

- Is it possible to configure the drivers that are compiled to the kernel? =
I don&#39;t need sound and so on and this should speed up.. If yes, please =
give me some information how it&#39;s done!</p></blockquote><div style>

yes. but it largely depends on how your kernel is managed. if you use the &=
quot;Yocto kernel&quot; you can refer to this documentation:</div><div styl=
e><br></div><div style><a href=3D"http://www.yoctoproject.org/docs/current/=
kernel-dev/kernel-dev.html">http://www.yoctoproject.org/docs/current/kernel=
-dev/kernel-dev.html</a></div>

<div style><br></div><div style>if you use a custom kernel not &#39;managed=
&#39; using the Yocto tools, then you need to check with whoever manages yo=
ur kernel.</div><div style>=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(20=
4,204,204);border-left-style:solid;padding-left:1ex">


<p dir=3D"ltr">Thank you a lot for your help!!</p>
<p dir=3D"ltr">Best regards,<br>
Florian</p>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div>

--001a11331a7668336704de3b3acc--
