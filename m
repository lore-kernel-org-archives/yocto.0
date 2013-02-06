Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D244E00527
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2013 02:58:06 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r16Aw50O028197
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 6 Feb 2013 02:58:05 -0800 (PST)
Received: from localhost.localdomain (128.224.171.81) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Wed, 6 Feb 2013 02:58:05 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <florin.sarbu@windriver.com>
Date: Wed, 6 Feb 2013 12:57:53 +0200
Message-ID: <1360148275-21567-1-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.171.81]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 1/3] qemux86.cfg: Activate ecryptfs
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
X-List-Received-Date: Wed, 06 Feb 2013 10:58:06 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 recipes-kernel/linux/linux-yocto/qemux86.cfg |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/recipes-kernel/linux/linux-yocto/qemux86.cfg b/recipes-kernel/linux/linux-yocto/qemux86.cfg
index ff828b9..6f6ea51 100644
--- a/recipes-kernel/linux/linux-yocto/qemux86.cfg
+++ b/recipes-kernel/linux/linux-yocto/qemux86.cfg
@@ -1,3 +1,9 @@
 # config for adding support for AF_BUS sockets
 CONFIG_AF_BUS=y
 CONFIG_NETFILTER_DBUS=y
+
+# Activate ecryptfs
+CONFIG_EXPERIMENTAL=y
+CONFIG_KEYS=y
+CONFIG_CRYPTO=y
+CONFIG_ECRYPT_FS=y
-- 
1.7.5.4


