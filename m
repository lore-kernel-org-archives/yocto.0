Return-Path: <joaohf@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FCDDE0070C
	for <yocto@yoctoproject.org>; Sun, 11 Mar 2012 09:48:48 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so2406077yhf.35
	for <yocto@yoctoproject.org>; Sun, 11 Mar 2012 09:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:mime-version
	:content-type:content-transfer-encoding;
	bh=7KTNjsukbPBQLDWs+dwBEidqaUQAHlRh43tbjlXiA7w=;
	b=mbdip81/Qraj8mFhJbQobLXBBvLGIWeMoGHzWWjX93VJEw4Gk8oholNW3367iBXHff
	OXgfb08ZdQq3CSmRDEB3i6XGTkaT8hmCiqK2w9CNr5y3uvazFINZBEHaYnxFG8iduPlO
	iKlZ3DMUB900wQlaIvCucuCprxS/bymDYJwAgWMQr0TR4eHcYZdgY2/vPGJNL/007bpP
	pms3/AzE/tMk4QwSuKPw4Rs2q+/uW3zNy4CkK03Fa8lR3UqJVU6PVbg6qvhUXweAPfdi
	UoN+CzUbr7/DQdkw6MdqBoURGr+n0bF0nDqPnMwI8rNC4x3pgx1oiThmqt6caZi292qF
	Ef1w==
Received: by 10.236.72.230 with SMTP id t66mr10221092yhd.45.1331484527678;
	Sun, 11 Mar 2012 09:48:47 -0700 (PDT)
Received: from localhost.localdomain ([201.82.20.110])
	by mx.google.com with ESMTPS id q5sm19255244anm.21.2012.03.11.09.48.45
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 11 Mar 2012 09:48:46 -0700 (PDT)
From: =?UTF-8?q?Jo=C3=A3o=20Henrique=20F=2E=20de=20Freitas?= <joaohf@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 11 Mar 2012 13:48:21 -0300
Message-Id: <1331484501-20194-1-git-send-email-joaohf@gmail.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
Subject: [PATCH] boot-directdisk: fix parser error, comments at end of line.
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
X-List-Received-Date: Sun, 11 Mar 2012 16:48:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: "João Henrique F. de Freitas" <joaohf@gmail.com>

Nothing major, just a tweak

Signed-off-by: João Henrique F. de Freitas <joaohf@gmail.com>
---
 meta/classes/boot-directdisk.bbclass |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/classes/boot-directdisk.bbclass b/meta/classes/boot-directdisk.bbclass
index 893164f..efc8354 100644
--- a/meta/classes/boot-directdisk.bbclass
+++ b/meta/classes/boot-directdisk.bbclass
@@ -39,7 +39,8 @@ BOOTDD_EXTRA_SPACE ?= "16384"
 AUTO_SYSLINUXCFG = "1"
 LABELS = "boot"
 SYSLINUX_ROOT ?= "root=/dev/sda2"
-SYSLINUX_TIMEOUT = "10" # 1 second
+# Timeout with 1 second
+SYSLINUX_TIMEOUT = "10"
 
 SYSLINUXCFG  = "${HDDDIR}/syslinux.cfg"
 SYSLINUXMENU = "${HDDDIR}/menu"
-- 
1.7.5.4


