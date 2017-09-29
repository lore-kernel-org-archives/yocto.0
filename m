Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1D52E00D72; Thu, 28 Sep 2017 21:26:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FF2BE00D67
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 21:26:47 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id e69so234082pfg.4
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 21:26:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=L3VdB+5Z8Sx9yd31S64NaZyJCc9EFuWCOdFyCbokFcY=;
	b=NNxJqjvd8DjyVgXKK5RDzzo+Ih6Yyx1vKcqmQP9JHSKY58lNpJPiH2qeQ7txArvl++
	22kySyw9yGTpjxAA2uahc0lhg6kpE4liQdDTeDa055tNqVYukuCTYz+PizlxWh/ZQCY2
	4K9CQkti4VO62ZJseNAN52tRyjfkCSb8/dVQzf5a9b5+jP+sKar4VWWP0/iXXcfY8DF3
	MLcyhfW+5xR8Tv9/Mn9KL9IRvglbZUqoVW2/w/ZZdGZPF10c4Lgb3vbmYoDpAZEMPCGG
	oXukC5QEWKv2vz8psvdhoEN2sZ3OGkHm8lrDoS9eOUOlAHPJM5Uw1O8Y93QYAJzN1a3v
	maBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=L3VdB+5Z8Sx9yd31S64NaZyJCc9EFuWCOdFyCbokFcY=;
	b=bhURNem0KSDkArg5fNKGBZFxWPYKbBIHpI5svLgLzgCBN4sENzsCg99KbhHwgNQufr
	rEVT250k6AuoNu/Tb5c+WQC3LRHL4nbtv+fN20m3Jzb3xfYVaoERSIxUwkWHiRvT23D2
	5SqcldAxjeUK06ssrerScOn7+MUC6lB4Ryp+RtEh+bVLMAArCRh/A+cdRchqclGan8tX
	Jir5e/QAlzJP7TVE1/HE6SiKae4+RsvxoebaB/rWO73TLIR/jg1FVYKhGQ41FHVyNFg+
	Nmz333px5lOQuMal3WEsQ/Eq2hkMX/Xi4Cv7SyBiI4e6J+guuz2hGmCoQDXZ587kclGD
	rNPA==
X-Gm-Message-State: AHPjjUifU+p0g0fgfH/WqWyYfgMoTSzOj0cVSTdesrx2kZbwrrYO0eT0
	wjgEOeciTlt+3R0VpfSUO10=
X-Google-Smtp-Source: AOwi7QAgvHHj3o4tbazjdxFY86V0hPh5yTu8mtx9se/WuR1sJpTM/lRiLwUdiJdOnmkmAii7Bl9z3Q==
X-Received: by 10.99.167.68 with SMTP id w4mr5975784pgo.390.1506659207183;
	Thu, 28 Sep 2017 21:26:47 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4001:9ea0:c06:a05b:fc56:fd72])
	by smtp.gmail.com with ESMTPSA id
	r66sm5060330pfl.15.2017.09.28.21.26.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 28 Sep 2017 21:26:46 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Thu, 28 Sep 2017 21:26:34 -0700
Message-Id: <1506659201-21501-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506659201-21501-1-git-send-email-akuster808@gmail.com>
References: <1506659201-21501-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 1/8] meta-security-compliance: add new layer for compliance and audit applications
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
X-List-Received-Date: Fri, 29 Sep 2017 04:26:48 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-security-compliance/README          | 41 ++++++++++++++++++++++++++++++++
 meta-security-compliance/conf/layer.conf | 13 ++++++++++
 2 files changed, 54 insertions(+)
 create mode 100644 meta-security-compliance/README
 create mode 100644 meta-security-compliance/conf/layer.conf

diff --git a/meta-security-compliance/README b/meta-security-compliance/README
new file mode 100644
index 0000000..b29c143
--- /dev/null
+++ b/meta-security-compliance/README
@@ -0,0 +1,41 @@
+# Meta-security-compliance
+
+This layer is meant to contain programs to help in security compliance and auditing
+
+
+Dependencies
+============
+
+This layer depends on:
+
+  URI: git://git.openembedded.org/bitbake
+  branch: master
+
+  URI: git://git.openembedded.org/openembedded-core
+  layers: meta
+  branch: master
+
+or
+
+  URI: git://git.yoctoproject.org/poky
+  branch: master
+
+
+
+Maintenance
+-----------
+
+Send pull requests, patches, comments or questions to yocto@yoctoproject.org
+
+When sending single patches, please using something like:
+'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-security][PATCH'
+
+Layer Maintainer: Armin Kuster <akuster@mvista.com>
+
+
+License
+=======
+
+All metadata is MIT licensed unless otherwise stated. Source code included
+in tree for individual recipes is under the LICENSE stated in each recipe
+(.bb file) unless otherwise stated.
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
new file mode 100644
index 0000000..b1b9727
--- /dev/null
+++ b/meta-security-compliance/conf/layer.conf
@@ -0,0 +1,13 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH .= ":${LAYERDIR}"
+
+# We have a recipes directory, add to BBFILES
+BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend ${LAYERDIR}/classes/*.bbclass"
+
+BBFILE_COLLECTIONS += "scanners-layer"
+BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
+BBFILE_PRIORITY_scanners-layer = "6"
+
+LAYERDEPENDS_scanners-layer = " \
+    core \
+"
-- 
2.7.4


