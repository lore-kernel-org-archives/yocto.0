Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC0C9E00DC9; Thu, 28 Apr 2016 05:44:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BD92E00DC1
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 05:44:35 -0700 (PDT)
Received: by mail-ig0-f177.google.com with SMTP id u10so102264888igr.1
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 05:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rqyEEHSUu8L9ELVyfaDb4SqYOTJLvxHClih492XZevI=;
	b=03JYp8lYm2ugU9OQ7R4Yyhhlc/y/dSPEysQoeWA+D8iBSHbPCiHbbfUewoYSy74l5c
	GXHnkcjmRVReK3IOTdgmOofRwyv7wdXn974kqgisnk79E92GXeyoQvnowXUbBTnolqLp
	+2F2q6jVMmfwim3m1khE/02KhkHl2QcCWZPvadNeMoQkZupbTczmO1UZCjABonbkwSoY
	lL+uWz/me05mLUnGhN5Jo9Fje7L/Cu/d9hFw0kXt5NTqNCkVtXgxx7Z8ISD2KVNTDAzc
	nX2SmLEk/WyBkND11B++ePWCrg4MAsT1kAdH/mkwfJNVt2wFaOx2uk54O7IK8Ozhrimc
	CAeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rqyEEHSUu8L9ELVyfaDb4SqYOTJLvxHClih492XZevI=;
	b=DQ9IbCVrRv72FP/LTbcJFeBvvDjThQBuKPavVItQelprtBVbnXJKJ/SNjJyveqhz7C
	+JFC6jhb2I3riI1KUaygJ6zfo5yV3u7z0Z2NFMr2ufjydNw9RIua+NvBk8qS8kevelOs
	yC8yGSnMBw+OPxN91EkkCBJXTlXbg/zMUNNRIEfZbp1GB2g6X9ydc9Gd0UOh1q8lS74F
	8xrqHq9Ia1nvg/+/MeWxDqO3rYcoq/8Z4JyEFfnsA4pF3D5NGcL1m2BL/0A7DDwQvxZJ
	g5of35GlOVyjFlKqD9OvmtOWIoOHZZJghUSv0gAirSCNlKE+yheAXEQ1gakdCRhfAM0U
	WUoA==
X-Gm-Message-State: AOPr4FWB9nyLcl+KmAf2vrOFtILLMDCkOjqEWjJa/VOC7MkPiWpr3TZfaeI85LjdRQ2W2pGdAurludo2tXGY4rTa
X-Received: by 10.50.18.111 with SMTP id v15mr32147150igd.64.1461847473828;
	Thu, 28 Apr 2016 05:44:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Thu, 28 Apr 2016 05:44:14 -0700 (PDT)
In-Reply-To: <OF1318AFAF.4F1EB7F1-ONC1257FA3.0041651C-C1257FA3.0042D0D2@esa-grimma.de>
References: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
	<CAJTo0LZxD=ddhu4zkEZXi9=a4KufoiYnf7QG_-n5LgUHXifU_A@mail.gmail.com>
	<OF1318AFAF.4F1EB7F1-ONC1257FA3.0041651C-C1257FA3.0042D0D2@esa-grimma.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Apr 2016 13:44:14 +0100
Message-ID: <CAJTo0LbzDJ4=GcYO71VNeVA7RYqnWPpu_zxDPgKcNBBAune48g@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to configure the build packages of a makefile based libary
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
X-List-Received-Date: Thu, 28 Apr 2016 12:44:38 -0000
Content-Type: multipart/alternative; boundary=089e014953cc64f8af05318ae390

--089e014953cc64f8af05318ae390
Content-Type: text/plain; charset=UTF-8

On 28 April 2016 at 13:09, <S.Jaritz@esa-grimma.de> wrote:

> ERROR: QA Issue: libhiredis: Files/directories were installed but not
> shipped in any package:
>   /usr/local
>

It either hard-codes /usr/local as the prefix, or if it respects a prefix
variable you should also pass in ${prefix} ${libdir} ${includedir} and so
on.

Ross

--089e014953cc64f8af05318ae390
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 April 2016 at 13:09,  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.Jarit=
z@esa-grimma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><font size=3D"2" face=3D"sans-serif"=
>ERROR: QA Issue: libhiredis: Files/directories
were installed but not shipped in any package:</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 /usr/local</font>
<br></blockquote></div><br>It either hard-codes /usr/local as the prefix, o=
r if it respects a prefix variable you should also pass in ${prefix} ${libd=
ir} ${includedir} and so on.</div><div class=3D"gmail_extra"><br></div><div=
 class=3D"gmail_extra">Ross</div></div>

--089e014953cc64f8af05318ae390--
