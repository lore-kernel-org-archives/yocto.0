Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1606BE006EF; Wed, 14 May 2014 15:32:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-pb0-f50.google.com (unknown [209.85.160.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C89D2E0053B
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 15:32:08 -0700 (PDT)
Received: by mail-pb0-f50.google.com with SMTP id ma3so183478pbc.23
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 15:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=3sdav98c/7pR1QAyqvwTVNoT3Z2tSQnsE24OfUTW6fc=;
	b=hpCZkOuX4pTva3MyXGQ28xytc6ecHjXpBBwveJ6lFXz7gPkiHxR0q53AmTjLJma4dJ
	ZqSlEm3pSdUtIxxw5KuPtnsOLZF2tWbPnpFUaKxslnlAgpJVRwlgdX5h45R5oUsy6Vt7
	Vv4PWrRP93kxig8h8JEIW0ic5uRrlVbYy2lsnFt8N5tJmRT8tWCyUxe1utHMlIrjUW/8
	SOIW88PcmLLj9MEKNT8qQqZfTqGdTt2/f4FLvAL0d1vZFMHjMFBvIA1Fyrv3EoJ4LAbq
	auq00ymotC6DHzIwf/ZeYCK2V3t06wH8xBNXnTkZqmD32WCybgbvCqsaWXxCRqh1vQKW
	Ebkw==
X-Received: by 10.66.142.42 with SMTP id rt10mr7659711pab.1.1400106277029;
	Wed, 14 May 2014 15:24:37 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55])
	by mx.google.com with ESMTPSA id jd5sm5364684pbb.18.2014.05.14.15.24.35
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 14 May 2014 15:24:36 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: mark.hatle@windriver.com
Date: Wed, 14 May 2014 15:24:19 -0700
Message-Id: <1400106263-25100-6-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
References: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
Cc: yocto@yoctoproject.org
Subject: [PATCH 5/9] Use wildcard in openssh name
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
X-List-Received-Date: Wed, 14 May 2014 22:32:11 -0000

    openssh: Use wildcard in version to minimize keeping in-sync
    with Poky

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-connectivity/openssh/openssh_6.%.bbappend   | 13 +++++++++++++
 recipes-connectivity/openssh/openssh_6.4p1.bbappend | 13 -------------
 2 files changed, 13 insertions(+), 13 deletions(-)
 create mode 100644 recipes-connectivity/openssh/openssh_6.%.bbappend
 delete mode 100644 recipes-connectivity/openssh/openssh_6.4p1.bbappend

diff --git a/recipes-connectivity/openssh/openssh_6.%.bbappend b/recipes-connectivity/openssh/openssh_6.%.bbappend
new file mode 100644
index 0000000..cab8598
--- /dev/null
+++ b/recipes-connectivity/openssh/openssh_6.%.bbappend
@@ -0,0 +1,13 @@
+PR .= ".1"
+
+inherit with-selinux
+
+FILESEXTRAPATHS_prepend := "${@target_selinux(d, '${THISDIR}/files:')}"
+
+# There is no distro feature just for audit.  If we want it,
+# uncomment the following.
+#
+#PACKAGECONFIG += "${@target_selinux(d, 'audit')}"
+
+PACKAGECONFIG[audit] = "--with-audit=linux,--without-audit,audit,"
+
diff --git a/recipes-connectivity/openssh/openssh_6.4p1.bbappend b/recipes-connectivity/openssh/openssh_6.4p1.bbappend
deleted file mode 100644
index 223b8cf..0000000
--- a/recipes-connectivity/openssh/openssh_6.4p1.bbappend
+++ /dev/null
@@ -1,13 +0,0 @@
-PR .= ".5"
-
-inherit with-selinux
-
-FILESEXTRAPATHS_prepend := "${@target_selinux(d, '${THISDIR}/files:')}"
-
-# There is no distro feature just for audit.  If we want it,
-# uncomment the following.
-#
-#PACKAGECONFIG += "${@target_selinux(d, 'audit')}"
-
-PACKAGECONFIG[audit] = "--with-audit=linux,--without-audit,audit,"
-
-- 
1.9.1


