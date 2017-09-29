Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF8EFE00D8C; Thu, 28 Sep 2017 21:26:49 -0700 (PDT)
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
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0726E00D71
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 21:26:48 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id a7so231494pfj.5
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 21:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=PNhdRgqSs2dbuhRwt01iX76QyZUP3t1ce0q4cvDBKs4=;
	b=YrJqB3sOQ3oQHjPl16Su4Frb+8VGxFmOBjK3xCzqjM1GXywhbLx/tItUIi5RJ2yJLu
	uSAfZATSs8m+23Mowi4P9MQ1DHMXcdv4O27iKufgy8jWgoFKDDcVNbgcfzjlp2imReNH
	L0+aFS4L6kd8A6PJX0yqc8hrd7sipj3CjT2f87j1hit69eBQkqSH9cGH7TNGZN7K2b0w
	qhTl+6OnogzBQrlF6MknWPB/vSFUpRPH4jE7eG9fs2WvVGHyGqKAe2xs1T80Xuc9ksJI
	Figk6uefDtoURAb7VA75PHXo57x0kc7SCM787tsnRd8WTXAURI0LDa3DBhKejhuIcNe0
	AO5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=PNhdRgqSs2dbuhRwt01iX76QyZUP3t1ce0q4cvDBKs4=;
	b=QbLLLnTfxnGqNsltRBEjNWTXbg3kYTRyJ7A1jOGRs1nWe7rZdBVyXnZYFw89x+GLnh
	ypr+xskc5CZi8Bb/soDfOhE/gch7XwhAmP+AVx1EkJkWh05jftc9wgI66eXq8l2KoQef
	/7yK/N17GMDvSfIvsm6Zx3Ry9J5Te9Sp+vULyOVVfbYhUU0NGVEJ4Z3XVAvsZC7EBIIg
	oilMqbDMPET5XrexPfj+gMzsP4opAjh2fz4PYgqqo50v4l+hl2GwzskKcX1raaBelp65
	j00sPtdMHW5Mm0gPTQCgj7wHXEmFIYTT6LcdlJGaJPKtt/tAs9YZHz8vTsov/vQjT9wm
	5aYg==
X-Gm-Message-State: AHPjjUhQfjYF30BDJQBZHUA7ZgOrH9Ndi2VV8Ddhs2t6rjXXqwxc3Ud4
	+XnReRJm131Lp8nfuRwsenc=
X-Google-Smtp-Source: AOwi7QCwYxDHNCFEfn4Ly9b3cDxN8RtcJQuqYRz7/mIk5Do1s3A1hddMra75F9bpCt3I1tKLvCg5YA==
X-Received: by 10.99.121.194 with SMTP id u185mr6087425pgc.21.1506659208173;
	Thu, 28 Sep 2017 21:26:48 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4001:9ea0:c06:a05b:fc56:fd72])
	by smtp.gmail.com with ESMTPSA id
	r66sm5060330pfl.15.2017.09.28.21.26.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 28 Sep 2017 21:26:47 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Thu, 28 Sep 2017 21:26:35 -0700
Message-Id: <1506659201-21501-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506659201-21501-1-git-send-email-akuster808@gmail.com>
References: <1506659201-21501-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/8] lynis: add auditing tool
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
X-List-Received-Date: Fri, 29 Sep 2017 04:26:49 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-auditors/lynis/lynis_2.5.1.bb | 41 +++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 recipes-auditors/lynis/lynis_2.5.1.bb

diff --git a/recipes-auditors/lynis/lynis_2.5.1.bb b/recipes-auditors/lynis/lynis_2.5.1.bb
new file mode 100644
index 0000000..c25b804
--- /dev/null
+++ b/recipes-auditors/lynis/lynis_2.5.1.bb
@@ -0,0 +1,41 @@
+# Copyright (C) 2017 Armin Kuster  <akuster808@gmail.com>
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SUMMARY = "Lynis is a free and open source security and auditing tool."
+HOMEDIR = "https://cisofy.com/"
+LICENSE = "GPL-3.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=3edd6782854304fd11da4975ab9799c1"
+
+SRC_URI = "https://cisofy.com/files/${BPN}-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "5b9da89c616344bbc73cbc5688a4a0bd"
+SRC_URI[sha256sum] = "7a09c6fc71c65d572ca702df7b4394d71f9037484062ef71b76f59a2c498b029"
+
+S = "${WORKDIR}/${BPN}"
+
+inherit autotools-brokensep
+
+do_compile[noexec] = "1"
+do_configure[noexec] = "1"
+
+do_install () {
+	install -d ${D}/${bindir}
+	install -d ${D}/${sysconfdir}/lynis
+	install -m 555 ${S}/lynis ${D}/${bindir}
+
+	install -d ${D}/${datadir}/lynis/db
+	install -d ${D}/${datadir}/lynis/plugins
+	install -d ${D}/${datadir}/lynis/include
+	install -d ${D}/${datadir}/lynis/extras
+
+	cp -r ${S}/db/* ${D}/${datadir}/lynis/db/.
+	cp -r ${S}/plugins/*  ${D}/${datadir}/lynis/plugins/.
+	cp -r ${S}/include/* ${D}/${datadir}/lynis/include/.
+	cp -r ${S}/extras/*  ${D}/${datadir}/lynis/extras/.
+        cp ${S}/*.prf ${D}/${sysconfdir}/lynis
+}
+
+FILES_${PN} += "${sysconfdir}/developer.prf ${sysconfdir}/default.prf"
+FILES_${PN}-doc += "lynis.8 FAQ README CHANGELOG.md CONTRIBUTIONS.md CONTRIBUTORS.md" 
+
+RDEPENDS_${PN} += "procps"
-- 
2.7.4


