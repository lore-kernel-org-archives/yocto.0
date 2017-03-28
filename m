Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2B7AE00524; Tue, 28 Mar 2017 15:10:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D86BE004E5
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 15:10:18 -0700 (PDT)
Received: by mail-qk0-f182.google.com with SMTP id r142so49450067qke.2
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 15:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wB6O7quDDrS1bDWX8pl2I//qHXhS1iSTt0k2LoxAjKM=;
	b=bAQ0P84KKr5rrAMYBlwPzlHRx/NjpQsNGJSgfTHZLtdCSYDVi3ArGl+RlGyYEH5qv5
	g3IMm/b4bwQGsPVZmV4IEMAvXaAGMexOr7PUAOtPFf0p6WehscWzPWHidBaFfYs1A241
	q7TKPmidRJky6uXbpFzdRw0h9pK7MVXoaqfMF/Bszohr/1T8BuF7iDtgbK9WfFD7XmBE
	XFIrcGwFuBLFF3Ad0X1TTHWj+AEnMQDLmzrcdC322P96xsSowwGfjWaql2CeOYrL5Go8
	bjtLbhQ2Aqou5xUaMNV/hduArb5a+rqN+8XC/hOki+Z6QqCOOosKS2nkgaNOEJynAiQi
	HYsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wB6O7quDDrS1bDWX8pl2I//qHXhS1iSTt0k2LoxAjKM=;
	b=i7y4DLDdZJGtcp8XpV/K02P4qN2kq1H6FDmCZRo7i6UXHV3p/Ddzrf9JI+cbRKI2eV
	rRWkEHxs+Nr7IRbq1sgSNLuQlpg4LxIdvvhagbwrEBQ46uNzMR5o6Jf7QcNQGHbdINmK
	4SFMKuI0aLATkfih7yRo/bFcwkX6s3nfAV8Y4wGYJG5tmj9zsS5kD7vp69G9kHHoh+ko
	1+9FDLbbIZWq3sp6zEYGOmze52HMKr9ZWHL9TfdWHGv7KbQc6lVeCCcI10RQOzvdrAhv
	FeoOnil3VtmUEhYtvEKujOxBqNEqj7rrhYpRdlF55tGeg6IdZ7oK4oZaDUjjeQ5C9NmT
	tHDQ==
X-Gm-Message-State: AFeK/H0BBxVMMVtKQpZMJgOTJ9HG/4e/WzKc6+iClU7TBvELpN24AtIRPSEE3mtXhYnn3mz7hJAk33IbAtpK8jBx
X-Received: by 10.55.162.203 with SMTP id l194mr25619161qke.221.1490739017514; 
	Tue, 28 Mar 2017 15:10:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Tue, 28 Mar 2017 15:09:57 -0700 (PDT)
In-Reply-To: <CAOsmwBR47gfDH-mQ5ej7vzn9xJSeB=OM=pv9X06-smxgKkKX6A@mail.gmail.com>
References: <CAOsmwBR47gfDH-mQ5ej7vzn9xJSeB=OM=pv9X06-smxgKkKX6A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 28 Mar 2017 23:09:57 +0100
Message-ID: <CAJTo0LZFhn+df6_x+AnMaU7CT3s38cPfweV2K+M18AiLjy0z9Q@mail.gmail.com>
To: Alvaro Garcia <maxpowel@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: NVIDIA Drivers
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
X-List-Received-Date: Tue, 28 Mar 2017 22:10:20 -0000
Content-Type: multipart/alternative; boundary=001a114d7fb097c87a054bd1b969

--001a114d7fb097c87a054bd1b969
Content-Type: text/plain; charset=UTF-8

On 28 March 2017 at 22:47, Alvaro Garcia <maxpowel@gmail.com> wrote:

> I tried this guacamayo recipe https://layers.openembedded.
> org/layerindex/recipe/3272/ but can't compile (too old, maybe
> unmaintained?). Also tried the recipe xf86-video-nouveau (it is blacklisted
> but in krogoth it compiles right) but when I boot the image, the nouveau
> driver is not used. My knowledges are very low to even try to cross compile
> the nvidia propietary drivers (and can't find any reference) so now I'm
> stucked. My machine is a zotac zbox, it came with angstrom but now I want
> to build my own image.
>

When you built the nouveux driver, did you add it to the image?  Bitbaking
something doesn't add it to the image.

Ross

--001a114d7fb097c87a054bd1b969
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 March 2017 at 22:47, Alvaro Garcia <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:maxpowel@gmail.com" target=3D"_blank">maxpowel@gmail.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div>I tried this guacamayo rec=
ipe <a href=3D"https://layers.openembedded.org/layerindex/recipe/3272/" tar=
get=3D"_blank">https://layers.openembedded.<wbr>org/layerindex/recipe/3272/=
</a> but can&#39;t compile (too old, maybe unmaintained?). Also tried the r=
ecipe xf86-video-nouveau (it is blacklisted but in krogoth it compiles righ=
t) but when I boot the image, the nouveau driver is not used. My knowledges=
 are very low to even try to cross compile the nvidia propietary drivers (a=
nd can&#39;t find any reference) so now I&#39;m stucked. My machine is a zo=
tac zbox, it came with angstrom but now I want to build my own image.<br></=
div></blockquote></div><br>When you built the nouveux driver, did you add i=
t to the image?=C2=A0 Bitbaking something doesn&#39;t add it to the image.<=
/div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</=
div></div>

--001a114d7fb097c87a054bd1b969--
