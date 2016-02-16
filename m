Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92D8DE0090E; Tue, 16 Feb 2016 03:40:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5B33E008F1
	for <yocto@yoctoproject.org>; Tue, 16 Feb 2016 03:40:53 -0800 (PST)
Received: by mail-ig0-f173.google.com with SMTP id g6so29024322igt.1
	for <yocto@yoctoproject.org>; Tue, 16 Feb 2016 03:40:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=jLVGs9nXftXFulnDfueG+502ui5T/PvUVyBuSEfUZjg=;
	b=ju3oErpGirsN4dnA0BUcTuOj7FjyrfnBZk4QVLSfZiqVpg6IoHs4M5ncvKnYWJPf6i
	O14+DK7gm3V3Cs6qkp/7XRtDVpneqURtyhyoulGYfheUhqVmvNEvXlY5swWs9g5Aaa93
	cQT6ykrW07FwRxr4WjLVl13h0lIyJde1UGs3H5u/jQdjDvUY09m2QcCFgnIqlyl2xgOM
	9Q2BPltnamoXWrd1DS9r400ium99ZBpMKiGfKjfsjTPzJg/rx27JUqDoGXC+rXcb7A1P
	gsMCovqNzLtfmZXWOE+eW7Rout4Qci04Cf3F8TMLQWdxCjgOFwoQPwv5n3i0wCBSW2Qb
	G3zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=jLVGs9nXftXFulnDfueG+502ui5T/PvUVyBuSEfUZjg=;
	b=bA9cTrwZzMWiYT2d7mWiu5v+Fhh7a5eH0GJTdWHBCQASi+iyKn6SFyVr1fXQatK6zN
	jYTq6TfPN8KFfjbf48yvVi9Frn1dWJAbrdi0DFef+N910ZTm64scdPPJW5ox2FVP4Y7l
	MYhTEhIZmMrJV3kNxeUhk4ZK14yK5EQqKqTMguWUYRNnesJ3AJhsP/z3v1PPMRLztUZ6
	i0w5GURofeJ2XwehGZV54EBMuDOyp9cIDuWzzNo2xPkq9W3FCr8u4GP7zw87zPYP/D0w
	RyY4j5fd6j22tky4DyXZia3PJs4e4eLtoWNaT8OvUui1Lrz9kBZxR50at99hGx2m0Qbo
	VPEw==
X-Gm-Message-State: AG10YOQE2AOONQevXvhvSnRmEBsw9E3g1UqF0ubaZwKcGGG60YG8E+ttJT/oI00txp/aVyPFFx0OSbmMckuzv332
X-Received: by 10.50.111.111 with SMTP id ih15mr18207459igb.78.1455622852484; 
	Tue, 16 Feb 2016 03:40:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Tue, 16 Feb 2016 03:40:33 -0800 (PST)
In-Reply-To: <b30acf5cbe7f661029158ab7e80a2ba4@reliableembeddedsystems.com>
References: <b30acf5cbe7f661029158ab7e80a2ba4@reliableembeddedsystems.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Feb 2016 11:40:33 +0000
Message-ID: <CAJTo0LZmM_h3+KcuTeBPmwxGi0RiELLDcghrLhbDo7MEBiadTg@mail.gmail.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	paul.eggleton-VuQAYsv1563Yd54FQh9/CA@public.gmane.org
Subject: Re: jethro 2.0.1/ubi-utils not installed on target
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
X-List-Received-Date: Tue, 16 Feb 2016 11:40:54 -0000
Content-Type: multipart/alternative; boundary=089e0149be340cb904052be19b50

--089e0149be340cb904052be19b50
Content-Type: text/plain; charset=UTF-8

On 16 February 2016 at 09:03, <gmane@reliableembeddedsystems.com> wrote:

> It seems to be insufficient to add mtd-utils to a packagegroup[1] and add
> this to the image for it to be installed in the image.
> The package is being built and I can install it afterwards e.g. opkg
> install mtd-utils-ubifs_1.5.1+git0+9f107132a6-r0_armv7a
>
> Is it intended to be like this?
>

Yes.  As you said the resulting package is called mtd-utils-ubifs, so
that's the name you need to use in the packagegroup.

Ross

--089e0149be340cb904052be19b50
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 16 February 2016 at 09:03,  <span dir=3D"ltr">&lt;<a href=3D"mailto:gman=
e@reliableembeddedsystems.com" target=3D"_blank">gmane@reliableembeddedsyst=
ems.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D"=
:4fs" class=3D"a3s" style=3D"overflow:hidden">It seems to be insufficient t=
o add mtd-utils to a packagegroup[1] and add this to the image for it to be=
 installed in the image.<br>
The package is being built and I can install it afterwards e.g. opkg instal=
l mtd-utils-ubifs_1.5.1+git0+9f107132a6-r0_armv7a<br>
<br>
Is it intended to be like this?<br></div></blockquote></div><br>Yes.=C2=A0 =
As you said the resulting package is called mtd-utils-ubifs, so that&#39;s =
the name you need to use in the packagegroup.</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">Ross</div></div>

--089e0149be340cb904052be19b50--
