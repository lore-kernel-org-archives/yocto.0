Return-Path: <evadeflow@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E20AE01351
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 10:18:35 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id k11so11405143iea.35
	for <yocto@yoctoproject.org>; Mon, 08 Oct 2012 10:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=70tzuTAVyuh5V4OPM2OTN3D/Zk9ebtcJnsnWRL8J9nQ=;
	b=Fm1Qz98whlFIaao65DIb0WwetuHwHpLGx+PGYAb1KjsiphIoMn58GL/MuD1Qik9Vnu
	JaVG00snTHfYa47l92aOKaUekhcTpj6VBLtjrsm9KqGSw6pUyWYHPUh5uErshISA0Xie
	TRfwCGChEgsuN1mkVWwG37/V4mgYxDuMG9rAATVADxdLNF+wcykujpVcEZBhi2P05ifK
	0pYRL2BoBVNzfMv94aeUbpbM+pbgevQjFG3SL/FvE/W6Xl1KaiSnVT819zmxBlSJbH6L
	FOIOAEnh4eFj7TQ35z/65iFxmJsKhVKiJ1iWDW1SFM/lwOJ4+lyKbcjOWW11CWrPkmap
	16IQ==
Received: by 10.50.159.198 with SMTP id xe6mr6751902igb.46.1349716711318;
	Mon, 08 Oct 2012 10:18:31 -0700 (PDT)
Received: from localhost.localdomain (11.sub-174-232-65.myvzw.com.
	[174.232.65.11])
	by mx.google.com with ESMTPS id v12sm7866661igv.3.2012.10.08.10.18.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 08 Oct 2012 10:18:30 -0700 (PDT)
From: Evade Flow <evadeflow@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  8 Oct 2012 13:18:15 -0400
Message-Id: <1349716696-15807-2-git-send-email-evadeflow@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1349716696-15807-1-git-send-email-evadeflow@gmail.com>
References: <011802>
 <1349716696-15807-1-git-send-email-evadeflow@gmail.com>
Subject: [PATCH 1/2] Move 'tag=' to SRCREV in btrfs-tools recipe
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
X-List-Received-Date: Mon, 08 Oct 2012 17:18:35 -0000

Signed-off-by: Evade Flow <evadeflow@gmail.com>
---
 .../btrfs-tools/btrfs-tools_git.bb                 |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-devtools/btrfs-tools/btrfs-tools_git.bb b/meta/recipes-devtools/btrfs-tools/btrfs-tools_git.bb
index c2ae298..e963a74 100644
--- a/meta/recipes-devtools/btrfs-tools/btrfs-tools_git.bb
+++ b/meta/recipes-devtools/btrfs-tools/btrfs-tools_git.bb
@@ -12,7 +12,8 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=fcb02dc552a041dee27e4b85c7396067"
 SECTION = "base"
 DEPENDS = "util-linux attr"
 
-SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/mason/btrfs-progs.git;protocol=git;tag=fdb6c0402337d9607c7a39155088eaf033742752;branch=master"
+SRCREV = "fdb6c0402337d9607c7a39155088eaf033742752"
+SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/mason/btrfs-progs.git;protocol=git"
 
 S = "${WORKDIR}/git"
 
-- 
1.7.9.5


