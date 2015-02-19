Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8B02E00546; Wed, 18 Feb 2015 19:45:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C2EEE00345
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 19:44:55 -0800 (PST)
Received: by mail-ig0-f178.google.com with SMTP id hl2so6632182igb.5
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 19:44:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:subject:date:message-id;
	bh=2VJbJdPM2nmNvN77HE74kL/xa41RvJyY2LwxDY7ppqc=;
	b=V9VvgK8o/pDkRvuRQAqmia47z0fqCuSYCFN6IGa166ZFBKOJZqAv4siF16PrBuDZWS
	M9SesrPOMMeqdNKOBNjPcpdecIB4dEoZPJgjYDDp3qYNDZhp1gXZ5MzyCvU2QvA7vDEH
	RN01O5i2V/5fUy0xkZ87P+8jvNqIFBCw+sjacRyiMIpJNRJsYtSVOU6H2voikCx4lXc+
	OG7AD7nWq0UXSvBeV/fJfgvykwdSDj2oWJ+75lCz68BtvcpsKUUucHivSUMWuDevFRXj
	f7k0WtC9SmALOgkooeAiroW7DNEWo2M7XYZwQkzE5qAWfdsEbtoJ8yuqs2LYgZOmXlQg
	6VKg==
X-Gm-Message-State: ALoCoQnx9DtRVXeqlDyz+RWv1+RjE1fU6ZuQz+O2LERNJs3+3IzLhDHzs32ka7awhbDiQV2SR4bj
X-Received: by 10.107.169.42 with SMTP id s42mr3573545ioe.46.1424317494653;
	Wed, 18 Feb 2015 19:44:54 -0800 (PST)
Received: from mir.deserted.net (24-246-4-250.cable.teksavvy.com.
	[24.246.4.250])
	by mx.google.com with ESMTPSA id nv8sm13221286igb.6.2015.02.18.19.44.53
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 18 Feb 2015 19:44:54 -0800 (PST)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Wed, 18 Feb 2015 22:45:47 -0500
Message-Id: <1424317547-24831-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-selinux][PATCH] layer: update configuration and dependencies
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
X-List-Received-Date: Thu, 19 Feb 2015 03:45:04 -0000

Add in support for optional bbappends based on the presence of other
layers in the project and move the lxc recipe to a meta-virtualization
location.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 README                                                      | 13 +++++++++++++
 conf/layer.conf                                             |  9 +++++----
 .../recipes-containers}/lxc/lxc_%.bbappend                  |  0
 3 files changed, 18 insertions(+), 4 deletions(-)
 rename {recipes-containers => meta-virtualization/recipes-containers}/lxc/lxc_%.bbappend (100%)

diff --git a/README b/README
index 926d880..3fe8af4 100644
--- a/README
+++ b/README
@@ -34,6 +34,19 @@ the Yocto Project website:
 
 http://www.yoctoproject.org
 
+This layer also optionally depends on the following layers:
+
+URI: git://github.com/openembedded/meta-oe.git
+branch: master
+revision: HEAD
+layers: meta-oe
+        meta-networking
+        meta-python
+
+URI: git://git.yoctoproject.org/meta-virtualization
+branch: master
+revision: HEAD
+
 
 Maintenance
 -----------
diff --git a/conf/layer.conf b/conf/layer.conf
index 723f5a8..39ae7bf 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -5,6 +5,11 @@ BBPATH .= ":${LAYERDIR}"
 BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
             ${LAYERDIR}/recipes-*/*/*.bbappend"
 
+# Let us add layer-specific bbappends which are only applied when that
+# layer is included in our configuration
+BBFILES += "${@' '.join('${LAYERDIR}/%s/recipes*/*/*.bbappend' % layer \
+               for layer in BBFILE_COLLECTIONS.split())}"
+
 BBFILE_COLLECTIONS += "selinux"
 BBFILE_PATTERN_selinux = "^${LAYERDIR}/"
 BBFILE_PRIORITY_selinux = "5"
@@ -15,8 +20,4 @@ LAYERVERSION_selinux = "1"
 
 LAYERDEPENDS_selinux = " \
     core \
-    meta-python \
-    networking-layer \
-    openembedded-layer \
-    virtualization-layer \
 "
diff --git a/recipes-containers/lxc/lxc_%.bbappend b/meta-virtualization/recipes-containers/lxc/lxc_%.bbappend
similarity index 100%
rename from recipes-containers/lxc/lxc_%.bbappend
rename to meta-virtualization/recipes-containers/lxc/lxc_%.bbappend
-- 
1.9.1


