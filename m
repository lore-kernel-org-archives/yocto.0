Return-Path: <james.woodyatt@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E64A3E00819
	for <yocto@yoctoproject.org>; Tue, 31 Dec 2013 12:50:45 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 31 Dec 2013 12:46:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,582,1384329600"; d="scan'208";a="432351107"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
	by orsmga001.jf.intel.com with ESMTP; 31 Dec 2013 12:50:40 -0800
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
	ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 31 Dec 2013 12:50:40 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.51]) by
	ORSMSX156.amr.corp.intel.com ([169.254.8.206]) with mapi id
	14.03.0123.003; Tue, 31 Dec 2013 12:50:40 -0800
From: "Woodyatt, James" <james.woodyatt@intel.com>
To: Yocto Discussion <yocto@yoctoproject.org>
Thread-Topic: error in cmake.bbclass exposed when meta-darwin included
Thread-Index: AQHPBmn2DWtK9b7670eLSdIvCXGa3A==
Date: Tue, 31 Dec 2013 20:50:40 +0000
Message-ID: <CEE86DFB.F03%james.woodyatt@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.232.24.27]
MIME-Version: 1.0
Subject: error in cmake.bbclass exposed when meta-darwin included
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 31 Dec 2013 20:50:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <8DF644F1B00DE4418408F1EFE1E6858A@intel.com>
Content-Transfer-Encoding: quoted-printable

Everyone=8B

Please review the following patch for Poky, which I believe is necessary
for properly supporting builds where meta-darwin (also probably
meta-mingw) is included in the Bitbake layer path list.

Explanation: the meta-darwin layer overrides the value of the SDK_OS
variable with the value of HOST_OS, which is =B3darwin=B2 for most builds, =
and
this makes everything that uses CMake fail to build properly.  The case
where I found this is when OpenCV is included from the OpenEmbedded
meta-oe layer.  The patch below seems to correct an error in the usage of
the SDK_OS variable within the cmake.bbclass file.

diff --git a/meta/classes/cmake.bbclass b/meta/classes/cmake.bbclass
index e64c30c..4ef9fca 100644
--- a/meta/classes/cmake.bbclass
+++ b/meta/classes/cmake.bbclass
@@ -35,7 +35,7 @@ cmake_do_generate_toolchain_file() {
        cat > ${WORKDIR}/toolchain.cmake <<EOF
 # CMake system name must be something like "Linux".
 # This is important for cross-compiling.
-set( CMAKE_SYSTEM_NAME `echo ${SDK_OS} | sed 's/^./\u&/'` )
+set( CMAKE_SYSTEM_NAME `echo ${TARGET_OS} | sed 's/^./\u&/'` )
 set( CMAKE_SYSTEM_PROCESSOR ${TARGET_ARCH} )
 set( CMAKE_C_COMPILER ${OECMAKE_C_COMPILER} )
 set( CMAKE_CXX_COMPILER ${OECMAKE_CXX_COMPILER} )

I tested this with a local build, and I believe this diff should be
appended to the oecore.patch file in the meta-darwin layer source tree,
and it should be applied in the appropriate branches of the Poky source
tree.


--=20
james woodyatt <james.woodyatt@intel.com>

Software Architect, New Devices Group


