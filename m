Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 151C9E011ED
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 13:05:41 -0800 (PST)
Received: by mail-ie0-f170.google.com with SMTP id k10so14771017iea.29
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 13:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:content-transfer-encoding;
	bh=bg0Llu0xG6wobulvFQstF/KB5NYsqti5SdSJUWKjynA=;
	b=Wx4uYeJWn7YG6rv0SG3wr48xEtKcVJfBiNZQ8Ri8rsvUgY1bN+0ZItP++q/MdpmWzH
	XIz2SwBlXBETlNQBRGQomcTdnOHh+Gg0SZq7BkUpkaX8/gpSfmTY+HtlGdfF4lOVFJqb
	5e/3/nWQYUydPND98PwNQ8Zse7kJsMqAOTWLFJllChNn5YkY/ckZBSM/wZ/oTjH5cjTn
	RcHiLQ0sUgxle+QptZMyw4Hak/UBLV5AtcOCllAwp9Yj10f87GsW/79yj8lxGMRFNsBu
	KJmnnnZD79QXNcvnZ43Yw7DZWHsfZTrOMg3Os7H1ppbwsCL1gm/AE1kSaZDSwAhCZKst
	omoQ==
X-Received: by 10.42.39.80 with SMTP id g16mr2100460ice.26.1358975140504; Wed,
	23 Jan 2013 13:05:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.18.169 with HTTP; Wed, 23 Jan 2013 13:05:10 -0800 (PST)
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C3714A8@GV1HQPEX03.babgsetc.pvt>
References: <5BEFD653CA8A8D47AA194ED30AB5968C3714A8@GV1HQPEX03.babgsetc.pvt>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 23 Jan 2013 13:05:10 -0800
Message-ID: <CAMKF1spHcoN88Qwx0_f43N9LbcsJeR6VNykLf4RXUo5c8CzvvQ@mail.gmail.com>
To: Patrick Turley <PatrickTurley@gamestop.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Inconsistency in the SDK
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 Jan 2013 21:05:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 23, 2013 at 8:05 AM, Patrick Turley
<PatrickTurley@gamestop.com> wrote:
> Here's our machine in local.conf:
>
>     MACHINE =3D "dm8148-mpu"
>
> Naturally, then, we see a directly like this under tmp/work:
>
>     dm8148_mpu-poky-linux-gnueabi

This will contain builds of machine specific packages

>
> Also, under tmp/sysroots, we see these two:
>
>     dm8148-mpu

This is machine sysroot which is not same as SDK sysroot

>     dm8148-mpu-tcbootstrap

intermediate sysroot needed for bootstrapping the build

>
> Finally, when I install the SDK, I see the following under sysroots:

how did you generate and install the SDK ?

>
>     dm8148_mpu-poky-linux-gnueabi
>     x86_64-pokysdk-linux

I am using 1.3/danny and I dont see this problem the first sysroot has
MACHINE_ARCH and not MACHINE_NAME
as first part of target triplet. The second sysroot is for nativesdk
packages which is quite OK.

so It would be interested to see what your local.conf and machine.conf
looks like.


>
> However, if I ask the cross-compiler the path to its default sysroot, I s=
ee this:
>
>     $ cd /opt/poky/1.3/sysroots/x86_64-pokysdk-linux
>     $ cd usr/bin/armv7a-vfp-neon-poky-linux-gnueabi
>     $ ./arm-poky-linux-gnueabi-gcc -print-sysroot
>     /opt/poky/1.3/sysroots/armv7a-vfp-neon-poky-linux-gnueabi
>
> There is no such directory. That is, the default sysroot for the SDK does=
n't exist.
>
> Now, if I go back and look in tmp/work, I realize that I see *both* of th=
ese:
>
>     dm8148_mpu-poky-linux-gnueabi
>     armv7a-vfp-neon-poky-linux-gnueabi
>
> There are a number of work directories under both.
>
> It seems to me there are these possibilities:
>
>
> 1) There are at least two different (and disagreeing) methods to compute =
the architecture "tuple," and different pieces of the system are choosing d=
ifferent methods. These different methods usually agree, but sometimes they=
 don't. Thus, when they *do* agree, it's "luck."
>
>
> 2) These strings *should* agree, but something is missing from our machin=
e definition that causes them to disagree (we weren't using our own machine=
 definition until recently). In that case, the machine definition code shou=
ld change such that it's not *possible* for these strings to disagree. Also=
, I'd like to know what we missed, so we can fix it.
>
>
> 3) These strings, though similar, actually *mean* different things and ar=
e *both* correct. The only problem is that the build process for the tool c=
hain chooses the wrong one when defining the default sysroot path.
>
>
> In any case, I can fix the immediate problem with a symbolic link, but th=
at's not a long-term solution.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

