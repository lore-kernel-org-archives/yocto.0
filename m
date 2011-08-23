Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA520E0122B
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 08:31:02 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Aug 2011 08:31:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,270,1312182000"; d="scan'208";a="43313380"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.18.129])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2011 08:31:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2011 16:30:35 +0100
Message-Id: <e825f7e1e92818e22f6ad34585afb43ff981bd46.1314113115.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 02/14] documentation: update bitbake --help output
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
X-List-Received-Date: Tue, 23 Aug 2011 15:31:02 -0000

A number of things have changed since the last time this was updated.
Also replace reference to this being the manpage.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-bitbake.xml |   30 +++++++++++++++---------
 1 files changed, 19 insertions(+), 11 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-bitbake.xml b/documentation/poky-ref-manual/ref-bitbake.xml
index 24e4a06..8fdce3f 100644
--- a/documentation/poky-ref-manual/ref-bitbake.xml
+++ b/documentation/poky-ref-manual/ref-bitbake.xml
@@ -251,7 +251,7 @@ PREFERRED_PROVIDER_virtual/kernel = "linux-rp"
         <title>BitBake Command Line</title>
 
         <para>
-            Following is the BitBake manpage:
+            Following is the BitBake help output:
         </para>
 
         <screen>
@@ -268,7 +268,8 @@ Options:
   -h, --help            show this help message and exit
   -b BUILDFILE, --buildfile=BUILDFILE
                         execute the task against this .bb file, rather than a
-                        package from BBFILES.
+                        package from BBFILES. Does not handle any
+                        dependencies.
   -k, --continue        continue as much as possible after an error. While the
                         target that failed, and those that depend on it,
                         cannot be remade, the other dependencies of these
@@ -276,8 +277,6 @@ Options:
   -a, --tryaltconfigs   continue with builds by trying to use alternative
                         providers where possible.
   -f, --force           force run of specified cmd, regardless of stamp status
-  -i, --interactive     drop into the interactive mode also called the BitBake
-                        shell.
   -c CMD, --cmd=CMD     Specify task to execute. Note that this only executes
                         the specified task for the providee and the packages
                         it depends on, i.e. 'compile' does not implicitly call
@@ -285,26 +284,35 @@ Options:
                         what you are doing). Depending on the base.bbclass a
                         listtasks tasks is defined and will show available
                         tasks
-  -r FILE, --read=FILE  read the specified file before bitbake.conf
+  -r PREFILE, --read=PREFILE
+                        read the specified file before bitbake.conf
+  -R POSTFILE, --postread=POSTFILE
+                        read the specified file after bitbake.conf
   -v, --verbose         output more chit-chat to the terminal
   -D, --debug           Increase the debug level. You can specify this more
                         than once.
   -n, --dry-run         don't execute, just go through the motions
+  -S, --dump-signatures
+                        don't execute, just dump out the signature
+                        construction information
   -p, --parse-only      quit after parsing the BB files (developers only)
-  -d, --disable-psyco   disable using the psyco just-in-time compiler (not
-                        recommended)
   -s, --show-versions   show current and preferred versions of all packages
   -e, --environment     show the global or per-package environment (this is
                         what used to be bbread)
   -g, --graphviz        emit the dependency trees of the specified packages in
                         the dot syntax
-  -I IGNORED_DOT_DEPS, --ignore-deps=IGNORED_DOT_DEPS
-                        Stop processing at the given list of dependencies when
-                        generating dependency graphs. This can help to make
-                        the graph more appealing
+  -I EXTRA_ASSUME_PROVIDED, --ignore-deps=EXTRA_ASSUME_PROVIDED
+                        Assume these dependencies don't exist and are already
+                        provided (equivalent to ASSUME_PROVIDED). Useful to
+                        make dependency graphs more appealing
   -l DEBUG_DOMAINS, --log-domains=DEBUG_DOMAINS
                         Show debug logging for the specified logging domains
   -P, --profile         profile the command and print a report
+  -u UI, --ui=UI        userinterface to use
+  -t SERVERTYPE, --servertype=SERVERTYPE
+                        Choose which server to use, none, process or xmlrpc
+  --revisions-changed   Set the exit code depending on whether upstream
+                        floating revisions have changed or not
         </screen>
     </section>
 
-- 
1.7.4.1


