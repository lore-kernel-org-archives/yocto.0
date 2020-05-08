Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web11.1239.1588980365885905313
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 May 2020 16:26:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@axis.com header.s=axis-central1 header.b=ev+CWSgr;
 spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; l=1697; q=dns/txt; s=axis-central1;
  t=1588980366; x=1620516366;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=rKZ2siH3K4tUyEXxSddnJ8GDlyMmTnqQcI9L4ulS/6w=;
  b=ev+CWSgrXSpFhOetOvK8HUPf+5sr1pc5xKnOzSLvoofVGMRZKDC0B2Sd
   krm0Ib6GzKit4JahbfuHLDoNZ0Ye8z2qkc4CxY0eD3c6G3XQsUDsEDNxG
   uPV0qfdrRp/914w73q/2+JlL9KK5jxDqrOy05hCpYo4mPHMMVZ0xl/4lO
   ZcdCH9y2sx42efEUJ4rS/kSbH1ztEDJfLYe6zdt/5socST/6ciW6/d2Fr
   O423vYwlge8HtnEkPtrnRUNWmJxi8xJBrarjvfHmnL8uOe7sZ8m1kqW9G
   fgZzZHMHgW1hre6x7x2xTSvpuBjl7UccYpQXFC5vteDO9LrefcirPbHJF
   w==;
IronPort-SDR: 0psMwiyBpjT9boNBtj5ub8tx4ZwI31RulXCnSpfA/MkNZLv9bQzf2uUUtEF5zrh/U7xOZrejd4
 PadmQ5wlSRixZREFruhSmQRFNn96yuXIIuSvJeZDOdvGASGZNbSJXt3CAR4qX35rqcl5S+YNVI
 tyX+mDeB+iuLWPml/8HfpdJzHDrkn9jPw8DJaJxjyndhGjTal+lpszn/EadMPCfw2qiZAsdytY
 rtu7UxV3ck85BgiaJ1hTeshIDfHKSbaWgP2u+N2dkpD5t82hn3K4SRVwCzm1L4p5BEYi0nlzOh
 PWI=
X-IronPort-AV: E=Sophos;i="5.73,369,1583190000"; 
   d="scan'208";a="8549387"
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: <yocto@lists.yoctoproject.org>
Subject: [patchtest-oe][PATCH v2] test_mbox_mailinglist: Correct suggested mailing lists for docs and poky
Date: Sat, 9 May 2020 01:25:53 +0200
Message-ID: <20200508232553.9545-1-pkj@axis.com>
X-Mailer: git-send-email 2.21.3
MIME-Version: 1.0
Return-Path: pkj@axis.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

A new mailing list was recently introduced for documentation related
discussions including patches. And the domain for Yocto mailing lists
was changed with the migration to groups.io.

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---

PATCH v2: Removed Change-Id trailer.

 tests/test_mbox_mailinglist.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tests/test_mbox_mailinglist.py b/tests/test_mbox_mailinglist.py
index e5700b4..d2781af 100644
--- a/tests/test_mbox_mailinglist.py
+++ b/tests/test_mbox_mailinglist.py
@@ -38,8 +38,8 @@ class MailingList(base.Base):
     Project = collections.namedtuple('Project', ['name', 'listemail', 'gitrepo', 'paths'])
 
     bitbake = Project(name='Bitbake', listemail='bitbake-devel@lists.openembedded.org', gitrepo='http://git.openembedded.org/bitbake/', paths=paths['bitbake'])
-    doc     = Project(name='Documentantion', listemail='yocto@yoctoproject.org', gitrepo='http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/', paths=paths['documentation'])
-    poky    = Project(name='Poky', listemail='poky@yoctoproject.org', gitrepo='http://git.yoctoproject.org/cgit/cgit.cgi/poky/', paths=paths['poky'])
+    doc     = Project(name='Documentantion', listemail='docs@lists.yoctoproject.org', gitrepo='http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/', paths=paths['documentation'])
+    poky    = Project(name='Poky', listemail='poky@lists.yoctoproject.org', gitrepo='http://git.yoctoproject.org/cgit/cgit.cgi/poky/', paths=paths['poky'])
     oe      = Project(name='oe', listemail='openembedded-devel@lists.openembedded.org', gitrepo='http://git.openembedded.org/meta-openembedded/', paths=paths['oe'])
 
 
-- 
2.21.3

