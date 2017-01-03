Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C6E8E0049A; Tue,  3 Jan 2017 08:32:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91740E00480
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2017 08:32:06 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by osg.samsung.com (Postfix) with ESMTP id BC8BBA13E7;
	Tue,  3 Jan 2017 16:32:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osg.samsung.com
Received: from osg.samsung.com ([127.0.0.1])
	by localhost (s-opensource.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DNCXfKfJ53li; Tue,  3 Jan 2017 16:32:21 +0000 (UTC)
Received: from WSF-1127.8.8.8.8 (unknown [82.236.136.171])
	by osg.samsung.com (Postfix) with ESMTPSA id 68069A1352;
	Tue,  3 Jan 2017 16:32:19 +0000 (UTC)
From: Philippe Coval <philippe.coval@osg.samsung.com>
To: kishen.maloor@intel.com
Date: Tue,  3 Jan 2017 17:31:36 +0100
Message-Id: <1483461097-2615-2-git-send-email-philippe.coval@osg.samsung.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1483461097-2615-1-git-send-email-philippe.coval@osg.samsung.com>
References: <1483461097-2615-1-git-send-email-philippe.coval@osg.samsung.com>
MIME-Version: 1.0
Cc: iotivity-dev@lists.iotivity.org, yocto@yoctoproject.org,
	Philippe Coval <philippe.coval@osg.samsung.com>
Subject: [meta-oic][PATCH 2/3] doc: Translate README to ascii
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
X-List-Received-Date: Tue, 03 Jan 2017 16:32:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

(Cleanup UTF-8 chars)

Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
---
 README | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/README b/README
index c6cf1a7..deba141 100644
--- a/README
+++ b/README
@@ -27,7 +27,7 @@ Recipes in meta-oic
 
 IoTivity packages built by the meta-oic layer
 =============================================
-—- iotivity-resource : IoTivity resource libraries.
+-- iotivity-resource : IoTivity resource libraries.
 -- iotivity-resource-dev : IoTivity resource header files.
 -- iotivity-resource-thin-staticdev : IoTivity "thin" resource libraries.
 -- iotivity-resource-dbg : IoTivity resource libraries with debug
@@ -51,7 +51,7 @@ applications.
 -- iotivity-tests : IoTivity framework tests.
 -- iotivity-tests-dbg : Debug builds of IoTivity framework tests.
 -- iotivity : Meta-package for all IoTivity runtimes.
-—- iotivity-dev : Meta-package for all IoTivity runtimes and headers.
+-- iotivity-dev : Meta-package for all IoTivity runtimes and headers.
 -- iotivity-sensorboard : IoTivity SensorBoard application. (Sources
 located in iotivity-1.0.0/examples/OICSensorBoard)
 -- iotivity-simple-client: IoTivity resource simpleclient example.  
@@ -90,13 +90,13 @@ binary packages in the OS image.
 
 For eg., to include IoTivity resource and service samples and runtimes, use
 ...
-IMAGE_INSTALL_append += " iotivity-resource-samples iotivity-service-samples”
+IMAGE_INSTALL_append += " iotivity-resource-samples iotivity-service-samples"
 
 To include only IoTivity resource and service runtimes, use
 ...
-IMAGE_INSTALL_append += " iotivity”
+IMAGE_INSTALL_append += " iotivity"
 
-4. After initializing poky, run “bitbake <target>” to build the OS image, 
+4. After initializing poky, run "bitbake <target>" to build the OS image, 
 and further deploy the image to your target.
 
 Building Yocto cross-toolchain with IoTivity for your target
@@ -105,26 +105,26 @@ Yocto has the capability to build cross-toolchains for targets
 to run on 32-bit and 64-bit machines.  
 Follow these steps to construct a toolchain for your target:
 
-1. You should’ve already completed the steps above to build IoTivity for your
+1. You should have already completed the steps above to build IoTivity for your
 target.
 
 2. Modify <poky-build-directory>/conf/local.conf to install the IoTivity
-development packages to the toolchain’s sysroot. 
+development packages to the toolchain's sysroot. 
 ...
-IMAGE_INSTALL_append = " iotivity-dev”
+IMAGE_INSTALL_append = " iotivity-dev"
 
 To include only IoTivity "thin" resource headers and libraries, use
 ...
-IMAGE_INSTALL_append = " iotivity-resource-thin-staticdev”
+IMAGE_INSTALL_append = " iotivity-resource-thin-staticdev"
 
-3. After initializing poky, run “bitbake -c populate_sdk <target>” to build the
+3. After initializing poky, run "bitbake -c populate_sdk <target>" to build the
 target platform SDK and toolchain. You may further install the toolchain
 on your build machine.
 
 Once installed, the toolchain may be used only after initialization. This is
-performed by an “environment setup script” at the root of the toolchain
+performed by an "environment setup script" at the root of the toolchain
 install location (usually in /opt/poky...). 
-To initialize, you must “source” this script into your shell environment. 
+To initialize, you must "source" this script into your shell environment. 
 
 Locations of IoTivity headers, runtimes and samples 
 ===================================================
@@ -149,8 +149,8 @@ Building IoTivity applications for a Yocto target
 
 2. You can now use the Yocto toolchain for your target to cross-compile the
 application. As such, there is no standard procedure for this.  
-You may examine your toolchain’s environment setup script and accordingly
-modify your application’s build script to point to said tools.
+You may examine your toolchain's environment setup script and accordingly
+modify your application's build script to point to said tools.
 
 3. If you further want to package up your application in a Yocto software layer,
 you will have to write a BitBake recipe for it. Look inside
-- 
1.9.1


