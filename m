Return-Path: <scottellis.developer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9D39E00C1E; Thu,  3 Jan 2019 09:02:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (scottellis.developer[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3442BE00BE8
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2019 09:02:58 -0800 (PST)
Received: by mail-qt1-f194.google.com with SMTP id t33so37572124qtt.4
	for <yocto@yoctoproject.org>; Thu, 03 Jan 2019 09:02:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=MBoKeJnnORb6MpJqEWqybSTetShznuf5B/pBn2I5uTM=;
	b=BjZJX05GG+oFHh6Ksovqg/8PBA6nq8vOiAySI7yY83wvau5JTVp+XUllUK7PFX4dx6
	Z0Nd5aIATTAhRK6mcF1MYQOMgTI6Z8CYw8N7JfbkQ1K0idvVqvMgVRL+62MFHoermjli
	ouDYytTMdwfEpmSAQPiSnadapvli7c06cPC4XE6inN8omjEcshlhkha+BOfzAt0lju8o
	Jo0dNP1N3Y9zhPz1fcIPSyKzaoLvtP1kAQdnkQuMkmcxXZcHq6VZ6K9tSH39UCVrHj78
	v05lnc7dYBpZpTatXr1Gntt8yhLDR/N0qaNRwtwS7TBi2nx0HcU/dGb4vbN5Zy2ZHDwl
	DYqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=MBoKeJnnORb6MpJqEWqybSTetShznuf5B/pBn2I5uTM=;
	b=e63BMRbUaIfzQIyXgUvkAZ3qeUVkkEpD/WTty2DbpILfaDraIdJ4NeGo4zn5epVRfd
	8rT9Le2Zlwcd2PXNOBL9xkXkxnUTtTrS0/ehn0w9v7s0cb8/y3YbD9BiS7EGvG4O0z9v
	zlrDvCjEBLgT7OANQN461IQFNfeJn8j//mG9MTNb/i9VnTlSAD1/kNL/MfnF60Ts04qc
	itRn49lzahXplP+eNoKcTcmXk8gsPbrTg8gT8EKaebD56snF7zHVfmrtV1IZeoM3v/Qy
	yXXrl+0iCRIGriDJ0JHIC+cUsXioY+LCPPNJl5pSwE+AI4Cwwe0VbpX6S6pKaxPsQDaD
	Fy4w==
X-Gm-Message-State: AA+aEWb3sk3alas4xw7ABeJeWDrCuCO1ar1HBZXCKhjDYAX0jR2/oADx
	ljGCEiczOSNeiBZg1xkbnsgywsxq
X-Google-Smtp-Source: AFSGD/X4KkIVFNDtiFdrioenTMigs8jNtLSfnLa7X+kbV8qRl84MbZ/lZe+Q1dOvOTh5nMcj/nz7ZA==
X-Received: by 2002:ac8:43d0:: with SMTP id w16mr47038986qtn.78.1546534977518; 
	Thu, 03 Jan 2019 09:02:57 -0800 (PST)
Received: from fractal.jumpnow (c-73-234-253-132.hsd1.me.comcast.net.
	[73.234.253.132]) by smtp.gmail.com with ESMTPSA id
	o2sm23318717qtp.48.2019.01.03.09.02.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 03 Jan 2019 09:02:57 -0800 (PST)
From: Scott Ellis <scottellis.developer@gmail.com>
X-Google-Original-From: Scott Ellis <scott@jumpnowtek.com>
To: yocto@yoctoproject.org
Date: Thu,  3 Jan 2019 12:02:54 -0500
Message-Id: <1546534974-6250-1-git-send-email-scott@jumpnowtek.com>
X-Mailer: git-send-email 2.7.4
Cc: Scott Ellis <scott@jumpnowtek.com>
Subject: [meta-security][PATCH] checksec: Upgrade to 1.11.0
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
X-List-Received-Date: Thu, 03 Jan 2019 17:02:59 -0000

Switch source to a more up to date github repo.

Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
---
 recipes-security/checksec/checksec_1.11.bb | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 recipes-security/checksec/checksec_1.11.bb

diff --git a/recipes-security/checksec/checksec_1.11.bb b/recipes-security/checksec/checksec_1.11.bb
new file mode 100644
index 0000000..59a67bd
--- /dev/null
+++ b/recipes-security/checksec/checksec_1.11.bb
@@ -0,0 +1,19 @@
+SUMMARY = "Linux system security checks"
+DESCRIPTION = "The checksec script is designed to test what standard Linux OS and PaX security features are being used."
+SECTION = "security"
+LICENSE = "BSD"
+HOMEPAGE="https://github.com/slimm609/checksec.sh"
+
+LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=93fddcca19f6c897871f9b5f9a035f4a"
+
+SRCREV = "a57e03c4f62dbaca0ec949bbc58491fb0c461447"
+SRC_URI = "git://github.com/slimm609/checksec.sh"
+
+S = "${WORKDIR}/git"
+
+do_install() {
+    install -d ${D}${bindir}
+    install -m 0755 ${S}/checksec ${D}${bindir}
+}
+
+RDEPENDS_${PN} = "bash openssl-bin"
-- 
2.7.4


