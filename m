Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EFB7E00AB9; Mon,  3 Aug 2015 06:37:12 -0700 (PDT)
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
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5459E009B3
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2015 06:35:49 -0700 (PDT)
Received: by pawu10 with SMTP id u10so13156877paw.1
	for <yocto@yoctoproject.org>; Mon, 03 Aug 2015 06:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=u8knIy8WizAzdAEmAIVBVJTn5v/1VrqEIP5xeEAgeOc=;
	b=kjTU/Quhsi48NCLEi4sBbZK0kxYFfCpe7jJQsKrTjug0JF3zZ7XJWZMui8ril1gzxM
	l5bbVlU39EG5AtiUOrEWRNUY2LmuWdWbv/AidKlL8Nf3cIyKURTCH4+TzLOijhrIHYoc
	fd6ivzsmILOHJLvSmw076S5DaXVVFp4xZduKmj1GIt6cO8udQGfo14XwLs63c5ysgKuk
	XV0GB+HeUVfJoUs9iURLnTNipYmV4ZGCk0DDujsrvm6wg5t5kkaoo0/58cFit1AF3rDs
	zv7hMjv5VNIbj5LqTN110H2R21sLCQIy33FwdHTGK9tU5k5a5tDAeiEFV34yCJUtrHlQ
	/Szw==
X-Received: by 10.68.177.4 with SMTP id cm4mr23602005pbc.76.1438608949337;
	Mon, 03 Aug 2015 06:35:49 -0700 (PDT)
Received: from localhost.localdomain ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	qz8sm8001261pbb.91.2015.08.03.06.35.47
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Aug 2015 06:35:48 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Aug 2015 19:06:53 +0530
Message-Id: <1438609013-10049-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 6/8] refpolicy-standard: update base refpolicy to git repo
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
X-List-Received-Date: Mon, 03 Aug 2015 13:37:12 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

A simple forward-port of refpolicy-standard to use the
refpolicy from git repository.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 .../refpolicy/refpolicy-standard_git.bb            |    8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-standard_git.bb

diff --git a/recipes-security/refpolicy/refpolicy-standard_git.bb b/recipes-security/refpolicy/refpolicy-standard_git.bb
new file mode 100644
index 0000000..3674fdd
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-standard_git.bb
@@ -0,0 +1,8 @@
+SUMMARY = "Standard variants of the SELinux policy"
+DESCRIPTION = "\
+This is the reference policy for SELinux built with type enforcement \
+only."
+
+POLICY_TYPE = "standard"
+
+include refpolicy_${PV}.inc
-- 
1.7.9.5


