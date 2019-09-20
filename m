Return-Path: <jku@goto.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53913E0098A; Fri, 20 Sep 2019 12:06:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C0EAE00935
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2019 12:06:49 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id b20so2723988ljj.5
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2019 12:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goto.fi; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=C+JWemsRmXo8xbwur37Zz2nC3phXs7WdHS1cjFUjwtg=;
	b=luWa3i4r86KMOfhxrBj2syjEygSLleSyk8jcuJV7y+lccphnkHSkvHglf/3Bl+A7gj
	SOfAr5YJwm6U99nosMq16avyR4fjn8g0ghmFC+6HpdAjNtxBjc6BZDHXSgGDyG7Z6fZc
	WQYxJlmUpkUpluDcVPaPXfTB3I5yXnpExVZUI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=C+JWemsRmXo8xbwur37Zz2nC3phXs7WdHS1cjFUjwtg=;
	b=je9J6Pa3QiwtHkBykEQqPi71G3sMZoPKeDF16uuQmZdLNeov27IZlyUwv4ALp+R88Z
	5ScEa2Mx5MasuQe1uxFyXBeObcdWPciNLZgAuARd1mrEMnLFCMycqOn+wwEkzHsOE87W
	t2FvvJD0xaObopb3QDXB+32FtKkAt/gnLpXZLCCDM1LafUAjIAclPeIzujxEcnBjhogs
	CDpC3kWsXqfO/uB/Idr2Icz6loHuX4jD4SDGeAalED9PUc+pnE5cIEWNr4oJIZy+VqWY
	XeIo9RW1KyFK3zRjb50rISuEtjNKJNeLTgbVa12HD+7mE1mhViV31qqqcD1a2hRoGIEe
	iRAg==
X-Gm-Message-State: APjAAAVkGfRgIIjtzSkOy1043RsWJwx/lmPgz57mVkS0Z6dBohueSLly
	K7etLMzc+dG0Dewick6X1NmemiisOL3DuxuZdrh0uA==
X-Google-Smtp-Source: APXvYqzro56AHBu/eBD8kKYDKfooplUCDbNNAd+c607o4dIbe7lwY3aU8R2KX1S+QP3MchBBw6sOJSu9B/dIPJlBsHY=
X-Received: by 2002:a2e:8919:: with SMTP id d25mr6735812lji.176.1569006408701; 
	Fri, 20 Sep 2019 12:06:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAPYaOESu8_cWhgc7wbao4DP8otZ2B9qn7Wk1qpceQc8XGZzSfg@mail.gmail.com>
In-Reply-To: <CAPYaOESu8_cWhgc7wbao4DP8otZ2B9qn7Wk1qpceQc8XGZzSfg@mail.gmail.com>
From: Jussi Kukkonen <jku@goto.fi>
Date: Fri, 20 Sep 2019 22:06:32 +0300
Message-ID: <CAD5=o+pK46i8L4+zVtHiC2j8cjJ_Kv1RgXQ5d_Uro+M6-0NDKw@mail.gmail.com>
To: Jean-Baptiste MARIE <jbaptiste.marie@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: "bitbake core-image-sato" yields "No package 'gdk-x11-3.0' found" build failure
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
X-List-Received-Date: Fri, 20 Sep 2019 19:06:51 -0000
Content-Type: multipart/alternative; boundary="000000000000a42d6a059300c5a9"

--000000000000a42d6a059300c5a9
Content-Type: text/plain; charset="UTF-8"

On Fri, 20 Sep 2019 at 18:09, Jean-Baptiste MARIE <jbaptiste.marie@gmail.com>
wrote:

> Hello,
> I am facing a problem that has already been addressed but not solved yet.
> When building "bitbake core-image-sato" for SolidRun iMX6 SOM, I always get
> an error message during configure task of matchbox-panel-2. The error is
> the following:
> checking for glib-2.0
>                   gmodule-export-2.0
>                   x11
>                   gdk-x11-3.0
>                   gtk+-3.0... no
> configure: error: Package requirements (glib-2.0
>                   gmodule-export-2.0
>                   x11
>                   gdk-x11-3.0
>                   gtk+-3.0) were not met:
>
> No package 'gdk-x11-3.0' found
>

gdk-x11-3.0 comes from Gtk+3 (as long as Gtk is compiled with X11 support).
Since matchbox-panel-2 is even trying to build, you should have the "x11"
distro feature enabled and this should really mean that Gtk does include
gdk-x11-3.0 by default...

I'd start with checking the Gtk+3 build: is the "x11" packageconfig really
enabled for gtk+3? Do your layers have bbappends that modify the Gtk recipe
somehow?

If you would like more help you need to at least list the layers (and their
branches) you use.
HTH,
Jussi



> If I run bitbake gdk-x11-3.0, I get:
> ERROR: Nothing PROVIDES 'gdk-x11-3.0'
>
> Any idea of what is wrong please?
>
> Thanks for your help.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000a42d6a059300c5a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, 20 Sep 2019 at 18:09, Jean-Baptis=
te MARIE &lt;<a href=3D"mailto:jbaptiste.marie@gmail.com" target=3D"_blank"=
>jbaptiste.marie@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quot=
e"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>=
Hello,</div><div>I am facing a problem that has already been addressed but =
not solved yet. When building &quot;bitbake core-image-sato&quot; for Solid=
Run iMX6 SOM, I always get an error message during configure task of matchb=
ox-panel-2. The error is the following:</div><div></div><div>checking for g=
lib-2.0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 g=
module-export-2.0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 x11<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 gdk-x11-3.0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 gtk+-3.0... no<br>configure: error: Package requirements (glib-2=
.0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gmodul=
e-export-2.0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 x11<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 g=
dk-x11-3.0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 gtk+-3.0) were not met:<br><br>No package &#39;gdk-x11-3.0&#39; found</=
div></div></blockquote><div><br></div><div>gdk-x11-3.0 comes from Gtk+3 (as=
 long as Gtk is compiled with X11 support). Since matchbox-panel-2 is even =
trying to build, you should have the &quot;x11&quot; distro feature enabled=
 and this should really mean that Gtk does include gdk-x11-3.0 by default..=
.</div><div><br></div><div>I&#39;d start with checking the Gtk+3 build: is =
the &quot;x11&quot; packageconfig really enabled for gtk+3? Do your layers =
have bbappends that modify the Gtk recipe somehow?</div><div><br></div><div=
>If you would like more help you need to at least list the layers (and thei=
r branches) you use.</div><div>HTH,</div><div>Jussi</div><div><br></div><di=
v><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div></div><div><br></div><div>If I run bitbake gdk-x11-3.0, I get:</di=
v><div>ERROR: Nothing PROVIDES &#39;gdk-x11-3.0&#39;</div><div><br></div><d=
iv>Any idea of what is wrong please?</div><div><br></div><div>Thanks for yo=
ur help.<br></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--000000000000a42d6a059300c5a9--
