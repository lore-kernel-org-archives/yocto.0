Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5543FE01351
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 15:37:13 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so2096906pbb.35
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2012 15:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=DvGtCztR/JIYUy4Yq7sRYEUCcNsUoh29nzZwzqou0ng=;
	b=bm6ItlKCa1tkTb/Hxla8vCVJBUvJbLI4bDBKVwrFb4fkp3flP8je9tRAMQutQOSs1Q
	SwgbblbRPNDdhZQYkDc4sk+CHMFx4zwl6DA5ZYY8VnhQdibgU6r0l2xD1vW4wYS3tPtC
	A8u4Y2rXB0Lrzegu6//XpmeJak6UPhZAxrieGGLLzDXmbbgc6P/IZ/iBh/SH/98EEPk5
	zKAgQTFt9NqEYLG0verR1QREMCsg8F3NWW31mvyueBJGhh/7dwL4w5UjKPOr13m7ds4/
	h4LDw0VruIvXR/VhtoPzZUEhb6hE/P1ZMV6kT6EUX8pLb1O4GGf9dagWmpJMwsiLaRHp
	QqVA==
Received: by 10.68.190.168 with SMTP id gr8mr54933381pbc.157.1343860633143;
	Wed, 01 Aug 2012 15:37:13 -0700 (PDT)
Received: from [10.11.81.126] (corp.force10networks.com. [64.186.164.204])
	by mx.google.com with ESMTPS id of1sm3410199pbb.15.2012.08.01.15.37.11
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 01 Aug 2012 15:37:12 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.0 \(1485\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <C8B6E7F6-81CE-4DC0-A928-3D021DF1B8AA@gmail.com>
Date: Wed, 1 Aug 2012 15:37:10 -0700
Message-Id: <A278F391-405E-4AE7-A49D-E614A7E1D26C@gmail.com>
References: <C8B6E7F6-81CE-4DC0-A928-3D021DF1B8AA@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
X-Mailer: Apple Mail (2.1485)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: GLIBCTARGETOS ?= "linux-gnueabi" for PowerPC 440 targets
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
X-List-Received-Date: Wed, 01 Aug 2012 22:37:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Aug 1, 2012, at 9:18 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:

> Hi,
>       Perhaps the reason none of my root file system binaries are not =
working or running is because there is no
>=20
> GLIBCTARGETOS ?=3D "linux-gnueabi"
>=20
> in my machine/virtex5.conf or local.conf file?=20

you don't need to set it. it should be automatically computed based on =
libc and arch
your problem seems more like console related. Probably you don't have =
console params
set correctly or securetty does not know about your console device.



>=20
> I couldn't find any documentation on this, and if this is indeed the =
correct variable name for the current release.=20
>=20
> Could someone please tell me what variables I should set, in order to =
generate a linux-gnueabi binary and cross compiler toolchain, for =
powerpc?
>=20
> Elvis Dowson
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


