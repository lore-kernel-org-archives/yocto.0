Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEA59E00D96; Wed, 27 Apr 2016 00:50:04 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C5DFE00D78
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 00:49:40 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id 190so33366078iow.1
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 00:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JhX/LoWg8tlBkzXXqANdKUJvxXTK93tnliZ2CKFBE3s=;
	b=bxQ96kvaoIC9PvQsoYxpvEx1g9Vi+zPe+lS0R3scmbEmolBKJzmdoVhKXUoNaNAIEy
	gHizA4MqJuF4k367O2rxmUpopK1Zrxhf6vTKAnkoHqxyqJn4nsZEmkhZAivyrK0LM63R
	TQOCORv5GT0aVSxdkhIvSWTu6ZYP+dnmBQC3Ht5A2L14849t6eu1bYIF0698SxCXKR69
	0kHcvqrJ0/NLG5sD7+oL6Q4eCxfUxUfTwKebP61iySK+2pQBwwHRX2t//sZ6WzyuF8KF
	TRyM3nnyVB5tU+HwAmNMdklhZmoCAZxJo6Y1Zp5qKLqwBtLby4cXeZ69VVm7YDJ5aJQf
	1blA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JhX/LoWg8tlBkzXXqANdKUJvxXTK93tnliZ2CKFBE3s=;
	b=K196Fbxa3OWKB9fL/UGmby6F658ctibHF7Z3HY14YV57NrNpIEXb5cUaNU7LekkMYD
	o4GXSGiPgXnlz9LrBzvIJTlT21vO6pbsiB2AbPBukMBcwjRPnx2xnCkbPNBffF3QtiNX
	csL2FKSz6IV8Ciw0cWpXP2+PxOlGZ9AUvf8hUH35jH6IlOpwCyvIgugo2dNpJeW+Pee9
	1anojzyyL8GHlmHb3a0pmZmVBGTRPdS0MNssChXNt+BbSU4xTmdN9cFdsWzwMsKy0lGR
	9nScY5nNFg9U7cgJAHY0fcXrO8T6mftdb96P9ysraLKtUJToAFmXUCs/fiIABm6qFGmS
	YVJQ==
X-Gm-Message-State: AOPr4FW68C1XPBKzZslK3ACTgJjmbIJCLdI7WhSj3jMrO/T0hVqb4l/uM+A8NgalYNDKWmX8SAIuLK3N3sTrN1g/
X-Received: by 10.107.179.136 with SMTP id c130mr8218369iof.99.1461743380372; 
	Wed, 27 Apr 2016 00:49:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Wed, 27 Apr 2016 00:49:21 -0700 (PDT)
In-Reply-To: <11696073.T7gOO91bRW@peggleto-mobl.ger.corp.intel.com>
References: <571E1646.5060809@mlbassoc.com>
	<11696073.T7gOO91bRW@peggleto-mobl.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Apr 2016 08:49:21 +0100
Message-ID: <CAJTo0LZmQ_Rc+qA47+nA9hsSTvZhm+3b+7gZv+F_EmUdwAgRNA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: Strange dependency
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
X-List-Received-Date: Wed, 27 Apr 2016 07:50:04 -0000
Content-Type: multipart/alternative; boundary=001a1148578cf0b58e053172a609

--001a1148578cf0b58e053172a609
Content-Type: text/plain; charset=UTF-8

On 27 April 2016 at 03:30, Paul Eggleton <paul.eggleton@linux.intel.com>
wrote:

> Looking at meta/recipes-devtools/qemu/qemu.inc it is explicitly looking at
> DISTRO_FEATURES for the native class. That seems wrong to me as well, but I
> would be surprised if it were the only place we were referring to
> DISTRO_FEATURES in the native context (especially implicitly - consider the
> defaults for PACKAGECONFIG in various recipes where we initialise it based
> on
> DISTRO_FEATURES and don't provide a special default for native). I guess
> it's
> something that someone will need to go through and clean up at some point.
>

Ah, that was a bit of cleanup I failed to do.  qemu.inc has a
PACKAGECONFIG_class-native to hardcode the options and not respect distro
features, but there were some dependencies that are picked based on
DISTRO_FEATURES.  This was a workaround for the previous odd linking, so
can be removed now.

Ross

--001a1148578cf0b58e053172a609
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 27 April 2016 at 03:30, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.=
intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=
=3D":4pw" class=3D"a3s aXjCH">Looking at meta/recipes-devtools/qemu/qemu.in=
c it is explicitly looking at<br>
DISTRO_FEATURES for the native class. That seems wrong to me as well, but I=
<br>
would be surprised if it were the only place we were referring to<br>
DISTRO_FEATURES in the native context (especially implicitly - consider the=
<br>
defaults for PACKAGECONFIG in various recipes where we initialise it based =
on<br>
DISTRO_FEATURES and don&#39;t provide a special default for native). I gues=
s it&#39;s<br>
something that someone will need to go through and clean up at some point.<=
br></div></blockquote></div><br>Ah, that was a bit of cleanup I failed to d=
o. =C2=A0qemu.inc has a PACKAGECONFIG_class-native to hardcode the options =
and not respect distro features, but there were some dependencies that are =
picked based on DISTRO_FEATURES.=C2=A0 This was a workaround for the previo=
us odd linking, so can be removed now.</div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra">Ross</div></div>

--001a1148578cf0b58e053172a609--
