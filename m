Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38F8EE00C70; Tue,  6 Oct 2015 13:11:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17CEDE00AE6
	for <yocto@yoctoproject.org>; Tue,  6 Oct 2015 13:11:43 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Oct 2015 13:11:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,645,1437462000"; d="scan'208";a="820849615"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.68])
	by fmsmga002.fm.intel.com with ESMTP; 06 Oct 2015 13:11:42 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  6 Oct 2015 15:11:45 -0500
Message-Id: <1444162305-1864-2-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1444162305-1864-1-git-send-email-anibal.limon@linux.intel.com>
References: <1444162305-1864-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Subject: [PATCH 2/2][auh] README: Upgrade instructions with changes done in 1.9.
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
X-List-Received-Date: Tue, 06 Oct 2015 20:11:46 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add section zero for point that needs Yocto dependencies also git
configured.

Add description about the buildhistory output if upgrade succeed.

Remove mode usage for upgrade two recipes in automatic now is
deprecated the available modes are automatic for all recipes and manual
for one.

[YOCTO #7439]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 README | 33 ++++++++++++++++++++-------------
 1 file changed, 20 insertions(+), 13 deletions(-)

diff --git a/README b/README
index dbcc755..44c3bf1 100644
--- a/README
+++ b/README
@@ -10,13 +10,20 @@ published upstream.
 Setup
 -----
 
+0. AUH needs all the dependencies listed for Yocto also requires git 
+   configured because uses it to save upgrades, you need to have git
+   user and email configured, example:
+
+   $ git config --global user.name "Some Name"
+   $ git config --global user.email "somename@somedomain.com"
+
 1. Ensure you have a working copy of the build system that is configured
    and ready to run, i.e. you've run the oe-init-build-env script to
    create a build directory and edited local.conf / bblayers.conf as
    desired.
 
-2. Prepare a configuration file, by default in $BUILDDIR/upgrade-helper,
-   as below:
+2. Prepare a configuration file, by default in $BUILDDIR/upgrade-helper/
+   upgrade-helper.conf, as below:
 
 --------------- snip ---------------
 [maintainer_override]
@@ -27,20 +34,28 @@ johhny.bravo@bravo.com=john.doe@doe.com
 [settings]
 # recipes in blacklist will be skipped
 blacklist=python glibc gcc
+
 # only recipes belonging to maintainers in whitelist will be attempted
 maintainers_whitelist=jane.doe@doe.com john.doe@doe.com johhny.bravo@bravo.com
+
 # SMTP server
 smtp=smtp.my-server.com:25
+
 # from whom should the mails arrive
 from=upgrade.helper@my-server.com
+
 # who should get the status mail with statistics, at the end
 status_recipients=john.doe@doe.com
+
 # clean sstate directory before upgrading
 clean_sstate=yes
+
 # clean tmp directory before upgrading
 clean_tmp=yes
+
 # keep previous commits or not
 drop_previous_commits=yes
+
 # machines to test build with
 machines=qemux86 qemux86-64 qemuarm qemumips qemuppc
 --------------- snip ---------------
@@ -50,10 +65,6 @@ machines=qemux86 qemux86-64 qemuarm qemumips qemuppc
 
 --------------- snip ---------------
 INHERIT =+ "distrodata"
-require conf/distro/include/recipe_color.inc
-require conf/distro/include/distro_alias.inc
-require conf/distro/include/maintainers.inc
-require conf/distro/include/upstream_tracking.inc
 --------------- snip ---------------
 
 WARNING: if you are using the default maintainers.inc file supplied
@@ -72,8 +83,10 @@ INHERIT =+ "buildhistory"
 BUILDHISTORY_COMMIT" = "1"
 --------------- snip ---------------
 
-(Do not remove any other inherited class in the process, e.g. distrodata).
+If upgrade is succesful buildhistory diff's are generated into
+$BUILDDIR/upgrade-helper/work/recipe/buildhistory-diff.txt.
 
+(Do not remove any other inherited class in the process, e.g. distrodata).
 
 Usage
 -----
@@ -88,9 +101,6 @@ Some manual usage examples:
   interactively:
     $ upgrade-helper.py xmodmap -t 1.2.3
 
-* To upgrade a list of recipes in automatic mode:
-    $ upgrade-helper.py -a xmodmap xf86-video-intel
-
 * To attempt to upgrade all recipes and automatically send email
   messages to maintainers for each attempted recipe as well as a
   status mail at the end, use:
@@ -101,7 +111,6 @@ job; the "weeklyjob.sh" file distributed with this project is the basis
 of a script you can call from a cron job and also provides an example
 crontab line.
 
-
 Maintenance
 -----------
 
@@ -115,11 +124,9 @@ Contributions are welcome. Please send patches / pull requests to
 yocto@yoctoproject.org with '[auh]' in the subject also CC the
 current maintainer: Aníbal Limón <anibal.limon@linux.intel.com>.
 
-
 License
 -------
 
 This application is licensed under the GNU General Public License
 version 2.0 or (at your option) any later version. Please see the
 LICENSE file for further details.
-
-- 
1.9.1


