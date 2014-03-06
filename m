Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22392E00A48
	for <yocto@yoctoproject.org>; Thu,  6 Mar 2014 11:12:49 -0800 (PST)
Received: by mail-vc0-f180.google.com with SMTP id ks9so3010176vcb.39
	for <yocto@yoctoproject.org>; Thu, 06 Mar 2014 11:12:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=roLZLKMZdxPcRhp8/ikmd079ECLM7zSI3FUAq9g2h3E=;
	b=F2xGwAjDX+hMRz9DcpzvlMvlQTbGzfKRSjQTRirbeid6a3AX6Hmv0DG7qdFuhF4kk1
	kPS+4djmBSI+WlypTEVTWT9ksoxdznTSGsqtkeW/wyv0F8psKrO/IGrj38OybaNhw5tk
	vpxqLHVN6N0H19FQwksuQhG2f8cFB3JKF+VNJRsFIfjFrRXhhYyzIvCvEz+eqH14Zz0C
	lJRFpspJxqEHNQJTe2+fU5RJgTjuhThjIuEs5Xj7B8azbyQKsp5wQZwO3bGD7BRqtsZX
	LD1exCzYBIn8RUI8IXCJo4/nUZGbEQVyPctKpacEos7R4ItiTqAOrqwbJT86kVP3DO90
	au5w==
MIME-Version: 1.0
X-Received: by 10.220.161.132 with SMTP id r4mr2106476vcx.29.1394133168976;
	Thu, 06 Mar 2014 11:12:48 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Thu, 6 Mar 2014 11:12:48 -0800 (PST)
In-Reply-To: <CAMKF1spN_KT1-PtQR22ixmQ=xTxBoAht04AY11CauCz0ba0BiQ@mail.gmail.com>
References: <1394028560.17657.YahooMailNeo@web163103.mail.bf1.yahoo.com>
	<CAMKF1spN_KT1-PtQR22ixmQ=xTxBoAht04AY11CauCz0ba0BiQ@mail.gmail.com>
Date: Thu, 6 Mar 2014 12:12:48 -0700
Message-ID: <CAA7h+Eqr8bVtsoYoNA7EWhUJZ63L27botuvLiBhx5O5CwLF2+Q@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Joel Parker <joelparker27@yahoo.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding headers to tool chain
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
X-List-Received-Date: Thu, 06 Mar 2014 19:12:50 -0000
Content-Type: multipart/alternative; boundary=001a11c2209e4e767304f3f4ec89

--001a11c2209e4e767304f3f4ec89
Content-Type: text/plain; charset=ISO-8859-1

Khem,
Is this the same process if I needed to get the kernel headers and source
onto the build?


On Wed, Mar 5, 2014 at 2:15 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Mar 5, 2014 at 6:09 AM, Joel Parker <joelparker27@yahoo.com>
> wrote:
> > $ bitbake meta-toolchain
>
> do bitbake -cpopulate_sdk <image-to-which-you-added-sqlite>
> and install that SDK
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c2209e4e767304f3f4ec89
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Khem,<br></div><div>Is this the same process if I nee=
ded to get the kernel headers and source onto the build?</div></div><div cl=
ass=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Mar 5, 2014 =
at 2:15 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail=
.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">On Wed, Mar 5, 2014 at 6:09 AM, Joel Parker =
&lt;<a href=3D"mailto:joelparker27@yahoo.com">joelparker27@yahoo.com</a>&gt=
; wrote:<br>

&gt; $ bitbake meta-toolchain<br>
<br>
do bitbake -cpopulate_sdk &lt;image-to-which-you-added-sqlite&gt;<br>
and install that SDK<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--001a11c2209e4e767304f3f4ec89--
