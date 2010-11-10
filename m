Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 97B474C81001
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 06:20:51 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Nov 2010 04:20:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,177,1288594800"; d="scan'208";a="572072558"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 10 Nov 2010 04:20:50 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 10 Nov 2010 20:20:49 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 10 Nov 2010 20:20:49 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 10 Nov 2010 20:20:48 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Kumar Gala <galak@kernel.crashing.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 10 Nov 2010 20:20:46 +0800
Thread-Topic: [yocto] problem with fetching?
Thread-Index: AcuAomDvaooarSzsSOKw0/Vbb0dy0QALvrXA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D2271119D@shsmsx502.ccr.corp.intel.com>
References: <BA703559-6EAC-43D9-BB84-E95DDCB1ED62@kernel.crashing.org>
In-Reply-To: <BA703559-6EAC-43D9-BB84-E95DDCB1ED62@kernel.crashing.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: problem with fetching?
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
X-List-Received-Date: Wed, 10 Nov 2010 12:20:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Kumar Gala
>Sent: Wednesday, November 10, 2010 2:42 PM
>
>I'm trying to build the MPC8135E RDB and have the following setup in conf/=
local.conf:
>
># Uncomment and set to allow bitbake to execute multiple tasks at once.
># For a quadcore, BB_NUMBER_THREADS =3D "4", PARALLEL_MAKE =3D "-j 4" woul=
d
># be appropriate.
>BB_NUMBER_THREADS =3D "16"
># Also, make can be passed flags so it run parallel threads e.g.:
>PARALLEL_MAKE =3D "-j 16"
>
># The machine to target
>MACHINE ?=3D "mpc8315e-rdb"
>
>....
>
>$ bitbake  poky-image-minimal
>
>I see errors likes:
>
>Waiting for 1 active tasks to finish:
>1: linux-libc-headers-2.6.34-r1 do_fetch (pid 6952)
>NOTE: package binutils-cross-2.20.1-r3: task do_unpack: Succeeded
>NOTE: linux-libc-headers-2.6.34:
>http://kernel.org/pub/linux/kernel/v2.6/linux-2.6.34.tar.bz2 has no entry =
in
>conf/checksums.ini, not checking URI
>NOTE: package linux-libc-headers-2.6.34-r1: task do_fetch: Succeeded
>ERROR:
>'virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-devtools/g=
nu-config/gn
>u-config_20080123.bb' failed
>
>---
>
>if I re-run it gets further.  ideas on what's going on?
>

Could you post a full log about the error? We have a plan to improve the er=
ror message
but for now it's normally messed with other build outputs in a parallel bui=
ld. You can=20
perhaps grep those lines with "ERROR:".

Normally there're two possible reasons for that:
	- poor parallel make support by the package, or
	- some missing dependency problem

Above issues are usually worked around by re-run it, but it'd always good t=
o figure out
the exact failure. :-)

Thanks
Kevin

