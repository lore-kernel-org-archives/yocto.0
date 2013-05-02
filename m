Return-Path: <twoerner@gmail.com>
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E66D3E014FE
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 08:12:13 -0700 (PDT)
Received: by mail-wg0-f41.google.com with SMTP id y10so696202wgg.0
	for <yocto@yoctoproject.org>; Thu, 02 May 2013 08:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=Zf6lEk8uWV5qD6h8Gt9Ld1PdZcxfuaxf2kugZCmEKuc=;
	b=aCyVrCZItefbJUSTX8fjDoFG3Yych5Aqo9NJ7tvTUGdSqqiOmwQeZ4oUWOLyAF2hHM
	VPqE9h8lnaR3Dez7IYnsQVrQnb5Ue6fU1DyFLZpalaKELq6b9pW/NsAhgjw6HvIbUzgK
	AoNooni+UAzK2FZcMmtTFJABMRlLSQo0rh+afVH5VEEiKRQYqSc7crA9PYwK+5iNt2Zk
	TcZ2negujRH/jCRU7dEpBL8HSFt3pyl/NCxX1M4Zl58wLV2aGnUFdM4far7zC+nytWkx
	2Q2bVOv658qIxvAeB0LpoieE3ytOod12+eJPeF77RT+Xg4kTlKsT6pfBAyPbOor1mahn
	uFBw==
MIME-Version: 1.0
X-Received: by 10.180.73.173 with SMTP id m13mr8089282wiv.27.1367507532243;
	Thu, 02 May 2013 08:12:12 -0700 (PDT)
Received: by 10.194.5.132 with HTTP; Thu, 2 May 2013 08:12:12 -0700 (PDT)
In-Reply-To: <CANyK_8fVfKbTHq3X1hdSWOFdwsz4cZLaaispiwC_hJJbimM1ig@mail.gmail.com>
References: <CANyK_8c2tTqktkHFuR+vzAGbsb3AKyFow1T4rU_aEnb8pdQnuw@mail.gmail.com>
	<CAK18fxFMKykJQnuMqrU6eLkD0E_Ht+Vyo2tmayukvNU_eyV6aw@mail.gmail.com>
	<CANyK_8fVfKbTHq3X1hdSWOFdwsz4cZLaaispiwC_hJJbimM1ig@mail.gmail.com>
Date: Thu, 2 May 2013 11:12:12 -0400
Message-ID: <CAHUNapRr4y47FGqp90NZwKwwE0PGSj6A2vN1nRujqjBSL9oOZw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Zenity is in meta-gnome
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
X-List-Received-Date: Thu, 02 May 2013 15:12:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, May 2, 2013 at 7:27 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
> What would be useful is a first boot task which resizes the rootfs to
> fill the SD card it's on without prompts. Should be easy to do with a
> postinst script and fdisk.

In my opinion, what would be even better:

- the build system is instructed to not bother making an image, its
job is to produce {tar|rpm|deb|ipk}s
- a separate tool (which will probably need to be run as root) is used
to actually format/create the SD device (using, say, sfdisk for
automation) this way the last partition can be specified as "use the
rest of the disk"
- this tool unpacks the requested/required {tar|rpm|deb|ipk}s onto the
SD device (some of which can come from outside the Yocto build system,
e.g. from using the SDK); this device already has its
formatting/partitions ready
- this tool could also handle setting up serial numbers, IP addresses, etc
- this tools also sets up the bootloader (if required)

In this way any arbitrary partitioning could be used (1 root partition
and 1 swap? /home separate? arbitrary home-brew partitions/names?),
and the user is free to use whatever formatting for these partitions
they want (they don't have to be decided at build time and the choice
of partition types doesn't have to be restricted to whatever the build
tool is able to use). Weird /etc/fstab tricks aren't required on the
build machine (as some layers require). You have a separate tool that
can be used by the "production" staff to pump out several SD/CF/etc
images at a time (using a USB hub for example). Any arbitrary
bootloader can be used, again not restricted to what the build tool
can support. And the first-boot time isn't 10x longer than any
subsequent boots :-)

In my opinion, up until now, the primary focus of The Yocto Project
has always been on the front-end: setting up the cross-development
environment and cross-compiling software for your target; don't get me
wrong, this is all fantastic and necessary. But there doesn't seem to
be much in the way of back-end support (i.e. the production
environment).

