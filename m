Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97483E006CC
	for <yocto@yoctoproject.org>; Fri, 17 May 2013 07:08:50 -0700 (PDT)
Received: by mail-ve0-f171.google.com with SMTP id m1so4071645ves.30
	for <yocto@yoctoproject.org>; Fri, 17 May 2013 07:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:sender:from:date:x-google-sender-auth
	:message-id:subject:to:content-type;
	bh=qYXeNv+wSWoweIa3UxcO4xkK5/o7RAMtSFA4m1E47M0=;
	b=Zdp/X59GfCFnuQGXTkCAbv5rwghADSH4qU4ikhW/71Lyb3/3PODh+enlrUVV+7I/eR
	Dt56K8VuEudpXVauTFEESXZe25tO7KYnBz0cinbdV0iRPZSJxRzVriqPThAy+66sciUl
	rKHPbYaik4JwPa1mjhY9fq7yXEruhCSqeL9v+72EBFZ1/8M7+IxeyWdJ3zm/unOdoo7j
	quvokbRwP+8cEVVyYMC7Wt4F9KtlSYs+bPV0Hh/qR5ppntLuEmaaZr3kKxnxjoh5o4qo
	hzqcamkHEy4slM3Ec4tAD4kcursW+Y/D6rcCZDdbrUEL7sS3G1nDglc24nqwc7EzklKq
	HfTA==
X-Received: by 10.52.32.37 with SMTP id f5mr25459444vdi.28.1368799729728; Fri,
	17 May 2013 07:08:49 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.48.5 with HTTP; Fri, 17 May 2013 07:08:28 -0700 (PDT)
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 17 May 2013 15:08:28 +0100
X-Google-Sender-Auth: PHv0nHDQNQOpWBC_3hAO5H9M9IU
Message-ID: <CANyK_8dWZ=SviB++3PzcT9dM3OLtHQwPruzazznzNrg9iJ_USw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Unclear on meta-toolchain
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
X-List-Received-Date: Fri, 17 May 2013 14:08:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm looking to build an image along with a cross-compiler SDK so I've
been looking through the documentation for this. I've been left with
two things I'm unclear on.

1) The difference between meta-toolchain and meta-toolchain-sdk. I've
looked at the recipes and meta-toolchain-sdk is provided by a
meta-toolchain-gmae recipe, a google search says GMAE is the "GNOME
Mobile & Embedded Initiative (GMAE) software stack". Unless I've
missed something this isn't in the documentation and isn't obvious
from the bitbake output. I assume that what I want is just
meta-toolchain but it may be work clarifying this.

2) Building meta-toolchain for multiple targets. I can build images
and package feeds for multiple targets by setting MACHINE in
local.conf, doing a build, changing MACHINE and then doing another
build. This leaves images and packages for both targets in the
tmp/deploy/{images,ipk} directories and looks sensible. If I build
meta-toolchain then change MACHINE and build meta-toolchain again, the
packages in tmp/deploy/ipk/x86_64-nativesdk and the archive in
tmp/deploy/sdk appear to be overwritten. I think this is especially an
issue for different variants of the same platform, I'm looking at
beagleboard, raspberrypi and qemuarm, all of which are ARM
architectures. I could try naming the SDK archive by machine but
there'd be a lot of overlap in the contents of the SDKs, it'd be
really great to be able to generate a common SDK archive and then
archives of just the machine-specific bits. Has anyone else tried
producing SDKs for multiple target machines and if so do you have any
thoughts on this?

Thanks,

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

