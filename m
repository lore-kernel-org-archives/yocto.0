Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A230AE00975; Thu, 15 May 2014 18:31:39 -0700 (PDT)
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
	*      [209.85.220.51 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-pa0-f51.google.com (unknown [209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58448E00975
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 18:31:36 -0700 (PDT)
Received: by mail-pa0-f51.google.com with SMTP id kq14so1791958pab.24
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 18:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=AWVxjBXcj4kxW+pZpGfHNRHeESo+PX81Euak2sLtFDE=;
	b=OSL0iGI2ksZbyirydull5Yjh2OnSztJLPyrRSz3ndLmcsPZf6xwgWeQUuquZy1jpnJ
	TLfb0LMHAz2dscaKpVoDnJkYFrL9C3r5DH6hJSzAD+JxoCrL7htNNLW9KIAndYjOd85d
	fZkKV19/kz0qQo9SeAcXxFs6ArAQlum7ljavOUs+npAxv0NQdCyQdg3HdPk/beuqV0v1
	TnWhk1LlK8fCauPkhA49rqWwOHwDRsB52uIyzSPBut8r7MaaZqM7ApYQbrPlRz8DJzo4
	VZZjI+oIOVA4/TW1yKBBj/WqaGIRYYhOy9zjQxGD2fT6whA52aUe4FAvi831BU09gfZS
	eYsw==
X-Received: by 10.66.233.72 with SMTP id tu8mr16645693pac.112.1400203896550;
	Thu, 15 May 2014 18:31:36 -0700 (PDT)
Received: from Pahoa2.mvista.com (64.2.3.195.ptr.us.xo.net. [64.2.3.195])
	by mx.google.com with ESMTPSA id
	ph1sm27579744pac.14.2014.05.15.18.31.34 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 15 May 2014 18:31:35 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: mark.hatle@windriver.com
Date: Thu, 15 May 2014 18:31:23 -0700
Message-Id: <1400203891-30912-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1400203891-30912-1-git-send-email-akuster808@gmail.com>
References: <1400203891-30912-1-git-send-email-akuster808@gmail.com>
Cc: yocto@yoctoproject.org
Subject: [PATCH 1/9] Use wildcard for augeas and fix build issue
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
X-List-Received-Date: Fri, 16 May 2014 01:31:39 -0000

    augeas: Use wildcard in version to minimize keeping in-sync
    with Poky
---
 recipes-extended/augeas/augeas_1.%.bbappend   | 1 +
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


