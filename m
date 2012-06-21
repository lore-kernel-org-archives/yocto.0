Return-Path: <gthomas@mail.chez-thomas.org>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47B48E00723
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 09:54:14 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 996)
	id 6141AF811DD; Thu, 21 Jun 2012 10:54:14 -0600 (MDT)
From: Gary Thomas <gary@mlbassoc.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Jun 2012 10:54:13 -0600
Message-Id: <1340297653-3310-1-git-send-email-gary@mlbassoc.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [PATCH] sanity.bbclass: Print BBPATH when warning of bad components
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
X-List-Received-Date: Thu, 21 Jun 2012 16:54:15 -0000

The new warning/check for illegal BBPATH components is extended
to actually print the list of elements.  This will make it easier
for the user to identify where the error(s) come from.

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 meta/classes/sanity.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
index 6ed1e6f..fe7ece7 100644
--- a/meta/classes/sanity.bbclass
+++ b/meta/classes/sanity.bbclass
@@ -396,7 +396,7 @@ def check_sanity(sanity_data):
                 "layer configuration is adding empty elements to BBPATH.\n\t "\
                 "Please check your layer.conf files and other BBPATH "        \
                 "settings to remove the current working directory "           \
-                "references.");
+                "references.\n\tBBPATH = ", str(bbpaths));
 
     if sanity_data.getVar('TARGET_ARCH', True) == "arm":
         # This path is no longer user-readable in modern (very recent) Linux
-- 
1.7.7.6


