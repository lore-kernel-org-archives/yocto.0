Return-Path: <oliver.staebler@bytesatwork.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28ED9E00C2B; Mon, 21 Aug 2017 06:01:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bytesatwork.ch (bytesatwork.ch [91.135.72.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF5B3E00BBC
	for <yocto@yoctoproject.org>; Mon, 21 Aug 2017 06:01:49 -0700 (PDT)
Received: from stanley.bytesatwork.ch (162.40.150.83.ftth.as8758.net
	[83.150.40.162])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested) (Authenticated sender: oliver)
	by bytesatwork.ch (Postfix) with ESMTPSA id 8AD9F101C04B1;
	Mon, 21 Aug 2017 14:54:51 +0200 (CEST)
From: =?UTF-8?q?Oliver=20St=C3=A4bler?= <oliver.staebler@bytesatwork.ch>
To: yocto@yoctoproject.org
Date: Mon, 21 Aug 2017 14:55:18 +0200
Message-Id: <20170821125518.29160-2-oliver.staebler@bytesatwork.ch>
X-Mailer: git-send-email 2.13.5
In-Reply-To: <20170821125518.29160-1-oliver.staebler@bytesatwork.ch>
References: <20170821125518.29160-1-oliver.staebler@bytesatwork.ch>
MIME-Version: 1.0
Cc: =?UTF-8?q?Oliver=20St=C3=A4bler?= <oliver.staebler@bytesatwork.ch>
Subject: [RFC][PATCH 1/1] kernel.bbclass: Do not overwrite pre/postinst
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
X-List-Received-Date: Mon, 21 Aug 2017 13:01:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

If a recipe sets a custom pre/postinst function for kernel-image, this
function gets discarded, which means there is no possibility to set a
custom pre/postinst function.

We check if there is a custom pre/postinst function and only set the
default function if nothing is set.

Signed-off-by: Oliver Stäbler <oliver.staebler@bytesatwork.ch>
---
 meta/classes/kernel.bbclass | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index 2a765547ac..e553460566 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -66,11 +66,13 @@ python __anonymous () {
         d.setVar('ALLOW_EMPTY_kernel-image-' + typelower, '1')
 
         priority = d.getVar('KERNEL_PRIORITY')
-        postinst = '#!/bin/sh\n' + 'update-alternatives --install /' + imagedest + '/' + type + ' ' + type + ' ' + type + '-${KERNEL_VERSION_NAME} ' + priority + ' || true' + '\n'
-        d.setVar('pkg_postinst_kernel-image-' + typelower, postinst)
+        if not d.getVar('pkg_postinst_kernel-image-' + typelower):
+                postinst = '#!/bin/sh\n' + 'update-alternatives --install /' + imagedest + '/' + type + ' ' + type + ' ' + type + '-${KERNEL_VERSION_NAME} ' + priority + ' || true' + '\n'
+                d.setVar('pkg_postinst_kernel-image-' + typelower, postinst)
 
-        postrm = '#!/bin/sh\n' + 'update-alternatives --remove' + ' ' + type + ' ' + type + '-${KERNEL_VERSION_NAME} || true' + '\n'
-        d.setVar('pkg_postrm_kernel-image-' + typelower, postrm)
+        if not d.getVar('pkg_postrm_kernel-image-' + typelower):
+                postrm = '#!/bin/sh\n' + 'update-alternatives --remove' + ' ' + type + ' ' + type + '-${KERNEL_VERSION_NAME} || true' + '\n'
+                d.setVar('pkg_postrm_kernel-image-' + typelower, postrm)
 
     image = d.getVar('INITRAMFS_IMAGE')
     if image:
-- 
2.13.5


