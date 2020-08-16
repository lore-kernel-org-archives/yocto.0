Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web12.31382.1597613984094917490
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Aug 2020 14:39:44 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.195, mailfrom: foss@0leil.net)
X-Originating-IP: 80.110.110.75
Received: from fiqs.lan (80-110-110-75.cgn.dynamic.surfer.at [80.110.110.75])
	(Authenticated sender: foss@0leil.net)
	by relay3-d.mail.gandi.net (Postfix) with ESMTPA id 598A560003;
	Sun, 16 Aug 2020 21:39:42 +0000 (UTC)
From: "Quentin Schulz" <foss@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <foss@0leil.net>
Subject: [auh] [PATCH RESEND 4/5] README: update mailing list address
Date: Sun, 16 Aug 2020 23:39:34 +0200
Message-Id: <20200816213935.7733-4-foss@0leil.net>
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

 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README b/README
index cb9f87e..ed34140 100644
--- a/README
+++ b/README
@@ -110,7 +110,7 @@ The latest version of the code can always be found here:
   http://git.yoctoproject.org/cgit/cgit.cgi/auto-upgrade-helper/
 
 Contributions are welcome. Please send patches / pull requests to
-yocto@yoctoproject.org with '[auh]' in the subject also CC the
+yocto@lists.yoctoproject.org with '[auh]' in the subject also CC the
 current maintainer: Alex Kanavin <alex.kanavin@gmail.com>.
 
 License
-- 
2.26.2

