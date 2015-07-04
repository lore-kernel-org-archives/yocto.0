Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C5A7E00A4D; Fri,  3 Jul 2015 20:48:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3358BE00A31
	for <yocto@yoctoproject.org>; Fri,  3 Jul 2015 20:48:46 -0700 (PDT)
Received: by paceq1 with SMTP id eq1so65115501pac.3
	for <yocto@yoctoproject.org>; Fri, 03 Jul 2015 20:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=96xL8STRs7WdOtfCKF0D4ArWYKeFCOKcINq0dKkEQJc=;
	b=xClDyTY6wSzL/vSPZHZLRHGYrSUpQ6KzOyYYnF6MmR8LLGAQePyKR4dY5h619Dyx7k
	4TzvZV6QscR5Lb4tbypn87dqMJeKaXfoll26TaUVszAhFwnbIjxDgmgt31/R5n21eKnZ
	+IVbkzQkJ6RJDZh9QaNEjaZoBRCwPnPcncp5/VUXqfPGTBj/U2nhID0B6DjwY8AzM7Pb
	qHoifL+GNWnZtMmYm02bX/OIJIsm3p0wj9rqKT2vwS72VHo8ErZBZqmo7gP59SXMzzFw
	XBbAVW3W3mED1yEtC80/8NrX1WX8yRhhvb1DBqwAls3ycMSeg00210zTLtBF/PfZ1N16
	FUtA==
X-Received: by 10.70.91.79 with SMTP id cc15mr83487038pdb.10.1435981725931;
	Fri, 03 Jul 2015 20:48:45 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by mx.google.com with ESMTPSA id
	fe10sm10574362pdb.59.2015.07.03.20.48.44
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 03 Jul 2015 20:48:44 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  4 Jul 2015 13:48:37 +1000
Message-Id: <1435981717-29443-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.4.4
Subject: [meta-raspberrypi][PATCH] firmware.inc: fetch from SVN instead of Git
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
X-List-Received-Date: Sat, 04 Jul 2015 03:48:50 -0000

Reduces the download time significantly.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-bsp/common/firmware.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index ad3176a..100df3a 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,7 +1,7 @@
-RPIFW_SRCREV ?= "e42a747e8d5c4a2fb3e837d0924c7cc39999936a"
+RPIFW_SRCREV ?= "461"
 RPIFW_DATE ?= "20150206"
-RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
-RPIFW_S ?= "${WORKDIR}/git"
+RPIFW_SRC_URI ?= "svn://github.com/raspberrypi/firmware;protocol=https;module=trunk"
+RPIFW_S ?= "${WORKDIR}/trunk"
 
 SRC_URI = "${RPIFW_SRC_URI}"
 SRCREV = "${RPIFW_SRCREV}"
-- 
2.4.4


