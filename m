Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FC10E00B3D; Tue,  9 May 2017 07:47:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 584F7E00A48
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 07:47:07 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id 64so189326pgb.3
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 07:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=iJBScZtqPSYn0kzoGE3C9KiOFKpPpDzruv9yAPnJHSo=;
	b=JaZNoqOUQTLx/Fl003opk7uw99RbgvgNsOQ236kt+gAJvxZ1XnbIfhpf3j2UL6Wlc2
	kG7uc+sZfGz43zdQlhnHVRFDcnQ/W8z0Ii6sJq69243VVLefOoi8K3bVOMWWvbiTzW0V
	qKRmcfn6uc+fgv1S9dc9+vZklSiBQfaqDZp5FSgGaDI0zRCy9aMbVGNDCyH9u6NLioHh
	oPPS3kvmMYV7yvFgMlIatOwb47S1jcUiJzibyJ5ux6rfA1ajNICeZAdFTmoRccRcL9Yh
	5jUqkN8+3iNeDPrJXN/KCShjkrZcqs13ybi8wBeOdzQYJptwJehmSpGLUDeTpm3ix+aY
	9KZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=iJBScZtqPSYn0kzoGE3C9KiOFKpPpDzruv9yAPnJHSo=;
	b=LhQqBNxEwRPLsKE5OjtrTlwHR6flbw4E0JPN3JPwzcvAuBeE1IM3QDbcbwzgqI85Xc
	ep0KmaA8poCV26KTw1RaY5N6NYIqfzzDkbTknXZjFz1Idvqx6Wl4NDih8ZUvAFqIB63f
	GTe8jsed4R/q7tDzfhqYnomwKAHudhKMUHquvr5rtdShehsWqjaD5nmJVsndtLNw3Qz1
	4EaMBfX7j1dFyjXT/QjKt6ZN2JSp7pLec4mvjHPPPNL8h/VlQMS+1u+refUL6rrFIOrj
	98bqJbdJjht9DN3IuWr5UC+RK5pAB93d7j6jRI1unQFGpHFkjtxHDrbsKtWQv+aTixDg
	Qa1A==
X-Gm-Message-State: AODbwcD0NJEU3jS7tttTUyzoxnsGoaWQYsB2w05yI6gNM3GjWww/d6AH
	KypMoiP4pOdRJw==
X-Received: by 10.99.45.197 with SMTP id t188mr502116pgt.209.1494341226692;
	Tue, 09 May 2017 07:47:06 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id 194sm319130pgf.62.2017.05.09.07.47.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 09 May 2017 07:47:06 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  9 May 2017 07:46:54 -0700
Message-Id: <1494341221-17621-4-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
References: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 03/10] meta-tpm: add base package group as was in meta-security
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
X-List-Received-Date: Tue, 09 May 2017 14:47:08 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../packagegroup/packagegroup-security-tpm.bb      | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
new file mode 100644
index 0000000..f176627
--- /dev/null
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
@@ -0,0 +1,23 @@
+DESCRIPTION = "Security packagegroup for Poky"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
+                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+inherit packagegroup
+
+PACKAGES = "packagegroup-security-tpm"
+
+SUMMARY_packagegroup-security-tpm = "Security TPM support"
+RDEPENDS_packagegroup-security-tpm = " \
+    tpm-tools \
+    trousers \
+    tpm2.0-tools \
+    libtss2 \
+    resourcemgr \
+    libtctidevice \
+    libtctisocket \
+    resourcemgr \
+    libtpm \
+    swtpm \
+    "
+
-- 
2.7.4


