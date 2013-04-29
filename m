Return-Path: <katutxakurra@gmail.com>
Received: from mail-ia0-f177.google.com (mail-ia0-f177.google.com
	[209.85.210.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DAE6E014BD
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 07:07:28 -0700 (PDT)
Received: by mail-ia0-f177.google.com with SMTP id y26so5616964iab.22
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 07:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=oX3P7N4ShiHemZ6DmKNhgvc8og/P+lPMMQpkF/t6crk=;
	b=wuAE2f09z167uifNipPCUVIpjv2CnAkvK1AJ4ZAj6gvIzuLxYCzHgVwji/WC3f1VYW
	Uy7UK1gUP9lwG0I/MLukG5QSqfSlaFHWehKAWXAkn61OyqatU0RakvUgNcoWfVMHAF4g
	UxOgeQOXN6mlbOg/SLvLv6aIzGL8eSJYh9iXak06fVvtFip5JdzL9aWBU/E2zmicU7Jl
	dgNmWFtL+KbXA8/lVtanBni4ydIUl7pEABN8BJW6N0x0D7UlToCous5QPNZJ+RCGx19/
	qhdU9WOi72uZE5tyqPkziUOvcp5XyoKPT27l9N/0PIkVgsWL0zx0wD7tINeYOPwK+PlE
	UhtQ==
MIME-Version: 1.0
X-Received: by 10.50.66.193 with SMTP id h1mr1000321igt.54.1367244447745; Mon,
	29 Apr 2013 07:07:27 -0700 (PDT)
Received: by 10.50.53.212 with HTTP; Mon, 29 Apr 2013 07:07:27 -0700 (PDT)
In-Reply-To: <1432842.YTVMpTaA9y@helios>
References: <CAAGt+t04eUOBF3ZXeGVGatFh3V-vB3GWJ+JNtiWtH49hYUTUFw@mail.gmail.com>
	<5560552.0ejHhnttl9@helios>
	<CAFMfyzL+CvD4Y5gg-j7zSqCV45CGzLFzJAQR_ZbHepqhAOnMNQ@mail.gmail.com>
	<1432842.YTVMpTaA9y@helios>
Date: Mon, 29 Apr 2013 15:07:27 +0100
Message-ID: <CAM1ZcoXyXBizAYoHG0rXXbyZ1QaAL6eUFD1ZstwoAGb_43qUmw@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Zafrullah Syed <zafrullahmehdi@gmail.com>,
	Satya Swaroop Damarla <satyaswaroop.damarla@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky: Bitbake nothing provides error
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
X-List-Received-Date: Mon, 29 Apr 2013 14:07:28 -0000
Content-Type: multipart/alternative; boundary=047d7bdc14e0a1594c04db8067c9

--047d7bdc14e0a1594c04db8067c9
Content-Type: text/plain; charset=ISO-8859-1

The instructions in
https://github.com/gumstix/Gumstix-YoctoProject-Repo/blob/master/README.md
worked
for me, at least you can get them and have a look at the
build/conf/local.conf file.

Paul, how can get the recipes and related files that I find in the
layerindex?
Thanks


2013/4/29 Paul Eggleton <paul.eggleton@linux.intel.com>

> On Monday 29 April 2013 14:39:23 Satya Swaroop Damarla wrote:
> > For example consider the recipe "networkmanager"... First check if there
> is
> > a basic recipe "networkmanager" in any of the layers becuase if there is
> no
> > basic recipe then it makes no sense in appending the recipe in your BSP
> > layer..
> >
> > Try the following command
> >
> > find  /home/zaif/ -name "networkmanager*"
> >
> > If there is none then you have to create one but if there is one already
> > then possibly chnage the version number in meta-gumstix layer to the one
> > which is already present in the other layer or viceversa...
>
> If you use the following command instead it will confirm whether your build
> system configuration knows anything about the named recipe:
>
>  bitbake-layers show-recipes "networkmanager*"
>
> If you want to find recipes that exist anywhere in publicly available
> layers,
> use the recipe search function within the OE layer index:
>
>  http://layers.openembedded.org/layerindex/recipes/
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7bdc14e0a1594c04db8067c9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The instructions in=A0<a href=3D"https://github.com/gumsti=
x/Gumstix-YoctoProject-Repo/blob/master/README.md" target=3D"_blank" style=
=3D"font-family:arial,sans-serif;font-size:13px">https://github.com/gumstix=
/Gumstix-YoctoProject-Repo/blob/master/README.md</a>=A0worked for me, at le=
ast you can get them and have a look at the build/conf/local.conf file.<div=
>
<br></div><div style>Paul, how can get the recipes and related files that I=
 find in the layerindex? =A0</div><div style>Thanks</div></div><div class=
=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2013/4/29 Paul Eggleton=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" tar=
get=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">On Monday 29 April 2013 14:39:23 Satya Swaro=
op Damarla wrote:<br>
&gt; For example consider the recipe &quot;networkmanager&quot;... First ch=
eck if there is<br>
&gt; a basic recipe &quot;networkmanager&quot; in any of the layers becuase=
 if there is no<br>
&gt; basic recipe then it makes no sense in appending the recipe in your BS=
P<br>
&gt; layer..<br>
&gt;<br>
&gt; Try the following command<br>
&gt;<br>
&gt; find =A0/home/zaif/ -name &quot;networkmanager*&quot;<br>
&gt;<br>
&gt; If there is none then you have to create one but if there is one alrea=
dy<br>
&gt; then possibly chnage the version number in meta-gumstix layer to the o=
ne<br>
&gt; which is already present in the other layer or viceversa...<br>
<br>
If you use the following command instead it will confirm whether your build=
<br>
system configuration knows anything about the named recipe:<br>
<br>
=A0bitbake-layers show-recipes &quot;networkmanager*&quot;<br>
<br>
If you want to find recipes that exist anywhere in publicly available layer=
s,<br>
use the recipe search function within the OE layer index:<br>
<br>
=A0<a href=3D"http://layers.openembedded.org/layerindex/recipes/" target=3D=
"_blank">http://layers.openembedded.org/layerindex/recipes/</a><br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--047d7bdc14e0a1594c04db8067c9--
