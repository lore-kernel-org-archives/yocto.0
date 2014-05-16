Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BAF8E00BA0; Thu, 15 May 2014 18:32:09 -0700 (PDT)
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
	*      [209.85.160.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-pb0-f42.google.com (unknown [209.85.160.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 478BBE00B68
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 18:32:08 -0700 (PDT)
Received: by mail-pb0-f42.google.com with SMTP id md12so1864186pbc.1
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 18:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=zG0oR8h72QSEPHKmzC7S3Klcfj+FOH4ngeWHCtTUVu8=;
	b=AAY+rQqK8yPKUy5urAbCkbQqLsQc8BAUuCdYMSMbcDsBHZpQYhCTPYFnrEfnduCSaA
	Fs6TVJWXJsqRY20tjoeiJ7wejSLUpTGR/BMIBbsDOssRiYWLkebncN83fp0Fde05i3OL
	PV2UDTDvaO3QOulWYoye3EJLX8rgq+0vq5ydGrNVyTi+1Fy3PqKf+KLOpdBCIiY56lay
	7FaCH5Er/Bu7MDtnm6V3bl5b/+XBJub7wpeyVeWlSU7U5hbI9uI2kAQi1f2GIooHxvwz
	kq5A3QOg6oEaF2U2D4QzQ2JXYTntI56WvK1ydlVT/9ONZDxAXEVsCfPDy0iF79o0RRxc
	ipVw==
X-Received: by 10.66.141.12 with SMTP id rk12mr16563237pab.152.1400203928627; 
	Thu, 15 May 2014 18:32:08 -0700 (PDT)
Received: from Pahoa2.mvista.com (64.2.3.195.ptr.us.xo.net. [64.2.3.195])
	by mx.google.com with ESMTPSA id
	ph1sm27579744pac.14.2014.05.15.18.31.36 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 15 May 2014 18:31:37 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: mark.hatle@windriver.com
Date: Thu, 15 May 2014 18:31:24 -0700
Message-Id: <1400203891-30912-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1400203891-30912-1-git-send-email-akuster808@gmail.com>
References: <1400203891-30912-1-git-send-email-akuster808@gmail.com>
Cc: yocto@yoctoproject.org
Subject: [PATCH 2/9] Use wildcard in bind bbappend name
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
X-List-Received-Date: Fri, 16 May 2014 01:32:09 -0000

    bind: Use wildcard to minimize the need to keep in-sync
    with poky.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-connectivity/bind/bind_9.%.bbappend   | 13 +++++++++++++
 recipes-connectivity/bind/bind_9.8.1.bbappend | 13 -------------
 2 files changed, 13 insertions(+), 13 deletions(-)
 create mode 100644 recipes-connectivity/bind/bind_9.%.bbappend
 delete mode 100644 recipes-connectivity/bind/bind_9.8.1.bbappend

diff --git a/recipes-connectivity/bind/bind_9.%.bbappend b/recipes-connectivity/bind/bind_9.%.bbappend
new file mode 100644
index 0000000..3500b9a
--- /dev/null
+++ b/recipes-connectivity/bind/bind_9.%.bbappend
@@ -0,0 +1,13 @@
+PR .= ".1"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+SRC_URI += "file://volatiles.04_bind"
+
+do_install_append() {
+	install -d ${D}${sysconfdir}/default/volatiles
+	install -m 0644 ${WORKDIR}/volatiles.04_bind ${D}${sysconfdir}/default/volatiles/volatiles.04_bind
+
+	sed -i '/^\s*\/usr\/sbin\/rndc-confgen/a\
+	    [ -x /sbin/restorecon ] && /sbin/restorecon -F /etc/bind/rndc.key' ${D}${sysconfdir}/init.d/bind
+}
diff --git a/recipes-connectivity/bind/bind_9.8.1.bbappend b/recipes-connectivity/bind/bind_9.8.1.bbappend
deleted file mode 100644
index a15e045..0000000
--- a/recipes-connectivity/bind/bind_9.8.1.bbappend
+++ /dev/null
@@ -1,13 +0,0 @@
-PR .= ".3"
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-SRC_URI += "file://volatiles.04_bind"
-
-do_install_append() {
-	install -d ${D}${sysconfdir}/default/volatiles
-	install -m 0644 ${WORKDIR}/volatiles.04_bind ${D}${sysconfdir}/default/volatiles/volatiles.04_bind
-
-	sed -i '/^\s*\/usr\/sbin\/rndc-confgen/a\
-	    [ -x /sbin/restorecon ] && /sbin/restorecon -F /etc/bind/rndc.key' ${D}${sysconfdir}/init.d/bind
-}
-- 
1.9.1


