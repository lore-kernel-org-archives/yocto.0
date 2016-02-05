Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CC1EE00D14; Fri,  5 Feb 2016 07:50:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01E7DE00D01
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 07:50:29 -0800 (PST)
Received: by mail-ig0-f172.google.com with SMTP id ik10so43103316igb.1
	for <yocto@yoctoproject.org>; Fri, 05 Feb 2016 07:50:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=E/G5mxM/mgJz7tt1uZ4fS7ezhUyvSJDseo022zhUvAU=;
	b=FhRN+GQgNot2JHOqTG8xu//6TyJUDvjeoWwZjvHHM/WfRlLJnE3ikcXdMYALAj1XP9
	Z3/kF3l/5AfLPloDuVk5L1cKGR/Cre7qgFBOy3joMxSEfmBEob1rqMEDXUKXQvsE4YRr
	T4map2PZb9UJCgpmfm2K71zT1rpc9nlME+M5+G9+4qokpe0LZr95Bm45s7lTW4cntvsS
	0p6JRM3+X6m0c5BQmx6rCW2iUEYxPttGEFwge+uVfe3cHRvBHa1cAYUPgKoA85EFeTL2
	AMi/Fo8psOLsxASOQtpq/89bg+hyMyY/6B2/xjatDI32MRO1zWlGuWNtSKg+Jgi2aPp1
	eqLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=E/G5mxM/mgJz7tt1uZ4fS7ezhUyvSJDseo022zhUvAU=;
	b=Rb6JQkjYW8La72eF48Pji/io2vQHk2Ab22agnQinim32Sx/7ZJoftNR38MlGsdODwj
	PbvqWraVlWxOzWClrSuvsh9HSfsOE9gSYVbUse8Oo9/lMqajL75zNObqrSVaUJIW01hY
	zHidrmF20/QqxANRFCo5HjJkQijKy33813ry3DHPfs8o7SvCdqru39btHam3ol0qKONy
	bHCODLOWNeFVwKpvs+BeyChbkxhN99Oi8u6S6XkdrnJWMJzg2RjVwR8uQ7B6gY/LtnvC
	xWS8mH8Q1ijLFpPp5Szw6R4Va8sN2bQ3W+Se/xClS40jP7WsFYVHYOFCQbMnMGPZwhrg
	6akQ==
X-Gm-Message-State: AG10YOSMHiNKyhH11QAecdzIWAnYRmL7DG4U+X/KOzsK+KRpv91FVDj/9H3dhe84nGWhCNqypo2wYTnYj2IlRFcR
X-Received: by 10.50.43.133 with SMTP id w5mr10330485igl.52.1454687428975;
	Fri, 05 Feb 2016 07:50:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 5 Feb 2016 07:50:09 -0800 (PST)
In-Reply-To: <2D89126E-8678-494A-A98B-5F5D5723E860@nathan.to>
References: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
	<CAJTo0La9vryBMou_wnKKdmdC61Kgu7u2JL+vpx1RY+s7Gbe7QA@mail.gmail.com>
	<2D89126E-8678-494A-A98B-5F5D5723E860@nathan.to>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 5 Feb 2016 15:50:09 +0000
Message-ID: <CAJTo0LbbM_TXswmQxbqP5yr4Pf9geh7Ru6=iD3nHNHscC8q-nQ@mail.gmail.com>
To: Nathan Sowatskey <nathan@nathan.to>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libgcc_s not present in Yocto image
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
X-List-Received-Date: Fri, 05 Feb 2016 15:50:35 -0000
Content-Type: multipart/alternative; boundary=089e01175f2b76c500052b07cf45

--089e01175f2b76c500052b07cf45
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 5 February 2016 at 15:24, Nathan Sowatskey <nathan@nathan.to> wrote:

> I suspect that my test program, which was supplied to me as a .deb
> package, was compiled on Ubuntu, and so links to libgcc_s.so.1. I can=E2=
=80=99t see
> any obvious way to get libgcc_s.so.1 on Yocto. I already have:
>

libgcc contains /lib/libgcc_s.so.1, so it should be installed in your image
already:

How are you determining that it isn't in your image, and that your
application doesn't work?

Ross

--089e01175f2b76c500052b07cf45
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 February 2016 at 15:24, Nathan Sowatskey <span dir=3D"ltr">&lt;<a href=
=3D"mailto:nathan@nathan.to" target=3D"_blank">nathan@nathan.to</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div id=3D":gtk" class=3D"a3s"=
 style=3D"overflow:hidden">I suspect that my test program, which was suppli=
ed to me as a .deb package, was compiled on Ubuntu, and so links to libgcc_=
s.so.1. I can=E2=80=99t see any obvious way to get libgcc_s.so.1 on Yocto. =
I already have:<br></div></blockquote></div><br>libgcc contains /lib/libgcc=
_s.so.1, so it should be installed in your image already:</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">How are you determini=
ng that it isn&#39;t in your image, and that your application doesn&#39;t w=
ork?</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">R=
oss</div></div>

--089e01175f2b76c500052b07cf45--
