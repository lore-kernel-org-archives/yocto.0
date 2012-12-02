Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58A0EE011C0
	for <yocto@yoctoproject.org>; Sun,  2 Dec 2012 15:01:14 -0800 (PST)
Received: from localhost (71-20-35-93.war.clearwire-wmx.net [71.20.35.93])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 4B85330474
	for <yocto@yoctoproject.org>; Sun,  2 Dec 2012 18:01:03 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: yocto@yoctoproject.org
Date: Sun,  2 Dec 2012 15:00:52 -0800
Message-Id: <f8c1e0d37db7861b26e289111f2f6307e77cec48.1354489190.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1354489190.git.scott.a.garman@intel.com>
References: <cover.1354489190.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1354489190.git.scott.a.garman@intel.com>
References: <cover.1354489190.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 4B85330474.507A3
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/1] meta-yocto layer.conf: Append to BBPATH consistent with other layers
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
X-List-Received-Date: Sun, 02 Dec 2012 23:01:14 -0000

Trivial change to make the appending of BBPATH consistent with how
we do things in other layers.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta-yocto/conf/layer.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/layer.conf b/meta-yocto/conf/layer.conf
index 7917962..68786b2 100644
--- a/meta-yocto/conf/layer.conf
+++ b/meta-yocto/conf/layer.conf
@@ -1,5 +1,5 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${LAYERDIR}:${BBPATH}"
+BBPATH := "${BBPATH}:${LAYERDIR}"
 
 # We have a packages directory, add to BBFILES
 BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
-- 
1.7.9.5


