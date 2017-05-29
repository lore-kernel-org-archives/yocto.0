Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34DACE00A38; Mon, 29 May 2017 01:35:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2515E00920
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 01:35:46 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id m7so17638498wmg.0
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 01:35:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=7/u+gcvn/iA/vpY1+N8rFaXkWijVp+zK40WngXu5tUY=;
	b=YqKPshx70lyxqVRbEP91A/RUCZ7hPihh4qsQ7POTIBHsZUL7RRFy6KE+T6liH3Qc/R
	qqx11+fkk3x0Es4AX49QYPzE/b51xDlVkalXQSUajx3LpncqCMZJ6L2pXmZClUUm6uYW
	Jz8BdMyZeTD980dbBXt1cHJzgzmN37zkms/OghaHIi7KgGmcBTpe3PmW8O1mgGuZGka2
	Wz5PtcoGNQhSXe8zU+ZwvKhhEXM5QMNOkGcneupXKygGlL+8v93IETVg4hB52UfVHXJS
	P5yaZBIJfy729fQz4uRFGj+o85pyCYQOB/tdhX/XtZZrnzRuYNBRnFoDUiYHuk2UDYD8
	rbrw==
X-Gm-Message-State: AODbwcAVEEZXznoND+fZXiRQm1BmqhTu7tUX6IaMRZWGQ5Tgiht3wCvI
	MhsSO9GJPzC2V+0zUtU=
X-Received: by 10.223.176.85 with SMTP id g21mr1330719wra.26.1496046944705;
	Mon, 29 May 2017 01:35:44 -0700 (PDT)
Received: from tfsielt31850.tycofs.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	i143sm12001158wmf.33.2017.05.29.01.35.43 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 May 2017 01:35:43 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon, 29 May 2017 09:35:38 +0100
Message-Id: <20170529083538.17258-1-git@andred.net>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-security][PATCH] layer.conf: fix typo (meta-filesystems vs mete-filesystems)
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
X-List-Received-Date: Mon, 29 May 2017 08:35:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <adraszik@tycoint.com>

---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 547a559..0e524a1 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -13,4 +13,4 @@ LAYERDEPENDS_security = "core openembedded-layer perl-layer"
 LAYERDEPENDS_security += "${@bb.utils.contains("DISTRO_FEATURES", "x11", "gnome-layer xfce-layer", "", d)}"
 LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "tpm", "tpm-layer", "",d)}"
 LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "tpm2", "tpm-layer", "",d)}"
-LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "vtpm", "tpm-layer mete-filesystems", "",d)}"
+LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "vtpm", "tpm-layer meta-filesystems", "",d)}"
-- 
2.11.0


