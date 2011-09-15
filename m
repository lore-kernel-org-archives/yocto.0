Return-Path: <eballetbo@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F00C1E004F1
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2011 07:54:58 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwf5 with SMTP id 5so3223383wwf.11
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2011 07:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=2sSMf6HPF/U23DgEUeK1I6/nNVD4E4x9MUJ+z31Oq/A=;
	b=BKqiAsKPbnNjDnZznXDXXNgm9Ldy+WGt0smC4ZY5hlynh3Uo9YK8PR0JFzopGyNwEO
	QsQX3tQbRbw8/iHQPcOGmASI1eHaHF3Dhzc+gh8i0pKIvH8CS0FGitl7LC0oBBb4ptJS
	QdqMa4x0qJbjTxfhyfEpLvRB52vNRMKWRSggk=
Received: by 10.216.221.93 with SMTP id q71mr3784815wep.0.1316098496353;
	Thu, 15 Sep 2011 07:54:56 -0700 (PDT)
Received: from localhost.localdomain (249.Red-80-33-164.staticIP.rima-tde.net.
	[80.33.164.249])
	by mx.google.com with ESMTPS id r27sm8187992wbn.10.2011.09.15.07.54.50
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 15 Sep 2011 07:54:51 -0700 (PDT)
From: Enric Balletbo i Serra <eballetbo@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 15 Sep 2011 16:54:43 +0200
Message-Id: <1316098483-3446-1-git-send-email-eballetbo@gmail.com>
X-Mailer: git-send-email 1.7.1
Cc: Enric Balletbo i Serra <eballetbo@iseebcn.com>
Subject: [PATCH] openssh: Create /etc/ssh/ssh_host_ecdsa_key if it doesn't exist
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 15 Sep 2011 14:54:59 -0000

From: Enric Balletbo i Serra <eballetbo@iseebcn.com>

After OpenSSH 5.7 the ECDSA is the preferred key algorithm when
both the client and server support it.

This patch solves the error that shows:

        Could not load host key: /etc/ssh_host_ecdsa_key

creating a ECDSA key if it doesn't exist.

Signed-off-by: Enric Balletbo i Serra <eballetbo@gmail.com>
---
 .../openssh/openssh-5.8p2/init                     |    4 ++++
 meta/recipes-connectivity/openssh/openssh_5.8p2.bb |    2 +-
 2 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-connectivity/openssh/openssh-5.8p2/init b/meta/recipes-connectivity/openssh/openssh-5.8p2/init
index b16cbd6..8145ec9 100644
--- a/meta/recipes-connectivity/openssh/openssh-5.8p2/init
+++ b/meta/recipes-connectivity/openssh/openssh-5.8p2/init
@@ -40,6 +40,10 @@ check_keys() {
 		echo "  generating ssh DSA key..."
 		ssh-keygen -q -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa
 	fi
+	if [ ! -f /etc/ssh/ssh_host_ecdsa_key ]; then
+		echo "  generating ssh ECDSA key..."
+		ssh-keygen -q -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa
+	fi
 }
 
 export PATH="${PATH:+$PATH:}/usr/sbin:/sbin"
diff --git a/meta/recipes-connectivity/openssh/openssh_5.8p2.bb b/meta/recipes-connectivity/openssh/openssh_5.8p2.bb
index 89b011d..030a83b 100644
--- a/meta/recipes-connectivity/openssh/openssh_5.8p2.bb
+++ b/meta/recipes-connectivity/openssh/openssh_5.8p2.bb
@@ -7,7 +7,7 @@ SECTION = "console/network"
 LICENSE = "BSD"
 LIC_FILES_CHKSUM = "file://LICENCE;md5=bae9a689be41581503bcf95d8fb42c4e"
 
-PR = "r1"
+PR = "r2"
 
 DEPENDS = "zlib openssl"
 DEPENDS += "${@base_contains('DISTRO_FEATURES', 'pam', 'libpam', '', d)}"
-- 
1.7.1


