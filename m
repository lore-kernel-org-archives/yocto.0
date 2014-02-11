Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f43.google.com (mail-pb0-f43.google.com
	[209.85.160.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10092E007B1
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2014 22:06:16 -0800 (PST)
Received: by mail-pb0-f43.google.com with SMTP id md12so7285174pbc.30
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2014 22:06:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=gMrcjvo83afhL1Afkz8JA7qcofyZMpoSeQNBmH7LdzE=;
	b=XkNhyKkhsivvNiYC/XxvlFlgcJrRV4gyhmqRaQPFk1Gee8RVLmzV6gLW+lYZ7B9IeN
	fXK7/IIn8USIKsloxlueR5DfCrS0pdjTlXkxJg2PVztmwTwIzeCHWsk6OCvkTmBbpHsy
	SquH2sZqNIsxwjiI3QV8UCD71kpk8Hh1rHObVeG25L+YrRCtYqR3vHgr9B4E0FD+CV2D
	QrWVhjlxKjC+SPKnTt2a0r+ghl5Eo88cj5U+F4olvCAFy8J+qdqA0dkUy1Yyrje1ifE1
	shL1V/OaZyXNeTil/KjDOyDkcvDLngNHlAaJ5ign6H2EsabiUwcEIQAA01uEhrZ8nyjd
	OXdg==
X-Received: by 10.68.226.200 with SMTP id ru8mr42512437pbc.77.1392098776533;
	Mon, 10 Feb 2014 22:06:16 -0800 (PST)
Received: from [192.168.0.33] (99-57-140-30.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.30]) by mx.google.com with ESMTPSA id
	bz4sm48927052pbb.12.2014.02.10.22.06.15 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 10 Feb 2014 22:06:15 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.1 \(1827\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <15820240.JO6syelmOi@shillig-arch>
Date: Mon, 10 Feb 2014 22:06:14 -0800
Message-Id: <3748A347-6CF3-40EA-BE35-CF24300F95A7@gmail.com>
References: <15820240.JO6syelmOi@shillig-arch>
To: George Hilliard <gh403@msstate.edu>
X-Mailer: Apple Mail (2.1827)
Cc: yocto@yoctoproject.org
Subject: Re: SCons Build Issue
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
X-List-Received-Date: Tue, 11 Feb 2014 06:06:20 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


On Jan 30, 2014, at 5:32 PM, George Hilliard <gh403@msstate.edu> wrote:

> Hello,
> I have a build issue.  I'm trying to write a Bitbake recipe for =
jsoncpp, which uses SConstruct.  My .bb file is at =
https://gist.github.com/thirtythreeforty/8725055.  When I run it, =
Bitbake complains,
>=20
> | DEBUG: Executing shell function do_compile
> | Traceback (most recent call last):
> |   File =
"/home/user/msu-community-bsp/build_mx6/tmp/sysroots/x86_64-linux/usr/bin/=
scons", line 187, in <module>
> |     import SCons.Script
> | ImportError: No module named SCons.Script
> | ERROR: scons build execution failed.
> | ERROR: Function failed: do_compile (see =
/home/user/msu-community-bsp/build_mx6/tmp/work/armv7a-vfp-neon-poky-linux=
-gnueabi/jsoncpp/0.5.0-r0/temp/log.do_compile.8396 for further =
information)
>=20
> What gives?  How can I modify the recipe (or my setup) to build this =
infernal package?

it seems SCONS_LIB_DIR need to set to point to sys root as well since =
scons itself is coming from native sys root.
for tests export SCONS_LIB_DIR=3D${STAGING_LIBDIR_NATIVE}/scons/=85. =
where ever its installed might help

>=20
> Thanks in advance!
> George Hilliard
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


