Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1474E013A6
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 08:39:20 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Oct 2012 08:38:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,554,1344236400"; d="scan'208";a="231286217"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.50])
	by fmsmga001.fm.intel.com with ESMTP; 08 Oct 2012 08:38:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  8 Oct 2012 16:38:09 +0100
Message-Id: <324875be4135e464bcce4caff154d39cce8e0db1.1349710561.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349710561.git.paul.eggleton@linux.intel.com>
References: <cover.1349710561.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1349710561.git.paul.eggleton@linux.intel.com>
References: <cover.1349710561.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 03/11] documentation: poky-ref-manual: improve MACHINE_* variable descriptions
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
X-List-Received-Date: Mon, 08 Oct 2012 15:40:03 -0000

Adjust the descriptions so that it is clearer that these are specific
to a machine and should appear in the machine's .conf file, and are
intended to affect the image contents, not the dependencies of a
specific package. Also change the examples so that they demonstrate more
realistic usage scenarios for these variables.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-variables.xml |  124 +++++++++++------------
 1 file changed, 60 insertions(+), 64 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index 62c2596..af1c9e1 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -1354,8 +1354,8 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             <glossdef>
                 <para></para>
                 <para>
-                    A list of required packages to install as part of the package being
-                    built.
+                    A list of required machine-specific packages to install as part of
+                    the image being built.
                     The build process depends on these packages being present.
                     Furthermore, because this is a "machine essential" variable, the list of 
                     packages are essential for the machine to boot.
@@ -1365,16 +1365,18 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                 <para>
                     This variable is similar to the 
                     <filename><link linkend='var-MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS'>MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS</link></filename>
-                    variable with the exception that the package being built has a build 
+                    variable with the exception that the image being built has a build 
                     dependency on the variable's list of packages.
                     In other words, the image will not build if a file in this list is not found.
                 </para>
                 <para>
-                    For example, suppose you are building a runtime package that depends
-                    on a certain disk driver.
-                    In this case, you would use the following:
+                    For example, suppose the machine you are building for requires
+                    a specific program to be run during boot to initialise the hardware.
+                    In this case, assuming the package name for the program was
+                    <filename>example-init</filename>, you would use the following in the
+                    .conf file for the machine:
                     <literallayout class='monospaced'>
-     MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "&lt;disk_driver&gt;"
+     MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "example-init"
                     </literallayout>
                 </para>
             </glossdef>
@@ -1384,8 +1386,8 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             <glossdef>
                 <para></para>
                 <para>
-                    A list of recommended packages to install as part of the package being 
-                    built. 
+                    A list of recommended machine-specific packages to install as part of
+                    the image being built.
                     The build process does not depend on these packages being present.
                     Furthermore, because this is a "machine essential" variable, the list of 
                     packages are essential for the machine to boot.
@@ -1395,46 +1397,41 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                 <para>
                     This variable is similar to the 
                     <filename><link linkend='var-MACHINE_ESSENTIAL_EXTRA_RDEPENDS'>MACHINE_ESSENTIAL_EXTRA_RDEPENDS</link></filename>
-                    variable with the exception that the package being built does not have a build 
+                    variable with the exception that the image being built does not have a build 
                     dependency on the variable's list of packages.
-                    In other words, the image will build if a file in this list is not found.
-                    However, because this is one of the "essential" variables, the resulting image
-                    might not boot on the machine. 
-                    Or, if the machine does boot using the image, the machine might not be fully 
-                    functional.
-                </para>
-                <para>
-                    Consider an example where you have a custom kernel with a disk driver
-                    built into the kernel itself, rather than using the driver built as a module.
-                    If you include the package that has the driver module as part of 
-                    the variable's list, the 
-                    build process will not find that package.  
-                    However, because these packages are "recommends" packages, the build will 
-                    not fail due to the missing package.
-                    Not accounting for any other problems, the custom kernel would still boot the machine.
+                    In other words, the image will still build if a package in this list is not found.
+                    Typically this variable is used to handle essential kernel modules, whose
+                    functionality may be selected to be built into the kernel rather than as a module,
+                    in which case a package will not be produced.
+                </para>
+                <para>
+                    Consider an example where you have a custom kernel where a specific touchscreen
+                    driver is required for the machine to be usable, but may be built as a module or
+                    into the kernel depending on the kernel configuration.
+                    If the driver is built as a module, you want it to be installed; however if
+                    the driver is built into the kernel you still want the build to succeed.
+                    This variable sets up a "recommends" relationship so that in the latter case,
+                    the build will not fail due to the missing package.
+                    To accomplish this, assuming the package for the module was called
+                    <filename>kernel-module-ab123</filename>, you would use the
+                    following in the .conf file for the machine:
+                    <literallayout class='monospaced'>
+     MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-module-ab123"
+                    </literallayout>
                 </para>
                 <para>
-                    Some example packages of these machine essentials are flash, screen, keyboard, mouse, 
+                    Some examples of these machine essentials are flash, screen, keyboard, mouse, 
                     or touchscreen drivers (depending on the machine).
                 </para>
-                <para>
-                    For example, suppose you are building a runtime package that depends
-                    on a mouse driver.
-                    In this case, you would use the following:
-                    <literallayout class='monospaced'>
-     MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "&lt;mouse_driver&gt;"
-                    </literallayout>
-                </para>
             </glossdef>
         </glossentry>
 
          <glossentry id='var-MACHINE_EXTRA_RDEPENDS'><glossterm>MACHINE_EXTRA_RDEPENDS</glossterm>
             <glossdef>
                 <para>
-                    A list of optional but non-machine essential packages to install as 
-                    part of the package being built.
-                    Even though these packages are not essential for the machine to boot,  
-                    the build process depends on them being present.
+                    A list of machine-specific packages that are not essential for booting to install as 
+                    part of the image being built.
+                    The build process for more fully-featured images depends on them being present.
                     The impact of this variable affects all images based on
                     <filename>packagegroup-base</filename>, which does not include the 
                     <filename>core-image-minimal</filename> or <filename>core-image-basic</filename> 
@@ -1443,22 +1440,22 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                 <para>
                     This variable is similar to the 
                     <filename><link linkend='var-MACHINE_EXTRA_RRECOMMENDS'>MACHINE_EXTRA_RRECOMMENDS</link></filename>
-                    variable with the exception that the package being built has a build 
+                    variable with the exception that the image being built has a build 
                     dependency on the variable's list of packages.
                     In other words, the image will not build if a file in this list is not found.
                 </para>
                 <para>
-                    An example is a machine that might or might not have a WiFi card.
-                    The package containing the WiFi support is not essential for the 
-                    machine to boot the image.
-                    If it is not there, the machine will boot but not be able to use the 
-                    WiFi functionality.
-                    However, if you include the package with the WiFi support as part of the 
-                    variable's package list, the build 
-                    process depends on finding the package.
-                    In this case, you would use the following:
+                    An example is a machine that has WiFi capability.
+                    WiFi being enabled is not essential for the machine to boot the image,
+                    however if you are building a more fully-featured image, you want to enable
+                    it. The package containing the firmware for the WiFi hardware is always 
+                    expected to exist, so it is acceptable for the build process to depend upon
+                    finding the package.
+                    In this case, assuming the package for the firmware was called
+                    <filename>wifidriver-firmware</filename>, you would use the following in the
+                    .conf file for the machine:
                     <literallayout class='monospaced'>
-     MACHINE_EXTRA_RDEPENDS += "&lt;wifi_driver&gt;"
+     MACHINE_EXTRA_RDEPENDS += "wifidriver-firmware"
                     </literallayout>
                 </para>
             </glossdef>
@@ -1468,9 +1465,9 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             <glossdef>
                 <para></para>
                 <para>
-                    A list of optional but non-machine essential packages to install as 
-                    part of the package being built.
-                    The package being built has no build dependency on the list of packages 
+                    A list of machine-specific packages that are not essential for booting
+                    to install as part of the image being built, if present.
+                    The image being built has no build dependency on the list of packages 
                     with this variable.  
                     The impact of this variable affects only images based on 
                     <filename>packagegroup-base</filename>, which does not include the 
@@ -1480,23 +1477,22 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                 <para>
                     This variable is similar to the 
                     <filename><link linkend='var-MACHINE_EXTRA_RDEPENDS'>MACHINE_EXTRA_RDEPENDS</link></filename>
-                    variable with the exception that the package being built does not have a build 
+                    variable with the exception that the image being built does not have a build 
                     dependency on the variable's list of packages.
                     In other words, the image will build if a file in this list is not found.
                 </para>
                 <para>
-                    An example is a machine that might or might not have a WiFi card.
-                    The package containing the WiFi support is not essential for the 
-                    machine to boot the image.
-                    If it is not there, the machine will boot but not be able to use the 
-                    WiFi functionality.
-                    You are free to either include or not include the 
-                    the package with the WiFi support as part of the 
-                    variable's package list, the build 
-                    process does not depend on finding the package.
-                    If you include the package, you would use the following:
+                    An example is a machine that has WiFi capability.
+                    WiFi being enabled is not essential for the machine to boot the image,
+                    however if you are building a more fully-featured image, you want to enable
+                    it. However, the package containing the WiFi kernel module will not be produced
+                    if the WiFi driver is built into the kernel, in which case you still want the
+                    build to succeed instead of failing because the package could not be found.
+                    To accomplish this, assuming the package for the module was called
+                    <filename>kernel-module-examplewifi</filename>, you would use the
+                    following in the .conf file for the machine:
                     <literallayout class='monospaced'>
-     MACHINE_EXTRA_RRECOMMENDS += "&lt;wifi_driver&gt;"
+     MACHINE_EXTRA_RRECOMMENDS += "kernel-module-examplewifi"
                     </literallayout>
                 </para>
             </glossdef>
-- 
1.7.9.5


