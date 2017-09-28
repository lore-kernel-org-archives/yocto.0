Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BC27E00CD1; Thu, 28 Sep 2017 02:38:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.180 listed in dnsbl.sorbs.net]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32C7AE00C45
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 02:38:56 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id i197so1036915ioe.9
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 02:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=e0X4euO8e8ehwN+NOeySBnYHdJl5qruhmNaKNAXYd4c=;
	b=aNhte8VCSMflpLbVmXYyQDYtfHbp8KSXloJrQVmdIiBY3KXnNazm7r2b06fCo3NYmC
	EvEgcy0+Y+jb8H65+3+fJsrLbOl68+vrY0gDyFR/h8M85bYtBZ7kdqw34d9hI0FxcOxQ
	rMAWbvU6/4IANd7Uy6dLVB4oXBLBKsgG82hp85YYt4QLKyhDlwmyX30i7xxqOAy2TgtY
	1SJD9HyuiQZlS2j3MSc+S6xh9qd1OH5W/n+FnPaQtTKbC0RxNK3+7/q22CmfnKaU/a86
	55jFEe9I8jGYejcP8+XaIDSotA+QpocYWoy2gvOEYRtdc0GEImnMbrPwS0Q/4Q+5teoZ
	L3Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=e0X4euO8e8ehwN+NOeySBnYHdJl5qruhmNaKNAXYd4c=;
	b=IzaAPID52ucmHvOeocUSnIEqxD+JpprpZc+glEwdQzHzYw9f9c4AwH2il9vjqa35LP
	pUPsyFuZgC5vw8po4G/30bmrrccvcbvaoOcIu8J56d/sQ+HrYjPFxbZKaNAJ9gaIHVoh
	qvZlk5zXDC/sSEMUrpiFaSGMMYw6h091olOiz/rj3rj193M8EoWEZDhqkgB56LxOna+v
	HWJRstFA0ycZYRTevYEIREYFfw9CG0F48IkKKBNUDtsS++Hlu7dSTNsva1iguPxIHOi1
	WNPimlaDm2jBkwmexgGwFeVpfarEYSYEEX1ielAeALh68KFPUlPfbwfqywEFlG0DhBGW
	spTg==
X-Gm-Message-State: AHPjjUgY2NmJKulG987ZnaB3dGo/unjfqLfYECmk8Vz6cZrISe5CPXKs
	4tRsgYeM74cnBV7XMHdw4g45yenXlNcTODtk2Q/gnw==
X-Google-Smtp-Source: AOwi7QAdoKlzJPitAl4bylthbSutDKaW6oLAjWCL5M2cKcIRyDLrRLKXfpABAvhrvInJ/SXESwsro1db2vXBwU5rFQA=
X-Received: by 10.107.135.72 with SMTP id j69mr6498750iod.210.1506591536211;
	Thu, 28 Sep 2017 02:38:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.19.68 with HTTP; Thu, 28 Sep 2017 02:38:35 -0700 (PDT)
In-Reply-To: <7C20937E-B5A7-4824-89C2-B93B198E3EDB@korgrd.com>
References: <7C20937E-B5A7-4824-89C2-B93B198E3EDB@korgrd.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Sep 2017 10:38:35 +0100
Message-ID: <CAJTo0LYMG_HxjR2wgsCKh-CPCFqN1PGpS7RcP6D4AXHr820i6w@mail.gmail.com>
To: Steve Pavao <stevep@korgrd.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: advice on recipe for shared lib mDNSResponder
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
X-List-Received-Date: Thu, 28 Sep 2017 09:38:59 -0000
Content-Type: multipart/alternative; boundary="001a113f8e70569f48055a3cad8a"

--001a113f8e70569f48055a3cad8a
Content-Type: text/plain; charset="UTF-8"

On 27 September 2017 at 23:58, Steve Pavao <stevep@korgrd.com> wrote:

> I am fairly new to Yocto, yet have been able to successfully add a custom
> kernel object to my Yocto poky build, no problem.  However, I am having
> some difficulty adding a shared library, namely mDNSResponder.
>

Andre has already replied with a good answer, but I'll point out that
Avahi, part of oe-core, has a mDNSResponder compatibility library so you
may be able to use that instead.

Ross

--001a113f8e70569f48055a3cad8a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 27 September 2017 at 23:58, Steve Pavao <span dir=3D"lt=
r">&lt;<a href=3D"mailto:stevep@korgrd.com" target=3D"_blank">stevep@korgrd=
.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmai=
l_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">I am fairly new to Yocto, yet have =
been able to successfully add a custom kernel object to my Yocto poky build=
, no problem.=C2=A0 However, I am having some difficulty adding a shared li=
brary, namely mDNSResponder.<br></blockquote><div><br></div><div>Andre has =
already replied with a good answer, but I&#39;ll point out that Avahi, part=
 of oe-core, has a mDNSResponder compatibility library so you may be able t=
o use that instead.</div><div><br></div><div>Ross</div></div></div></div>

--001a113f8e70569f48055a3cad8a--
