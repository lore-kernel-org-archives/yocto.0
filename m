Return-Path: <rstreif@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9270FE0079A; Tue, 12 Aug 2014 09:56:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33F1BE00796
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 09:56:09 -0700 (PDT)
Received: by mail-ig0-f176.google.com with SMTP id hn18so7403883igb.15
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 09:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=zKl5zBHpHtTh9rebWT+nl/K/sYHOD2C9RJAD8bf694c=;
	b=V0P1XuZ5jIP/7vvaf31Zbr1iR/5y5itxErw3Bmv1YBpEGUzJvt/0eFLzs4hAzVan9n
	We8KK9M3m240afawQYSw+BSohydYGeFF2xy4kUhiljbRECfnkaag+sAyXhL5oMZBaCTH
	uGaCJVRNxsKIwnaM7miacDHletd4XZbKo7IN0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=zKl5zBHpHtTh9rebWT+nl/K/sYHOD2C9RJAD8bf694c=;
	b=ESkIlElAYZNc16UDz9iD1vp8+G3cTM29Xf9lWdKMKpNPWoYX27j10HE+AuusQgzY/L
	6qqTma/pym/EPGgtTBp5XD9xk22dCS4Khrsz5HvHtRG2zDj/bRcjhNMKMHYWDRlQEkwW
	ashNmbwD++YOyzpjpmjq/zX9fb/dcRXPXllPIT85h2SmgP0jhtzhocs2Bee/MH3cFCel
	2iczmN5sEUaKuD2xPUX9hRHQXIKDOMBvepK0gcJVBYNXXAbuyH/L0dLBKaYzYEPTkA1u
	K1AeLU7wIrMcWG+EulCJvIBZAYZ0tQJVrGJsJvX20O7L5g/FMUGznfB6GhwKX2D4OEVn
	lT1w==
X-Gm-Message-State: ALoCoQkjdUYM6lZgWMbPCIKULIm57xypE8zC9PQBw0cnFTWGiEK0CHXbsULnZUSIR9hbBFgoxOaW
MIME-Version: 1.0
X-Received: by 10.50.147.70 with SMTP id ti6mr42097040igb.45.1407862568962;
	Tue, 12 Aug 2014 09:56:08 -0700 (PDT)
Received: by 10.107.149.73 with HTTP; Tue, 12 Aug 2014 09:56:08 -0700 (PDT)
In-Reply-To: <53EA2E3D.3080400@dfki.de>
References: <53E4D4A0.1030607@dfki.de>
	<CA+gsK-qsK4=R-a-TnCizz8_+1sWJ68zmh-zeYAK2UyBehDjp0w@mail.gmail.com>
	<53EA2E3D.3080400@dfki.de>
Date: Tue, 12 Aug 2014 09:56:08 -0700
Message-ID: <CA+gsK-oAVkqCNfU9r4CyyLvo0z3Q3N8BBa2zFz1WQj1nFpn7Aw@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: "Dr. Markus Eich" <markus.eich@dfki.de>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: No network at startup using core-image-minimal
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
X-List-Received-Date: Tue, 12 Aug 2014 16:56:12 -0000
Content-Type: multipart/alternative; boundary=089e013a0ac65151160500718c49

--089e013a0ac65151160500718c49
Content-Type: text/plain; charset=UTF-8

Hi Markus,

> same result with the core-image-base.
>
> It seems that depmod is not run before building the image/modules in the
> deploy folder. I have a custom kernel recipes. How can I make bitbake to
> run depmod -a on the rootfs?
>
> My recipes inherits kernel
>
> and requires
>
> recipes-kernel/linux/linux-yocto.inc
>
>
Ok, in this case you want to use

 module_autoload_<modname> = "modname1 modname2 modname3"

in your kernel recipe (or distro or machine configuration which is
actually preferable). For example

module_autoload_smsc95xx = "smsc95xx"

The module-split class should pick it up and add the module to
/etc/modules-load.d/modname.conf.

Cheers,

Rudi

--089e013a0ac65151160500718c49
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Markus,<div class=3D"gmail_extra"><div class=3D"gmail_q=
uote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:s=
olid;padding-left:1ex">
<div bgcolor=3D"#FFFFFF" text=3D"#000000">same result with the core-image-b=
ase.<br>
    <br>
    It seems that depmod is not run before building the image/modules in
    the deploy folder. I have a custom kernel recipes. How can I make
    bitbake to run depmod -a on the rootfs?<br>
    <br>
    My recipes inherits kernel<br>
    <br>
    and requires <br>
    <br>
    recipes-kernel/linux/linux-yocto.inc<br>
    <br></div></blockquote><div><br></div><div>Ok, in this case you want to=
 use</div><div><br></div><div><pre class=3D"" style=3D"overflow:auto;color:=
rgb(51,51,51)"> module_autoload_&lt;modname&gt; =3D &quot;modname1 modname2=
 modname3&quot;</pre>
<pre class=3D"" style=3D"overflow:auto;color:rgb(51,51,51)">in your kernel =
recipe (or distro or machine configuration which is actually preferable). F=
or example</pre><pre class=3D"" style=3D"overflow:auto"><font face=3D"arial=
, sans-serif"><span style=3D"white-space:normal">module_autoload_</span></f=
ont><span style=3D"font-size:12.727272033691406px;font-family:arial,sans-se=
rif">smsc95</span><span style=3D"font-size:12.727272033691406px;font-family=
:arial,sans-serif">xx =3D &quot;</span><span style=3D"font-size:12.72727203=
3691406px;font-family:arial,sans-serif">smsc95</span><span style=3D"font-si=
ze:12.727272033691406px;font-family:arial,sans-serif">xx&quot;</span></pre>
<pre class=3D"" style=3D"overflow:auto"><span style=3D"font-size:12.7272720=
33691406px;font-family:arial,sans-serif">The module-split class should pick=
 it up and add the module to /etc/modules-load.d/modname.conf.</span></pre>=
<pre class=3D"" style=3D"overflow:auto">
Cheers,</pre><pre class=3D"" style=3D"overflow:auto">Rudi</pre></div><div>=
=C2=A0</div></div>
</div></div>

--089e013a0ac65151160500718c49--
