Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38992E002AB
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 11:27:40 -0700 (PDT)
Received: by qadc11 with SMTP id c11so132892qad.14
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 11:27:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=zf5Vmj9M6uvlCqFkYqtIRyYZZpNbXJKUHJV6RhC9gyU=;
	b=f1lF+Ij2nGgKmXw7P6DZoScochuUFoxUlJpO3ts/+27PrqemHckFglWUmPUud1EoDm
	PZMZYNgV/DmO3ciF+V/EkHST3A+zXoQuePV/V25xv12tQB1XHcsScznIit+Dfqw2TE36
	P3cs9wV/l5lFcrZf3G4j7lcXFMef7K0Q1vqI+OziFs2W9hMdydypu90z4z2F9WmjImPY
	q3Fmdno1jKXcqvsap7Twgbv5vmQJmWfwzRfg/dU8FmHJQqbt+VBuWuAtar2nc4tPfiDA
	xe0HUZFzoWiEV4ki9a4qpdnL+6qKAJoDqNIAEj8ZZCpknIWjwAYZTvCje3qvgNMppDXY
	zW4g==
MIME-Version: 1.0
Received: by 10.224.181.70 with SMTP id bx6mr18671301qab.79.1348856857190;
	Fri, 28 Sep 2012 11:27:37 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.49.54.197 with HTTP; Fri, 28 Sep 2012 11:27:37 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A720D0@FMSMSX151.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A720D0@FMSMSX151.amr.corp.intel.com>
Date: Fri, 28 Sep 2012 11:27:37 -0700
X-Google-Sender-Auth: -ontkOi3LqPZKHiFnymgrHCLClY
Message-ID: <CA+gsK-pYtXKaVyERW7ys9j_3DEExXUKf2=wNTOOQ+r-Jvt9xrQ@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQkbTv8z+LYBej4OQIEQcZtpHBEluNp2HC4Re+tbc4yIJH1Md1HTmFH1ZkXpA1dIElTB9SAC
Subject: Re: The term Package as used in the YP docs
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
X-List-Received-Date: Fri, 28 Sep 2012 18:27:40 -0000
Content-Type: multipart/alternative; boundary=485b397dd04fd35fe104cac73543

--485b397dd04fd35fe104cac73543
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

+1

I agree with Scott's definition. In the general Linux context a Package is
a compilation of binaries, documentation, development files, etc. wrapped
up in a format that can be used by a package management system to install
it on a target system.

It is somewhat confusing that YP and OE use the term 'package' synonymously
with 'recipe'. In most cases a package is the output of a recipe.

I am all for making this more consistent at least to start with in the
documentation. Unfortunately, changing variables like P, PN, PV, PR etc.
may cause some pain. If a transition is what the broader community would
like to achieve then a period where old and new variables can be used
interchangeably (if possible) would be the way to go.

:rjs

On Fri, Sep 28, 2012 at 11:14 AM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

>  This post will have some strong opinions and responses.  But, I want to
> throw this out as a re-write of the term =93Package=94 as defined in the =
YP
> Development Manual=92s =93Terms=94 section.  I gave this a shot based on =
my brief
> understanding and on some email that was tossed about a while back on the
> term.  What I would like to ultimately come up with is a definition that
> works for the term as we want to use it in the YP docs and also as an
> explanation for some of our older variable names like PR, PV, and so fort=
h
> that really refer to recipes.  Please thrash over it=85.****
>
> ** **
>
> **=B7         ***Package:* In the context of the Yocto Project, this term
> refers to the packaged output from a baked recipe. A package is generally
> the compiled binaries produced from the recipe's sources. You =91bake=92
> something by running it through BitBake.****
>
> It is worth noting that the term "package" can, in general, have subtle
> meanings. For example, the packages refered to in the "The Packages<http:=
//www.yoctoproject.org/docs/1.3/yocto-project-qs/yocto-project-qs.html#pack=
ages>"
> section are compiled binaries that when installed add functionality to yo=
ur
> Linux distribution.****
>
> Another point worth noting is that historically within the Yocto Project,
> recipes were referred to as packages - thus, the existence of several
> BitBake variables that are seemingly mis-named, (e.g. PR<http://www.yocto=
project.org/docs/1.3/poky-ref-manual/poky-ref-manual.html#var-PR>,
> PRINC<http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manua=
l.html#var-PRINC>,
> PV<http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.h=
tml#var-PV>,
> and PE<http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manu=
al.html#var-PE>).
> ****
>
> ** **
>
> ** **
>
> *Scott Rifenbark***
>
> Intel Corporation****
>
> Yocto Project Documentation****
>
> 503.712.2702****
>
> 503.341.0418 (cell)****
>
> ** **
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--485b397dd04fd35fe104cac73543
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

+1<div><br></div><div>I agree with Scott&#39;s definition. In the general L=
inux context a Package is a compilation of binaries, documentation, develop=
ment files, etc. wrapped up in a format that can be used by a package manag=
ement system to install it on a target system.</div>
<div><br></div><div>It is somewhat confusing that YP and OE use the term &#=
39;package&#39;=A0synonymously with &#39;recipe&#39;. In most cases a packa=
ge is the output of a recipe.</div><div><br></div><div>I am all for making =
this more consistent at least to start with in the documentation. Unfortuna=
tely, changing variables like P, PN, PV, PR etc. may cause some pain. If a =
transition is what the broader community would like to achieve then a perio=
d where old and new variables can be used interchangeably (if possible) wou=
ld be the way to go.</div>
<div><br></div><div>:rjs=A0<br><br><div class=3D"gmail_quote">On Fri, Sep 2=
8, 2012 at 11:14 AM, Rifenbark, Scott M <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:scott.m.rifenbark@intel.com" target=3D"_blank">scott.m.rifenbark@intel=
.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal">This post will have some strong opinions and respons=
es.=A0 But, I want to throw this out as a re-write of the term =93Package=
=94 as defined in the YP Development Manual=92s =93Terms=94 section.=A0 I g=
ave this a shot based on my brief understanding and
 on some email that was tossed about a while back on the term.=A0 What I wo=
uld like to ultimately come up with is a definition that works for the term=
 as we want to use it in the YP docs and also as an explanation for some of=
 our older variable names like PR,
 PV, and so forth that really refer to recipes.=A0 Please thrash over it=85=
.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p style=3D"margin-left:.5in"><u></u><span style=3D"font-size:10.0pt;font-f=
amily:Symbol"><span>=B7<span style=3D"font:7.0pt &quot;Times New Roman&quot=
;">=A0=A0=A0=A0=A0=A0=A0=A0
</span></span></span><u></u><em>Package:</em> In the context of the Yocto P=
roject, this term refers to the packaged output from a baked recipe. A pack=
age is generally the compiled binaries produced from the recipe&#39;s sourc=
es. You =91bake=92 something by running
 it through BitBake.<u></u><u></u></p>
<p style=3D"margin-left:.5in">It is worth noting that the term &quot;packag=
e&quot; can, in general, have subtle meanings. For example, the packages re=
fered to in the &quot;<a href=3D"http://www.yoctoproject.org/docs/1.3/yocto=
-project-qs/yocto-project-qs.html#packages" target=3D"_blank">The
 Packages</a>&quot; section are compiled binaries that when installed add f=
unctionality to your Linux distribution.<u></u><u></u></p>
<p style=3D"margin-left:.5in">Another point worth noting is that historical=
ly within the Yocto Project, recipes were referred to as packages - thus, t=
he existence of several BitBake variables that are seemingly mis-named, (e.=
g.
<a href=3D"http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-ma=
nual.html#var-PR" target=3D"_blank">
<code><span style=3D"font-size:10.0pt;color:blue">PR</span></code></a>, <a =
href=3D"http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manua=
l.html#var-PRINC" target=3D"_blank">
<code><span style=3D"font-size:10.0pt;color:blue">PRINC</span></code></a>, =
<a href=3D"http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-ma=
nual.html#var-PV" target=3D"_blank">
<code><span style=3D"font-size:10.0pt;color:blue">PV</span></code></a>, and=
 <a href=3D"http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-m=
anual.html#var-PE" target=3D"_blank">
<code><span style=3D"font-size:10.0pt;color:blue">PE</span></code></a>). <u=
></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:blue">Scott Rifenbark</span></b><=
b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:blue"><u></u><u></u></span></b></p>

<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:blue">Intel Corporation</span><span s=
tyle=3D"font-size:7.5pt;font-family:&quot;Times New Roman&quot;,&quot;serif=
&quot;"><u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:blue">Yocto Project Documentation<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:blue"><a href=3D"tel:503.712.2702" va=
lue=3D"+15037122702" target=3D"_blank">503.712.2702</a></span><span style=
=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&qu=
ot;"><u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:blue"><a href=3D"tel:503.341.0418" va=
lue=3D"+15033410418" target=3D"_blank">503.341.0418</a> (cell)</span><span =
style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;ser=
if&quot;"><u></u><u></u></span></p>

<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
</div>

<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--485b397dd04fd35fe104cac73543--
