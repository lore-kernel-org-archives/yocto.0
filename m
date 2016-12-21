Return-Path: <raltherr@google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 450AAE00571; Wed, 21 Dec 2016 09:49:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
Received: from mail-yb0-f175.google.com (mail-yb0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE840E0034A
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 09:49:22 -0800 (PST)
Received: by mail-yb0-f175.google.com with SMTP id v132so75103372yba.0
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 09:49:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=q5gecdWOIBLV7WOLnYiuzSGLFlbijssF/TM3kro3NPE=;
	b=SoEeKV98bFDhoeKyoA9yatX8VqRtNiWJxhcHuGBsr/3MxFIJtqYLTx58eAjf1t0KPa
	1HCIFdO1M4qLoCPWjlWIpjzgNgLc5v+o9/F7FBsfzmgu2DY64HgOLmvxT8LQQwWkjwCM
	zXoyQHwNausNQidf8S5jsi3Sc/+ttYkUR5bKFO5rtcFPQp66iu14V42cEw3XBo7YKma9
	m2S7b9gjIxWMx1trwKAO/yKcZCzIHK2GpDz5u13HeVks4mJJRDO0CsJrOMCQh4UJDIxG
	nlS3wGKXjSsdy553OAA9aZRCF2ahCVqmP0QHP342RTaJQrX++CM+xJX460pQGHgePVxZ
	WVhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=q5gecdWOIBLV7WOLnYiuzSGLFlbijssF/TM3kro3NPE=;
	b=oNFAypqtDrkbgfe1TH1AgQ2YUdTF8QdTUWtaCy9AySzPnegoYk8YO15W38MAOQj7vK
	r63y4RITwklOhO+5HP/6hsaxTkjF2UPn7Lj76+pEPesKVfHBWrcfnhviQSBILSViKta5
	kIQQlTmXjCnQAFc/F0qsr0etkQUD2YCihFpOmU771wRIZoWf1VYpu8P0DbWxNQLM+rv1
	uvgciQfOAXU618P+wwhZjTXVCXZIUTNcjvkRsgcfhTjipXBaV6O7Ktu81C5MveH+DSqk
	e1z+f4yCrMWNg2qijdJsvssNXOqJnoeYQWFpMQlzf0xaM24nAjRRp+UxrG+tqIrvlQW4
	1GjA==
X-Gm-Message-State: AIkVDXK4IRez8eVX0xtwosKkfzSbF9UtEiYWR7yfljaRNWFU/PpUx8o/Hl3rZvJkBzyRXKIT/1eoirmq7GAqWwNK
X-Received: by 10.37.174.131 with SMTP id b3mr3433085ybj.146.1482342561625;
	Wed, 21 Dec 2016 09:49:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.15.69 with HTTP; Wed, 21 Dec 2016 09:49:21 -0800 (PST)
In-Reply-To: <7411EC580D08984EBA0A1730211182191AA8E7C3@kihagwinex01.int.kistler.com>
References: <7411EC580D08984EBA0A1730211182191AA8E7A2@kihagwinex01.int.kistler.com>
	<CAPLgG=kHYWHWzYPiaGdW7avoxzjQy1WnJkMnRDXaXsDH3ODAaA@mail.gmail.com>
	<7411EC580D08984EBA0A1730211182191AA8E7C3@kihagwinex01.int.kistler.com>
From: Rick Altherr <raltherr@google.com>
Date: Wed, 21 Dec 2016 09:49:21 -0800
Message-ID: <CAPLgG==_xUCSGDEitJNj_OY-wvOUB50_eagrdW+58n4aXreX_w@mail.gmail.com>
To: Hamish Guthrie <Hamish.Guthrie@kistler.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fitImage and initramfs
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
X-List-Received-Date: Wed, 21 Dec 2016 17:49:28 -0000
Content-Type: multipart/alternative; boundary=f403045dbae8d2a6ef05442ec588

--f403045dbae8d2a6ef05442ec588
Content-Type: text/plain; charset=UTF-8

What happens if you use core-image-minimal-initramfs for INITRAMFS_IMAGE?
I think the main problem is that you are telling Yocto to include the full
rootfs image as an initramfs instead of the reduced, special-purpose
initramfs image.  Are you trying to boot entirely from a ramdisk or do you
intend to store root somewhere else (NAND, etc)?

On Wed, Dec 21, 2016 at 9:38 AM, Hamish Guthrie <Hamish.Guthrie@kistler.com>
wrote:

> Hi Rick,
>
> >> Have you tried manually extracting the .xz it is having trouble with?
>
> Yes I have tried this, in fact I made some changes to the script where the
> copy and extract is done and I can verify that in fact the copy of the
> cpio.xz image is done correctly to the usr directory in the kernel
> directory, I also added a line to make an additional copy of it, and in
> fact the original is being extracted correctly to the usr directory, and it
> is correctly extracted, but for some strange reason I get the Unexpected
> end of input error. I have manually extracted the image and the result of
> that extraction is identical both in size and content to the one which
> claims to have an error.
>
> The core-image-minimal is purely for experimental purposes, what I am
> actually trying to do is to create a fit image for our swupdate image so
> that I can have a single fit image including the kernel, device tree and
> initramfs for swupdate, so I can include it in a single UBI volume.
>
> Hamish -
>

--f403045dbae8d2a6ef05442ec588
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">What happens if you use core-image-minimal-initramfs for I=
NITRAMFS_IMAGE?=C2=A0 I think the main problem is that you are telling Yoct=
o to include the full rootfs image as an initramfs instead of the reduced, =
special-purpose initramfs image.=C2=A0 Are you trying to boot entirely from=
 a ramdisk or do you intend to store root somewhere else (NAND, etc)?</div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Dec 21, 2=
016 at 9:38 AM, Hamish Guthrie <span dir=3D"ltr">&lt;<a href=3D"mailto:Hami=
sh.Guthrie@kistler.com" target=3D"_blank">Hamish.Guthrie@kistler.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Rick,<br>
<span class=3D""><br>
&gt;&gt; Have you tried manually extracting the .xz it is having trouble wi=
th?<br>
<br>
</span>Yes I have tried this, in fact I made some changes to the script whe=
re the copy and extract is done and I can verify that in fact the copy of t=
he cpio.xz image is done correctly to the usr directory in the kernel direc=
tory, I also added a line to make an additional copy of it, and in fact the=
 original is being extracted correctly to the usr directory, and it is corr=
ectly extracted, but for some strange reason I get the Unexpected end of in=
put error. I have manually extracted the image and the result of that extra=
ction is identical both in size and content to the one which claims to have=
 an error.<br>
<br>
The core-image-minimal is purely for experimental purposes, what I am actua=
lly trying to do is to create a fit image for our swupdate image so that I =
can have a single fit image including the kernel, device tree and initramfs=
 for swupdate, so I can include it in a single UBI volume.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Hamish -<br>
</font></span></blockquote></div><br></div>

--f403045dbae8d2a6ef05442ec588--
