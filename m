Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id A43714C800D7
	for <yocto@yoctoproject.org>; Sat, 18 Jun 2011 10:09:24 -0500 (CDT)
Received: by wyb40 with SMTP id 40so3619670wyb.35
	for <yocto@yoctoproject.org>; Sat, 18 Jun 2011 08:09:23 -0700 (PDT)
Received: by 10.217.5.130 with SMTP id w2mr267273wes.61.1308409763422;
	Sat, 18 Jun 2011 08:09:23 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id n20sm1941822weq.39.2011.06.18.08.09.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 18 Jun 2011 08:09:22 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4DFCBE0F.80305@linux.intel.com>
Date: Sat, 18 Jun 2011 17:09:20 +0200
Message-Id: <F09F96AD-A7B2-4EF6-90E5-23FDFCA1EE80@dominion.thruhere.net>
References: <cover.1308357152.git.dvhart@linux.intel.com>
	<f66f8d260f0d9ca587e6dc55cba45a6e0ce224a6.1308357152.git.dvhart@linux.intel.com>
	<824516E3-FB4B-47E5-9172-E685149CAD49@dominion.thruhere.net>
	<4DFCBE0F.80305@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/3] beagleboard: xserver-kdrive xorg.conf installation
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
X-List-Received-Date: Sat, 18 Jun 2011 15:09:25 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 18 jun 2011, om 17:02 heeft Darren Hart het volgende geschreven:

>=20
>=20
> On 06/18/2011 01:05 AM, Koen Kooi wrote:
>>=20
>> Op 18 jun 2011, om 02:35 heeft Darren Hart het volgende geschreven:
>>=20
>>> Append xserver-kdrive to allow for BSP specific xorg.conf files. =
This also
>>> appears to drag in a runtime dependency on libhal, so add that to =
the
>>> bbappend's RDEPENDS_${PN} as well.
>>=20
>> Since when does kdrive use xorg.conf?
>=20
> This is my first use of xserver-kdrive. I was experimenting with
> xorg.conf changes to resolve some USB input issues I was having... it
> seemed to work. Should it be using something else?

AFAIK kdrive doesn't read xorg.conf, one of its design principles :) =
That's we have all those x*-common scripts that start Xfbdev with a =
gazillion commandline options.=

