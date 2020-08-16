Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web11.31709.1597614390059511627
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Aug 2020 14:46:30 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.201, mailfrom: foss@0leil.net)
X-Originating-IP: 80.110.110.75
Received: from fiqs.lan (80-110-110-75.cgn.dynamic.surfer.at [80.110.110.75])
	(Authenticated sender: foss@0leil.net)
	by relay8-d.mail.gandi.net (Postfix) with ESMTPA id BC2001BF205;
	Sun, 16 Aug 2020 21:46:26 +0000 (UTC)
From: "Quentin Schulz" <foss@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: alex.kanavin@gmail.com,
	Quentin Schulz <foss@0leil.net>
Subject: [yocto-autobuilder-helper] [PATCH] scripts: run-auh: update upgrade-helper name
Date: Sun, 16 Aug 2020 23:46:07 +0200
Message-Id: <20200816214607.8211-1-foss@0leil.net>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since https://lists.yoctoproject.org/g/yocto/message/50282 was merged in
autoupgrade-helper git repo, the python script isn't called
upgradehelper.py anymore but upgrade-helper.py for consistency sake.

Let's update the run-auh script so that it's still working.

Signed-off-by: Quentin Schulz <foss@0leil.net>
---
 scripts/run-auh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/run-auh b/scripts/run-auh
index 29a8044..7a9ab70 100755
--- a/scripts/run-auh
+++ b/scripts/run-auh
@@ -22,7 +22,7 @@ git fetch origin
 git checkout -B tmp-auh-upgrades origin/master
 
 source $poky_dir/oe-init-build-env $build_dir
-$auh_dir/upgradehelper.py -e all
+$auh_dir/upgrade-helper.py -e all
 
 # clean up to avoid the disk filling up
 rm -rf $build_dir/tmp/
-- 
2.26.2

