Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB452E013A6
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 06:29:10 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Oct 2012 06:28:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,587,1344236400"; d="scan'208";a="205779158"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga001.jf.intel.com with ESMTP; 15 Oct 2012 06:29:09 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 15 Oct 2012 06:29:09 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.223]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.180]) with mapi id
	14.01.0355.002; Mon, 15 Oct 2012 06:29:09 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Andrea Galbusera <gizero@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] documentation: kernel-concepts: fixed typo
Thread-Index: AQHNqXJ+4MGL7EDVpk6TVm2PwCCxi5e6XxSg
Date: Mon, 15 Oct 2012 13:29:08 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A7F157@ORSMSX101.amr.corp.intel.com>
References: <1350153696-31856-1-git-send-email-gizero@gmail.com>
In-Reply-To: <1350153696-31856-1-git-send-email-gizero@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [PATCH] documentation: kernel-concepts: fixed typo
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
X-List-Received-Date: Mon, 15 Oct 2012 13:29:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Fix is applied and pushed to yocto-docs master branch.

Thanks for the catch.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Andrea Galbusera
Sent: Saturday, October 13, 2012 11:42 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH] documentation: kernel-concepts: fixed typo


Signed-off-by: Andrea Galbusera <gizero@gmail.com>
---
 documentation/kernel-manual/kernel-concepts.xml |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/kernel-manual/kernel-concepts.xml b/documentatio=
n/kernel-manual/kernel-concepts.xml
index 8b9e71f..157443d 100644
--- a/documentation/kernel-manual/kernel-concepts.xml
+++ b/documentation/kernel-manual/kernel-concepts.xml
@@ -320,7 +320,7 @@
             Conceptually, configuration of a Yocto Project kernel occurs s=
imilarly to that needed for any
             Linux kernel.
             The build process for a Yocto Project kernel uses a <filename>=
.config</filename> file, which=20
-            is created through the Linux Kernel Coinfiguration (LKC) tool.
+            is created through the Linux Kernel Configuration (LKC) tool.
             You can directly set various configurations in the=20
             <filename>.config</filename> file by using the <filename>menuc=
onfig</filename>=20
             tool as built by BitBake.
--=20
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

