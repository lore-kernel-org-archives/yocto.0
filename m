Return-Path: <bevenson@melinkcorp.com>
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82C83E016A1
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2013 11:11:29 -0700 (PDT)
Received: from [98.100.91.242] ([98.100.91.242:33027]
	helo=ih3-development.melinkcorp.local)
	by cdptpa-oedge01 (envelope-from <bevenson@melinkcorp.com>)
	(ecelerity 3.5.0.35861 r(Momo-dev:tip)) with ESMTP
	id E7/A4-15529-0D33C525; Mon, 14 Oct 2013 18:11:28 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: elizabeth.flanagan@intel.com,
	yocto@yoctoproject.org
Date: Mon, 14 Oct 2013 14:11:06 -0400
Message-Id: <1381774266-7522-1-git-send-email-bevenson@melinkcorp.com>
X-Mailer: git-send-email 1.7.9.5
X-RR-Connecting-IP: 107.14.168.118:25
X-Cloudmark-Score: 0
Subject: [yocto-autobuilder] [PATCH 1/1] README-NEW-AUTOBUILDER: Add to scheduler documentation
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
X-List-Received-Date: Mon, 14 Oct 2013 18:11:30 -0000

Adds detail on the Nightly scheduler properties that are
available.  Notes default settings where appropriate and
notes which values must be set by the user.

Signed-off-by: Bryan Evenson <bevenson@melinkcorp.com>
---
 README-NEW-AUTOBUILDER |   12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/README-NEW-AUTOBUILDER b/README-NEW-AUTOBUILDER
index 27f892f..430e2a3 100644
--- a/README-NEW-AUTOBUILDER
+++ b/README-NEW-AUTOBUILDER
@@ -145,10 +145,14 @@ scheduler: A list of dicts. Each item defines a scheduler associated with this
        are type-specific:
 
           Nightly scheduler properties:
-               month
-               dayOfWeek
-	       hour
-	       minute
+               month: The month in which to start the build, with January = 1.
+                    This defaults to '*', meaning every month.
+               dayOfWeek: The day of the week in which to start the build, with
+                    Monday = 1.  This defaults to '*', meaning every day.
+	       hour: The hour of the day in which to start the build, with 
+                    12:00 AM = 0.  This must be set by the user.
+	       minute: The minute of the hour in which to start the build, with
+                    0 to 59 as valid values.  This must be set by the user.
 
 	  SingleBranchScheduler properties:
                repository: the repository to attach the scheduler to; this
-- 
1.7.9.5


