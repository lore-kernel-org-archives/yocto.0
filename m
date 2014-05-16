Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77FA5E00BAA; Thu, 15 May 2014 18:32:15 -0700 (PDT)
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
	*      [209.85.220.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-pa0-f52.google.com (unknown [209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36B43E00B9F
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 18:32:14 -0700 (PDT)
Received: by mail-pa0-f52.google.com with SMTP id fa1so1808967pad.25
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 18:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=zWD0yf7Ur6QiYq+9Ly+DxqpxFoOPmZOk+rNqOVw5Gyc=;
	b=GaH/Z3H0jRBY4ZcxPoLc4LvmjQmUsypkKYD1WEtht6hjTBet+2ebReb/hIzFyEPHAz
	1UBUjU6mRMQMoJLwbcWypsOevyRroLWuCE+L6RCz00Z66sXwmvkUEzmUumyzt3nFBvny
	mXIPw2jCistjtipDxZFFhiCgxT5quUg1nBZOQxAByoX/uAjoewgylJHiqO+mtX39aqxv
	RV1ex4W2JCL+kmGplX/zA2hb/RLHhzi600gUR09qCNb2kWKJLrjc+in/Jbcn2QdowwUE
	eK6z+geF6YPiUg9d3Mnq20UFLGh1AqxgD+IShUHkiB41eCoO0owQa8MFabJXjiVltouG
	Qmhw==
X-Received: by 10.68.245.162 with SMTP id xp2mr16906501pbc.69.1400203934621;
	Thu, 15 May 2014 18:32:14 -0700 (PDT)
Received: from Pahoa2.mvista.com (64.2.3.195.ptr.us.xo.net. [64.2.3.195])
	by mx.google.com with ESMTPSA id
	ph1sm27579744pac.14.2014.05.15.18.32.12 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 15 May 2014 18:32:13 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: mark.hatle@windriver.com
Date: Thu, 15 May 2014 18:31:27 -0700
Message-Id: <1400203891-30912-6-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1400203891-30912-1-git-send-email-akuster808@gmail.com>
References: <1400203891-30912-1-git-send-email-akuster808@gmail.com>
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
X-List-Received-Date: Fri, 16 May 2014 01:32:15 -0000

openssh: Use wildcard in version to minimize keeping in-sync with Poky

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-connectivity/openssh/openssh_6.%.bbappend   | 11 +++++++++++
 recipes-connectivity/openssh/openssh_6.4p1.bbappend | 13 -------------
 2 files changed, 11 insertions(+), 13 deletions(-)
 create mode 100644 recipes-connectivity/openssh/openssh_6.%.bbappend
 delete mode 100644 recipes-connectivity/openssh/openssh_6.4p1.bbappend

diff --git a/recipes-connectivity/openssh/openssh_6.%.bbappend b/recipes-connectivity/openssh/openssh_6.%.bbappend
new file mode 100644
index 0000000..4559e6f
--- /dev/null
+++ b/recipes-connectivity/openssh/openssh_6.%.bbappend
@@ -0,0 +1,11 @@
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


