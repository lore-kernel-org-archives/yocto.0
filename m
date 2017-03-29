Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F60AE00655; Wed, 29 Mar 2017 02:27:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.169 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3422FE004E5
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 02:27:32 -0700 (PDT)
Received: by mail-qk0-f169.google.com with SMTP id f11so7619093qkb.0
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 02:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8lFvTiIWqY33WoHjN6KkOUCePgjEDYYvhZ7IbwrlTIo=;
	b=Jwbn48z6kdhxJ6lmDDy1qYqccMqtSf22tpem9UbZ788P4iObncyjpyQFv52ABWdZxr
	Z+4xvCS9LudNAYDJcVgDOBv9eEgEepXZecEsQTgcIljK640+jua40iy7JykMbwMrUfGV
	D9G7d+Km3xlQ9iIQuxuHQDkQnpMhcZ0bdMvsSVVGBIEnjKVtJ3mZEX0P5wIyfm+8dvWn
	aEiqAFVPZpIn7upVkRw/9XYq9XtzJ9NC/F1WSyERIC0XAEN97KNiiT8l3P76abrf8cRd
	GN7bCCc6K/4u53ooYOA/mR+cIQkhF7CsqyG/agK51+g/drw6tnptvlDVXKh0CZRY85pn
	DfCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8lFvTiIWqY33WoHjN6KkOUCePgjEDYYvhZ7IbwrlTIo=;
	b=MuWMz0frll1js5/+wJf2Bum9+MC8ghW4O/wJ+44DeOI7zm/ZdOjNAHvfA94R2N7ZQP
	u/6KAMrzn+qq2O0fY+gAW/xtxNMl97xNosPG+yTtj7u2RnENxU/AO7YEjhylobZMkfc8
	JtnLuZHwCwX8cuIcq8teGWt8lCdt5R5yS1WOSoOk31Ea5V3c2icij1OBTxyviOXiGVbF
	Fl7iGZP1zvUHqPHhgPgEbj9P/ShebTYbpX+pbjb1xUkSLgANPAf6aWmr06FqtG/z5n9e
	7dQzOrKGuYCK5Yl5mKXjH9U9OwD+CBmZrM/W/SOd5QhruK2+WLhKBfkO2mCgvrHk796T
	8Jag==
X-Gm-Message-State: AFeK/H3GSKUUBn3dTs/cQzsA7KxL1p75p/EoP8UdaTq10oT/DnE2V3ONIRKYVJWX5IUICYeE8/ExlQKwUdPNBivH
X-Received: by 10.55.108.195 with SMTP id h186mr33343795qkc.36.1490779652203; 
	Wed, 29 Mar 2017 02:27:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Wed, 29 Mar 2017 02:27:11 -0700 (PDT)
In-Reply-To: <7c1531b4731e4f4fbed57af401b0f4d4@dettmbx01.intra.ifm>
References: <7c1531b4731e4f4fbed57af401b0f4d4@dettmbx01.intra.ifm>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 29 Mar 2017 10:27:11 +0100
Message-ID: <CAJTo0LZRRy6qmAa3UOD4+8oDwJjHKOwV2rpNz4=DQh5TXDMmFA@mail.gmail.com>
To: "Jovic, Vladimir" <vladimir.jovic@ifm.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to include a static library in SDK?
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
X-List-Received-Date: Wed, 29 Mar 2017 09:27:34 -0000
Content-Type: multipart/alternative; boundary=001a114fe79a9bbae6054bdb2fb1

--001a114fe79a9bbae6054bdb2fb1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 29 March 2017 at 09:37, Jovic, Vladimir <vladimir.jovic@ifm.com> wrote:

> I also tried adding this to local.conf:
>
> EXTRA_IMAGE_FEATURES +=3D =E2=80=9Cstaticdev-pkgs=E2=80=9D
>
> but that also didn=E2=80=99t install the library.
>
>
That's for regular images, to control the SDK you want SDKIMAGE_FEATURES.
SDKIMAGE_FEATURES_append =3D " staticdev-pkgs" in the image recipe will get
all static libraries into the SDK.

Ross

--001a114fe79a9bbae6054bdb2fb1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 29 March 2017 at 09:37, Jovic, Vladimir <span dir=3D"ltr">&lt;<a href=3D=
"mailto:vladimir.jovic@ifm.com" target=3D"_blank">vladimir.jovic@ifm.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNormal=
"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">I also tried adding this to local.conf:<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">EXTRA_IMAGE_FEATURES +=3D =E2=80=9Cstatic=
dev-pkgs=E2=80=9D<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">but that also didn=E2=80=99t install the =
library.<u></u><u></u></span></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>That&#39;s for regular im=
ages, to control the SDK you want SDKIMAGE_FEATURES.=C2=A0 SDKIMAGE_FEATURE=
S_append =3D &quot; staticdev-pkgs&quot; in the image recipe will get all s=
tatic libraries into the SDK.</div><div class=3D"gmail_extra"><br></div><di=
v class=3D"gmail_extra">Ross</div></div>

--001a114fe79a9bbae6054bdb2fb1--
