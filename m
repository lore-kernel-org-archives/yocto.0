Return-Path: <sstncr@gmail.com>
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54F56E0099B
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 07:32:08 -0700 (PDT)
Received: by mail-we0-f171.google.com with SMTP id q59so301088wes.16
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 07:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=epwDwXEBeh0IUZ1mWvkvFv8GixMyp+/8Ke7J4dSgfXE=;
	b=Yxxfibonfkhpl1254ljJPcRjLTzHulTkwgZZNFJirY1e1V9LzNgzb3hDpy+5LiDteB
	4xAJmkNy30aoHiMHfHuMn1MeZGGGMaaoAe+bcAufceoCNuH8Xc0mrhS3P6LWo1NxiF0f
	FxAL/Cal1g0lIdZdV3EoG1YrpRis/64Ss6WrihELfP39+Zxu1noOycvz+YQZZcyD3sQG
	QIpaxH5s90JtaLGK+7IGYU4wydjtrRAuU3eD0PShBPWcTUMoZryJrjLLMdOlN7IK+7ym
	VWIR0b8VpcsqZoQPbz9BL/SHIxLmOXbciM10KXbqCKC8tcX6qMKfUbVxrbG//r/7fgMd
	tidQ==
MIME-Version: 1.0
X-Received: by 10.194.187.50 with SMTP id fp18mr781212wjc.89.1398781926854;
	Tue, 29 Apr 2014 07:32:06 -0700 (PDT)
Received: by 10.216.48.6 with HTTP; Tue, 29 Apr 2014 07:32:06 -0700 (PDT)
In-Reply-To: <CAMCfZKG6Q5jQuQABsDOijHOcqm-v1=gPnvLdXZrP88YNfT8+rw@mail.gmail.com>
References: <CAMCfZKG6Q5jQuQABsDOijHOcqm-v1=gPnvLdXZrP88YNfT8+rw@mail.gmail.com>
Date: Tue, 29 Apr 2014 17:32:06 +0300
Message-ID: <CANr+NRvN80_OHjAh61zuLOebiNM1g7q5V4aGgoT=208oSjZ1qQ@mail.gmail.com>
From: Stefan Stanacar <sstncr@gmail.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Missing kernel, modules and dtb for beaglebone on core-image-minimal
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
X-List-Received-Date: Tue, 29 Apr 2014 14:32:09 -0000
Content-Type: multipart/alternative; boundary=047d7bb03b4ede55b804f82f4b34

--047d7bb03b4ede55b804f82f4b34
Content-Type: text/plain; charset=UTF-8

That's not a bug :), it's intended. The README.hardware clearly states that
for deploying a core-image-minimal you need to unpack the modules and copy
the dtbs over.

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/README.hardware#n244

There is a reason for that, mainly beacause the way core-image-minimal
recipe works.
 A BSP usually adds kernel-modules and other stuff to
MACHINE_EXTRA_RDEPENDS but not all images respect that (they need to
inherit core-image.bbclass and not overwrite IMAGE_INSTALL).

HTH,
Stefan


On Tue, Apr 29, 2014 at 5:17 PM, Diego Sueiro <diego.sueiro@gmail.com>wrote:

> Folks,
>
> I'm using daisy branch of yocto and I realized that kernel and dtb files
> were not present on /boot and there were no modules installed on
> /lib/modules/3.14.0-yocto-standard.
>
>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> Administrador do Embarcados
> www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>
>
> /*long live rock 'n roll*/
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7bb03b4ede55b804f82f4b34
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>That&#39;s not a bug :), it&#39;s inte=
nded. The README.hardware clearly states that for deploying a core-image-mi=
nimal you need to unpack the modules and copy the dtbs over.<br><br><a href=
=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/README.hardware#n24=
4" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/RE=
ADME.hardware#n244</a><br>

<br></div>There is a reason for that, mainly beacause the way core-image-mi=
nimal recipe works.<br></div>=C2=A0A BSP usually adds kernel-modules and ot=
her stuff to MACHINE_EXTRA_RDEPENDS but not all images respect that (they n=
eed to inherit core-image.bbclass and not overwrite IMAGE_INSTALL).<br>
<br></div>HTH,<br></div>Stefan<br></div><div class=3D"gmail_extra"><br><br>=
<div class=3D"gmail_quote">On Tue, Apr 29, 2014 at 5:17 PM, Diego Sueiro <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:diego.sueiro@gmail.com" target=3D"_bl=
ank">diego.sueiro@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Folks,<div><br></div><div>I=
&#39;m using daisy branch of yocto and I realized that kernel and dtb files=
 were not present on /boot and there were no modules installed on /lib/modu=
les/3.14.0-yocto-standard.</div>


<div><br></div><div><br></div><div><br clear=3D"all"><div><div dir=3D"ltr">=
<div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administ=
rador do Embarcados<br><a href=3D"http://www.embarcados.com.br/?utm_source=
=3Dassinatura_diego&amp;utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%2=
0Email%20Diego" target=3D"_blank">www.embarcados.com.br</a><br>


<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--047d7bb03b4ede55b804f82f4b34--
