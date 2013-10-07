Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9ECAE016BD
	for <yocto@yoctoproject.org>; Mon,  7 Oct 2013 04:18:21 -0700 (PDT)
Received: by mail-ie0-f172.google.com with SMTP id x13so15370186ief.31
	for <yocto@yoctoproject.org>; Mon, 07 Oct 2013 04:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=DBVF7hdOikXHZfASYzBiIbmJFNki7sRUTX7C7HsPehk=;
	b=E+4r9uTjRKBgQS1vZA52Bo+dGPWwIQt/FqZbml2vwh9ilrxW2Tae1VP6CF0N8Liz0s
	f+pqgsGBNp/nGZd06GxZORM6zF7fKM3T0nf7y7Zx6RpaNtUsuusoUUsgOoV0eFEcL0SC
	vmSvjclfETZlJn6easMXmyXnGDFtUjAOdK9YPkuqyP2dplfkuaVE4ligOU9pN48dxycQ
	oUg08JB03tsel9RlAqkDF7H0gBYtscmd2c3jkZsnkbBPwxzMvuvv5VOaTaE6+cwmPxOk
	NAOkBXbMpEGOSQDV6MQ15GPtSvBjN9qv5dvhDv0qgTb3+w6DPcAuyN4SaiBBYDoNLbVX
	L2XQ==
X-Received: by 10.50.13.66 with SMTP id f2mr16640261igc.17.1381144700638; Mon,
	07 Oct 2013 04:18:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Mon, 7 Oct 2013 04:18:00 -0700 (PDT)
In-Reply-To: <20131007070515.GB9225@lpalcu-linux>
References: <CAMCfZKEZy-+xNxwnoOjt+wonqJq8RNQDpqFrYLdkPQj8ZP2yAw@mail.gmail.com>
	<524ECE1A.7060409@horus.es>
	<CAMCfZKGMJ-66GbWcWOJ5YWY5iyw9QSfO_znX3Bdd70jgjLu9Cg@mail.gmail.com>
	<524ED272.6020008@horus.es>
	<CAMCfZKFwMdDdo7R9APFOAesfSW50UxOMQP+qZ+D=1tL4PLg0nA@mail.gmail.com>
	<CAMCfZKG8QZPsWMueduTEant+iGtXQT=ypPcGm9jhLJgb1gaq6Q@mail.gmail.com>
	<20131007070515.GB9225@lpalcu-linux>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Mon, 7 Oct 2013 08:18:00 -0300
Message-ID: <CAMCfZKGX7Giu3DhcXTofSbSQF4voERZEvTQZyBZg4kSp2ewnfg@mail.gmail.com>
To: Laurentiu Palcu <laurentiu.palcu@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-toolchain-qt with Qt Creator
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
X-List-Received-Date: Mon, 07 Oct 2013 11:18:21 -0000
Content-Type: multipart/alternative; boundary=089e0118460e43e1bb04e824cf3e

--089e0118460e43e1bb04e824cf3e
Content-Type: text/plain; charset=ISO-8859-1

2013/10/7 Laurentiu Palcu <laurentiu.palcu@intel.com>

> Hi Diego,
> It's a little more complicated than that. After building the toolchain,
> all binaries have the default absolute path to the dynamic loader
> (/opt/poky/...) hardcoded in the elf INTERP section. This is easy to
> change. However, other binaries may or may not have other hardcoded
> paths to search for different things (like configs, etc.). Most of these
> could be easily fixed by providing the binary with an option or setting
> an environment variable to instruct it where to find what it needs. Take
> for example the gcc --sysroot option. By default gcc will search for the
> sysroot in the default location (starting with /opt/poky), but providing
> a --sysroot option, we override this default path.
>
> So, even though, for relocation, changing the INTERP section may suffice
> for most of the binaries, some may need more tweaking.
>
> A quick search on google brought me to this page:
> http://qt-project.org/doc/qt-4.8/qmake-environment-reference.html
>
> It turns out that QMAKESPEC environment variable is what QT creator
> looks at to be able to locate qmake.conf. So, perhaps, we need to add
> this to the environment file and the problem should be fixed...
>
> Can you please test this?
>
> Thanks,
> Laurentiu
>
>
Laurentiu,

Thanks for the explanation.

I took a look at environment-setup-armv7a-vfp-neon-poky-linux-gnueabi file
and it is already exporting the QMAKESPEC variable to the right path.
Maybe this variable is overridden by another one or by Qt Creator based on
some INTERP.

I did a "grep -r \/poky\/1\.4\.2 ./*" on the toolchain (installed outside
default path) and this is the results:

http://pastebin.com/us9p5vVp



Unfortunately I don't have enough knowledge to track this.


Regards,

--
*dS
Diego Sueiro

--089e0118460e43e1bb04e824cf3e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">2013/10/7 Laurentiu Palcu <span dir=3D"ltr">&lt;<a href=3D=
"mailto:laurentiu.palcu@intel.com" target=3D"_blank">laurentiu.palcu@intel.=
com</a>&gt;</span><br><div class=3D"gmail_extra"><div class=3D"gmail_quote"=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;=
padding-left:1ex">

Hi Diego,<br>It&#39;s a little more complicated than that. After building t=
he toolchain,<br>
all binaries have the default absolute path to the dynamic loader<br>
(/opt/poky/...) hardcoded in the elf INTERP section. This is easy to<br>
change. However, other binaries may or may not have other hardcoded<br>
paths to search for different things (like configs, etc.). Most of these<br=
>
could be easily fixed by providing the binary with an option or setting<br>
an environment variable to instruct it where to find what it needs. Take<br=
>
for example the gcc --sysroot option. By default gcc will search for the<br=
>
sysroot in the default location (starting with /opt/poky), but providing<br=
>
a --sysroot option, we override this default path.<br>
<br>
So, even though, for relocation, changing the INTERP section may suffice<br=
>
for most of the binaries, some may need more tweaking.<br>
<br>
A quick search on google brought me to this page:<br>
<a href=3D"http://qt-project.org/doc/qt-4.8/qmake-environment-reference.htm=
l" target=3D"_blank">http://qt-project.org/doc/qt-4.8/qmake-environment-ref=
erence.html</a><br>
<br>
It turns out that QMAKESPEC environment variable is what QT creator<br>
looks at to be able to locate qmake.conf. So, perhaps, we need to add<br>
this to the environment file and the problem should be fixed...<br>
<br>
Can you please test this?<br>
<br>
Thanks,<br>
Laurentiu<br>
<div class=3D""><div class=3D"h5"><br></div></div></blockquote><div class=
=3D"gmail_quote"><br></div><div class=3D"gmail_quote" style>Laurentiu,</div=
><div class=3D"gmail_quote" style><br></div><div class=3D"gmail_quote" styl=
e>Thanks for the explanation.</div>

<div class=3D"gmail_quote" style><br></div><div class=3D"gmail_quote" style=
>I took a look at=A0environment-setup-armv7a-vfp-neon-poky-linux-gnueabi fi=
le and it is already exporting the QMAKESPEC variable to the right path.</d=
iv>

<div class=3D"gmail_quote" style>Maybe this variable is=A0overridden=A0by a=
nother one or by Qt Creator based on some INTERP.</div><div class=3D"gmail_=
quote" style><br></div><div class=3D"gmail_quote" style>I did a &quot;grep =
-r \/poky\/1\.4\.2 ./*&quot; on the toolchain (installed outside default pa=
th) and this is the results:</div>

</div></div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;paddin=
g:0px"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div class=3D"=
gmail_quote" style><a href=3D"http://pastebin.com/us9p5vVp">http://pastebin=
.com/us9p5vVp</a><br>

</div></div></div></blockquote><div class=3D"gmail_extra"><div class=3D"gma=
il_quote"><div class=3D"gmail_quote" style><br></div><div class=3D"gmail_qu=
ote" style><br></div><div class=3D"gmail_quote" style>Unfortunately I don&#=
39;t have enough=A0knowledge=A0to track this.</div>

<div class=3D"gmail_quote" style><br></div><div class=3D"gmail_quote"><br><=
/div><div class=3D"gmail_quote" style>Regards,</div><div class=3D"gmail_quo=
te"><br></div>--<br>*dS<br>Diego Sueiro<br><div>=A0</div></div></div></div>

--089e0118460e43e1bb04e824cf3e--
