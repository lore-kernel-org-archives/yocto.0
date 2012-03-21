Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E947EE013A3
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2012 20:41:49 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Mar 2012 20:41:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="131316511"
Received: from unknown (HELO localhost) ([10.255.15.208])
	by fmsmga001.fm.intel.com with ESMTP; 20 Mar 2012 20:41:49 -0700
From: tom.zanussi@intel.com
To: scott.m.rifenbark@intel.com,
	yocto@yoctoproject.org
Date: Tue, 20 Mar 2012 22:41:49 -0500
Message-Id: <a38524cb14199352568900b0995c2ced9f539b6e.1332300688.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1332300688.git.tom.zanussi@intel.com>
References: <cover.1332300688.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] documentation/poky-ref-manual/technical-details.xml: update 'Enabling Commercially Licensed Recipes' section
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
X-List-Received-Date: Wed, 21 Mar 2012 03:41:50 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The COMMERCIAL_LICENSE mechanism has been removed in Yocto 1.2 and
replaced by an equivalent mechanism, LICENSE_FLAGS.  Update the
documentation to reflect the change.

Also update and fix a couple inaccuracies in a couple related
variables (COMMERCIAL_QT, etc).

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../poky-ref-manual/technical-details.xml          |  189 ++++++++++++++++----
 1 files changed, 155 insertions(+), 34 deletions(-)

diff --git a/documentation/poky-ref-manual/technical-details.xml b/documentation/poky-ref-manual/technical-details.xml
index 19ce9ab..a1669f1 100644
--- a/documentation/poky-ref-manual/technical-details.xml
+++ b/documentation/poky-ref-manual/technical-details.xml
@@ -685,44 +685,165 @@
         <title>Enabling Commercially Licensed Recipes</title>
 
         <para>
-            By default, the Yocto Project build system disables components that 
-            have commercial licensing requirements.
-            The following four statements in the
-            <filename>$HOME/poky/meta/conf/distro/poky.conf</filename> file
-            disable components:
+            By default, the Yocto Project build system disables
+            components that have commercial or other special licensing
+            requirements.  Such requirements are defined on a
+            recipe-by-recipe basis via a LICENSE_FLAGS variable
+            definition in the affected recipe.  For instance, the
+            <filename>$HOME/poky/meta/recipes-multimedia/gstreamer/gst-plugins-ugly</filename>
+            recipe contains the statement:
             <literallayout class='monospaced'>
-     COMMERCIAL_LICENSE ?= "lame gst-fluendo-mp3 libmad mpeg2dec ffmpeg qmmp"
-     COMMERCIAL_AUDIO_PLUGINS ?= ""
-     COMMERCIAL_VIDEO_PLUGINS ?= ""
-     COMMERCIAL_QT ?= "qmmp"
+     LICENSE_FLAGS = "commercial"
             </literallayout>
-        </para> 
-
-        <para>
-            If you want to enable these components, you can do so by making sure you have
-            the following statements in the configuration file:
+            Another example would be the following from a recipe in another layer:
             <literallayout class='monospaced'>
-     COMMERCIAL_AUDIO_PLUGINS = "gst-plugins-ugly-mad \
-        gst-plugins-ugly-mpegaudioparse"
-     COMMERCIAL_VIDEO_PLUGINS = "gst-plugins-ugly-mpeg2dec \
-        gst-plugins-ugly-mpegstream gst-plugins-bad-mpegvideoparse"
-     COMMERCIAL_LICENSE = ""
-     COMMERCIAL_QT = ""
+     LICENSE_FLAGS = "license_${PN}_${PV}"
             </literallayout>
-        </para>
-
-        <para>
-            Excluding a package name from the 
-            <filename>COMMERCIAL_LICENSE</filename> or 
-            <filename>COMMERCIAL_QT</filename> statement enables that package.  
-        </para>
-
-        <para>
-            Specifying audio and video plug-ins as part of the 
-            <filename>COMMERCIAL_AUDIO_PLUGINS</filename> and 
-            <filename>COMMERCIAL_VIDEO_PLUGINS</filename> statements includes 
-            the plug-ins into built images - thus adding support for media formats.
-        </para>
+	    In order for a component restricted by a LICENSE_FLAGS
+	    definition to be enabled and included in an image, it
+	    needs to have a matching entry in the global
+	    LICENSE_FLAGS_WHITELIST variable, which is a variable
+	    typically defined in your local.conf file.  For instance,
+	    to enable
+	    the <filename>$HOME/poky/meta/recipes-multimedia/gstreamer/gst-plugins-ugly</filename>
+	    package, you could add either the string
+	    "commercial_gst-plugins-ugly" or the more general
+	    "commercial" to LICENSE_FLAGS_WHITELIST (see section
+	    3.3.2.1 for a full explanation of LICENSE_FLAGS matching):
+            <literallayout class='monospaced'>
+     LICENSE_FLAGS_WHITELIST = "commercial_gst-plugins-ugly"
+            </literallayout>
+	    Likewise, to additionally enable the package containing
+	    LICENSE_FLAGS = "license_${PN}_${PV}", and assuming for
+	    example that the actual recipe name was 'emgd_1.10.bb',
+	    the following string would enable that package as well as
+	    the original gst-plugins-ugly package:
+            <literallayout class='monospaced'>
+     LICENSE_FLAGS_WHITELIST = "commercial_gst-plugins-ugly license_emgd_1.10"
+            </literallayout>
+	    As a convenience to the user, the complete license string
+	    doesn't need to be specified in the whitelist for every
+	    package - an abbreviated form can be used, which consists
+	    of just the first portion(s) of the license string before
+	    the initial underscore(s).  A partial string will match
+	    any license that contains the given string as the first
+	    portion of its license.  For example, the following
+	    whitelist string will also match both of the packages
+	    mentioned above (as well as any other packages that have
+	    licenses starting with "commercial" or "license").
+            <literallayout class='monospaced'>
+     LICENSE_FLAGS_WHITELIST = "commercial license"
+            </literallayout>
+            <section id="enabling-commercially-licensed-recipes-matching">
+              <title>Explanation of how LICENSE_FLAGS matching works</title>
+              <para>
+		The definition of 'matching' in reference to a
+		recipe's LICENSE_FLAGS setting is simple, but there
+		are a couple things users need to know in order to
+		correctly and effectively use it.  Before a flag
+		defined by a particular recipe is tested against the
+		contents of the LICENSE_FLAGS_WHITELIST variable, the
+		string '_${PN}' (with PN expanded of course) is
+		appended to the flag, thus automatically making each
+		LICENSE_FLAGS value recipe-specific.  That string is
+		then matched against the whitelist.  So if the user
+		specifies LICENSE_FLAGS = 'commercial' in recipe
+		'foo', the string 'commercial_foo' would normally be
+		what is specified in the whitelist in order for it to
+		match.
+              </para>
+              <para>
+		However, the user can also broaden the match by
+		putting any '_'-separated beginning subset of a
+		LICENSE_FLAGS flag in the whitelist, which will also
+		match.  For example, simply specifying 'commercial' in
+		the whitelist would match any expanded LICENSE_FLAGS
+		definition starting with 'commercial' such as
+		'commercial_foo' and 'commercial_bar', which are the
+		strings that would be automatically generated for
+		hypothetical 'foo' and 'bar' recipes assuming those
+		recipes had simply specified LICENSE_FLAGS =
+		'commercial'.
+              </para>
+              <para>
+		This allows for a range of specificity for the items
+		in the whitelist, from more general to perfectly
+		specific.  So users have the choice of exhaustively
+		enumerating each license flag in the whitelist to
+		allow only those specific recipes into the image, or
+		of using a more general string to pick up anything
+		matching just the first component(s) of the specified
+		string.
+              </para>
+              <para>
+		Note that this scheme works even if the flag already
+		has '_${PN}' appended - the extra '_${PN}' is
+		redundant, but doesn't affect the outcome.  For
+		example, a license flag of 'commercial_1.2_foo' would
+		turn into 'commercial_1.2_foo_foo' and would match
+		both the general 'commercial' and the specific
+		'commercial_1.2_foo', as expected (it would also match
+		commercial_1.2_foo_foo' and 'commercial_1.2', which
+		don't make much sense as far as something a user would
+		think of specifying in the whitelist).  For a
+		versioned string, the user could instead specify
+		'commercial_foo_1.2', which would turn into
+		'commercial_foo_1.2_foo', but which would as expected
+		allow the user to pick up this package along with
+		anything else 'commercial' by specifying 'commercial'
+		in the whitelist, or anything with a 'commercial_foo'
+		license regardless of version by using
+		'commercial_foo' in the whitelist, or
+		'commercial_foo_1.1' to be completely specific about
+		package and version.
+              </para>
+            </section>
+        </para>
+        <para>
+          <section id="enabling-commercially-licensed-recipes-helpers">
+            <title>Other Variables Related to Commercial Licenses</title>
+            <para>
+	      There are a few other variables related to commercial
+	      license handling defined in the
+              <filename>$HOME/poky/meta/conf/distro/include/default-distrovars.inc</filename> file:
+              <literallayout class='monospaced'>
+		COMMERCIAL_AUDIO_PLUGINS ?= ""
+		COMMERCIAL_VIDEO_PLUGINS ?= ""
+		COMMERCIAL_QT = ""
+              </literallayout>
+            </para> 
+            <para>
+              If you want to enable these components, you can do so by making sure you have
+              the following statements in your local.conf configuration file:
+              <literallayout class='monospaced'>
+		COMMERCIAL_AUDIO_PLUGINS = "gst-plugins-ugly-mad \
+		gst-plugins-ugly-mpegaudioparse"
+		COMMERCIAL_VIDEO_PLUGINS = "gst-plugins-ugly-mpeg2dec \
+		gst-plugins-ugly-mpegstream gst-plugins-bad-mpegvideoparse"
+		COMMERCIAL_QT ?= "qmmp"
+		LICENSE_FLAGS_WHITELIST = "commercial_gst-plugins-ugly commercial_gst-plugins-bad commercial_qmmp"
+              </literallayout>
+	      Of course, you could also create a matching whitelist
+	      for those components using the more general "commercial"
+	      in the whitelist, but that would also enable all the
+	      other packages with LICENSE_FLAGS containing
+	      "commercial", which you may or may not want:
+              <literallayout class='monospaced'>
+		LICENSE_FLAGS_WHITELIST = "commercial"
+              </literallayout>
+            </para>
+            <para>
+              Specifying audio and video plug-ins as part of the 
+              <filename>COMMERCIAL_AUDIO_PLUGINS</filename> and 
+              <filename>COMMERCIAL_VIDEO_PLUGINS</filename> statements
+              or commercial qt components as part of
+              the <filename>COMMERCIAL_QT</filename> statement (along
+              with the enabling LICENSE_FLAGS_WHITELIST) includes the
+              plug-ins or components into built images, thus adding
+              support for media formats or components.
+            </para>
+	  </section>
+	</para>
     </section>
 </section>
 </chapter>
-- 
1.7.0.4


