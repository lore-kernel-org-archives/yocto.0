Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C29B04C804C5
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2011 01:35:45 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5O6ZjB0016850
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2011 23:35:45 -0700 (PDT)
Received: from localhost (128.224.162.209) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 23 Jun 2011 23:35:44 -0700
Message-ID: <25bb8589b54c91ce817c904609e5d6326a483d8b.1308896947.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1308896947.git.jingdong.lu@windriver.com>
References: <cover.1308896947.git.jingdong.lu@windriver.com>
Old-Date: Fri, 24 Jun 2011 14:18:31 +0800
Date: Fri, 24 Jun 2011 14:34:55 +0800
To: <yocto@yoctoproject.org>
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.209]
Subject: [PATCH 1/1] routerstationpro: IPC config
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
X-List-Received-Date: Fri, 24 Jun 2011 06:35:46 -0000
Content-Type: text/plain

From: Jingdong Lu <jingdong.lu@windriver.com>

Add IPC config for routestationpro

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 .../bsp/routerstationpro/routerstationpro.cfg      |    8 ++++++--
 1 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg b/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
index f58dfe8..d0f8f58 100644
--- a/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
+++ b/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
@@ -215,8 +215,12 @@ CONFIG_INIT_ENV_ARG_LIMIT=32
 CONFIG_LOCALVERSION=""
 CONFIG_LOCALVERSION_AUTO=y
 CONFIG_SWAP=y
-# CONFIG_SYSVIPC is not set
-# CONFIG_BSD_PROCESS_ACCT is not set
+CONFIG_SYSVIPC=y
+CONFIG_SYSVIPC_SYSCTL=y
+CONFIG_POSIX_MQUEUE=y
+CONFIG_POSIX_MQUEUE_SYSCTL=y
+CONFIG_BSD_PROCESS_ACCT=y
+CONFIG_BSD_PROCESS_ACCT_V3=y
 # CONFIG_TASKSTATS is not set
 # CONFIG_AUDIT is not set
 
-- 
1.7.0.4


