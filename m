Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2603E00344
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 12:13:26 -0700 (PDT)
Received: from mail-wg0-f54.google.com ([74.125.82.54])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 25 Sep 2012 12:13:25 -0700
Received: by wgbdt10 with SMTP id dt10so4576916wgb.11
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 12:13:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=kCRQIiFFMQeVz+pSJx0YfU3cZrmF//pu5NagMYUKEu4=;
	b=OanAAfvy9XI6ZIzqJHww7IYAa880rh3j7h+h2yL8r/bNaB7c+/8jZneT7ElvEYVEOa
	s26Y6eqRiec5Fix8aM6TgMOdvthfDWuUHC3Tzy8c6eAn7VbxIZB779G2O6rmBBzPI77u
	wT8GAHTbIHn9EsF3ayJ6hA04THFstLdFnTB+YaloxHaAv2LMZpxaqG5vM8v/3hOFwtcH
	zVchqU8QBnyYlPpoiEmJ0b5Jxnww1yPmXqz657/GD2OK+SCUhjJ+OTqAFQBDeHxREPOr
	mbJd2xDxK2/+bKtYCZuhrwyvpxDGHRktf7jPDo7wH2IHhLvdQMuMeVsIhA3lEMDNwejP
	8kCg==
Received: by 10.216.245.135 with SMTP id o7mr9304322wer.40.1348600404207;
	Tue, 25 Sep 2012 12:13:24 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id t8sm21493590wiy.3.2012.09.25.12.13.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 25 Sep 2012 12:13:23 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Tue, 25 Sep 2012 20:12:26 +0100
Message-Id: <1348600346-7094-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQnK7Ug28J23Um0GelcsT5Yvtr7XOiamXes/axboHyzr99XpiezcJUG9JTP3s5BWxTuTaEM7
Subject: [PATCH] meta-emenlow: don't set virtual/libx11 provider
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Sep 2012 19:13:26 -0000

libx11-trim doesn't exist anymore so setting that as the default isn't going to
work, resulting in a "multiple providers" error.  Tthe default provider (libx11)
is good for 99.9% of people, so inherit that from oe-core.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-emenlow/conf/machine/emenlow.conf |    1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index 65dcd5a..d1efbc3 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -11,7 +11,6 @@ require conf/machine/include/ia32-base.inc
 
 PREFERRED_PROVIDER_libdrm = "libdrm-poulsbo"
 PREFERRED_PROVIDER_drm = "libdrm-poulsbo"
-PREFERRED_PROVIDER_virtual/libx11 = "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl = "xpsb-glx"
 PREFERRED_PROVIDER_virtual/libgles1 = ""
 PREFERRED_PROVIDER_virtual/libgles2 = ""
-- 
1.7.10


