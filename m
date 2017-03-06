Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5913BE00AD8; Mon,  6 Mar 2017 04:23:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.180 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D268BE00935
	for <yocto@yoctoproject.org>; Mon,  6 Mar 2017 04:22:57 -0800 (PST)
Received: by mail-qk0-f180.google.com with SMTP id 1so150024258qkl.3
	for <yocto@yoctoproject.org>; Mon, 06 Mar 2017 04:22:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+mx/4fKLgmDRBB3cQXmFoNI1eiTudVtcbVcMBxNFJik=;
	b=xVuZJk0Iukopz3dkmnCWkU40Ivu8w3XxideLgrBD5t+75hM9h9BCO7IVOPQno+2tPb
	2oe74ihkAcpr42VKrJmaDerUiI8jCNrhBdANqlIXBRWnbWUSkthmKI0GV4lNAMnsndj8
	p4l1vJv8UkjqUReFmD3RF1ZOn6E3NXFt5+0NSIH7SED730siVi6n3EYHHyuw6Wrnut8c
	kRbobwN1f5pC8KBK7OPqHC3DAkJZwij3QojlSgOtKJho8JReXYDFxP4ou8dwwN/LEIdF
	S83FLzqrq6zuq7LEd0x/pZ7MreQD6uFh+SKhLs9i+9wS3hZVqGKpVbwXOAljwUoc792M
	HXTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+mx/4fKLgmDRBB3cQXmFoNI1eiTudVtcbVcMBxNFJik=;
	b=OFHytpG+xayK1sBrzCe3qkNNbeITNaUA8DT+VeT+8acBgrlFY5XQLgS6XgMko3siMS
	YiLz2FNU0mj5/l6vOn22lQbl9YngSqYw7kWV5GMFSODNW4TtvC6FVE3hnckzIUhFY8xO
	EAt2wNlrBuHI/x/yEApMygJkXbHwXvyhJz/9bC60byr2vcp9/NlTpWTC85ZEI7pnODkQ
	TL91mFwFTAshCD0Fy1OiOmNkmn2d4D44rBI8js8sjlU2dQFRy9XClt4Uht7NMW8usXYA
	HT+fPTuM9XV97YN0lbspXduk4Dxb4omVP82aWOJs0m0Et5+VQDjzlnyY6We3PnUOtige
	eB8A==
X-Gm-Message-State: AMke39llNOat4JMi5jb+H5gHRAfwJYDLBopktpaoTWoDoOdZiS5f12kGX6e4FVsPZ5Lv/bmY+H7IwB4PFkQvaKZW
X-Received: by 10.200.2.150 with SMTP id p22mr16270102qtg.197.1488802976371;
	Mon, 06 Mar 2017 04:22:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Mon, 6 Mar 2017 04:22:36 -0800 (PST)
In-Reply-To: <f0b0b440-ecd9-50df-9af7-8990b1a04c11@mlbassoc.com>
References: <f0b0b440-ecd9-50df-9af7-8990b1a04c11@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 6 Mar 2017 12:22:36 +0000
Message-ID: <CAJTo0LaCsa=5UVKLYe+Y6OUsjJpHZ9vA_wrcnFT2saoo+92dmA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Files missing from SDK
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
X-List-Received-Date: Mon, 06 Mar 2017 12:23:01 -0000
Content-Type: multipart/alternative; boundary=f4030435c2348c6180054a0ef43b

--f4030435c2348c6180054a0ef43b
Content-Type: text/plain; charset=UTF-8

On 3 March 2017 at 06:39, Gary Thomas <gary@mlbassoc.com> wrote:

> I'm trying to build SDKs for my board, both the native style
> using populate_sdk_ext as well as including the SDK packages
> in my image.  My image includes some extended libraries of
> my own packaging (am335x-pru-support) that I need to get into
> these SDKs.  This package (via debian renaming) turns into
>   libprussdrv-dbg - 2016-08-30-r0.23 - am335x-pru-support version
> 2016-08-30-r0 - Debugging files
>   libprussdrv-dev - 2016-08-30-r0.23 - am335x-pru-support version
> 2016-08-30-r0 - Development files
>   libprussdrv-staticdev - 2016-08-30-r0.23 - am335x-pru-support version
> 2016-08-30-r0 - Development files (St)
>   libprussdrv1 - 2016-08-30-r0.23 - am335x-pru-support version
> 2016-08-30-r0
>
> On my board/image, I can get the files I need but only if I manually
> include libprussdrv-dev
>   # opkg files libprussdrv-dev | sort
>   /usr/bin/pasm
>   /usr/include/pruss/
>   /usr/include/pruss/pruss_intc_mapping.h
>   /usr/include/pruss/prussdrv.h
>   /usr/lib/libprussdrv.so
>
> How can I get these automatically added to my SDK images?  To build the
> board SDK, I'm adding these packages to my image:
>   CORE_IMAGE_EXTRA_INSTALL = "packagegroup-core-sdk
> packagegroup-core-standalone-sdk-target"
> I suppose I could add libprussdrv-dev to that list, but I'd like it a bit
> more automated.
>
> For the native SDK, I tried adding this to local.conf:
>   TOOLCHAIN_HOST_TASK_append = " nativesdk-am335x-pru-support"
> which only got me the 'pasm' tool in my sysroot, but nothing else.
>

If libprussdrv1 is in your image then the -dev package should be pulled
into your SDK images, assuming that you have IMAGE_FEATURES+=dev-pkgs
already.

The same should mean that standalone SDKs (populate_sdk-style) contain the
headers too.  Worse case, TOOLCHAIN_TARGET_TASK_append = "
libprussdrvi-dev".

Ross

--f4030435c2348c6180054a0ef43b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 March 2017 at 06:39, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":1k5" class=3D"a3s aXjCH =
m15a92e729025cf76">I&#39;m trying to build SDKs for my board, both the nati=
ve style<br>
using populate_sdk_ext as well as including the SDK packages<br>
in my image.=C2=A0 My image includes some extended libraries of<br>
my own packaging (am335x-pru-support) that I need to get into<br>
these SDKs.=C2=A0 This package (via debian renaming) turns into<br>
=C2=A0 libprussdrv-dbg - 2016-08-30-r0.23 - am335x-pru-support version 2016=
-08-30-r0 - Debugging files<br>
=C2=A0 libprussdrv-dev - 2016-08-30-r0.23 - am335x-pru-support version 2016=
-08-30-r0 - Development files<br>
=C2=A0 libprussdrv-staticdev - 2016-08-30-r0.23 - am335x-pru-support versio=
n 2016-08-30-r0 - Development files (St)<br>
=C2=A0 libprussdrv1 - 2016-08-30-r0.23 - am335x-pru-support version 2016-08=
-30-r0<br>
<br>
On my board/image, I can get the files I need but only if I manually includ=
e libprussdrv-dev<br>
=C2=A0 # opkg files libprussdrv-dev | sort<br>
=C2=A0 /usr/bin/pasm<br>
=C2=A0 /usr/include/pruss/<br>
=C2=A0 /usr/include/pruss/pruss_intc_<wbr>mapping.h<br>
=C2=A0 /usr/include/pruss/prussdrv.h<br>
=C2=A0 /usr/lib/libprussdrv.so<br>
<br>
How can I get these automatically added to my SDK images?=C2=A0 To build th=
e<br>
board SDK, I&#39;m adding these packages to my image:<br>
=C2=A0 CORE_IMAGE_EXTRA_INSTALL =3D &quot;packagegroup-core-sdk packagegrou=
p-core-standalone-s<wbr>dk-target&quot;<br>
I suppose I could add libprussdrv-dev to that list, but I&#39;d like it a b=
it more automated.<br>
<br>
For the native SDK, I tried adding this to local.conf:<br>
=C2=A0 TOOLCHAIN_HOST_TASK_append =3D &quot; nativesdk-am335x-pru-support&q=
uot;<br>
which only got me the &#39;pasm&#39; tool in my sysroot, but nothing else.<=
/div></blockquote><div><br></div><div>If libprussdrv1 is in your image then=
 the -dev package should be pulled into your SDK images, assuming that you =
have IMAGE_FEATURES+=3Ddev-pkgs already.</div><div><br></div><div>The same =
should mean that standalone SDKs (populate_sdk-style) contain the headers t=
oo.=C2=A0 Worse case, TOOLCHAIN_TARGET_TASK_append =3D &quot; libprussdrvi-=
dev&quot;.</div><div><br></div><div>Ross</div></div></div></div>

--f4030435c2348c6180054a0ef43b--
