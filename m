Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBE14E00CF9; Mon, 23 Oct 2017 08:51:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B5CFE00CD4
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 08:51:22 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id m72so9060059wmc.0
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 08:51:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=EGhcvBv7C8B2T36mRwcSCkZ3UFQhxPWbCHXjoS7GOv8=;
	b=nFubGs9SQ7lHKsniCC8Anh2+y3GNVIi9Dp/VFJjKXW7LB/ebRm4z1KrzJ64nIw91MC
	FVvZG6IkEgt1Nm+eqdWaTLQS4jsNGPo9dJUVzVuT5i0Z9Cnn/UOXFODbzD4up75bid4A
	7SanyMl+DOzLvQLLPSWuj11oyY4d9CH0iLmGEIh8Iw8+mmwen5l3LwBMJJtA5Odqdqrt
	hQXpVXr0sA2DmPNwDK7l9DUp40ebJ00YZHkyNuc7jJcjutw3LkTMZWQR7r7Vvhq9JYww
	qsaVj+n5JzUCOPKMNODPBjo/OrnpA8zBfzdM2Ri2X//bMUX2asSSNtVIxdyl5IJ/6bWT
	Nv+A==
X-Gm-Message-State: AMCzsaU2Mtn1orTZdd515XA3jYmf4qdD1uQdYqHNQwXYnfyeuWmqHq+E
	3rtTgR4hqOV4rGYWq3cgBQOQyG/w
X-Google-Smtp-Source: ABhQp+RBw3vgpWy7zobTOJZbWFC9qYGIOL6W8N0v7r0VKowh1WoHAORpTgn2vRjWoniDVZddHX/vUQ==
X-Received: by 10.28.151.198 with SMTP id z189mr5675196wmd.133.1508773881662; 
	Mon, 23 Oct 2017 08:51:21 -0700 (PDT)
Received: from tfsielt31850.tycofs.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id m37sm8365337wrm.4.2017.10.23.08.51.19
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 23 Oct 2017 08:51:20 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon, 23 Oct 2017 16:51:19 +0100
Message-Id: <20171023155119.10958-1-git@andred.net>
X-Mailer: git-send-email 2.15.0.rc1
In-Reply-To: <20171023152608.4149-1-git@andred.net>
References: <20171023152608.4149-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-security][PATCH v2] fscryptctl: add v0.1.0
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
X-List-Received-Date: Mon, 23 Oct 2017 15:51:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <adraszik@tycoint.com>

fscryptctl is a low-level tool written in C that handles
raw keys and manages policies for Linux filesystem
encryption [1].

For a tool that presents a higher level interface and
manages metadata, key generation, key wrapping, PAM
integration, and passphrase hashing, see fscrypt [2].

[1] https://lwn.net/Articles/639427
[2] https://github.com/google/fscrypt

Signed-off-by: André Draszik <adraszik@tycoint.com>

---
v2: add RRECOMMENDS on keyutils, as that might be useful when
dealing with kernel keys.
---
 recipes-security/fscryptctl/fscryptctl_0.1.0.bb | 27 +++++++++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 recipes-security/fscryptctl/fscryptctl_0.1.0.bb

diff --git a/recipes-security/fscryptctl/fscryptctl_0.1.0.bb b/recipes-security/fscryptctl/fscryptctl_0.1.0.bb
new file mode 100644
index 0000000..4f0b12c
--- /dev/null
+++ b/recipes-security/fscryptctl/fscryptctl_0.1.0.bb
@@ -0,0 +1,27 @@
+SUMMARY = "low-level tool handling Linux filesystem encryption"
+DESCIPTION = "fscryptctl is a low-level tool written in C that handles raw keys and manages \
+policies for Linux filesystem encryption (https://lwn.net/Articles/639427). \
+For a tool that presents a higher level interface and manages metadata, key \
+generation, key wrapping, PAM integration, and passphrase hashing, see \
+fscrypt (https://github.com/google/fscrypt)."
+HOMEPAGE = "https://github.com/google/fscryptctl"
+SECTION = "base"
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
+
+SRCREV = "e4c4d0984dee2531897e13c32a18d5e54a2a4aa6"
+SRC_URI = "git://github.com/google/fscryptctl.git"
+
+S = "${WORKDIR}/git"
+
+do_install() {
+    oe_runmake DESTDIR=${D}${bindir} install
+}
+
+RRECOMMENDS_${PN} += "\
+    keyutils \
+    kernel-module-cbc \
+    kernel-module-cts \
+    kernel-module-ecb \
+    kernel-module-xts \
+"
-- 
2.15.0.rc1


