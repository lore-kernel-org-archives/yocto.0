Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45ED7E01235
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 08:31:08 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Aug 2011 08:31:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,270,1312182000"; d="scan'208";a="43313463"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.18.129])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2011 08:31:07 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2011 16:30:42 +0100
Message-Id: <c948e16d47487d59d4d32093f6224c50c703efac.1314113115.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 09/14] documentation: update TERMCMD/TERMCMDRUN documentation
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
X-List-Received-Date: Tue, 23 Aug 2011 15:31:08 -0000

* xterm is now the default
* Konsole from KDE 4.x will no longer work due to changes in behaviour

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/development.xml   |    2 +-
 documentation/poky-ref-manual/ref-variables.xml |   10 +++++++++-
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/documentation/poky-ref-manual/development.xml b/documentation/poky-ref-manual/development.xml
index c37b481..c3aeeb8 100644
--- a/documentation/poky-ref-manual/development.xml
+++ b/documentation/poky-ref-manual/development.xml
@@ -561,7 +561,7 @@
         </para>
 
         <para>
-            The default shell used by "devshell" is the gnome-terminal. 
+            The default shell used by "devshell" is xterm.
             You can use other forms of terminal can by setting the <glossterm>
             <link linkend='var-TERMCMD'>TERMCMD</link></glossterm> and <glossterm>
             <link linkend='var-TERMCMDRUN'>TERMCMDRUN</link></glossterm> variables 
diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index 095ccf6..eab3bda 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -965,9 +965,17 @@ recipes-graphics/xorg-font/fiont-alias_1.0.2.bb:PR - "$(INC_PR).0"
                 <para>
                     This command is used by BitBake to launch a terminal window with a
                     shell. The shell is unspecified so the user's default shell is used. 
-                    By default it is set to <command>gnome-terminal</command> but it can 
+                    By default it is set to <command>xterm</command> but it can
                     be any X11 terminal application or terminal multiplexers like screen.
                 </para>
+                <para>
+                    NOTE: whilst KONSOLE_TERMCMD and KONSOLE_TERMCMDRUN are provided
+                    and will work with KDE's Konsole terminal application Konsole from KDE 3,
+                    Konsole in KDE 4.0 and later will no longer work here due to the fact
+                    that it now launches in the background by default, and it is not practically
+                    possible to wait until it has terminated. It is hoped that this can be fixed
+                    in a future version.
+                </para>
             </glossdef>
         </glossentry>
 
-- 
1.7.4.1


