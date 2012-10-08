Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59B12E0027E
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 08:40:32 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Oct 2012 08:38:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,554,1344236400"; d="scan'208";a="231286245"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.50])
	by fmsmga001.fm.intel.com with ESMTP; 08 Oct 2012 08:38:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  8 Oct 2012 16:38:13 +0100
Message-Id: <05b879fcd7a9abcf704d4a62a06e9cd68afa2c46.1349710561.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349710561.git.paul.eggleton@linux.intel.com>
References: <cover.1349710561.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1349710561.git.paul.eggleton@linux.intel.com>
References: <cover.1349710561.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 07/11] documentation: poky-ref-manual: add information on *_FEATURES_BACKFILL
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
X-List-Received-Date: Mon, 08 Oct 2012 15:40:53 -0000

Document DISTRO_FEATURES_BACKFILL and MACHINE_FEATURES_BACKFILL. We may
wish to expand upon this in future, but at least this explains what
these variables are for and how to use them.

Also add a link from the DISTRO_FEATURES entry to the section that lists
valid DISTRO_FEATURES items.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-features.xml  |   46 +++++++++++++++++++
 documentation/poky-ref-manual/ref-variables.xml |   54 ++++++++++++++++++++++-
 2 files changed, 99 insertions(+), 1 deletion(-)

diff --git a/documentation/poky-ref-manual/ref-features.xml b/documentation/poky-ref-manual/ref-features.xml
index 159d56d..81ba8e5 100644
--- a/documentation/poky-ref-manual/ref-features.xml
+++ b/documentation/poky-ref-manual/ref-features.xml
@@ -171,6 +171,52 @@
             </itemizedlist>
         </para>
     </section>
+
+    <section id='ref-features-backfill'>
+        <title>Feature backfilling</title>
+
+        <para>
+            Sometimes, it is necessary for a new feature to be added to control existing
+            functionality that was previously enabled by default and not able to be disabled.
+            In order to ensure that the feature remains enabled for users with existing
+            configurations that upgrade to a new version of the core metadata without that 
+            configuration having to be changed, whilst still allowing others who want to turn
+            the feature off to do so, the backfilling mechanism was introduced. This 
+            functionality is available for <filename><link linkend='var-DISTRO_FEATURES'>DISTRO_FEATURES</link></filename>
+            and <filename><link linkend='var-MACHINE_FEATURES'>MACHINE_FEATURES</link></filename>.
+        </para>
+
+        <para>
+            An example is the "pulseaudio" distro feature. Previously, PulseAudio support
+            was enabled within the Qt and GStreamer frameworks; however some users desired
+            to be able to disable this. To allow this to be disabled without affecting 
+            existing configurations in which PulseAudio support should remain enabled,
+            "pulseaudio" was added to 
+            <filename><link linkend='var-DISTRO_FEATURES_BACKFILL'>DISTRO_FEATURES_BACKFILL</link></filename>
+            within <filename>meta/conf/bitbake.conf</filename>; this means that "pulseaudio"
+            is automatically added to <filename>DISTRO_FEATURES</filename> without the distro
+            configuration needing to be updated to do so itself.
+            Those who do not want PulseAudio support can add "pulseaudio" to
+            <filename><link linkend='var-DISTRO_FEATURES_BACKFILL_CONSIDERED'>DISTRO_FEATURES_BACKFILL_CONSIDERED</link></filename>
+            in their distro .conf file and this will disable adding "pulseaudio" to
+            <filename>DISTRO_FEATURES</filename>.
+        </para>
+
+        <para>
+            Another example is the "rtc" machine feature. Previously, real time clock (RTC)
+            support was enabled for all target devices; however certain targets do not have
+            this capability. To allow this to be disabled by such machines without affecting
+            other machines in which RTC support should remain enabled, "rtc" was added to 
+            <filename><link linkend='var-MACHINE_FEATURES_BACKFILL'>MACHINE_FEATURES_BACKFILL</link></filename>
+            within <filename>meta/conf/bitbake.conf</filename>; this means that "rtc"
+            is automatically added to <filename>MACHINE_FEATURES</filename> without the
+            machine configuration needing to be updated to do so itself.
+            For machines that not need RTC support can add "rtc" to
+            <filename><link linkend='var-MACHINE_FEATURES_BACKFILL_CONSIDERED'>MACHINE_FEATURES_BACKFILL_CONSIDERED</link></filename>
+            in their machine .conf file and this will disable adding "rtc" to
+            <filename>MACHINE_FEATURES</filename>.
+        </para>
+    </section>
 </chapter>
 
 <!-- 
diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index ba81f96..c71a959 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -471,7 +471,35 @@
 
         <glossentry id='var-DISTRO_FEATURES'><glossterm>DISTRO_FEATURES</glossterm>
             <glossdef>
-                <para>The features of the distribution.</para>
+                <para>The features enabled for the distribution.
+                    For a list of valid features, see the
+                    <link linkend='ref-features-distro'>Distro</link>
+                    section.
+                </para>
+            </glossdef>
+        </glossentry>
+
+        <glossentry id='var-DISTRO_FEATURES_BACKFILL'><glossterm>DISTRO_FEATURES_BACKFILL</glossterm>
+            <glossdef>
+                <para>Features to be added to 
+                    <filename><link linkend='var-DISTRO_FEATURES'>DISTRO_FEATURES</link></filename>
+                    if not also present in 
+                    <filename><link linkend='var-DISTRO_FEATURES_BACKFILL_CONSIDERED'>DISTRO_FEATURES_BACKFILL_CONSIDERED</link></filename>.
+                    See the <link linkend='ref-features-backfill'>Feature backfilling</link> section for 
+                    more information.
+                    </para>
+            </glossdef>
+        </glossentry>
+
+        <glossentry id='var-DISTRO_FEATURES_BACKFILL_CONSIDERED'><glossterm>DISTRO_FEATURES_BACKFILL_CONSIDERED</glossterm>
+            <glossdef>
+                <para>Features from
+                    <filename><link linkend='var-DISTRO_FEATURES_BACKFILL'>DISTRO_FEATURES_BACKFILL</link></filename>
+                    that should not be added to
+                    <filename><link linkend='var-DISTRO_FEATURES'>DISTRO_FEATURES</link></filename>.
+                    See the <link linkend='ref-features-backfill'>Feature backfilling</link> section for 
+                    more information.
+                    </para>
             </glossdef>
         </glossentry>
 
@@ -1519,6 +1547,30 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             </glossdef>
          </glossentry>
 
+        <glossentry id='var-MACHINE_FEATURES_BACKFILL'><glossterm>MACHINE_FEATURES_BACKFILL</glossterm>
+            <glossdef>
+                <para>Features to be added to 
+                    <filename><link linkend='var-MACHINE_FEATURES'>MACHINE_FEATURES</link></filename>
+                    if not also present in 
+                    <filename><link linkend='var-MACHINE_FEATURES_BACKFILL_CONSIDERED'>MACHINE_FEATURES_BACKFILL_CONSIDERED</link></filename>.
+                    See the <link linkend='ref-features-backfill'>Feature backfilling</link> section for 
+                    more information.
+                    </para>
+            </glossdef>
+        </glossentry>
+
+        <glossentry id='var-MACHINE_FEATURES_BACKFILL_CONSIDERED'><glossterm>MACHINE_FEATURES_BACKFILL_CONSIDERED</glossterm>
+            <glossdef>
+                <para>Features from
+                    <filename><link linkend='var-MACHINE_FEATURES_BACKFILL'>MACHINE_FEATURES_BACKFILL</link></filename>
+                    that should not be added to
+                    <filename><link linkend='var-MACHINE_FEATURES'>MACHINE_FEATURES</link></filename>.
+                    See the <link linkend='ref-features-backfill'>Feature backfilling</link> section for 
+                    more information.
+                    </para>
+            </glossdef>
+        </glossentry>
+
         <glossentry id='var-MAINTAINER'><glossterm>MAINTAINER</glossterm>
             <glossdef>
                 <para>The email address of the distribution maintainer.</para>
-- 
1.7.9.5


