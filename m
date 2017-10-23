Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD47CE00CF9; Mon, 23 Oct 2017 08:26:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91E6FE00CD4
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 08:26:11 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id u138so10279801wmu.5
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 08:26:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=/seGQG2vbsVbNW3F3OWzcnVjNsXpc1WWQkQofwqknAg=;
	b=e6AGOWYupOpndxiM0nGN/hOHiLyS1KMYuhqjwuOKLGZ1FJdsj/+8tUkpE245qc8Sfh
	HCu4kXSJDlYhdFv/XLyOeLIn8kMamHltaH8McHfV3FiHSZOZFnJFgEM7azix3Da9NSug
	27oWAo1a6mKUZsoYsWexU/vN6/SlZHmtLK+tWtC3TOTWlfDAPARVF6vj3AzdW2nGJL5W
	3IBf+JADNgqgq4FTKpcz5jf6Flbo1f9JdksYh8PlHYYxGW5fUbzbPfedvBWeXRQlMNXD
	pGbiEIHNEc26pD7vYC+vF9mpQ/Q5Mpn8M4x2Sd9Cc9m8TRuKBnXHbpOMT0Gm5J3Dl7On
	DgHg==
X-Gm-Message-State: AMCzsaVYZhBqoHVbSyftWW00IFQYPyYnBYGMHUahNetGmEJYm37MIi7D
	JeN3iC84yFxXqHjUQPC7VLfO+e8Q
X-Google-Smtp-Source: ABhQp+RIqgMm68x5tjfAC0jeDuRjBAcm7wkOnPQtiQQaLnoRdzCzT9MZBatlmq1OVJOhmsSyTnxTIw==
X-Received: by 10.28.56.198 with SMTP id f189mr6291846wma.16.1508772370230;
	Mon, 23 Oct 2017 08:26:10 -0700 (PDT)
Received: from tfsielt31850.tycofs.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	e77sm9390104wmi.16.2017.10.23.08.26.09 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 23 Oct 2017 08:26:09 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon, 23 Oct 2017 16:26:08 +0100
Message-Id: <20171023152608.4149-1-git@andred.net>
X-Mailer: git-send-email 2.15.0.rc1
MIME-Version: 1.0
Subject: [meta-security][PATCH] fscryptctl: add v0.1.0
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
X-List-Received-Date: Mon, 23 Oct 2017 15:26:12 -0000
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
 recipes-security/fscryptctl/fscryptctl_0.1.0.bb | 26 +++++++++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 recipes-security/fscryptctl/fscryptctl_0.1.0.bb

diff --git a/recipes-security/fscryptctl/fscryptctl_0.1.0.bb b/recipes-security/fscryptctl/fscryptctl_0.1.0.bb
new file mode 100644
index 0000000..5af8de1
--- /dev/null
+++ b/recipes-security/fscryptctl/fscryptctl_0.1.0.bb
@@ -0,0 +1,26 @@
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
+    kernel-module-cbc \
+    kernel-module-cts \
+    kernel-module-ecb \
+    kernel-module-xts \
+"
-- 
2.15.0.rc1


