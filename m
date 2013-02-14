Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7DF7E003BC
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 11:39:48 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 14 Feb 2013 11:39:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,666,1355126400"; d="scan'208";a="202483220"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by AZSMGA002.ch.intel.com with ESMTP; 14 Feb 2013 11:39:25 -0800
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 14 Feb 2013 11:39:04 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.227]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.163]) with mapi id
	14.01.0355.002; Thu, 14 Feb 2013 11:39:05 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Atanas Gegov <atanas.gegov.oss@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 0/3][eclipse-poky] Small cleanup patch set
Thread-Index: AQHOCQZ+8M1LSph8lEaObP92gaQCN5h5w8Dg
Date: Thu, 14 Feb 2013 19:39:04 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C68C3C634@ORSMSX101.amr.corp.intel.com>
References: <cover.1360661504.git.atanas.gegov@bmw-carit.de>
In-Reply-To: <cover.1360661504.git.atanas.gegov@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH 0/3][eclipse-poky] Small cleanup patch set
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
X-List-Received-Date: Thu, 14 Feb 2013 19:39:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged to eclipse-poky master.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Atanas Gegov
Sent: Tuesday, February 12, 2013 1:50 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH 0/3][eclipse-poky] Small cleanup patch set

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi,

this patch series correct some minor mistakes in our code. It does not add =
new functionality.

Cheers,
Atanas

Atanas Gegov (3):
  Unified JRE_CONTAINER setting for all plugins
  Unified Bundle-Version setting for all plugins
  Fixed a typo in manifest

 plugins/org.yocto.bc.ui/.classpath                 |    2 +-
 plugins/org.yocto.doc.user/.classpath              |    2 +-
 plugins/org.yocto.doc.user/META-INF/MANIFEST.MF    |    4 ++--
 .../META-INF/MANIFEST.MF                           |    2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

--
1.7.5.4

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

