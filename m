Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4EA6E006C2
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2013 02:58:07 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r16Aw7AD028200
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 6 Feb 2013 02:58:07 -0800 (PST)
Received: from localhost.localdomain (128.224.171.81) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Wed, 6 Feb 2013 02:58:06 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <florin.sarbu@windriver.com>
Date: Wed, 6 Feb 2013 12:57:54 +0200
Message-ID: <1360148275-21567-2-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1360148275-21567-1-git-send-email-andrei.gherzan@windriver.com>
References: <1360148275-21567-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.171.81]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 2/3] vexpress_a9.cfg: Activate ecryptfs
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
X-List-Received-Date: Wed, 06 Feb 2013 10:58:07 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 recipes-kernel/linux/linux-yocto/vexpress_a9.cfg |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/recipes-kernel/linux/linux-yocto/vexpress_a9.cfg b/recipes-kernel/linux/linux-yocto/vexpress_a9.cfg
index 9c5052a..5bb37a2 100644
--- a/recipes-kernel/linux/linux-yocto/vexpress_a9.cfg
+++ b/recipes-kernel/linux/linux-yocto/vexpress_a9.cfg
@@ -831,3 +831,9 @@ CONFIG_AF_BUS=y
 CONFIG_NETFILTER_DBUS=y
 
 CONFIG_REGULATOR=n
+
+# Activate ecryptfs
+CONFIG_EXPERIMENTAL=y
+CONFIG_KEYS=y
+CONFIG_CRYPTO=y
+CONFIG_ECRYPT_FS=y
-- 
1.7.5.4


