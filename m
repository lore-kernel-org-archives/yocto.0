Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f42.google.com (mail-la0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37156E006B4
	for <yocto@yoctoproject.org>; Mon, 24 Dec 2012 08:15:55 -0800 (PST)
Received: by mail-la0-f42.google.com with SMTP id s15so8812869lag.15
	for <yocto@yoctoproject.org>; Mon, 24 Dec 2012 08:15:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=/EvCyESeD6js4N8eVR6lATu2SXMU4pM9UPzNPsp1xW4=;
	b=SgtaeHkdDA0ZySJ4+79qTRqMO0iELk2F2zAVQdm5Qf98+VioEu6BxN3x0tj0M7PSg9
	PZHySjHnms7iAFW2oGJ7GSyuRTLSZfO9n5oQ0/E/gE8Zyk6jZX6wjo2Dpjr2V6tYzKqS
	pMioYvfHmBD5WLb20GHZc+QQFUexGiHjDD7bLB0yIJkwwGj+5yl4xUDUO4WmEWSdGrl5
	gnsqI+AabF0VNJG7IImsprx57ty+2ATDUPTg59rkc06/QT47qEzCEmmu/s9TdOi1qnKh
	J512tKSMxHbGX30qrd6fDuCO9fR+X/wzxgSZArxcsXf7PVsMoekg9JqrXX9+Rm3J6I5J
	EvuQ==
MIME-Version: 1.0
Received: by 10.112.87.104 with SMTP id w8mr8997354lbz.49.1356365753687; Mon,
	24 Dec 2012 08:15:53 -0800 (PST)
Received: by 10.112.127.35 with HTTP; Mon, 24 Dec 2012 08:15:53 -0800 (PST)
In-Reply-To: <1219DA3ECB038C40A6CF638974AA84A52517920E@sestoex05.enea.se>
References: <1219DA3ECB038C40A6CF638974AA84A52517920E@sestoex05.enea.se>
Date: Mon, 24 Dec 2012 12:15:53 -0400
Message-ID: <CADkTA4PNsOqwWbvDmyLGrcn6GVboeFkJX3voR1Pji_FoVU8m1w@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Rick Yang <Rick.Yang@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto-kernel-tools
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 24 Dec 2012 16:15:55 -0000
Content-Type: multipart/alternative; boundary=bcaec554e0f6ef1f6304d19b823b

--bcaec554e0f6ef1f6304d19b823b
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Dec 24, 2012 at 6:28 AM, Rick Yang <Rick.Yang@enea.com> wrote:

>  Hi , ****
>
> We have a linux release base on yocto, and we want to use
> yocto-kernel-tools to manage kernel configuration fragments, instead of the
> old method. So we want to know, when poky will use yocto-kernel-tools to
> manage the kernel ? Is there a plan?
>

I'm not sure I follow the question. Since yocto 1.0 the kern-tools have
been used
to manage the kernel, they've been changing over time, but the foundation
and
theory is the same.

If you want to manage a custom kernel, have a look in meta-skeleton for
linux-yocto-custom.bb and you can apply fragments to any upstream git tree
of your choosing. It would of course be better if we get more contributions
to the
main linux-yocto meta data (yocto-kernel-cache and the linux-yocto meta
branch), but
that's completely voluntary.

Cheers,

Bruce


> ****
>
> ** **
>
> Thanks!****
>
> ** **
>
> Rick****
>
> ** **
>
> ** **
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--bcaec554e0f6ef1f6304d19b823b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Mon, Dec 24, 2012 at 6:28 AM, Rick Yang <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:Rick.Yang@enea.com" target=3D"_blank">Rick.Yang@enea.com</a=
>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal">Hi , <u></u><u></u></p>
<p class=3D"MsoNormal">We have a linux release base on yocto, and we want t=
o use yocto-kernel-tools to manage kernel configuration fragments, instead =
of the old method. So we want to know, when poky will use yocto-kernel-tool=
s to manage the kernel ? Is there
 a plan?</p></div></div></blockquote><div><br></div><div style>I&#39;m not =
sure I follow the question. Since yocto 1.0 the kern-tools have been used</=
div><div style>to manage the kernel, they&#39;ve been changing over time, b=
ut the foundation and</div>
<div style>theory is the same.</div><div style><br></div><div style>If you =
want to manage a custom kernel, have a look in meta-skeleton for=A0</div><d=
iv style><a href=3D"http://linux-yocto-custom.bb">linux-yocto-custom.bb</a>=
 and you can apply fragments to any upstream git tree</div>
<div style>of your choosing. It would of course be better if we get more co=
ntributions to the</div><div style>main linux-yocto meta data (yocto-kernel=
-cache and the linux-yocto meta branch), but</div><div style>that&#39;s com=
pletely voluntary.=A0</div>
<div style><br></div><div style>Cheers,</div><div style><br></div><div styl=
e>Bruce</div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div lang=3D"EN-U=
S" link=3D"blue" vlink=3D"purple">
<div><p class=3D"MsoNormal"><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">Thanks!<span class=3D"HOEnZb"><font color=3D"#888888=
"><u></u><u></u></font></span></p><span class=3D"HOEnZb"><font color=3D"#88=
8888">
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">Rick<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</font></span></div>
</div>

<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>&quot;Th=
ou shalt not follow the NULL pointer, for chaos and madness await thee at i=
ts end&quot;
</div></div>

--bcaec554e0f6ef1f6304d19b823b--
