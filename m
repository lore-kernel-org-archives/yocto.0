Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0FDBE01363
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2012 07:01:40 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Apr 2012 07:01:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="154167106"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 16 Apr 2012 07:01:40 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 16 Apr 2012 07:01:39 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.140]) by
	ORSMSX153.amr.corp.intel.com ([10.22.226.247]) with mapi id
	14.01.0355.002; Mon, 16 Apr 2012 07:01:39 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Bob Cochran <yocto@mindchasers.com>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] Yocto Project Dev Manual - bad reference in
	dev-manual-common-tasks.xml
Thread-Index: AQHNG9lxv6Dz26Qu/06MSTKeQBEkNw==
Date: Mon, 16 Apr 2012 14:01:39 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237945188862@ORSMSX101.amr.corp.intel.com>
References: <4F88A1D2.6070703@mindchasers.com>
In-Reply-To: <4F88A1D2.6070703@mindchasers.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH] Yocto Project Dev Manual - bad reference in dev-manual-common-tasks.xml
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
X-List-Received-Date: Mon, 16 Apr 2012 14:01:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,

Patch applied to the Development Manual.  Thanks for submitting the change.=
  For now, you can view the updated manual at http://www.yoctoproject.org/d=
ocs/latest/dev-manual/dev-manual.html.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Bob Cochran
Sent: Friday, April 13, 2012 4:00 PM
To: Yocto discussion list
Subject: [yocto] [PATCH] Yocto Project Dev Manual - bad reference in dev-ma=
nual-common-tasks.xml

A reference to meta/recipes-sato/tasks/task-poky.bb is made as a good=20
example of a task; however, this file / recipe doesn't exist.  I=20
replaced it with meta/recipes-core/tasks/task-core-boot.bb, which I=20
think is a both useful and basic example to consider.

Signed-off-by: Robert Cochran<yocto@mindchasers.com>

---
  .../dev-manual/dev-manual-common-tasks.xml         |    2 +-
  1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml=20
b/documentation/dev-manual/dev-manual-common-tasks.xml
index a32085d..a81b656 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -495,7 +495,7 @@
                  For complex custom images, the best approach is to=20
create a custom task package
                  that is used to build the image or images.
                  A good example of a tasks package is
-                <filename>meta/recipes-sato/tasks/task-poky.bb</filename>.
+=20
<filename>meta/recipes-core/tasks/task-core-boot.bb</filename>
                  The
                  <filename><ulink=20
url=3D'&YOCTO_DOCS_REF_URL;#var-PACKAGES'>PACKAGES</ulink></filename>
                  variable lists the task packages to build along with=20
the complementary
--=20
1.7.5.4
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

