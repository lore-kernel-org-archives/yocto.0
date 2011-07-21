Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by mx1.pokylinux.org (Postfix) with ESMTP id A300C4C8009D
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2011 16:23:51 -0500 (CDT)
Received: by wwg11 with SMTP id 11so6455567wwg.5
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2011 14:23:50 -0700 (PDT)
Received: by 10.227.168.207 with SMTP id v15mr622977wby.50.1311283430483;
	Thu, 21 Jul 2011 14:23:50 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id o19sm1368065wbh.43.2011.07.21.14.23.48
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 21 Jul 2011 14:23:49 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1244.3)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4E285718.10302@intel.com>
Date: Thu, 21 Jul 2011 23:23:47 +0200
Message-Id: <3EB8EECC-5EC0-49C0-AADF-A13ECE1F5A11@dominion.thruhere.net>
References: <97A98E06-5F1B-49D3-BE3F-D70A5CB1AAF6@kernel.crashing.org>
	<4E2829B1.7080506@intel.com>
	<CAEsOVNfranCtB=CHOjR6fjBibFEd8_9GRENR90K0Y40MbdCkRQ@mail.gmail.com>
	<4E285718.10302@intel.com>
To: Scott Garman <scott.a.garman@intel.com>
X-Mailer: Apple Mail (2.1244.3)
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: best cfg for building all of yocto?
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
X-List-Received-Date: Thu, 21 Jul 2011 21:23:52 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 21 jul. 2011, om 18:43 heeft Scott Garman het volgende geschreven:

> On 07/21/2011 09:32 AM, McClintock Matthew-B29882 wrote:
>> On Thu, Jul 21, 2011 at 8:29 AM, Scott =
Garman<scott.a.garman@intel.com>  wrote:
>>> bitbake world should build all of the available packages that aren't
>>> explicitly excluded due to machine incompatibilities. It doesn't =
generate a
>>> final image though, just all of the output packages.
>>=20
>> Is there an easy way to remove a specific package from being built
>> with running bitbake world? There are unmet dependencies:
>>=20
>> NOTE: Resolving any missing task queue dependencies
>> ERROR: Nothing PROVIDES 'libmad'
>> ERROR: Required build target 'libomxil' has no buildable providers.
>> Missing or unbuildable dependency chain was: ['libomxil', 'libmad']
>=20
> This happens because conf/distro/include/default-distrovars.inc =
excludes some recipes which are known to use commercial licenses:
>=20
> COMMERCIAL_LICENSE ?=3D "lame gst-fluendo-mp3 libmad mpeg2dec ffmpeg =
qmmp"


COMMERCIAL_LICENSE is a mis-nomber for a lot of them, =
NEED_TO_GIVE_MONEY_TO_MPEGLA is closer to the truth. What I'm trying to =
say is that the recipes in question don't have a commercial license, but =
can be subject to royalties in some cases. It could be that  your =
silicon vendor already pays the royalty for you for each chip they sell, =
so it is helpfull to dig into this before tweaking COMMERCIAL_LICENSE.=

