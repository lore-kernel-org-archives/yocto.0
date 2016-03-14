Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 342C1E00D54; Mon, 14 Mar 2016 05:50:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BEBFE00D4A
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 05:50:09 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id n190so220841156iof.0
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 05:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=uawe4Q9/fx1rhavzeqcOWJcjuaCVNZyxY5AGvezDuFA=;
	b=JZJth8c2+se2dsLH/kUZKy/R9UbH8b8qQfcgn/uQcFPi9F8Hu2YEBoDvFUrRCiHkEX
	Dj38KMLbmihOcze60kPvzq6gFSysc5xIKHo6N0V8Fakzaqv2he1Z1cg64XwSLgf3m7cR
	CuqPjKxr8bZU76KfUhcncC6X0Ks3dnZ9TR2WEUgVi2anO1apJltvT/ZYDyXr5AQJNqtw
	sDSbXnChDfmLk28OfXumPGOeu2FEOMuXq3Vp7VXfHtvGI2ltamr5OUA7zCpnu8kJsR3d
	YjObTkNjPPGQOxioLBF07MIaIldWekKZjVaejULlTaqwzqGeqq6RDCjTfu7qSN45Vajf
	0H8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=uawe4Q9/fx1rhavzeqcOWJcjuaCVNZyxY5AGvezDuFA=;
	b=hCHrwOx5eKAUOjxlXTAiXx3BQH3nDldq65DCLB6q/m4Kyime5LaiqPVaABi9WNtFQB
	ztw/8Ph3uidW4BthSi0w+p7orDnNc9jIvQMUXLX9Dnu+U6gYU2f90uqn0fwEqbw4bvwJ
	M8eTm8MvkWIlN4R0c9kip6viaBYQzSN5EGdSGtBRpcjBE9tWI2FP6r2oO5MJi4PNI4ld
	IYYjBpWKyCGkHd8PI6Ylr8LB4U/SIIQTD/azr/qIipE+YE6U/tIB8H6QrRspyy0RPd98
	6oK3F5W7GySVFEypkELN6H+IrAqa9d12VKbThVYRWp6GTnqK1EjIMyApgYW0mcdrDjvj
	7JYg==
X-Gm-Message-State: AD7BkJI1pCvXU9CYag0k4pm+3Gmhvn2KfNV52HYIC+xhgOQZktuRNlEofU/gpHaH/zF+o1B0yZrWM+PvMbOVBpDr
X-Received: by 10.107.16.19 with SMTP id y19mr21698474ioi.148.1457959809030;
	Mon, 14 Mar 2016 05:50:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 14 Mar 2016 05:49:49 -0700 (PDT)
In-Reply-To: <56E62B99.1030608@mlbassoc.com>
References: <56E62B99.1030608@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 14 Mar 2016 12:49:49 +0000
Message-ID: <CAJTo0LbpdNfED8HiJwFb1u7twEk9HkNtKrZRmB+afo2C-_igXg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Mon, 14 Mar 2016 12:50:14 -0000
Content-Type: multipart/alternative; boundary=001a113fd1ea83a72b052e01b8bc

--001a113fd1ea83a72b052e01b8bc
Content-Type: text/plain; charset=UTF-8

On 14 March 2016 at 03:10, Gary Thomas <gary@mlbassoc.com> wrote:

> I just started a new build and saw a message that's new to me:
>   NOTE: Fetching uninative binary shim from
> http://downloads.yoctoproject.org/releases/uninative/0.95/x86_64-nativesdk-libc.tar.bz2;md5sum=4b6fb2106c2f18b8f9c8ac67e1cf9e57
>
> * What is this about?
>

You're using the poky distribution which for build performance uses
uninative (from 477b8fb), which means that instead of building native
dependencies per-host-distribution there's a static libc which is built
against to enable native binaries to be host-agnostic.

Poky has enabled this for performance, but others may wish to do the same
for other reasons: for example, you want to publish a sstate feed that
works for all host distributions without having to build for all of them.

* Can this file be served by my local mirror?
>

It can (see meta/conf/distro/include/yocto-uninative.inc), or you can
uninherit uninative, or use your own DISTRO instead of poky.

Ross

--001a113fd1ea83a72b052e01b8bc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 March 2016 at 03:10, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-styl=
e:solid;padding-left:1ex"><div id=3D":301" class=3D"" style=3D"overflow:hid=
den">I just started a new build and saw a message that&#39;s new to me:<br>
=C2=A0 NOTE: Fetching uninative binary shim from <a href=3D"http://download=
s.yoctoproject.org/releases/uninative/0.95/x86_64-nativesdk-libc.tar.bz2;md=
5sum=3D4b6fb2106c2f18b8f9c8ac67e1cf9e57" rel=3D"noreferrer" target=3D"_blan=
k">http://downloads.yoctoproject.org/releases/uninative/0.95/x86_64-natives=
dk-libc.tar.bz2;md5sum=3D4b6fb2106c2f18b8f9c8ac67e1cf9e57</a><br>
<br>
* What is this about?<br></div></blockquote><div><br></div><div>You&#39;re =
using the poky distribution which for build performance uses uninative (fro=
m 477b8fb), which means that instead of building native dependencies per-ho=
st-distribution there&#39;s a static libc which is built against to enable =
native binaries to be host-agnostic.</div><div><br></div><div>Poky has enab=
led this for performance, but others may wish to do the same for other reas=
ons: for example, you want to publish a sstate feed that works for all host=
 distributions without having to build for all of them.</div><div><br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;=
padding-left:1ex"><div id=3D":301" class=3D"" style=3D"overflow:hidden">
* Can this file be served by my local mirror?</div></blockquote></div><br>I=
t can (see meta/conf/distro/include/yocto-uninative.inc), or you can uninhe=
rit uninative, or use your own DISTRO instead of poky.</div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113fd1ea83a72b052e01b8bc--
