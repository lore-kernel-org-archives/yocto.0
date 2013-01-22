Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4B3FE006D7
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 14:59:28 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Jan 2013 14:58:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,517,1355126400"; d="scan'208";a="250903198"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga001.jf.intel.com with ESMTP; 22 Jan 2013 14:59:27 -0800
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 22 Jan 2013 14:59:27 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.3]) with mapi id
	14.01.0421.002; Tue, 22 Jan 2013 14:59:27 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Timo Mueller <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] scripts/build.sh: Fixed local build to use the
	correct repository path
Thread-Index: AQHN+KYHRuhE8Z3ZJE++32oEILQs3JhV9ttw
Date: Tue, 22 Jan 2013 22:59:26 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DD643D@ORSMSX101.amr.corp.intel.com>
References: <cover.1357292047.git.timo.mueller@bmw-carit.de>
	<4615918a18be03fdfc0971c560c039eb9bfba7b6.1357292047.git.timo.mueller@bmw-carit.de>
In-Reply-To: <4615918a18be03fdfc0971c560c039eb9bfba7b6.1357292047.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [PATCH] scripts/build.sh: Fixed local build to use the	correct repository path
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
X-List-Received-Date: Tue, 22 Jan 2013 22:59:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged to eclipse-poky master.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Timo Mueller
Sent: Tuesday, January 22, 2013 4:03 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [PATCH] scripts/build.sh: Fixed local build to use the cor=
rect repository path

From: Timo Mueller <timo.mueller@bmw-carit.de>


Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 scripts/build.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/build.sh b/scripts/build.sh index 54081d5..8d8b4c3 100=
755
--- a/scripts/build.sh
+++ b/scripts/build.sh
@@ -115,7 +115,7 @@ mkdir ${BUILD_DIR} || fail $? "Create temporary build d=
irectory ${BUILD_DIR}"
 GIT_URL=3Dgit://git.pokylinux.org/eclipse-poky.git
 if [ $USE_LOCAL_GIT_REPO -eq 1 ]; then
        SCRIPT_DIR=3D`dirname $0`
-       GIT_DIR=3D`readlink -f ${SCRIPTDIR}\..`
+       GIT_DIR=3D`readlink -f ${SCRIPT_DIR}\..`
        GIT_URL=3D"file://${GIT_DIR}"
 fi

--
1.7.11.7

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

