Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB093E012F3
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 00:25:06 -0700 (PDT)
Received: by wwf22 with SMTP id 22so1445419wwf.5
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 00:25:05 -0700 (PDT)
Received: by 10.216.138.13 with SMTP id z13mr2605608wei.38.1320045905749;
	Mon, 31 Oct 2011 00:25:05 -0700 (PDT)
Received: from [172.20.1.32] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235]) by mx.google.com with ESMTPS id
	ei16sm30736532wbb.21.2011.10.31.00.25.03
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 31 Oct 2011 00:25:04 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <CAFNE1kT5F9DXDBVsYwduvCRJ8GxOxc8u9h_FVjuTpO9+4y8VKg@mail.gmail.com>
Date: Mon, 31 Oct 2011 08:25:02 +0100
Message-Id: <344E7A20-CC4F-4871-94B8-149CDB566A59@dominion.thruhere.net>
References: <CAFNE1kTTFYhhqK_nopj4MG7VNzWKriZTbGJYAZt-shTinw_ROA@mail.gmail.com>
	<4EAA34EB.5060205@windriver.com>
	<CAFNE1kT5F9DXDBVsYwduvCRJ8GxOxc8u9h_FVjuTpO9+4y8VKg@mail.gmail.com>
To: Brian Park <bsp2020@gmail.com>
X-Mailer: Apple Mail (2.1251.1)
Cc: yocto@yoctoproject.org
Subject: Re: Building for pandaboard
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
X-List-Received-Date: Mon, 31 Oct 2011 07:25:08 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


Op 28 okt. 2011, om 19:06 heeft Brian Park het volgende geschreven:

> Thanks for the info.=20
> As I'm very new to Yocto, I'd not know how to create local.conf to =
build for panda, even knowing that the kernel will support pandaboard. =
How would I go about configuring Yocto to build for panda? If you can =
point me to some documentation showing how to do it, I'd appreciate it.
>=20
> I'm just learning yocto, in my spare time, and just went through the =
quick start guide to build for x86qemu image and skimmed through the =
development manual. But I'm not too sure how to go about configuring for =
pandaboard. I figured, I can build for beagle board and then modify =
config to make it work for panda. However, I'm having build issue when =
trying to build for beagle board.
>=20
> If there is already an existing pandaboard config, I'd like to try it.

The best pandaboard support is present in the meta-ti layer, to use it =
just follow the instructions at =
http://git.angstrom-distribution.org/cgi-bin/cgit.cgi/meta-texasinstrument=
s/tree/README

regards,

Koen=

