Return-Path: <evadeflow@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F5F0E01382
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 10:18:35 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id k11so11405232iea.35
	for <yocto@yoctoproject.org>; Mon, 08 Oct 2012 10:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=0aDhZpQIbC7S/mFXFZUqvILS5yuvKexlslyjTvyCoks=;
	b=qFyETvnYSHJU30W01VJmwtmXDwY457lGBbL1hRbpccTUsh7i7PRkfZ1LXiqFlajSMB
	oiAFCr/7PhXnWtiDFRtXXDZnrefX0MOVkMI9FjBxEraAgnwY5iHNgkkLZtcFT2luC/TQ
	iEzA4n8xX8nj6L4EMhMmPY8bcaZQFVCUuPAV/+rpuB7v7zpaWPvicbk/LhWQi7oLRvbt
	Cq+vZkfMKAhD99AkFTnrThpI8KYU/MUdRIprsu6mfT2HBSf3tW9y7JlpWN8ePBkIEV0P
	g/WHLxZTMZjrWRXJd/kyVgc5SaxVT7A90FzUp1ZBm9SSl1Q4MLEoruI567KJPxVc4FZs
	4erg==
Received: by 10.42.132.194 with SMTP id e2mr13396256ict.21.1349716712921;
	Mon, 08 Oct 2012 10:18:32 -0700 (PDT)
Received: from localhost.localdomain (11.sub-174-232-65.myvzw.com.
	[174.232.65.11])
	by mx.google.com with ESMTPS id v12sm7866661igv.3.2012.10.08.10.18.31
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 08 Oct 2012 10:18:32 -0700 (PDT)
From: Evade Flow <evadeflow@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  8 Oct 2012 13:18:16 -0400
Message-Id: <1349716696-15807-3-git-send-email-evadeflow@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1349716696-15807-1-git-send-email-evadeflow@gmail.com>
References: <011802>
 <1349716696-15807-1-git-send-email-evadeflow@gmail.com>
Subject: [PATCH 2/2] Move 'tag=' to SRCREV in mtd-utils recipe
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
 meta/recipes-devtools/mtd/mtd-utils_1.5.0.bb |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-devtools/mtd/mtd-utils_1.5.0.bb b/meta/recipes-devtools/mtd/mtd-utils_1.5.0.bb
index 1a9d4d3..bdfb022 100644
--- a/meta/recipes-devtools/mtd/mtd-utils_1.5.0.bb
+++ b/meta/recipes-devtools/mtd/mtd-utils_1.5.0.bb
@@ -6,7 +6,8 @@ LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3 \
                     file://include/common.h;beginline=1;endline=17;md5=ba05b07912a44ea2bf81ce409380049c"
 
-SRC_URI = "git://git.infradead.org/mtd-utils.git;protocol=git;tag=ca39eb1d98e736109c64ff9c1aa2a6ecca222d8f \
+SRCREV = "ca39eb1d98e736109c64ff9c1aa2a6ecca222d8f"
+SRC_URI = "git://git.infradead.org/mtd-utils.git;protocol=git \
 		file://add-exclusion-to-mkfs-jffs2-git-2.patch"
 
 S = "${WORKDIR}/git/"
-- 
1.7.9.5


