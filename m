Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DDBFE00343
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 09:30:02 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 23 Aug 2013 09:29:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,942,1367996400"; d="scan'208";a="385542194"
Received: from timevans-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.122.235])
	by fmsmga001.fm.intel.com with ESMTP; 23 Aug 2013 09:29:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?M=E5rten?= Wikman <marten.wikman@novia.fi>
Date: Fri, 23 Aug 2013 17:29:24 +0100
Message-ID: <6178745.c8iZbFkBou@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAC0tyxMk05OLYkVWErMHAmEJnYBc8bgQMnX_zm6u3Td_POrfCA@mail.gmail.com>
References: <CAC0tyxMk05OLYkVWErMHAmEJnYBc8bgQMnX_zm6u3Td_POrfCA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: linux-firmware: add only rtl8192cufw.bin from rtlwifi
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
X-List-Received-Date: Fri, 23 Aug 2013 16:30:04 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi M=E5rten,

On Friday 23 August 2013 15:24:43 M=E5rten Wikman wrote:
> I want to install rtl8192cufw.bin from rtlwifi from linux-firmware bu=
t
> if I add linux-firmware to IMAGE_INSTALL_append it will of course
> install whole linux-firmware to my rootfs and bloats my rootfs image.=

>=20
> What is the correct way to install rtl8192cufw.bin automatically to m=
y
> rootfs?

If you have a look at the linux-firmware recipe (meta/recipes-kernel/li=
nux-
firmware/linux-firmware_git.bb) you'll see that it splits out this firm=
ware blob=20
to a separate package called "linux-firmware-rtl8192cu", so add this to=
 your=20
IMAGE_INSTALL instead of "linux-firmware" (which will pull in all firmw=
are) and=20
you should be ready to go.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

