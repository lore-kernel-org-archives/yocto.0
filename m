Return-Path: <david.c.stewart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 059E1E0071D
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 09:28:50 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Jan 2012 09:28:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="97076061"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 11 Jan 2012 09:28:03 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 11 Jan 2012 09:28:03 -0800
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi;
	Wed, 11 Jan 2012 09:28:03 -0800
From: "Stewart, David C" <david.c.stewart@intel.com>
To: James Abernathy <jfabernathy@gmail.com>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>
Date: Wed, 11 Jan 2012 09:28:01 -0800
Thread-Topic: [yocto] [Announcement] Cedartrail BSP available.
Thread-Index: AczQhaO7FlNIfpYUSlizCi06w9AG2gAAEI/A
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B26223025E9@orsmsx501.amr.corp.intel.com>
References: <CAPhnLPD7ivPE7xJSzMui7cRKoCWzEWMcOhjiZpwXrmjxTC6+CA@mail.gmail.com>
	<CANFv2E=2SkrV5MH4ytvL=x3CmU8qCn6ERPEF1LD7y=BK5f1mpw@mail.gmail.com>
In-Reply-To: <CANFv2E=2SkrV5MH4ytvL=x3CmU8qCn6ERPEF1LD7y=BK5f1mpw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [Announcement] Cedartrail BSP available.
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
X-List-Received-Date: Wed, 11 Jan 2012 17:28:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of James Abernathy
>Sent: Wednesday, January 11, 2012 9:22 AM
>
>What is the purpose of building the provided images with time limited kern=
el?

Intel at least have chosen to provide bootable images for their boards with=
 a time-limited kernel to encourage people to do a build of their own for a=
n actual product, rather than just pass through the bootable image in the B=
SP.

>Can I assume that a standard build of the unchanged meta-cedartrail BSP wi=
ll
>use the non-tlk kernel?

That is supposed to be the way it works. I assume the Intel guys doing the =
BSPs set things up that way.

>Jim A
>On Wed, Dec 28, 2011 at 6:02 PM, Flanagan, Elizabeth
><elizabeth.flanagan@intel.com> wrote:
>-----BEGIN PGP SIGNED MESSAGE-----
>Hash: SHA1
>
>All,
>
>We are pleased to announce the release of Intel-based board support
>packages built from Yocto 1.1 "Edison" for the Intel(r) Atom(tm) Processor
>N2000 and D2000 Series-based Platform (CEDAR TRAIL).
>
>This BSP are available for download at:
>
>http://www.yoctoproject.org/download/bsp/intel%C2%AE-
>atom%E2%84%A2-processor-n2000-and-d2000-series-based-platform-cedar-
>trail
>
>Please note that the provided images were built using the meta-tlk
>layer (time limited kernel). Build instructions to build non-tlk
>images are provided in the meta-intel/meta-cedartrail/README for these
>machines.
>
>META-CEDARTRAIL 1.1 RELEASE
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Version: 1.1 "Edison"
>md5sum: 777150ce79d5d1cc916410f7d17741e1
>Location: http://www.yoctoproject.org/download/bsp/intel%C2%AE-
>atom%E2%84%A2-processor-n2000-and-d2000-series-based-platform-cedar-
>trail
>
>- --
>Elizabeth Flanagan
>Yocto Project
>Build and Release
>
>-----BEGIN PGP SIGNATURE-----
>Version: GnuPG v1.4.10 (GNU/Linux)
>
>iQEcBAEBAgAGBQJO+5kmAAoJEEyK+E/MEkQPpqkH/iqYOrfxPd1fEcTbw3LXY+
>re
>1H8zOglldc5yPhkhX2PmqkfI28OJwMOiUc3oooYRGeEpGg59SxQSqSImVwf3nm
>gn
>wK933o5FC37M+1fIZsySNNf6Maj5IAExKN1Wu1V56Onf/1wq77kJ/NkvPq62ig5
>n
>lZzKA2C1Red/4NuKKIuTEWj/3e5365XhBkbJHxaRECrIw3fD2bBIj49C3tVAkIUX
>+ijIO56UR/qgHfRulUowtarAfCP/xADOnLnOZ9yvv7JEsaekrMReYZlGqEeF/TL+
>M6v3b/27OwgF2ohCN3Ib7YnaFTR5g9fXwa//YMLuKm6quL+hafgzxJ2OCOxlo08
>=3D
>=3DeKdg
>-----END PGP SIGNATURE-----
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


