Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB39FE00D7F; Fri, 22 Dec 2017 02:38:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 651B9E00B5F
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 02:38:28 -0800 (PST)
Received: by mail-io0-f182.google.com with SMTP id g70so11601502ioj.6
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 02:38:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=D7idTRI7SvgUPWryNjuy77hlBUQKnk7luN4NzVeCbCE=;
	b=Q1aqNAP2Cw8Erqv/F6kU6Ze+VAXPOzkTKM6YW7N0DAXnBiKd0Ns3fBo80w7hcVKNlV
	r0udErDvoz3RIoQCJSzm7UZBgAnLYVK6kU4MzHgf8Cu3o8ahTJfWbMVTZxaR5EvHfiZV
	8MSbVWAyzQuzDMPA0Biias5NioqSE6NDooow0rRw8Mn+gfTCtpWC926ekZxnSrTdZ9N9
	E0toJVROK/FceLiFZqvtBwPR3s82Zu343n68bW8/s6nzYK/5td1Da8h1bDsklWOiUNv8
	de/W2tvNZ1Pvm5nMIKxprXkwD9l7fKjdEpOTx3yWJvO6QGBNmaGpOOCcqGWs8eiDcAQR
	qPVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=D7idTRI7SvgUPWryNjuy77hlBUQKnk7luN4NzVeCbCE=;
	b=lXpVZ3VfKgYJFmQ5ctaMRzhuFD3PH1AV+p0fnG4Fh5qMGchWnZvt9ccepqMboZtjz3
	B5sbLNSiuhyRlAcFUtmeYvRx7wdSytdVvv3RteYVeO8Ida7bFj+3QT1e8W8D3weGiVic
	vA3SS7DO8SjajX05sCwckG6M0YXJTHkjIzTMCAzStZcODduRKotIqnpv/HjIjqq0qEb7
	RilXI1MlSJStkRySZKA+QyNX2o78GpMtgn3iU4s5OI8ebiudSBOnZ0Jhav+pb53AgWZK
	ODmDUYCDqgDFbL/Ny2WWpDnzocJJDrM2jcF9D9RUEEsmV8/uI0QQ5FCHaL2oVprtsjl/
	owZA==
X-Gm-Message-State: AKGB3mLWNIDZAZ3sCf4NEAgZteacZyzQVgBasHCoDySvlQS2bJ31p9Kd
	br4TZ6281aTk4Gkaow745mb1QyIWiiT1oD87kHRl6g==
X-Google-Smtp-Source: ACJfBouNKYWs+zrA3mGXY46XJsvmGMaPe8UfViD4MwoliTz5IkkFrTXShrBuqZJfZzdFF+wCtZl/oBix83e475AbBeE=
X-Received: by 10.107.146.9 with SMTP id u9mr16350802iod.37.1513939108543;
	Fri, 22 Dec 2017 02:38:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.34.140 with HTTP; Fri, 22 Dec 2017 02:38:08 -0800 (PST)
In-Reply-To: <CACfi_Z063vTrALm+dHjiP4U0S6nazioCaR0yKJyfNX=5fg51Ug@mail.gmail.com>
References: <CACfi_Z063vTrALm+dHjiP4U0S6nazioCaR0yKJyfNX=5fg51Ug@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 22 Dec 2017 10:38:08 +0000
Message-ID: <CAJTo0LbTL4YVczXnUms_=r5jYruS24YBpHFJih7zY_KPjjT5VA@mail.gmail.com>
To: Davis Roman <davis.roman84@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to deal with the dependency explosion caused by enabling x11vnc
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
X-List-Received-Date: Fri, 22 Dec 2017 10:38:29 -0000
Content-Type: multipart/alternative; boundary="94eb2c05b10ac6d6f30560eb6a8e"

--94eb2c05b10ac6d6f30560eb6a8e
Content-Type: text/plain; charset="UTF-8"

On 22 December 2017 at 02:53, Davis Roman <davis.roman84@gmail.com> wrote:
>
> Hello,
>
>  I'd like to put a vnc server on my target.
>
> My embedded target has an onboard display and runs an application that
> drives the display directly via the framebuffer. ( no xorg onboard )
>
> I would like to use x11vnc ( with the --rawfb option ) however I'm
> having a hard time justifying the load of dependencies that it brings
> along with it. (Almost 100MB.)
>
> With the --rawfb option, x11vnc does not require a X server ( just
> libX11) to be onboard however I'm required to add x11 to
> DISTRO_FEATURES otherwise x11vnc won't compile.
>
> (x11vnc even drags gtk3 along with it which seems unnecessary.)
>
> My goal is to only add the minimum number of x11vnc depencies.
>
> Any advice on how to slim this down would be appreciated.


From glancing at https://github.com/LibVNC/x11vnc/blob/master/configure.ac
it appears that you can tell it to build without X:

If you want to build x11vnc without X support (e.g. for -rawfb use only
> or for native Mac OS X), specify the --without-x configure option.


I'd use PACKAGECONFIG to respect the x11 DISTRO_FEATURE and enable/disable
building with X.

Ross

--94eb2c05b10ac6d6f30560eb6a8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 22 December 2017 at 02:53, Davis Roman &lt;<a href=3D"m=
ailto:davis.roman84@gmail.com">davis.roman84@gmail.com</a>&gt; wrote:<br>&g=
t;<br>&gt; Hello,<br>&gt;<br>&gt; =C2=A0I&#39;d like to put a vnc server on=
 my target.<br>&gt;<br>&gt; My embedded target has an onboard display and r=
uns an application that<br>&gt; drives the display directly via the framebu=
ffer. ( no xorg onboard )<br>&gt;<br>&gt; I would like to use x11vnc ( with=
 the --rawfb option ) however I&#39;m<br>&gt; having a hard time justifying=
 the load of dependencies that it brings<br>&gt; along with it. (Almost 100=
MB.)<br>&gt;<br>&gt; With the --rawfb option, x11vnc does not require a X s=
erver ( just<br>&gt; libX11) to be onboard however I&#39;m required to add =
x11 to<br>&gt; DISTRO_FEATURES otherwise x11vnc won&#39;t compile.<br>&gt;<=
br>&gt; (x11vnc even drags gtk3 along with it which seems unnecessary.)<br>=
&gt;<br>&gt; My goal is to only add the minimum number of x11vnc depencies.=
<br>&gt;<br>&gt; Any advice on how to slim this down would be appreciated.<=
br><br><br>From glancing at <a href=3D"https://github.com/LibVNC/x11vnc/blo=
b/master/configure.ac">https://github.com/LibVNC/x11vnc/blob/master/configu=
re.ac</a> it appears that you can tell it to build without X:<br><br><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-w=
idth:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding=
-left:1ex">If you want to build x11vnc without X support (e.g. for -rawfb u=
se only<br>or for native Mac OS X), specify the --without-x configure optio=
n.</blockquote><br>I&#39;d use PACKAGECONFIG to respect the x11 DISTRO_FEAT=
URE and enable/disable building with X.<br><br>Ross<br>=C2=A0<br></div>

--94eb2c05b10ac6d6f30560eb6a8e--
