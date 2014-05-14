Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99343E00B8A; Wed, 14 May 2014 15:30:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-pa0-f43.google.com (unknown [209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9347E00BBC
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 15:30:06 -0700 (PDT)
Received: by mail-pa0-f43.google.com with SMTP id hz1so180777pad.16
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 15:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=wwKAabTNwA3aKOQaaPK5YMV/SkQZN8Nz519n+5Ep3pE=;
	b=dbd/wxlsxSAS9yxcILw1g6In4GYM7HP8p99KJmCJUlld9pxgvOdXNuVp9+vF9+q4vX
	cQt8UGSF5zuOzeEiZ5cbkFZfK2OgVB9LrgZlwAOIrbR/6lKxq4U00vBXPLi3QZ9hkDyS
	0vGMImYnfqedcmi+AxmsYv/nrR37rlaRJ1HA/wBUNefujA0gil2rWRY7c7fRDvex/5vN
	64OeI5Rz5qRmASy7r5H8H6TEUx86tc6io2nSBjWIn7WL3xBhbuI3MgQLnlP01qe6U2Mw
	5WchLzsepAFHwncUKMQPAqvXHJzcNEwhG8X9o5jZppabz8iT08QGMd4TB/wgfvZukyZT
	H6pg==
X-Received: by 10.68.162.1 with SMTP id xw1mr7715571pbb.128.1400106268469;
	Wed, 14 May 2014 15:24:28 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55])
	by mx.google.com with ESMTPSA id jd5sm5364684pbb.18.2014.05.14.15.24.26
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 14 May 2014 15:24:27 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: mark.hatle@windriver.com
Date: Wed, 14 May 2014 15:24:15 -0700
Message-Id: <1400106263-25100-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
References: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
Cc: yocto@yoctoproject.org
Subject: [PATCH 1/9] Use wildcard for augeas bbappend name
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
X-List-Received-Date: Wed, 14 May 2014 22:30:19 -0000

    augeas: Use wildcard in version to minimize keeping in-sync
    with Poky.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-extended/augeas/augeas_1.%.bbappend | 1 +
 recipes-extended/augeas/augeas_1.1.0.bbappend | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)
 create mode 100644 recipes-extended/augeas/augeas_1.%.bbappend
 delete mode 100644 recipes-extended/augeas/augeas_1.1.0.bbappend

diff --git a/recipes-extended/augeas/augeas_1.%.bbappend b/recipes-extended/augeas/augeas_1.%.bbappend
new file mode 100644
index 0000000..c1e8ed6
--- /dev/null
+++ b/recipes-extended/augeas/augeas_1.%.bbappend
@@ -0,0 +1 @@
+inherit with-selinux
diff --git a/recipes-extended/augeas/augeas_1.1.0.bbappend b/recipes-extended/augeas/augeas_1.1.0.bbappend
deleted file mode 100644
index c1e8ed6..0000000
--- a/recipes-extended/augeas/augeas_1.1.0.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-inherit with-selinux
-- 
1.9.1


