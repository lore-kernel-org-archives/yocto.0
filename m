Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2FBDE014CC
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 07:35:20 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Sep 2012 07:35:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,374,1344236400"; d="scan'208";a="218100786"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.155])
	by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2012 07:35:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Sep 2012 15:35:02 +0100
Message-Id: <904456df7fa852cc528e37e370f4699c3048c7de.1346854096.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 04/12] documentation/poky-ref-manual: improve IMAGE_FEATURES reference
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
X-List-Received-Date: Wed, 05 Sep 2012 14:35:20 -0000

* apps-console-core has been effectively replaced by splash
* apps-x11-core, apps-x11-games have been removed
* ssh-server-* were added quite a while ago, add these here
* x11 has been added
* x11-base has changed behaviour slightly
* doc-pkgs was added
* nfs-server never exported the entire /, so remove this comment

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-features.xml |   28 +++++++++++++++---------
 1 file changed, 18 insertions(+), 10 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-features.xml b/documentation/poky-ref-manual/ref-features.xml
index 51bd73a..50acb4a 100644
--- a/documentation/poky-ref-manual/ref-features.xml
+++ b/documentation/poky-ref-manual/ref-features.xml
@@ -128,14 +128,21 @@
             Current list of 
             <filename>IMAGE_FEATURES</filename> contains the following:
             <itemizedlist>
-                <listitem><para><emphasis>apps-console-core:</emphasis> Core console applications such as 
-                    <filename>ssh</filename>, <filename>daemon</filename>, <filename>avahi daemon</filename>,
-                    <filename>portmap</filename> (for mounting NFS shares)</para></listitem>
-                <listitem><para><emphasis>x11-base:</emphasis> X11 server + minimal desktop</para></listitem>
+                <listitem><para><emphasis>splash:</emphasis> enable showing a splash screen during boot. By
+                    default, this is provided by <filename>psplash</filename>, which does allow customisation. If you prefer to
+                    use an alternative splash screen package you can do so by setting the <filename>SPLASH</filename> variable
+                    to a different package name (or names) within the image recipe or at the distro
+                    configuration level.
+                    </para></listitem>
+                <listitem><para><emphasis>ssh-server-dropbear:</emphasis> install the Dropbear minimal SSH server.
+                    </para></listitem>
+                <listitem><para><emphasis>ssh-server-openssh:</emphasis> install the OpenSSH SSH server,
+                    which is more full-featured than Dropbear. Note that if both this and ssh-server-dropbear
+                    are present in <filename>IMAGE_FEATURES</filename>, then OpenSSH will take
+                    precedence and Dropbear will not be installed.</para></listitem>
+                <listitem><para><emphasis>x11:</emphasis> X server</para></listitem>
+                <listitem><para><emphasis>x11-base:</emphasis> X server with minimal environment</para></listitem>
                 <listitem><para><emphasis>x11-sato:</emphasis> OpenedHand Sato environment</para></listitem>
-                <listitem><para><emphasis>apps-x11-core:</emphasis> Core X11 applications such as an 
-                    X Terminal, file manager, and file editor</para></listitem>
-                <listitem><para><emphasis>apps-x11-games:</emphasis> A set of X11 games</para></listitem>
                 <listitem><para><emphasis>tools-sdk:</emphasis> A full SDK that runs on the device
                     </para></listitem>
                 <listitem><para><emphasis>tools-debug:</emphasis> Debugging tools such as 
@@ -146,11 +153,12 @@
                     <filename>LTTng</filename></para></listitem>
                 <listitem><para><emphasis>tools-testapps:</emphasis> Device testing tools (e.g.
                     touchscreen debugging)</para></listitem>
-                <listitem><para><emphasis>nfs-server:</emphasis> NFS server (exports / over NFS 
-                    to everybody)</para></listitem>
+                <listitem><para><emphasis>nfs-server:</emphasis> NFS server</para></listitem>
                 <listitem><para><emphasis>dev-pkgs:</emphasis> Development packages (headers and 
                     extra library links) for all packages installed in a given image</para></listitem>
-                <listitem><para><emphasis>dbg-pkgs:</emphasis> Debug packages for all packages 
+                <listitem><para><emphasis>dbg-pkgs:</emphasis> Debug symbol packages for all packages 
+                    installed in a given image</para></listitem>
+                <listitem><para><emphasis>doc-pkgs:</emphasis> Documentation packages for all packages 
                     installed in a given image</para></listitem>
             </itemizedlist>
         </para>
-- 
1.7.9.5


