Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1CADE00D65; Mon, 14 Mar 2016 08:59:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F2DBE00D5E
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 08:58:51 -0700 (PDT)
Received: by mail-ig0-f177.google.com with SMTP id nk17so42906080igb.1
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 08:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Q4o8ae/KSzhw+KhFAovng3JRIg2YJkVDGhtwI045T6k=;
	b=nyuIvIBlroTOQUyHrMWjaVqW86gNHLErvvp65S36iMGJuDVkKid4xfOLS3KEn3LN11
	Pndd154pZFJVwv2CIiQ2bngyo4WcQznq5fAr4O+Wh2i1A9b4rCLepbDP1BSza89BfAWp
	IgVKvQGyL7D6toJG8/I7wTBPl3orfjFD02iuFoPQ9saNAG/WE2QxdZ093RW+H0mzl78e
	+Ea7szLT32lLN/KoHiQOBmwLHbp+V3CHakRPbpK6AtkGuM9MxJeCFEiMV8/kJGtvDfWg
	n3SDmKkETiRJ/Lt1RTPafLEXhjh/SXATK9QIBkLWivG0MG06iVLYZNA5o2uhFcPFHsr+
	9ETw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Q4o8ae/KSzhw+KhFAovng3JRIg2YJkVDGhtwI045T6k=;
	b=HCoaZSmmg6EuWOdydPKut/q7TU+0/sdGiEm+hsBu+9LzxuVQ1evoJx1iJB5Y51JYws
	V++La1oRGxLln3vP9g92YeA2kqkjAMFkK9RWNZjEyIuFWPTZOWEzuutPqnlm6pn028GO
	XBbxvQzDFAPCVg5jnt37ZeZ2hwXxBTeYXb00DSoqdviLGpmF+ElX4mF8FrxJpE1swCvf
	ugT+OP21FUjSBqfzg20z58hHyWTUUsFAhSSS5WyljkaJcBzhTTebebS2KyYyxKeZKA+F
	aYMGS73Z4dfFdNZYi1ZEA3R6Zr95qrY3OUWOEgMmwi1VCjfWoC9m83s/2kDVL4guSoQb
	hNWg==
X-Gm-Message-State: AD7BkJLqPpivptiNrMIgrN/K/1wWxEuaSWzb8LSlbdlkPwnclXQazHVZUnG6rbte7RxvLEZUTUtf2ZFhF336Lw==
X-Received: by 10.50.150.1 with SMTP id ue1mr18916608igb.87.1457971130911;
	Mon, 14 Mar 2016 08:58:50 -0700 (PDT)
MIME-Version: 1.0
References: <56E62B99.1030608@mlbassoc.com>
	<CAJTo0LbpdNfED8HiJwFb1u7twEk9HkNtKrZRmB+afo2C-_igXg@mail.gmail.com>
In-Reply-To: <CAJTo0LbpdNfED8HiJwFb1u7twEk9HkNtKrZRmB+afo2C-_igXg@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Mon, 14 Mar 2016 15:58:41 +0000
Message-ID: <CABcZANn3uKqHa--0+tHjgW1gyS9YkVyfq9itEGey+VrBSxfikw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>, Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: New message
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
X-List-Received-Date: Mon, 14 Mar 2016 15:59:07 -0000
Content-Type: multipart/alternative; boundary=001a11c30f0a59d25e052e045bbf

--001a11c30f0a59d25e052e045bbf
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 14, 2016 at 5:50 AM Burton, Ross <ross.burton@intel.com> wrote:

> On 14 March 2016 at 03:10, Gary Thomas <gary@mlbassoc.com> wrote:
>
>> I just started a new build and saw a message that's new to me:
>>   NOTE: Fetching uninative binary shim from
>> http://downloads.yoctoproject.org/releases/uninative/0.95/x86_64-nativesdk-libc.tar.bz2;md5sum=4b6fb2106c2f18b8f9c8ac67e1cf9e57
>>
>> * What is this about?
>>
>
> You're using the poky distribution which for build performance uses
> uninative (from 477b8fb), which means that instead of building native
> dependencies per-host-distribution there's a static libc which is built
> against to enable native binaries to be host-agnostic.
>

To clarify, I believe 'static' here is meant to mean fixed, not a static
library :)

--001a11c30f0a59d25e052e045bbf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon=
, Mar 14, 2016 at 5:50 AM Burton, Ross &lt;<a href=3D"mailto:ross.burton@in=
tel.com">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_=
quote">On 14 March 2016 at 03:10, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-le=
ft-style:solid;padding-left:1ex"><div style=3D"overflow:hidden">I just star=
ted a new build and saw a message that&#39;s new to me:<br>
=C2=A0 NOTE: Fetching uninative binary shim from <a href=3D"http://download=
s.yoctoproject.org/releases/uninative/0.95/x86_64-nativesdk-libc.tar.bz2;md=
5sum=3D4b6fb2106c2f18b8f9c8ac67e1cf9e57" rel=3D"noreferrer" target=3D"_blan=
k">http://downloads.yoctoproject.org/releases/uninative/0.95/x86_64-natives=
dk-libc.tar.bz2;md5sum=3D4b6fb2106c2f18b8f9c8ac67e1cf9e57</a><br>
<br>
* What is this about?<br></div></blockquote><div><br></div></div></div></di=
v><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><d=
iv>You&#39;re using the poky distribution which for build performance uses =
uninative (from 477b8fb), which means that instead of building native depen=
dencies per-host-distribution there&#39;s a static libc which is built agai=
nst to enable native binaries to be host-agnostic.</div></div></div></div><=
/blockquote><div><br></div><div>To clarify, I believe &#39;static&#39; here=
 is meant to mean fixed, not a static library :)=C2=A0</div></div></div>

--001a11c30f0a59d25e052e045bbf--
