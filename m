Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4D93E00B51; Tue,  9 May 2017 07:47:10 -0700 (PDT)
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
	*      [209.85.192.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14B15E00B31
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 07:47:08 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id a23so307540pfe.0
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 07:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=0xUlFvmX+WtcQ90i1qxAzNRTMGn4h9qg22XsKQPwup0=;
	b=f0/MCReYVa1szAP6rSNHglAiqgQ8rp2SRrG/WIp1oxuKopeXwfQdLsIxZYh/f4InTy
	26jRD1+YcDMRPCVmQXkpLTWkRWkw64itIQxkeLyWcrCSzIJstoe7Oof+GzNYhSo0nPx4
	v4+/tiNSmQ63x0cqzAdMh8KoFfHbi41vc/qEWw8/MtKJlgn/FObmq9+UymOq0e5P5b4V
	17d6QZq2rA78K14YD290qlOc6FIZYPigSGrbETJXwk5TYmrEHW4ttxSQOJvzChwCYEsz
	NOYdXRA8vjjDfyH9DbZtMjT7eM8tgmcAariIHQRcSRztJ/KZYlRa7lPx8vfLunJokHSo
	tWVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=0xUlFvmX+WtcQ90i1qxAzNRTMGn4h9qg22XsKQPwup0=;
	b=CW7oO9Tl4iCoQomdr27HfvTCSuCMjWq6JWd8E2N8tBNZiaGvWbJoz8yWkgYSR7fjsU
	SojF0ijS7nFYcDM38b4ARRHNWR8swA/bPUK9kXpRWVmRIJt5IpyaSvuxmliYoVnitSX0
	EGUFAH1lWOkfV34WsxpBHenp+KMthEzhTD0s1Lw6xlju4OVrUsFw4wKLOixYHyP21VTV
	eGeLHhSr2MP8WgNH1SLYvs+aLgL4NO0iiPnTo0MQY9wpKCpG2cDSACST4cwRC17U8Avd
	lhXRgFLYnbPpQ81F+J1Dy/9PeNMf6tYi8oQVGvmyTWYmBrL7j75FGL2m6oH3SZ5GVwsZ
	Uv4w==
X-Gm-Message-State: AODbwcDut8mZ7TA/uFT7jb+YhVHnWEPlkWK/qnuo6+buAKYgY3iEyu1Z
	brWaBdlSFuT+61wC
X-Received: by 10.99.116.82 with SMTP id e18mr540337pgn.1.1494341228325;
	Tue, 09 May 2017 07:47:08 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id 194sm319130pgf.62.2017.05.09.07.47.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 09 May 2017 07:47:07 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  9 May 2017 07:46:56 -0700
Message-Id: <1494341221-17621-6-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
References: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 05/10] tpm packagegroups: split into logical units
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
X-List-Received-Date: Tue, 09 May 2017 14:47:10 -0000

this should help mitgate the need to pull in too many layers
if swtpm in not wanted

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../packagegroup/packagegroup-security-tpm.bb          |  9 ---------
 .../packagegroup/packagegroup-security-tpm2.bb         | 18 ++++++++++++++++++
 .../packagegroup/packagegroup-security-vtpm.bb         | 14 ++++++++++++++
 3 files changed, 32 insertions(+), 9 deletions(-)
 create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
 create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
index f176627..2412348 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
@@ -11,13 +11,4 @@ SUMMARY_packagegroup-security-tpm = "Security TPM support"
 RDEPENDS_packagegroup-security-tpm = " \
     tpm-tools \
     trousers \
-    tpm2.0-tools \
-    libtss2 \
-    resourcemgr \
-    libtctidevice \
-    libtctisocket \
-    resourcemgr \
-    libtpm \
-    swtpm \
     "
-
diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
new file mode 100644
index 0000000..1c96cbe
--- /dev/null
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
@@ -0,0 +1,18 @@
+DESCRIPTION = "Security packagegroup for Poky"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
+                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+inherit packagegroup
+
+PACKAGES = "packagegroup-security-tpm2"
+
+SUMMARY_packagegroup-security-tpm2 = "Security TPM 2.0 support"
+RDEPENDS_packagegroup-security-tpm2 = " \
+    tpm2.0-tools \
+    libtss2 \
+    libtctidevice \
+    libtctisocket \
+    resourcemgr \
+    kernel-module-tpm-crb \
+    "
diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb
new file mode 100644
index 0000000..f7eee7c
--- /dev/null
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb
@@ -0,0 +1,14 @@
+DESCRIPTION = "Security packagegroup for Poky"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
+                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+inherit packagegroup
+
+PACKAGES = "packagegroup-security-vtpm"
+
+SUMMARY_packagegroup-security-vtpm = "Security Software vTPM support"
+RDEPENDS_packagegroup-security-vtpm = " \
+    libtpm \
+    swtpm \
+    "		
-- 
2.7.4


