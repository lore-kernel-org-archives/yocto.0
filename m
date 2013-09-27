Return-Path: <bevenson@melinkcorp.com>
Received: from hrndva-omtalb.mail.rr.com (hrndva-omtalb.mail.rr.com
	[71.74.56.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16252E01654
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 06:22:56 -0700 (PDT)
X-Authority-Analysis: v=2.0 cv=R/aB6KtX c=1 sm=0 a=oH/T31WtClCaBcnw0WEUzA==:17
	a=GDJcWSoBFrAA:10 a=_POIvtf5yRMA:10 a=p0Hsp6PJnzcA:10
	a=qixkpPymAAAA:8 a=KGjhK52YXX0A:10 a=Wya2pNzmtjYA:10
	a=xsC9AEUCqibuug6PF24A:9 a=C3B5OrDE1XEA:10
	a=oH/T31WtClCaBcnw0WEUzA==:117
X-Cloudmark-Score: 0
X-Authenticated-User: 
X-Originating-IP: 98.100.91.242
Received: from [98.100.91.242] ([98.100.91.242:47483]
	helo=ih3-development.melinkcorp.local)
	by hrndva-oedge02.mail.rr.com (envelope-from <bevenson@melinkcorp.com>)
	(ecelerity 2.2.3.46 r()) with ESMTP
	id 16/AB-01080-FA685425; Fri, 27 Sep 2013 13:22:55 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Fri, 27 Sep 2013 09:22:36 -0400
Message-Id: <1380288156-26029-1-git-send-email-bevenson@melinkcorp.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [yocto-autobuilder][PATCH 1/1] Extend ignored file list
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
X-List-Received-Date: Fri, 27 Sep 2013 13:22:57 -0000

Adds more files and directories to .gitignore.  This includes
files and directories that are specific to a build, such as the
downloads directory and the sstate_mirror directory.  Verified
on my setup to ignore all generated files.

Signed-off-by: Bryan Evenson <bevenson@melinkcorp.com>
---
 .gitignore |   10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/.gitignore b/.gitignore
index dd5499c..f89cbb9 100644
--- a/.gitignore
+++ b/.gitignore
@@ -15,14 +15,20 @@
 .cfg
 
 TODO
+builds/
+downloads/
+sstate_mirror/
 yocto-master/http.log
 yocto-master/master.cfg
 yocto-master/state.sqlite
 yocto-master/twistd.log.1
+yocto-master/nightly*/*
+yocto-master/twistd.log
+yocto-master/public_html/default.css.new
+yocto-master/public_html/robots.txt.new
 yocto-slave/build-appliance/build(newcommits)
 yocto-slave/buildbot.tac
-yocto-slave/nightly-x86/.buildbot-sourcedata-YnVpbGQ=
-yocto-slave/nightly/build(newcommits)
+yocto-slave/nightly*/*
 yocto-slave/twistd.hostname
 yocto-slave/twistd.log
 yocto-slave/twistd.pid
-- 
1.7.9.5


