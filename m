Return-Path: <djszapi@archlinux.us>
Received: from mail-wg0-f49.google.com (mail-wg0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50871E0143C
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 04:04:39 -0700 (PDT)
Received: by mail-wg0-f49.google.com with SMTP id a12so6803521wgh.4
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 04:04:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=qK7iLRFTmwJJBTla9hjJqzRRXm4rIDfjr6MWdltom7Q=;
	b=pxQarAlV1LAo/Bcayvist0uYh1yfGRcjAcLOdL5lG3yoK+0GNkkRbqlRdVuNjXYUHM
	HWRPYP0/qrVmZW8fWGzn87g6EQl3tLAWLHvABx88eq3VMzcwRJfo+iHsPP2SV33p7Q4b
	D/RUBiBVaoIwd2LfeXJja2BegFUiRr4pGzeZsjKm5000iYe/hMsRru+Bq1OXr4XZzBBf
	vP0K2XPW451wLU670Jj5SzRjY2gF21/9EuPB3QUtBCz9uMjLNzbauyZIXgneEB6N9WXN
	3E8zl9K+xn2qw9dt9RjAmJDhcRa2so8bK207FxVCVRRp4Wpj55dd//l6dCFWGHG2GMHE
	GjyQ==
X-Received: by 10.180.74.232 with SMTP id x8mr32436200wiv.48.1374577478405;
	Tue, 23 Jul 2013 04:04:38 -0700 (PDT)
Received: from djszapi@archlinux.us ([212.44.19.228])
	by mx.google.com with ESMTPSA id u9sm5048498wif.6.2013.07.23.04.04.35
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 23 Jul 2013 04:04:37 -0700 (PDT)
Sender: Laszlo Papp <djszapi@archlinux.us>
Received: by djszapi@archlinux.us (sSMTP sendmail emulation);
	Tue, 23 Jul 2013 12:02:58 +0100
From: Laszlo Papp <lpapp@kde.org>
To: yocto@yoctoproject.org
Date: Tue, 23 Jul 2013 12:02:57 +0100
Message-Id: <1374577377-2614-1-git-send-email-lpapp@kde.org>
X-Mailer: git-send-email 1.8.3.3
X-Gm-Message-State: ALoCoQkiEigovqPjrM1OM2olp1sjEZajY459LZ24sIZXwRJDXio8/lkfp6nFMuHGng2m2X5kXJFb
Subject: [PATCH] Make the yocto layer dependent on oe-core
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
X-List-Received-Date: Tue, 23 Jul 2013 11:04:44 -0000

Signed-off-by: Laszlo Papp <lpapp@kde.org>
---
 meta-yocto/conf/layer.conf | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/meta-yocto/conf/layer.conf b/meta-yocto/conf/layer.conf
index e012f24..e326aad 100644
--- a/meta-yocto/conf/layer.conf
+++ b/meta-yocto/conf/layer.conf
@@ -9,3 +9,8 @@ BBFILE_COLLECTIONS += "yocto"
 BBFILE_PATTERN_yocto = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yocto = "5"
 
+# This should only be incremented on significant changes that will
+# cause compatibility issues with other layers
+LAYERVERSION_yocto = "1"
+
+LAYERDEPENDS_yocto = "core"
-- 
1.8.3.3


