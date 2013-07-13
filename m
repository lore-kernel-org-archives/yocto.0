Return-Path: <paul.betafive@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E90B7E0137A
	for <yocto@yoctoproject.org>; Sat, 13 Jul 2013 08:19:49 -0700 (PDT)
Received: by mail-wi0-f182.google.com with SMTP id m6so1584489wiv.15
	for <yocto@yoctoproject.org>; Sat, 13 Jul 2013 08:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=MmTd9Om3mfFUEADxZa608tHPxUV+Ts6UU4I2IKzDcSo=;
	b=FcmmSOob/aIKtwPLr4cVJIp2Q+c1vrMnHqukFI77IPKRvqFt214zPh/ezx9yOBbhB1
	iO82oijsWIFZgTCXQInpa35K+ZXlJCfiafOZb+hiwZLJrXzL+eKjE0fWfEN1uIhBxzCA
	wyy0WFKZO4I5jx5fQQyRBQhfZwZrUIXxuNUTvFzbEyNCiU3U+ZGGuAttJZhe5d0xlnEh
	vN1if6AfneIY+UZWbGdg1xhIBiN5r6vs+GWtaiLrFTfvoKOAxdwtNGzQ5NjcrNNujh3b
	4zfBrLyqMAD1bXJpuoHhg+LW+uuJauyArWVC5E6KmlDbewg14gVh4oRwirvmbczx4CAI
	92gQ==
X-Received: by 10.180.82.196 with SMTP id k4mr4524153wiy.0.1373728788692;
	Sat, 13 Jul 2013 08:19:48 -0700 (PDT)
Received: from desktop.betafive.co.uk (94-192-12-83.zone6.bethere.co.uk.
	[94.192.12.83])
	by mx.google.com with ESMTPSA id em10sm9415902wid.1.2013.07.13.08.19.47
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 13 Jul 2013 08:19:47 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Sat, 13 Jul 2013 16:19:05 +0100
Message-Id: <1373728745-15435-2-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1373728745-15435-1-git-send-email-paul@paulbarker.me.uk>
References: <1373728745-15435-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-yocto][dylan][PATCH] linux-yocto: Fix SRCREVs in linux-yocto_3.2
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 13 Jul 2013 15:19:51 -0000

The KERNEL_VERSION set by linux-yocto_3.2.bb in openembedded-core is 3.2.32 but
the SRCREVs in the bbappend in meta-yocto-bsp referred to version 3.2.18. These
SRCREVs are updated to the correct values.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend
index fa160f8..6aa0add 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -3,10 +3,10 @@ KBRANCH_routerstationpro = "standard/default/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/default/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/default/beagleboard"
 
-SRCREV_machine_atom-pc ?= "41074a778d251a77e036fd8a99915cd4da6cd8f7"
-SRCREV_machine_routerstationpro ?= "94abc0d75d0a99c40c53402570cd9c569539fee9"
-SRCREV_machine_mpc8315e-rdb ?= "a04e94f4dae9cf6d32d059cf9e0308abe7341a3a"
-SRCREV_machine_beagleboard ?= "40bde7a43ef3cd85729ab02464a7ecdf71e522a6"
+SRCREV_machine_atom-pc ?= "4e22c5593a355ab6f21f29895b68ee432df49f22"
+SRCREV_machine_routerstationpro ?= "06264be5913f2984aad07fe31a27fd8ef8e15782"
+SRCREV_machine_mpc8315e-rdb ?= "f906a896696d98c1e651bcef17631f1096cd6c31"
+SRCREV_machine_beagleboard ?= "cdc1e64b1cec2f93a1ea656e358b8bb8d2926954"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.8.3.2


