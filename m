Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-vb0-f52.google.com (mail-vb0-f52.google.com
	[209.85.212.52]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 4C095E00738
	for <yocto@yoctoproject.org>; Sun, 10 Feb 2013 12:54:44 -0800 (PST)
Received: by mail-vb0-f52.google.com with SMTP id fa15so3312939vbb.25
	for <yocto@yoctoproject.org>; Sun, 10 Feb 2013 12:54:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=RAnMhAp2ByZS/kdxl0RVQapht2JL3uc7ptYutEFOHhE=;
	b=U1m+gA3rmYYdnvauJdu2l5Y/Pm6SDbYvLfQICf+S/09bjaS8xmNZw9aBk1G+8vGYHC
	NkUDRsMiH5Bl3l3Da5p1X8VFZn3j+pk134oLaUQilLsagCnSuNtfEKMWfwMnjNQc6oSk
	Ro9gMzOajeKo+BKrQvC9hDBsfWfBTJC5yn2wnZTFAqMqrVj4jXkd/0UmZr+wav0csjkp
	/dHRL3/dvTeGIaQBDai4m8mAdd04bHHJNtRkC2dhCJov7XAp2ErifrOBU+kOkoe49PPJ
	4V95ZaKwPGsqYIESwiZQ2Rzsw/Y2ZJTVnykcTl/6H/4JDJauNMvAj/BWNcIV2FbNElE9
	Rjmg==
MIME-Version: 1.0
X-Received: by 10.52.73.73 with SMTP id j9mr13787335vdv.124.1360529683136;
	Sun, 10 Feb 2013 12:54:43 -0800 (PST)
Received: by 10.58.251.195 with HTTP; Sun, 10 Feb 2013 12:54:43 -0800 (PST)
In-Reply-To: <CAHUNapQa2yiyCJq+YVsxnwfrSvEM6Oaxcz0gSTd85ozRNrMBDg@mail.gmail.com>
References: <CACW_hTbnHePNOS6Zw7dyBi860Gy0FGBzjnPSWFBNWpBLJkcnHg@mail.gmail.com>
	<CAHUNapQa2yiyCJq+YVsxnwfrSvEM6Oaxcz0gSTd85ozRNrMBDg@mail.gmail.com>
Date: Sun, 10 Feb 2013 21:54:43 +0100
Message-ID: <CACW_hTY2-aKSiEenVEMtDRFyKemmzC1SAyH-0+kv8EAvqbTy0g@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Danny: default base_do_compile but no default base_do_install
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
X-List-Received-Date: Sun, 10 Feb 2013 20:54:44 -0000
Content-Type: multipart/alternative; boundary=bcaec501c5bc78400104d565004e

--bcaec501c5bc78400104d565004e
Content-Type: text/plain; charset=ISO-8859-1

Hi Trevor,

Thanks for your feedback.
Indeed only a day after pressing send it dawned to me that indeed you need
to pass something like PREFIX or DESTDIR.
(actually maybe it would be better if PREFIX or DESTDIR or so is not
needed; probably this means running do_install in a chrooted environment; I
cannot judge the complexity and implications of that right now, but that is
quite a drastical change).

I came to this proposal since often projects for embedded devices have
additional specific/private recipes holding the actual core application of
the embedded device.
Aim is to make creating a recipe as simple as possible. It seemed somewhat
weird that one needs to write a do_install, but no do_compile.

Maybe a better solution for us is to have our own specific class which
provide the do_install

Best regards, Frans



2013/2/10 Trevor Woerner <twoerner@gmail.com>

> Hi Frans,
>
> On Fri, Feb 8, 2013 at 9:24 AM, Frans Meulenbroeks
> <fransmeulenbroeks@gmail.com> wrote:
> > There is also a default base_do_install() that is empty.
> > Wouldn't it be more logical if the base_do_install would read:
> >
> > Currently people using only base, need to add a do_install to their
> recipe
> > but no do_compile (which is somewhat odd; if there is a makefile it seems
> > logical to use it for install too).
>
> In my experience when someone manually generates a Makefile for their
> project by hand it always includes an 'all' or default target but
> almost never includes a 'check', 'uninstall', or 'install' target;
> there's a 50/50 chance of it having a 'clean' target of some sort. So
> I don't think it's a stretch for the Yocto system to assume a Makefile
> doesn't contain an 'install' target. But even if you get lucky and it
> does include an 'install' target, what are the chances it has been
> designed to properly handle a 'PREFIX' or 'DESTDIR'?
>
> So you're starting with a low probability that a hand-generated
> Makefile includes an 'install' target, then coupling that with an even
> lower probability that it can flexibly install somewhere other than
> /usr/bin or /bin. Yocto's behaviour seems reasonable to me :-)
>
> Best regards,
>     Trevor
>

--bcaec501c5bc78400104d565004e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi Trevor,<br><br></div>Than=
ks for your feedback.<br>Indeed only a day after pressing send it dawned to=
 me that indeed you need to pass something like PREFIX or DESTDIR.<br></div=
>
<div>(actually maybe it would be better if PREFIX or DESTDIR or so is not n=
eeded; probably this means running do_install in a chrooted environment; I =
cannot judge the complexity and implications of that right now, but that is=
 quite a drastical change).<br>
</div><div><br></div>I came to this proposal since often projects for embed=
ded devices have additional specific/private recipes holding the actual cor=
e application of the embedded device.<br></div>Aim is to make creating a re=
cipe as simple as possible. It seemed somewhat weird that one needs to writ=
e a do_install, but no do_compile.<br>
</div><br></div>Maybe a better solution for us is to have our own specific =
class which provide the do_install<br><br></div>Best regards, Frans<br><div=
><div><div><br></div></div></div></div><div class=3D"gmail_extra"><br><br>
<div class=3D"gmail_quote">2013/2/10 Trevor Woerner <span dir=3D"ltr">&lt;<=
a href=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</=
a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">
Hi Frans,<br>
<div class=3D"im"><br>
On Fri, Feb 8, 2013 at 9:24 AM, Frans Meulenbroeks<br>
&lt;<a href=3D"mailto:fransmeulenbroeks@gmail.com">fransmeulenbroeks@gmail.=
com</a>&gt; wrote:<br>
&gt; There is also a default base_do_install() that is empty.<br>
&gt; Wouldn&#39;t it be more logical if the base_do_install would read:<br>
&gt;<br>
</div><div class=3D"im">&gt; Currently people using only base, need to add =
a do_install to their recipe<br>
&gt; but no do_compile (which is somewhat odd; if there is a makefile it se=
ems<br>
&gt; logical to use it for install too).<br>
<br>
</div>In my experience when someone manually generates a Makefile for their=
<br>
project by hand it always includes an &#39;all&#39; or default target but<b=
r>
almost never includes a &#39;check&#39;, &#39;uninstall&#39;, or &#39;insta=
ll&#39; target;<br>
there&#39;s a 50/50 chance of it having a &#39;clean&#39; target of some so=
rt. So<br>
I don&#39;t think it&#39;s a stretch for the Yocto system to assume a Makef=
ile<br>
doesn&#39;t contain an &#39;install&#39; target. But even if you get lucky =
and it<br>
does include an &#39;install&#39; target, what are the chances it has been<=
br>
designed to properly handle a &#39;PREFIX&#39; or &#39;DESTDIR&#39;?<br>
<br>
So you&#39;re starting with a low probability that a hand-generated<br>
Makefile includes an &#39;install&#39; target, then coupling that with an e=
ven<br>
lower probability that it can flexibly install somewhere other than<br>
/usr/bin or /bin. Yocto&#39;s behaviour seems reasonable to me :-)<br>
<br>
Best regards,<br>
=A0 =A0 Trevor<br>
</blockquote></div><br></div>

--bcaec501c5bc78400104d565004e--
