Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 185E6E009C2; Fri,  3 Feb 2017 00:46:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB1C9E009B8
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 00:46:22 -0800 (PST)
Received: by mail-it0-f50.google.com with SMTP id 203so7232141ith.0
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2017 00:46:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=rygbQn3RZhxMpJ86dQhD/c8IHX8OYTagOHr8LYDEhLg=;
	b=gcg3VaJXGqF2kpb7M2UaT3m+mgac9s1DeHPp2i/bI85UdeUj82qFifmZYXdqee61xW
	k82qZeePX4TP0GmLXyB6XzQ8wYHM1vo33NRmnyfo6Ttd3HBct47AH4KqwGJkHRxgw/AJ
	Q8sr1Qwi5MWAokma/cjWfqMqjSJSrfRIfhnMmP9xvrOkpVuI1rfnuNYgMEiYi3/WCULL
	8OGCl9ICgX3w3IXB6O/ij400GcMWGoL+miBGuvxrT4Wt5mt6ozIGSKEt30UVtwiJNaBS
	rWpc6vwP6txPxRJaYfPOuCtfzJhGgvr5BaR9JKQhLhpjExUQCn1wNhsump9dSTULaWbH
	h84Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=rygbQn3RZhxMpJ86dQhD/c8IHX8OYTagOHr8LYDEhLg=;
	b=ltwZbfzYhUdA9Pl6H083+M7eQjvhlEPb4yAoERt3hGrqY4QIUlU9AbKs7e2LMqKX40
	CQJbsyGrgBJowqdFI3r4MDt6QRp1KruosU1fpTLb9g4/L7RnzHlMWLi4l6HRlYBP2Z6M
	dlpn0RuJe5XUP7Uy0BW/zMaYNh7X2Xg6kmFiG/Q3SWJR8+G78knzrhNi1DILez3LyMgv
	cTddE5frwWE00kiUlc3975OUVA1vCvaz7wf4ut5LFLpbIgwgpDo6CMslNz6f1ejjNp7r
	O+hZcoe35tLUDUbsEY8Ky+Up3R9nJDCZQvnX7t9cXXiIplKnvnKFZhY+ywNdv6pgKK1K
	TSdg==
X-Gm-Message-State: AIkVDXKQ8glH7fIxC/jTBLZirNza87vsEk7sz7oKper+ZsQuhWT8qGjR8DyMxyKedlRed/Lz
X-Received: by 10.36.65.163 with SMTP id b35mr198748itd.41.1486111582441;
	Fri, 03 Feb 2017 00:46:22 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8E712.dip0.t-ipconnect.de.
	[93.232.231.18])
	by smtp.gmail.com with ESMTPSA id r85sm635758itc.13.2017.02.03.00.46.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 03 Feb 2017 00:46:21 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  3 Feb 2017 09:46:06 +0100
Message-Id: <81421a577060df46858462fc9ee261698deb807d.1486111542.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
References: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
Subject: [meta-security][PATCH v2 1/9] trousers: missing libtspi.so.1 in libtspi package
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
X-List-Received-Date: Fri, 03 Feb 2017 08:46:29 -0000

The soname of libtspi.so is "libtspi.so.1" and therefore apps
linked against that library depend on the libtspi.so.1 symlink
to find the library.

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 recipes-tpm/trousers/trousers_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-tpm/trousers/trousers_git.bb b/recipes-tpm/trousers/trousers_git.bb
index 1dedd7c..0a7e5b6 100644
--- a/recipes-tpm/trousers/trousers_git.bb
+++ b/recipes-tpm/trousers/trousers_git.bb
@@ -57,6 +57,7 @@ PACKAGES = " \
 	"
 
 FILES_libtspi = " \
+	${libdir}/*.so.1 \
 	${libdir}/*.so.1.2.0 \
 	"
 FILES_libtspi-dbg = " \
@@ -69,7 +70,6 @@ FILES_libtspi-dbg = " \
 FILES_libtspi-dev = " \
 	${includedir} \
 	${libdir}/*.so \
-	${libdir}/*.so.1 \
 	"
 FILES_libtspi-doc = " \
 	${mandir}/man3 \
-- 
git-series 0.9.1

