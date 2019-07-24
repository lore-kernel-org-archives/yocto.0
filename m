Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA930E00DB7; Wed, 24 Jul 2019 10:20:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B03AE00D90
	for <yocto@lists.yoctoproject.org>;
	Wed, 24 Jul 2019 10:20:15 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id f4so91252646ioh.6
	for <yocto@lists.yoctoproject.org>;
	Wed, 24 Jul 2019 10:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=HZR5rlPFMxpCMo8Hp4p7MNPrmZomtFnZYngYrCBZEJg=;
	b=ShqO9ZSZSTn4YWCBiYaCFnfto6HN81Ffk39WnREv6mvANC/vUw9ATjH2v47i9Pbl7L
	yYnYrHXsOolnKzM35Cb+/DGXVgX4CZQbAx1SCK8ubKeLg0cgSsUOZRyIcjAMma/kCI/X
	kdiIFr39Zevhz7hSVQuyy0HHLVhSzvf++JKa9a4LMnZu+LpBDeqTJ0YA7C2iijgGa3Ma
	2B1aejeHZNEMvtNULfk5fAcLuLxZGfFS32gMBnL0vCMrud0fbGYbjSZq91B4LgX+6wAO
	hOieQv/Shrd0hyZCgMyIldM+7JmC22co+6VZWuKNHPITtQI6ir5zCZmJ4gOlEkkLtarV
	tgiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=HZR5rlPFMxpCMo8Hp4p7MNPrmZomtFnZYngYrCBZEJg=;
	b=NYc8xNtoul9m0Gjnhw2J9RrUzs+J8T1sTl0l5GVYb9vxjPBnaCY9euso3AiYUprT1g
	U0gQYb2aAJ8+LxniTaYAZoaLNKy+pD2yMr85zFQH+mzmzbUqNSUtERFL/mvfwOegN/OW
	8pHNJP5HY5RMLLhS5qgOWYKZAN14spYtBZJ++lM8bJnwiwuzWVLqXdOjcU9dSbTxODkD
	1PXOmOywHybDlQ0DuJUsidOEzrCh319/lR7jagKGjfMdWDv8JYFqJFT4M3n+ghHO7Yt2
	mhxnNEYAmfY29bT2tTqXju5Z423vmnlP+/ds7zi+xXfND13bq8vezErIS7raScCosbJU
	Cg4A==
X-Gm-Message-State: APjAAAV4BGjMLMdl4d8sRdSDRFOJOmH3QsvFl3Y5D8rePbO5U2/puGlF
	/8ZaxFccB3DMRfgMj3UZ7Zl3Okhh
X-Google-Smtp-Source: APXvYqwf/ug47lsK+ZKNQI6AGn1ZOArdOTe5tkGj0lqdwgF4ir3i0bq49LwxRWKSSiZ+qGSuUWk6Jg==
X-Received: by 2002:a02:3f1d:: with SMTP id d29mr90728364jaa.116.1563988814252;
	Wed, 24 Jul 2019 10:20:14 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id p3sm70574500iom.7.2019.07.24.10.20.13
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 24 Jul 2019 10:20:13 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Wed, 24 Jul 2019 12:20:05 -0500
Message-Id: <20190724172005.20626-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [meta-mingw][PATCH] libsdl: remove
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
X-List-Received-Date: Wed, 24 Jul 2019 17:20:15 -0000
Content-Transfer-Encoding: 8bit

libsdl is being removed from oe-core, so it should no longer be
necessary here either.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 recipes-graphics/libsdl/libsdl_%.bbappend | 4 ----
 1 file changed, 4 deletions(-)
 delete mode 100644 recipes-graphics/libsdl/libsdl_%.bbappend

diff --git a/recipes-graphics/libsdl/libsdl_%.bbappend b/recipes-graphics/libsdl/libsdl_%.bbappend
deleted file mode 100644
index 592ace5..0000000
--- a/recipes-graphics/libsdl/libsdl_%.bbappend
+++ /dev/null
@@ -1,4 +0,0 @@
-# Disable default x11 support
-PACKAGECONFIG_class-nativesdk_mingw32 = ""
-
-FILES_${PN}-bin_mingw32 = "${bindir}/*.exe ${sbindir}/*.exe"
-- 
2.21.0


