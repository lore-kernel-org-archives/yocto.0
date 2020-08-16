Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web11.31607.1597613984720075214
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Aug 2020 14:39:45 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.195, mailfrom: foss@0leil.net)
X-Originating-IP: 80.110.110.75
Received: from fiqs.lan (80-110-110-75.cgn.dynamic.surfer.at [80.110.110.75])
	(Authenticated sender: foss@0leil.net)
	by relay3-d.mail.gandi.net (Postfix) with ESMTPA id F3B7060007;
	Sun, 16 Aug 2020 21:39:42 +0000 (UTC)
From: "Quentin Schulz" <foss@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <foss@0leil.net>
Subject: [auh] [PATCH RESEND 5/5] consistent naming for upgradehelper.py
Date: Sun, 16 Aug 2020 23:39:35 +0200
Message-Id: <20200816213935.7733-5-foss@0leil.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200816213935.7733-1-foss@0leil.net>
References: <20200816213935.7733-1-foss@0leil.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Rename upgradehelper.py into upgrade-helper.py since the conf file and the git
repo are named with a dash to separate "upgrade" and "helper".

The documentation in the README and upgradehelper.py were also already using
upgrade-helper.py instead of upgradehelper.py.

For all those reasons, let's be consistent and rename the python script.

Signed-off-by: Quentin Schulz <foss@0leil.net>
---
 - RESEND because I was not subscribed to the ML with this address already,

 upgradehelper.py => upgrade-helper.py | 0
 weeklyjob.sh                          | 2 +-
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename upgradehelper.py => upgrade-helper.py (100%)

diff --git a/upgradehelper.py b/upgrade-helper.py
similarity index 100%
rename from upgradehelper.py
rename to upgrade-helper.py
diff --git a/weeklyjob.sh b/weeklyjob.sh
index 412685e..94598a2 100755
--- a/weeklyjob.sh
+++ b/weeklyjob.sh
@@ -20,7 +20,7 @@ git fetch origin
 git checkout -B tmp-auh-upgrades origin/master
 
 source $poky_dir/oe-init-build-env $build_dir
-$auh_dir/upgradehelper.py -e all
+$auh_dir/upgrade-helper.py -e all
 
 # clean up to avoid the disk filling up
 rm -rf $build_dir/tmp/
-- 
2.26.2

