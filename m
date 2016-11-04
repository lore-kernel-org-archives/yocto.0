Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7A57E00B62; Fri,  4 Nov 2016 13:26:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13FF7E007C2
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2016 13:26:11 -0700 (PDT)
Received: by mail-qk0-f170.google.com with SMTP id q130so112244754qke.1
	for <yocto@yoctoproject.org>; Fri, 04 Nov 2016 13:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=w0UsvN/gwj2dtO6EG0P7KCfZGCYKBIS0Svbz0Yv54pE=;
	b=ktqmMrBUrHxJ7oAeN5R4TBYrNHFOJ1BKhsEHmZHGdzpBhEqF+hnk9eit7P/hO+RVw4
	YiQR+f9HieyurP76ZRvW/90Wni4um75b9JMTpV3BaCqYGiP9MH3SfSGxAuIWWgKvcRdj
	AdeYFW3E7Yo2q5d13kyuyGG9TU6XBF5H7P685luYB+KTfaZGtBiNzvplcdfDLB8s0xz6
	O1KwCMAC2Iu7OwYI9a7i2M8+LvCOpbcxakG3M4vAhfsPEiFVfYyx3EACz6BOfMlQ5wYg
	dsfPRiL9ANc3u8smMPw1mQt/7o3sZHPvw8yoFv28/Po4ZgxuL7Xz0HlqPEnIJI10gERG
	2leQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=w0UsvN/gwj2dtO6EG0P7KCfZGCYKBIS0Svbz0Yv54pE=;
	b=eYnjpuFpYPJmafJOFz2o1gZQlhfL0tun9j7RbNcMpIQv5Rd7SiQ/KRfHqNSPwv/LVN
	ZFvN7MpUyf4I6x8jwjWRbCB0zopyT1HUHt9EaJIRwJvqwS+Xo8CMHAaILBIQ4XA8Vqdk
	VaspTbGChQA+61XU85aH9zFcuvMDFM98wfyPMceth+QqnjnI7d4Zb5sLDv+ZKV9eNbjY
	Vq11h/rOeNnX1uzuWj2DbLYwTOVJ1fHhkRwXdoquOyZp/MmBrmlr0N6vYECFULokYOI8
	lNWeKlUXhi/aUwJvDYntZ+iB2e7BHwXbtKzxjb+0w+nWsRI2FiFNWD430K7uamqJzaez
	o41g==
X-Gm-Message-State: ABUngvdIVAFbf6Apg2SbeudQaEEWug9g06CkpnYFDr3hnQF7fdcA4D2//ORhFxlRBqVUnbqxutkZaWVLiqdj3Lte
X-Received: by 10.55.31.157 with SMTP id n29mr14600951qkh.221.1478291171204;
	Fri, 04 Nov 2016 13:26:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.208 with HTTP; Fri, 4 Nov 2016 13:25:50 -0700 (PDT)
In-Reply-To: <BE188BBB-0307-494A-9564-BCDF589A0550@fuzziesquirrel.com>
References: <BE188BBB-0307-494A-9564-BCDF589A0550@fuzziesquirrel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 4 Nov 2016 20:25:50 +0000
Message-ID: <CAJTo0LafT=LwfCcRgcxjxQGHSkb=a6U_3+rDj97w_naOdMUXOw@mail.gmail.com>
To: Brad Bishop <bradleyb@fuzziesquirrel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help with out of (python) tree python modules in SDK
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
X-List-Received-Date: Fri, 04 Nov 2016 20:26:14 -0000
Content-Type: multipart/alternative; boundary=001a1147f22822818a05407f7c03

--001a1147f22822818a05407f7c03
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4 November 2016 at 18:55, Brad Bishop <bradleyb@fuzziesquirrel.com>
wrote:

> I am on Krogoth.  I have an autotools inheriting recipe.  The configure
> script runs a python script (in repo), that imports an out-of-python-dist=
ro
> module.
>
> I can=E2=80=99t seem to wrap my head around the correct way to express th=
is in
> terms of dependencies, such that when I build with an SDK, I can import
> this module.
>

Put this in your image recipe that the SDK is generated from.

TOOLCHAIN_HOST_TASK_append =3D " nativesdk-python-foomodule"

TOOLCHAIN_HOST_TASK is the variable that list everything to be installed in
the SDK that is for the *host*, not the *target*.

Ross

--001a1147f22822818a05407f7c03
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 4 November 2016 at 18:55, Brad Bishop <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:bradleyb@fuzziesquirrel.com" target=3D"_blank">bradleyb@fuzziesquirre=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span style=
=3D"font-family:Menlo-Regular;font-size:11px">I am on Krogoth.=C2=A0 I have=
 an autotools inheriting recipe.=C2=A0 The configure script runs a python s=
cript (in repo), that imports an out-of-python-distro module.</span><br sty=
le=3D"font-family:Menlo-Regular;font-size:11px"><br style=3D"font-family:Me=
nlo-Regular;font-size:11px"><span style=3D"font-family:Menlo-Regular;font-s=
ize:11px">I can=E2=80=99t seem to wrap my head around the correct way to ex=
press this in terms of dependencies, such that when I build with an SDK, I =
can import this module.</span><br style=3D"font-family:Menlo-Regular;font-s=
ize:11px"></blockquote></div><div class=3D"gmail_extra"><br></div>Put this =
in your image recipe that the SDK is generated from.</div><div class=3D"gma=
il_extra"><br>TOOLCHAIN_HOST_TASK_append =3D &quot; nativesdk-python-foomod=
ule&quot;</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ext=
ra">TOOLCHAIN_HOST_TASK is the variable that list everything to be installe=
d in the SDK that is for the *host*, not the *target*.</div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1147f22822818a05407f7c03--
