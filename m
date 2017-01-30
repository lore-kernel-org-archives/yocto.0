Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AAAAE00A1E; Mon, 30 Jan 2017 00:45:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83ECEE00939
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:38 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 75so31005595pgf.3
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=CFXXg2tR31x/GlxWAVD9rBKPFCrqCpGSlXxXYp1L9Io=;
	b=aoxMiZS6sn1FTIXGqmo42otAEAruoJ1Gt3vx+9B+50UiicLcBuw2pgkvpK34Ct8iw4
	pXyCMVbmDSNBCe550zGVkfw+OXxLh6M306oKct2jT3MXh1iZMcPo5tPqW7V+2qH/+9YJ
	3VjB33iYw7eZYrwVaDlZNRKN0o/0IHJ9NiLGN82MWhbyz7ZCA9fK9xRzhk9Istd8gvOH
	X80P39NKGGZP8x5hCELU2xyoEp8w9XbTlihbJD9zYqSIoA6hraVE5T84Jjd/ubP1sUFB
	w+AczqhHEbflOTbZSnpH0sdm+1FeWJqkLEFj7/zTkJHasZE01eMSjeR9ycDyAD8WC88s
	xrWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=CFXXg2tR31x/GlxWAVD9rBKPFCrqCpGSlXxXYp1L9Io=;
	b=M9MJN1Z3DUiP3BJhOuu5yyla0aF8/XKuDOXKB+iC8/MdxQMnQY3lvBUj3htz9AwBoC
	Z5mfYOQkP97l+T3GA+rkYA+T2afoHueCelLZlo74kVuvLSrGe5tIxuVgPr3C/DT8nQtY
	lp7v4GeG8Fyfdguk0gN8xZzV005jK6gigrJYsZ3ZRJ1DVaCbO+ExHy8Sn9Bx2pLKvcnH
	GCRikOpU/b4hjFKwwhLOpo5A4OelHpYAlXi/ghySPNg22f9+2gOGxLIDlVn50QPgvxWf
	hbHPbrYLHlRhZ6rUZXZwjAX8TEpeQOhorTHH8Y1hcN2hf+UN20Zslvyo8gxotdZ5GkiJ
	qmAg==
X-Gm-Message-State: AIkVDXIvMGXkVy1FX2J7RlFwDaLD/KqmgevaBht19lJTq2TpwFUAzUXsoRc+9ZfBdCnkyg==
X-Received: by 10.99.3.5 with SMTP id 5mr23164561pgd.150.1485765938346;
	Mon, 30 Jan 2017 00:45:38 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	h4sm30203087pfk.96.2017.01.30.00.45.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:45:37 -0800 (PST)
Date: Mon, 30 Jan 2017 18:44:13 +1000
Message-Id: <20170130084413.12033-17-nathan@nathanrossi.com>
In-Reply-To: <20170130084413.12033-0-nathan@nathanrossi.com>
References: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH v2 17/19] libgcrypt: Handle packaging of .exe and .def files
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
X-List-Received-Date: Mon, 30 Jan 2017 08:45:52 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Handle packaging of .exe for the hmac/dumpexp packages. Also add the
packaging of mpicalc.exe to the -dev package.

Also handle the packaging of the .def files into the -dev package.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-support/libgcrypt/libgcrypt_%.bbappend | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 recipes-support/libgcrypt/libgcrypt_%.bbappend

diff --git a/recipes-support/libgcrypt/libgcrypt_%.bbappend b/recipes-support/libgcrypt/libgcrypt_%.bbappend
new file mode 100644
index 0000000000..631cbabb3e
--- /dev/null
+++ b/recipes-support/libgcrypt/libgcrypt_%.bbappend
@@ -0,0 +1,8 @@
+
+FILES_${PN}-dev_append_mingw32 = " \
+		${libdir}/*.def \
+		${bindir}/hmac256.exe \
+		${bindir}/mpicalc.exe \
+		"
+FILES_dumpsexp-dev_append_mingw32 = " ${bindir}/dumpsexp.exe"
+
-- 
2.11.0


