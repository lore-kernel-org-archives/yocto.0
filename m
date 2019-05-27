Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 072C4E00D45; Sun, 26 May 2019 21:56:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AAD7E00D31
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:49 -0700 (PDT)
Received: by mail-pf1-f194.google.com with SMTP id u22so1545117pfm.3
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=YHQ9bd5DpLNiXeNwrnYUvhgW0ozcinHCcHcq1Y95DvQ=;
	b=e3xqmAHo/pYY7oHZdbGzCbyV6kJ0X1ijUbx3EpLwVcA/M8oX5BieOG8rlqG8dDsgKc
	Negkucg3gxAYdrA/Z7QJ4IFj0hVqBhkoATIKcnkiMBfZcTYUgazoXxXAeAWP9uY0H41R
	1ugx8ERsyfFfp4dDm7Pmm0rNpeZsZfVUIiAo7BHq9o9qC5jjJ+URz414pvYTDqv1y1S1
	W3OXeBtHGty3e69FrTrNhoL2v/YbEQPAis5D4PvVETdL+FmiSLqXaw/gyXGhLxzo2llW
	nC++lkhT2WmnZ1ZCqmQZLM94LfCd112hQo9O200T0359otSx0IsAw6bXvoOJZIngNGaF
	pPiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=YHQ9bd5DpLNiXeNwrnYUvhgW0ozcinHCcHcq1Y95DvQ=;
	b=WgqEaA7PvMPTIDZ794rmsQlPGvBPkvrv+RY0trI8UN22GxRzTDFbUhNIAZfnwiwvgU
	8mZPz2MHnZDo+fl6/OOukT5nImwQb9frPGXk8CHzcvej7rgOtPt0lMgD5BMHOv8ERSmA
	v2rAIBJJLonGj6gIQOP3W82OYC7eRBB7imVod97KC3Zyuoj+7kh5nNWoTLx69pyQ/IS0
	00LlpY8tMLwQsOQa3u9Dg96cV95BIt/OB2t9AMxZNg2dOxiG5njPOP4ODVMXIuMrOwS6
	k55Cm5UotCXxasSfnb0mzMgeMRaOrkTa9evaGM8Zl+J2B6GdYwvmNc4U4jd5TgGt8FmX
	ufNg==
X-Gm-Message-State: APjAAAXDugJxJv2jw7niBdsS93aZ0VNPTmGgspO8i63vOmQYcPgsoFT8
	+YEz14AgQGMY9s/tGwcpKv6N8A6J
X-Google-Smtp-Source: APXvYqxLG9V5JHng8nEmYl/X51YaIP7DltcEVSryQVEeQTbzt7ev0ye0Wvx2HS6UmHgGiRdmXnfdRg==
X-Received: by 2002:a17:90a:ac04:: with SMTP id
	o4mr28927275pjq.134.1558933008791; 
	Sun, 26 May 2019 21:56:48 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	x24sm8648072pjq.27.2019.05.26.21.56.48 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 26 May 2019 21:56:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 26 May 2019 21:56:34 -0700
Message-Id: <20190527045641.18884-8-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527045641.18884-1-akuster808@gmail.com>
References: <20190527045641.18884-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 07/14] base-files: add appending to automount securityfs
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
X-List-Received-Date: Mon, 27 May 2019 04:56:52 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-integrity/recipes-core/base-files/base-files-ima.inc    | 5 +++++
 meta-integrity/recipes-core/base-files/base-files_%.bbappend | 1 +
 2 files changed, 6 insertions(+)
 create mode 100644 meta-integrity/recipes-core/base-files/base-files-ima.inc
 create mode 100644 meta-integrity/recipes-core/base-files/base-files_%.bbappend

diff --git a/meta-integrity/recipes-core/base-files/base-files-ima.inc b/meta-integrity/recipes-core/base-files/base-files-ima.inc
new file mode 100644
index 0000000..7e9e210
--- /dev/null
+++ b/meta-integrity/recipes-core/base-files/base-files-ima.inc
@@ -0,0 +1,5 @@
+# Append iversion option for auto types
+do_install_append() {
+    sed -i 's/\s*auto\s*defaults/&,iversion/' "${D}${sysconfdir}/fstab"
+    echo 'securityfs  /sys/kernel/security  securityfs  defaults  0  0' >> "${D}${sysconfdir}/fstab"
+}
diff --git a/meta-integrity/recipes-core/base-files/base-files_%.bbappend b/meta-integrity/recipes-core/base-files/base-files_%.bbappend
new file mode 100644
index 0000000..c006f0e
--- /dev/null
+++ b/meta-integrity/recipes-core/base-files/base-files_%.bbappend
@@ -0,0 +1 @@
+require ${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'base-files-ima.inc', '', d)}
-- 
2.17.1


