Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 415B4E0027C
	for <yocto@yoctoproject.org>; Thu,  7 Feb 2013 17:39:10 -0800 (PST)
Received: by mail-lb0-f178.google.com with SMTP id n1so2623091lba.37
	for <yocto@yoctoproject.org>; Thu, 07 Feb 2013 17:39:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=L/Z7nOEjHWmiiF3lAYYHnMwGcsk+5L5j6L6Z1kIB3dA=;
	b=q0n0jgOudTfMKAM+mNduEhiEwKH0k8ehcADaen2XdNnFC0yg04NAyn66cEBGtByQ3k
	I4JpcqSAv/ki32ZQizLVubQxUemUckwgzdV4vo00Fj4GZvQC+okZAmmgLYEsh7JOkavt
	PUBCc476Qe1Xk68huUrink/EzrWemp1Chet00HWYXGVYWmsne6ad0vlS77FCfubgS5Wj
	vebn27tiW5Ny2AWtbMSb90xpr0DVELn0uIDaeJt3UrNXhcdzNeFFv+OgZS+Lo1AS1rMN
	Vota1G1UWMPk4VPTg0xtIrunk4NyXntQQuM5afzTxU2XG/hE6R3FCOgtYV5BQ0bO5MNd
	+Wow==
MIME-Version: 1.0
X-Received: by 10.152.147.103 with SMTP id tj7mr3191377lab.54.1360287547962;
	Thu, 07 Feb 2013 17:39:07 -0800 (PST)
Received: by 10.112.127.35 with HTTP; Thu, 7 Feb 2013 17:39:07 -0800 (PST)
In-Reply-To: <CA+gsK-o6CCdwsM3oHNvso2rGy7_LMBZEfkd0hc3BYXVmJBbQPg@mail.gmail.com>
References: <CA+gsK-o6CCdwsM3oHNvso2rGy7_LMBZEfkd0hc3BYXVmJBbQPg@mail.gmail.com>
Date: Thu, 7 Feb 2013 20:39:07 -0500
Message-ID: <CADkTA4M1NxUrQSYdwsDDNEApb-cM1=Cai+2MKxFzY04eZrexiw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Rudolf Streif <rudolf.streif@linux.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: PROVIDES for Yocto Kernel Recipes
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
X-List-Received-Date: Fri, 08 Feb 2013 01:39:10 -0000
Content-Type: multipart/alternative; boundary=e89a8f234d2b16b4fd04d52ca0e8

--e89a8f234d2b16b4fd04d52ca0e8
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Feb 7, 2013 at 8:22 PM, Rudolf Streif <rudolf.streif@linux.com>wrote:

> I apologize if that has been brought up before.
>
> The linux-yocto kernel recipes include the git tags into PV by explicitly
> setting:
>
> PV = "${LINUX_VERSION}+git${SRCPV}"
>
> This means that you cannot for example do
>
> bitbake linux-yocto-3.2
>
> anymore because PROVIDES does not contain linux-yocto-3.2 but only the
> rather cumbersome string linux-yocto-3.2+git${SRCPV}, with ${SRCPV}
> expanded of course.
>
> The percent notation only works for
>
> PREFERRED_VERSION_linux-yocto = "3.2%"
>
> but does not work for
>
> bitbake linux-yocto-3.2%
>
> That really only leaves you with setting PREFERRED_VERSION which is not
> that convenient if you just want to build a different kernel version.
>
> I am not sure how others feel about that and maybe I am missing something
> but it would be rather simple to add that back by setting
>
> PV = "${LINUX_VERSION} ${LINUX_VERSION}+git${SRCPV}"
>

You mean with a space in the version string ? I know that I don't want
directories floating around
with spaces, since they cause no end of troubles. But maybe it's just the
font in gmail playing
tricks with my eyes.

Perhaps Richard has a suggestion, but in 3+ years, this is the first time
that this particular issue
has come up. Most everyone is setting the PREFERRED_VERSION in their bsps,
or local.conf
and not using that particular mechanism of switching between kernels ..
myself included, and I
probably build more versions of linux-yocto than anyone you'll find :)

Don't get me wrong, I'm not dead set against changing it, but we do need
both the meta and
machine git hashes in the version to uniquely identify the tree (and my no
spaces comment!).
Maybe someone knows of a better way for command line switching of the
version ?

Cheers,

Bruce



>
>

> Well, kind of, you still would have to know the minor version number.
>
> Cheers,
> Rudi
>
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

--e89a8f234d2b16b4fd04d52ca0e8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Thu, Feb 7, 2013 at 8:22 PM, Rudolf Streif <span dir=3D"ltr">&lt=
;<a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank">rudolf.streif=
@linux.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">I apologize if that has bee=
n brought up before.<div><br></div><div>The linux-yocto kernel recipes incl=
ude the git tags into PV by explicitly setting:</div>
<div><br></div><div>PV =3D &quot;${LINUX_VERSION}+git${SRCPV}&quot;<br>
</div><div><br></div><div>This means that you cannot for example do</div><d=
iv><br></div><div>bitbake linux-yocto-3.2</div><div><br></div><div>anymore =
because PROVIDES does not contain linux-yocto-3.2 but only the rather cumbe=
rsome string linux-yocto-3.2+git${SRCPV}, with ${SRCPV} expanded of course.=
</div>

<div><br></div><div>The percent notation only works for</div><div><br></div=
><div>PREFERRED_VERSION_linux-yocto =3D &quot;3.2%&quot;</div><div><br></di=
v><div>but does not work for</div><div>
<br></div><div>bitbake linux-yocto-3.2%</div><div><br></div><div>That reall=
y only leaves you with setting PREFERRED_VERSION which is not that convenie=
nt if you just want to build a different kernel version.</div>
<div><br></div><div>I am not sure how others feel about that and maybe I am=
 missing something but it would be rather simple to add that back by settin=
g</div><div><br></div><div><div>PV =3D &quot;${LINUX_VERSION} ${LINUX_VERSI=
ON}+git${SRCPV}&quot;</div>
</div></div></blockquote><div><br></div><div style>You mean with a space in=
 the version string ? I know that I don&#39;t want directories floating aro=
und</div><div style>with spaces, since they cause no end of troubles. But m=
aybe it&#39;s just the font in gmail playing</div>
<div style>tricks with my eyes.</div><div style><br></div><div style>Perhap=
s Richard has a suggestion, but in 3+ years, this is the first time that th=
is particular issue</div><div style>has come up. Most everyone is setting t=
he PREFERRED_VERSION in their bsps, or local.conf=A0</div>
<div style>and not using that particular mechanism of switching between ker=
nels .. myself included, and I</div><div style>probably build more versions=
 of linux-yocto than anyone you&#39;ll find :)</div><div style><br></div>
<div style>Don&#39;t get me wrong, I&#39;m not dead set against changing it=
, but we do need both the meta and</div><div style>machine git hashes in th=
e version to uniquely identify the tree (and my no spaces comment!).</div>
<div style>Maybe someone knows of a better way for command line switching o=
f the version ?</div><div style><br></div><div style>Cheers,</div><div styl=
e><br></div><div style>Bruce</div><div style><br></div><div>=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">
<div dir=3D"ltr"><div><div>=A0</div></div></div></blockquote><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div dir=3D"ltr"><div><div>
</div><div><br></div><div>Well, kind of, you still would have to know the m=
inor version number.</div><div><br></div><div>Cheers,</div><div>Rudi</div><=
div><br></div></div></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>&quot;Th=
ou shalt not follow the NULL pointer, for chaos and madness await thee at i=
ts end&quot;
</div></div>

--e89a8f234d2b16b4fd04d52ca0e8--
