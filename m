Return-Path: <jessica.zhang@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57CBEE00BA0; Thu, 22 May 2014 11:05:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga02.intel.com (unknown [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 742CFE00BC2
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 11:04:54 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 May 2014 11:04:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,888,1392192000"; d="scan'208";a="516172871"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by orsmga001.jf.intel.com with ESMTP; 22 May 2014 11:04:53 -0700
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 22 May 2014 11:04:53 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.198]) by
	ORSMSX113.amr.corp.intel.com ([169.254.7.62]) with mapi id
	14.03.0123.003; Thu, 22 May 2014 11:04:53 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Timo Mueller <timo.mueller@oss.bmw-carit.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [eclipse][PATCH] plugins/cmake: Add sysroot specific
	include paths
Thread-Index: AQHPdZzjSdqPHiQVbU2LucxYI2HyJJtM5WeQ
Date: Thu, 22 May 2014 18:04:52 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C805D668C@ORSMSX103.amr.corp.intel.com>
References: <a6e139dcaa3985049e715b122b53f4cd36e81456.1400743176.git.timo.mueller@bmw-carit.de>
In-Reply-To: <a6e139dcaa3985049e715b122b53f4cd36e81456.1400743176.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [eclipse][PATCH] plugins/cmake: Add sysroot specific	include paths
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
X-List-Received-Date: Thu, 22 May 2014 18:05:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Pulled into eclipse-poky-kepler master.  Thanks for the contribution!  - Je=
ssica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Timo Mueller
Sent: Thursday, May 22, 2014 1:57 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [eclipse][PATCH] plugins/cmake: Add sysroot specific inclu=
de paths

From: Timo Mueller <timo.mueller@bmw-carit.de>

CDT sets default include paths when a defined toolchain does not provide in=
clude paths of its own. The default include paths point to the host system =
which does not make sense for cross compiled projects.

Instead of using the default include paths we provide our own path that poi=
nts to the usr/include folder in the defined sysroot. Once this custom incl=
ude path is defined CDT does not add any additional include paths.

[BUGFIX #5544]

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 plugins/org.yocto.cmake.managedbuilder/plugin.xml | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/plugins/org.yocto.cmake.managedbuilder/plugin.xml b/plugins/or=
g.yocto.cmake.managedbuilder/plugin.xml
index 7aa6671..431de6e 100644
--- a/plugins/org.yocto.cmake.managedbuilder/plugin.xml
+++ b/plugins/org.yocto.cmake.managedbuilder/plugin.xml
@@ -178,9 +178,10 @@
                 name=3D"%config.debug.name"
                 parent=3D"cdt.managedbuild.config.gnu.base">
                 <toolChain
-                    id=3D"org.yocto.cmake.managedbuilder.toolchain.gnu.exe=
.debug"
-                    superClass=3D"org.yocto.cmake.managedbuilder.toolchain=
.gnu.exe"
-                    supportsManagedBuild=3D"true">
+                      id=3D"org.yocto.cmake.managedbuilder.toolchain.gnu.e=
xe.debug"
+                      languageSettingsProviders=3D"org.yocto.cmake.managed=
builder.includeProvider"
+                      superClass=3D"org.yocto.cmake.managedbuilder.toolcha=
in.gnu.exe"
+                      supportsManagedBuild=3D"true">
                     <targetPlatform
                         id=3D"org.yocto.cmake.managedbuilder.target.gnu.ex=
e.debug"
                         isAbstract=3D"false"
@@ -280,4 +281,16 @@
             projectType=3D"org.yocto.sdk.ide.buildArtefact.cmake.exe">
         </template>
     </extension>
+    <extension
+          point=3D"org.eclipse.cdt.core.LanguageSettingsProvider">
+       <provider
+             id=3D"org.yocto.cmake.managedbuilder.includeProvider"
+             name=3D"IncludeProvider"
+             prefer-non-shared=3D"false">
+          <entry
+                kind=3D"includePath"
+                name=3D"${Sysroot}/usr/include">
+          </entry>
+       </provider>
+    </extension>
 </plugin>
--
1.9.0

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

