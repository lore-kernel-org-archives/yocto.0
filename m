Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web12.31381.1597613983474380897
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Aug 2020 14:39:43 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.195, mailfrom: foss@0leil.net)
X-Originating-IP: 80.110.110.75
Received: from fiqs.lan (80-110-110-75.cgn.dynamic.surfer.at [80.110.110.75])
	(Authenticated sender: foss@0leil.net)
	by relay3-d.mail.gandi.net (Postfix) with ESMTPA id A76C060006;
	Sun, 16 Aug 2020 21:39:41 +0000 (UTC)
From: "Quentin Schulz" <foss@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <foss@0leil.net>
Subject: [auh] [PATCH RESEND 3/5] upgradehelper.py: merge dict.get() followed by if into dict.get with a default
Date: Sun, 16 Aug 2020 23:39:33 +0200
Message-Id: <20200816213935.7733-3-foss@0leil.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200816213935.7733-1-foss@0leil.net>
References: <20200816213935.7733-1-foss@0leil.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Quentin Schulz <foss@0leil.net>
---
 - RESEND because I was not subscribed to the ML with this address already,
 - please ignore, resent only for archive purposes on the ML, this patch
   has been merged already

 upgradehelper.py | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index c2480f1..7ed7af4 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -201,9 +201,7 @@ class Updater(object):
         self.uh_dir = os.path.join(build_dir, "upgrade-helper")
         if not os.path.exists(self.uh_dir):
             os.mkdir(self.uh_dir)
-        self.uh_base_work_dir = settings.get('workdir', '')
-        if not self.uh_base_work_dir:
-            self.uh_base_work_dir = self.uh_dir
+        self.uh_base_work_dir = settings.get('workdir', self.uh_dir)
         if self.opts['layer_mode'] == 'yes':
             self.uh_base_work_dir = os.path.join(self.uh_base_work_dir,
                     self.opts['layer_name'])
-- 
2.26.2

