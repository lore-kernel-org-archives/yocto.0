Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97712E01447
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2012 16:32:23 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 07 Sep 2012 16:32:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,388,1344236400"; d="scan'208";a="219351226"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 07 Sep 2012 16:32:21 -0700
Received: from orsmsx107.amr.corp.intel.com (10.22.225.80) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 7 Sep 2012 16:32:20 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX107.amr.corp.intel.com ([169.254.10.146]) with mapi id
	14.01.0355.002; Fri, 7 Sep 2012 16:32:19 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH][eclipse-poky][Rev1] setup.py: Use Yocto mirror of
	eclipse juno repo
Thread-Index: AQHNjVBrI8uweoG5Hke375iERwI2JJd/hxbA
Date: Fri, 7 Sep 2012 23:32:19 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46AEC1D9@ORSMSX101.amr.corp.intel.com>
References: <CAPhnLPAZ=TsALQ=yqKe129Aw38gFByQpkP=+w1Uq2t_mh2jBBA@mail.gmail.com>
In-Reply-To: <CAPhnLPAZ=TsALQ=yqKe129Aw38gFByQpkP=+w1Uq2t_mh2jBBA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH][eclipse-poky][Rev1] setup.py: Use Yocto mirror of eclipse juno repo
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
X-List-Received-Date: Fri, 07 Sep 2012 23:32:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Beth,

Can u change the old wget line to a comment instead of replacement so we ca=
n have a record?

Thanks,
Jessica

-----Original Message-----
From: Flanagan, Elizabeth [mailto:elizabeth.flanagan@intel.com]
Sent: Friday, September 07, 2012 4:28 PM
To: yocto@yoctoproject.org; Zhang, Jessica
Subject: [PATCH][eclipse-poky][Rev1] setup.py: Use Yocto mirror of eclipse =
juno repo

The main eclipse download site has been hard to connect to for many users. =
This sets up the main setup script to use a mirror of the eclipse sdk tarba=
lls and a mirror of the update site.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 scripts/setup.sh |    8 ++++++--
 1 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/scripts/setup.sh b/scripts/setup.sh index 5a928f4..9c57e50 100=
755
--- a/scripts/setup.sh
+++ b/scripts/setup.sh
@@ -66,7 +66,7 @@ if [ ! -f
eclipse/plugins/org.eclipse.swt_3.100.0.v4233d.jar ]; then
   fi
   # Eclipse SDK: Need the SDK so we can link into docs
   echo "Getting Eclipse SDK..."
-  wget "http://download.eclipse.org/eclipse/downloads/drops4/${ep_rel}${ep=
_ver}${ep_date}/eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz"
+  wget "http://downloads.yoctoproject.org/eclipse/downloads/drops4/${ep_re=
l}${ep_ver}${ep_date}/eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz"
   tar xfz eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz || err_exit $?
"extracting Eclipse SDK failed"
   rm eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz
   cd "${curdir2}"
@@ -178,7 +178,11 @@ update_feature_remote()  }

 #Eclipse Update Site
-MAIN_UPDATE_SITE=3D"http://download.eclipse.org/releases/juno"
+#MAIN_UPDATE_SITE=3D"http://download.eclipse.org/releases/juno"
+# The main eclipse download site is unreliable at times. For now,
we're going to
+# maintain a mirror of just what we need.
+MAIN_UPDATE_SITE=3D"http://downloads.yoctoproject.org/eclipse/juno/ftp.osu=
osl.org/pub/eclipse/releases/juno"
+
 UPDATE_SITE=3D"${MAIN_UPDATE_SITE}"

 #CDT related
--
1.7.5.4

