Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF5FDE008F5; Wed, 19 Nov 2014 00:13:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 204DAE008CA
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 00:13:48 -0800 (PST)
Received: by mail-wg0-f50.google.com with SMTP id k14so97785wgh.37
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 00:13:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=4bJrNqR6XlS7+3XjLg8ddX17pl6NvpmtpVFYLL62Apg=;
	b=Ofi4oOSI/vV70DXi9/m0l+w23eg2KFCmVWt24v4rjtcbBvClVN9prg8DB1Z+kGrGXR
	Mm9RGV/m1NkYLKzG5NJbkgjQrmWfpYy1wZg1V2dcaPsAqR0NHUvPkgXPLTy9Epb0Ezu+
	yYtVMsOY/syxhcCOPXV9bhnRzhtQXU4P9e7FN7neC1y3uWG56u+Cwp4lLdfe5O+S+0mz
	PvHXMv23VvIYiJuayBFSn4lNA2E6f47J0fA4EwXl1kidEj5/flF0bDJfao5XkmPqnvo9
	Q70Emd6cFnEZg4aVl4g5+ed4JnFfKkGV5FTK0r36Z6jAWT+Ptbm7lQGUQRyuxP6J1tF1
	NQXA==
X-Received: by 10.180.187.234 with SMTP id fv10mr3191860wic.25.1416384827721; 
	Wed, 19 Nov 2014 00:13:47 -0800 (PST)
Received: from sbobade-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by mx.google.com with ESMTPSA id g16sm1213904wjq.20.2014.11.19.00.13.45
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 19 Nov 2014 00:13:46 -0800 (PST)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Nov 2014 13:43:38 +0530
Message-Id: <1416384818-18472-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <Shrikant_Bobade@mentor.com>
Subject: [meta-selinux][PATCH 2/3] selinux-init: update for systemd
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
X-List-Received-Date: Wed, 19 Nov 2014 08:13:49 -0000

From: Shrikant Bobade <Shrikant_Bobade@mentor.com>

selinux-init.sh updated to reboot system
normally to fix the labelling during systemd
execution. Due to force reboot labelling won't
be proper and system continuously reboot to
label it like first time boot.

Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
---
 .../selinux/selinux-config/selinux-init.sh         |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/selinux/selinux-config/selinux-init.sh b/recipes-security/selinux/selinux-config/selinux-init.sh
index 9aaf454..f9f0914 100644
--- a/recipes-security/selinux/selinux-config/selinux-init.sh
+++ b/recipes-security/selinux/selinux-config/selinux-init.sh
@@ -48,7 +48,7 @@ if [ -f /.autorelabel ]; then
 	${FIXFILES} -F -f relabel
 	/bin/rm -f /.autorelabel
 	echo " * Relabel done, rebooting the system."
-	/sbin/reboot -f
+	/sbin/reboot
 fi
 
 # If first booting, the security context type of init would be
@@ -62,7 +62,7 @@ if [ "`${SECON} -t --pid 1`" = "kernel_t" ]; then
 	${RESTORECON} -RF /
 	${RESTORECON} -F /
 	echo " * Relabel done, rebooting the system."
-	/sbin/reboot -f
+	/sbin/reboot
 fi
 
 # Now, we should relabel /dev for most services.
-- 
1.7.9.5


