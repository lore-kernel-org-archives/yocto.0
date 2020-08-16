Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web10.31590.1597613982594644693
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Aug 2020 14:39:42 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.195, mailfrom: foss@0leil.net)
X-Originating-IP: 80.110.110.75
Received: from fiqs.lan (80-110-110-75.cgn.dynamic.surfer.at [80.110.110.75])
	(Authenticated sender: foss@0leil.net)
	by relay3-d.mail.gandi.net (Postfix) with ESMTPA id 60ED860004;
	Sun, 16 Aug 2020 21:39:39 +0000 (UTC)
From: foss@0leil.net
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <foss@0leil.net>
Subject: [auh] [PATCH RESEND 1/5] modules: statistics: handle recipes without maintainers
Date: Sun, 16 Aug 2020 23:39:31 +0200
Message-Id: <20200816213935.7733-1-foss@0leil.net>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Even though a recipe might not have a MAINTAINER set, one still might want to
upgrade it.

This makes it possible to upgrade said kind of recipes and still keep the stats
meaningful by displaying one for all maintainerless recipes.

Signed-off-by: Quentin Schulz <foss@0leil.net>
---
 - RESEND because I was not subscribed to the ML with this address already,
 - please ignore, resent only for archive purposes on the ML, this patch
   has been merged already

 modules/statistics.py | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/modules/statistics.py b/modules/statistics.py
index 323d042..77db151 100644
--- a/modules/statistics.py
+++ b/modules/statistics.py
@@ -71,8 +71,10 @@ class Statistics(object):
                 stat_msg += "    * " + status + ": " + str(list_len) + "\n"
 
                 for pkg, new_ver, maintainer in self.upgrade_stats[status]:
-                    stat_msg += "        " + pkg + ", " + new_ver + ", " + \
-                                maintainer + "\n"
+                    stat_msg += "        " + pkg + ", " + new_ver
+                    if maintainer:
+                        stat_msg += ", " + maintainer
+                    stat_msg += "\n"
 
         if self.total_attempted == 0:
             percent_succeded = 0
@@ -93,7 +95,7 @@ class Statistics(object):
         for m in self.maintainers:
             attempted = self.succeeded[m] + self.failed[m]
             stat_msg += "    %s: attempted=%d succeeded=%d(%.2f%%) failed=%d(%.2f%%)\n" % \
-                        (m.split("@")[0], attempted, self.succeeded[m],
+                        (m.split("@")[0] if m else "Maintainerless", attempted, self.succeeded[m],
                         self.succeeded[m] * 100.0 / attempted,
                         self.failed[m],
                         self.failed[m] * 100.0 / attempted)
-- 
2.26.2

