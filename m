Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web11.564.1587009576695064730
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Apr 2020 20:59:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=Dt4EyuI8;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; l=1709; q=dns/txt; s=axis-central1;
  t=1587009577; x=1618545577;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=U1wAYXdC8RwodOJtyu4uUzfgyNoIwg254cghIaWRWDI=;
  b=Dt4EyuI87PFu9AE4FCKrZNulNHtcklu3+f532HLckkw2QcAeSPlXIU2B
   lpM9Gj6EDIZd46KYW58hV/goeIdqPWhHIIosOUSoM2tG35VqsLVErImU1
   88DS6CPrV3irVnzWsIQSRFUO7zgNaV6oHLPy/Qk2YAo6QQY5L0VSX+b6D
   tUaYpIz2YWU3QmsZ8SEqmoMzG+kcbNsCXkqz3kL8gBnWiqw29lcr7ztK/
   JEZK6q1XiFiVzJE3F9o/yoMeNqsPmApU+okGO+vSJerXyurk4TY309uuA
   +X5bcmUZAyklYk9WDLYe4q/AkHtI86EmUCnvKSmpsx0/wu4BK8x00UR5R
   A==;
IronPort-SDR: 9Z5AMe3sXxUVN8KerVXGHGwU5oXYbspjvAG+G6zFQXRlmL8JeNTBvgzGi4wK6xPVoWzSeDlys4
 d0vNOeCmyaS9ywxgQyNfwQJ+/EmEP5Jo5Ni2zB0y5kKArUBHeyfoOh7zsvv2RdrJbF9VV4rcTe
 EJ7TbgTRgfvCd+17baodAC2FTt++o5IyvffrS1BvGXFRpbtGauL0lA6wmspN7y9JE7QBGU2dAa
 ACMCBBMgV8ytUcZ4RUMVI8Vy9SyZ3WcZHDQBvxFmieaN7XH6dX5le698n66ljROWMdBE6Ypu9M
 ge0=
X-IronPort-AV: E=Sophos;i="5.72,388,1580770800"; 
   d="scan'208";a="7469945"
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: <yocto@lists.yoctoproject.org>
Subject: [patchtest-oe][PATCH] test_mbox_mailinglist: Correct suggested mailing lists for docs and poky
Date: Thu, 16 Apr 2020 05:59:30 +0200
Message-ID: <20200416035930.16355-1-pkj@axis.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Return-Path: pkj@axis.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

A new mailing list was recently introduced for documentation related
discussions including patches. And the domain for Yocto mailing lists
was changed with the migration to groups.io.

Change-Id: If687dcbaef4adf128196d8c80f3ea8b1b31b7738
Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
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
2.21.1

