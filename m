Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 182CF4C80050
	for <yocto@yoctoproject.org>; Fri, 24 Dec 2010 01:10:06 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Dec 2010 23:10:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,222,1291622400"; d="scan'208";a="586884397"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 23 Dec 2010 23:10:05 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 24 Dec 2010 15:09:38 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 24 Dec 2010 15:09:37 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 24 Dec 2010 15:09:37 +0800
Thread-Topic: building output when inherit different bbclasses
Thread-Index: AcujOYYw1Oa46lZeSZaQZ9CLtPuj+w==
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F1D26D870C2@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: building output when inherit different bbclasses
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
X-List-Received-Date: Fri, 24 Dec 2010 07:10:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi guys,

The following list might help someone who wants to figure out what's the di=
fference between the various buildings when inheriting different bbclass(es=
).=20

The normal(default) situation for poky is:

   build =3D "build system"
   host =3D target =3D "set by MACHINE config"

cross.bbclass:=20

   build =3D host =3D "build system"
   target =3D "set by MACHINE config"

crosssdk.bbclass:=20

   build =3D host =3D "build system"
   target =3D "set by SDKMACHINE config"

native.bbclass:

   build =3D host =3D target =3D "build system"

nativesdk.bbclass:

   build =3D "build system"
   host =3D target =3D "set by SDKMACHINE config"

cross-canadian.bbclass:

   build =3D "build system"
   host =3D "set by SDKMACHINE config"
   target =3D "set by MACHINE config"

