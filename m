Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2609FE0081E; Fri, 21 Oct 2016 13:37:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EA07E00509
	for <yocto@yoctoproject.org>; Fri, 21 Oct 2016 13:37:52 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 21 Oct 2016 13:37:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,526,1473145200"; d="scan'208";a="892602050"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga003.jf.intel.com with ESMTP; 21 Oct 2016 13:37:42 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 21 Oct 2016 13:39:46 -0700
Message-Id: <1477082386-14748-1-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [eclipse-poky][PATCH] Update and enhance README.txt
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
X-List-Received-Date: Fri, 21 Oct 2016 20:37:56 -0000

* Move scripts/readme.txt -> README.txt
* Update information which had gotten out of date
* Remove non-generic instructions
* Augment the description of the work flow
  - Clarify command line options for the scripts
  - Describe how to update to a newer Eclipse release
  - Mention the Eclipse mailing lists to help stay informed

[YOCTO #10111]

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 README.txt         | 250 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 scripts/readme.txt |  71 ---------------
 2 files changed, 250 insertions(+), 71 deletions(-)
 create mode 100644 README.txt
 delete mode 100644 scripts/readme.txt

diff --git a/README.txt b/README.txt
new file mode 100644
index 0000000..c7d1fa5
--- /dev/null
+++ b/README.txt
@@ -0,0 +1,250 @@
+Note: PART I and PART II can be skipped if you have already done that.
+
+Part I: Base environment setup
+
+I-1. Install Build Dependencies
+
+I-1.1 Fedora
+
+  sudo dnf install java-1.8.0-openjdk xsltproc wget tar make git
+
+I-1.2 Ubuntu
+
+  sudo apt-get install openjdk-8-jdk xsltproc wget tar make git
+
+I-1.3 OpenSUSE
+
+  sudo zypper install java-1_8_0-openjdk xsltproc wget tar make git
+
+
+I-3. Proxy Settings (If you're behind some firewall)
+
+  The currently recommended solution is to use Chameleonsocks:
+
+    https://github.com/crops/chameleonsocks
+
+  The legacy method of handling proxy settings is included in Appendix A.
+
+
+I-4. Get the Source Code for the Yocto Project Eclipse Plugin
+
+  git clone git://git.yoctoproject.org/eclipse-poky.git
+
+  The scripts used for building, including on the auto builder, are under
+  the "scripts" directory.
+
+  The repo has several branches, for different releases of Eclipse (e.g.
+  "neon-master") and also for difference releases of the Yocto Project
+  (e.g. "neon/morty").
+
+
+Part II: Setup the Build Environment
+
+II-1. Modify the scripts/setup.sh to set appropriate proxy settings.
+
+  If you are not using Chameleonsocks, set PROXY to a http proxy URL
+  and PORT to the port number. Comment out these 2 variables if proxy
+  is not required.
+
+
+II-2. Run setup.sh Script
+
+  Run <path to>/scripts/setup.sh to set up the build environment. 
+  This will install the Eclipse SDK and relevant plugins required to build 
+  the Yocto Project Eclipse plug-ins. It will also create a convenience
+  symbolic link to the Eclipse executable.
+
+  If you are working on a newer Eclipse release, where the upstream has not
+  yet been mirrored to http://downloads.yoctoproject.org/eclipse/, you
+  should instead run:
+
+  <path to>/scripts/setup.sh --upstream
+
+
+Part III: Build & Install Yocto Eclipse plug-in
+
+III.1 Build the Yocto Eclipse Plug-in
+
+  To build the Yocto Eclipse plug-in, simply run 
+
+"ECLIPSE_HOME=<eclipse path> <path to>/scripts/build.sh <plugin branch or tag name> <documentation branch or tag name> <release name> 2>&1 | tee -a build.log"
+
+  Note that this will clone the indicated branch of yocto-docs from
+  git.yoctoproject.org. If you pass in an invalid branch/tag, the build
+  will fail.
+
+  The <eclipse path> is the absolute path where you installed Eclipse
+  in step II-2.
+
+  If successful, three files will be generated in the directory where
+  you invoked the "build.sh" script:
+    org.yocto.doc-<release name>-<date>.zip, 
+    org.yocto.sdk-<release name>-<date>.zip and 
+    org.yocto.sdk-<release name>-<date>-archive.zip 
+
+  If you are planning to build multiple versions of the plugins (for
+  different Eclipse releases for instance), you can run the setup and build
+  scripts from any directory, as long as you use the proper paths.
+
+  When switching between branches, you may need to run the setup.sh script
+  again to properly setup a different Eclipse environment. You may want to
+  change the "eclipse" symbolic link to point to the desired Eclipse
+  installation so that the already downloaded and installed files will be
+  recognized.
+
+
+III.2 Building Local Changes to Yocto Eclipse Plug-in
+
+  If you are building from a local branch, you should instead run:
+
+"ECLIPSE_HOME=<eclipse path> <path to>/scripts/build.sh -l <plugin branch or tag name> <documentation branch or tag name> <release name> 2>&1 | tee -a build.log"
+
+
+III.3 Install the Yocto Eclipse Plug-in
+
+  The file with the "-archive" in its name is the archive zip used for Eclipse
+  update manager (the "p2 repository"). The user can use the Eclipse update 
+  manager to install it:
+    Help -> Install New Software... -> Add... -> Archive...
+  This is the recommended way to install the plugin during development.
+
+  The files without the "-archive" in their names are the zip containing
+  only the plugins/features. The user can unzip them into their target
+  eclipse "plugins" folder to install it.
+
+
+Part IV. Updating and Keeping Up-to-Date with Upstream Eclipse
+
+IV.1 Updating setup.sh script
+
+  When you would like to update the plugin to build for a new Eclipse release,
+  you need to make a few changes in the setup.sh script.
+
+  1. If you are building for a non "Release" version of Eclipse, set the
+     appropriate value for "ep_rel", for instance "S-" for stable.
+
+  2. Set "ep_ver" to the numeric version of the release, for instance "4.6"
+     for the original Neon release or "4.5.2" for the Mars.2 release or
+     "4.7M2" for the second Oxygen milestone.
+
+  3. Set the "ep_date" to the date stamp on the tarball. The easiest way to
+     determine this is to go the main Eclipse website, click on the Downloads
+     button, click on the Download Packages link, click on the "Other builds"
+     link in the "More Downloads" sidebar and then hover over the version you
+     would like to download to see its fully qualified name. The "Other builds"
+     link currently resolves to http://download.eclipse.org/eclipse/downloads/
+     but this may change in the future.
+
+  4. Set the MAIN_SITE to point to the desired release URL.
+
+  5. Set the UPDATE_SITE to point to the correct update site for the release
+     in question. Note that for milestone releases (pre-release), the URL is
+     different since the numeric version has "milestones" appended to it (e.g.
+     "4.7milestones" for Oxygen pre-release).
+
+  6. Set the versions of the various components to the desired version,
+     for instance CDTFEAT="9.0.0" for the original Neon release, but
+     became "9.1.0" for the Neon.1 release and will be "9.2.0" for the
+     upcoming Oxygen release.
+
+  7. If any new components need to be added (new build dependencies), the
+     name of the feature must match exactly in order for the convenience
+     "update_feature_remote" function to work properly. A recommended way
+     to explore P2 repositories is included in the Oomph Setup SDK.
+     It can be found under "Window -> Show View -> Other... -> Oomph ->
+     Repository Explorer".
+
+
+IV.2 Staying Informed
+
+  Eclipse has either a major release or a point release approximately every
+  three months. At times, plugins and features may be moved to a different
+  update site. As an example, between the Mars release and the Mars.1 release,
+  the RSE plugin was officially deprecated and moved to a separate update site.
+
+  In order to stay on top of these changes, it is highly recommended that you
+  subscribe to at least the following mailing lists:
+
+    1. C/C++ Development Tooling:
+        https://dev.eclipse.org/mailman/listinfo/cdt-dev
+
+    2. Eclipse Packaging Project:
+        https://dev.eclipse.org/mailman/listinfo/epp-dev
+
+    3. Cross Project Issues:
+        https://dev.eclipse.org/mailman/listinfo/cross-project-issues-dev
+
+  It is on these mailing lists that major API and ABI breaking changes will be
+  announced. As an example, the minimum required JDK version for Neon is 1.8.0,
+  which was announced on both the "EPP" and the "Cross Project" lists. These
+  mailing lists are also a place to discuss planned new features and commun-
+  icate with other Eclipse developers. It is not particularly time-consuming
+  to stay up to date, but if you wait for a year or two you might find that
+  upstream Eclipse has changed dramatically and it can be difficult to sync.
+   
+
+Part V. Sharing with the Community
+
+V.1 Sending Patches to the Mailing List
+
+  Any changes to the eclipse-poky plugin should be sent as patches to
+  the Yocto Project mailing list (yocto@yoctoproject.org), with 
+
+    --subject-prefix="eclipse-poky][PATCH" 
+
+  This is a subscriber only list, so you will need to sign up for access at:
+
+    https://lists.yoctoproject.org/listinfo/yocto
+
+  Patches should follow the same guidelines that are used for other parts of
+  the Yocto Project and Open Embedded code-base:
+
+    http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
+
+  Note that code included in the eclipse-poky plugin should be under the EPL
+  (Eclipse Public License) or a compatible license. 
+
+V.2 Sharing Code in the eclipse-poky-contrib Repository
+
+  Similar to other -contrib repositories in the Yocto Project, there is
+  an eclipse-poky-contrib repository created for community members to be
+  able to share work-in-progress code or code for pull-requests.
+
+    http://git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky-contrib/
+
+  To request access, follow the same instructions as for poky-contrib:
+
+    https://wiki.yoctoproject.org/wiki/Poky_Contributions#Request_Access
+
+
+Appendix A. Proxy Settings without Chameleonsocks
+
+A-1. using git through a SOCKS proxy(If you're behind some firewall)
+
+A-1.1 Create a wrapper script for netcat
+  cat > ~/bin/proxy-wrapper
+
+  #!/bin/sh
+  PROXY=proxy.example.com
+  PORT=8080
+  METHOD="-X 5 -x ${PROXY}:${PORT}"
+
+  nc $METHOD $*
+
+  Then Ctlr+D to save the file and "chmod +x ~/bin/proxy-wrapper"
+
+  Note: if netcat is not installed, please "sudo zypper install netcat-openbsd".
+
+A-1.2 set git proxy environment
+  add the following line to your ~/.bashrc and "source ~/.bashrc"
+
+  export GIT_PROXY_COMMAND="/somepath/bin/proxy-wrapper"
+
+  Please be noted that it should be absolute path, since "~" is not supported.
+
+A-2. using svn through a http_proxy(If you're behind some firewall)
+  Modify the ~/.subversion/servers
+
+  http-proxy-host = proxy.example.com
+  http-proxy-port = 8888
+
diff --git a/scripts/readme.txt b/scripts/readme.txt
deleted file mode 100644
index ba55b64..0000000
--- a/scripts/readme.txt
+++ /dev/null
@@ -1,71 +0,0 @@
-Note: PART I and PART II can be skipped if you have already done that.
-
-Part I: Base environment setup
-I-1. install JDK
-  sudo zypper install java-1_6_0-openjdk
-
-I-2. install X11 related packages for eclipse running
-  sudo zypper install xorg-x11-xauth
-
-I-3. using git through a SOCKS proxy(If you're behind some firewall)
-I-3.1 Create a wrapper script for netcat
-  cat > ~/bin/proxy-wrapper
-
-  #!/bin/sh
-  PROXY=proxy-jf.intel.com
-  PORT=1080
-  METHOD="-X 5 -x ${PROXY}:${PORT}"
-
-  nc $METHOD $*
-
-  Then Ctlr+D to save the file and "chmod +x ~/bin/proxy-wrapper"
-
-  Note: if netcat is not installed, please "sudo zypper install netcat-openbsd".
-
-I-3.2 set git proxy environment
-  add the following line to your ~/.bashrc and "source ~/.bashrc"
-
-  export GIT_PROXY_COMMAND="/somepath/bin/proxy-wrapper"
-
-  Please be noted that it should be absolute path, since "~" is not supported.
-
-I-4. using svn through a http_proxy(If you're behind some firewall)
-  Modify the ~/.subversion/servers
-
-  http-proxy-host = proxy.jf.intel.com
-  http-proxy-port = 911
-
-I-5. Get the scripts from eclipse-poky git
-  git clone git://git.pokylinux.org/eclipse-poky.git
-
-  The scripts used for auto builder is under the directory of "scripts".
-
-
-Part II: Setup the build environment
-II-1. Modify the scripts/setup.sh to set appropriate proxy settings.
-  Set PROXY to a http proxy URL and PORT to the port number. Comment out 
-  these 2 variables if proxy is not required.
-
-II-2. Run scripts/setup.sh to set up the build environment. 
-  This will install the eclipse and relevant plugins required to build 
-  Yocto eclipse plug-in.
-
-Part III: Build & Install Yocto Eclipse plug-in
-
-To build the Yocto Eclipse plug-in, simply run 
-"ECLIPSE_HOME=<eclipse path> scripts/build.sh <branch name> <release name>".
-
-The <eclipse install path> is the absolute path where you installed the 
-eclipse in step II-2.
-
-The <branch name> is the git branch name you build based on.
-
-If successful, 2 files org.yocto.sdk-<release name>-<date>.zip and 
-org.yocto.sdk.-<release name>-<date>-archive.zip will be genereated under the
-directory where you invoked the "build.sh" script.
-
-The file with the "-archive" in its name is the archive zip used for eclipse
-update manager. User should use eclipse update manager to install it.
-
-The file without the "-archive" in its name is the zip containing only the 
-plugins/features. User should unzip it to the their target eclipse to install it.
-- 
2.7.4


