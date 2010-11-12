Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 547324C80BCF
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 09:53:57 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Nov 2010 07:53:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,188,1288594800"; d="scan'208";a="572955971"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 12 Nov 2010 07:53:56 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 12 Nov 2010 23:53:55 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 12 Nov 2010 23:53:54 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 12 Nov 2010 23:53:54 +0800
From: "Yu, Ke" <ke.yu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 12 Nov 2010 23:53:52 +0800
Thread-Topic: [PATCH 5/8] xf86-input-vmmouse: upgrade from 12.6.9 to 12.6.10
Thread-Index: AcuCfflWOOlConTGQ0u9z3K+XcrXOQAA8o5w
Message-ID: <33AB447FBD802F4E932063B962385B353030AE4D@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: [PATCH 5/8] xf86-input-vmmouse: upgrade from 12.6.9 to 12.6.10
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
X-List-Received-Date: Fri, 12 Nov 2010 15:53:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 ...use_12.6.9.bb =3D> xf86-input-vmmouse_12.6.10.bb} |    0
 1 files changed, 0 insertions(+), 0 deletions(-)
 rename meta/recipes-graphics/xorg-driver/{xf86-input-vmmouse_12.6.9.bb =3D=
> xf86-input-vmmouse_12.6.10.bb} (100%)

diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_12.6.9.bb=
 b/meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_12.6.10.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_12.6.9.bb
rename to meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_12.6.10.bb
--=20
1.7.0.4


