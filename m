Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C69DEE00D97; Thu, 28 Sep 2017 21:26:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA0F3E00D71
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 21:26:53 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id d8so274562pgt.3
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 21:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=To2Rlu6xEe7RMkB1HqFNseFVdg7EDOfOgcKuOFyh7Tk=;
	b=H7CYi3ezmvpcjZPM8QoNHXnoYjAaG1dlvyVGFWyW3rPzhTXvOfRlJjkRHAiBFgcRG8
	fp9F52uTXKQQ3I7TVIP35PKffLLAHQJne1LTYjVzywlI718sjRvpZzj9f6dNNgZUQ1Xn
	sMxbyZ0STSg0tFdoo0pvJSutZPoRsUyFsp4zYlio0Ce5tZvaaQ61bg17zuwEpWsLBm4+
	mTm3tuANtak832Ao1LfJriaSXHyAKzYqyyf2901ZKBcLTVU0AR3oeRVUyhgJSgUZx9Lr
	1ed8ybPrELnr8DgRLpllCeD4YGVqO19g0Vhd8Xwe1ucYKn/EoF/f3uktM2MqR1BqIR1T
	x/hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=To2Rlu6xEe7RMkB1HqFNseFVdg7EDOfOgcKuOFyh7Tk=;
	b=OZcz15V1dwwblN7wWve94S5kv4OuGbTor4S/ar4CGdMhopywfCRdWj4PbqqkewTZ9v
	khnE8LTGsV63iF6Jg2yZhWR6Vwle3IAvovyBtOECGsy5af8Hx1DbNWrq08CBrJ9T8v6E
	6EBsFQZRx1whKhCrsflFeh8ATMlnTLJeRrTWQcFok0aNO3fEQSXL9FITZabPfAhwAYNn
	byxTu6w2FmgGUGsquR8EnSeeu1lAs3x2ZJylDF0VY/EX2xYENM5V/BzAPcoPdK7xq6MH
	Pcz+lK7NuJu48A9SUHZGv7uY32dC7KWMxOAQO/HzVJT+o1F5h6FrEQB+g2gEOjYdT1z3
	Ceww==
X-Gm-Message-State: AHPjjUgmv6dy9NmYmrXYNGM7YSM+TLKBSzAcdWz8iYPvgyVd/o+8jseX
	/f7Q532UrzmxjYEFIqCALap/5w==
X-Google-Smtp-Source: AOwi7QD3/eJBpzs6J1e9lldaKX5/zxf1/QYOjsA5OTYA7jH/wLkT3njLN6l2ctY4JZABFjT9F9Ynow==
X-Received: by 10.99.115.92 with SMTP id d28mr6172349pgn.280.1506659213564;
	Thu, 28 Sep 2017 21:26:53 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4001:9ea0:c06:a05b:fc56:fd72])
	by smtp.gmail.com with ESMTPSA id
	r66sm5060330pfl.15.2017.09.28.21.26.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 28 Sep 2017 21:26:53 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Thu, 28 Sep 2017 21:26:41 -0700
Message-Id: <1506659201-21501-9-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506659201-21501-1-git-send-email-akuster808@gmail.com>
References: <1506659201-21501-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 8/8] oe-release: add oe-release file for openscap
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
X-List-Received-Date: Fri, 29 Sep 2017 04:26:54 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../openembedded-release_1.0.bb                    | 32 ++++++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 meta-security-compliance/recipes-core/openembedded-release/openembedded-release_1.0.bb

diff --git a/meta-security-compliance/recipes-core/openembedded-release/openembedded-release_1.0.bb b/meta-security-compliance/recipes-core/openembedded-release/openembedded-release_1.0.bb
new file mode 100644
index 0000000..0ad427d
--- /dev/null
+++ b/meta-security-compliance/recipes-core/openembedded-release/openembedded-release_1.0.bb
@@ -0,0 +1,32 @@
+inherit allarch
+
+SUMMARY = "Operating release identification"
+DESCRIPTION = "The /etc/openembedded-release file contains operating system identification data."
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+INHIBIT_DEFAULT_DEPS = "1"
+
+do_fetch[noexec] = "1"
+do_unpack[noexec] = "1"
+do_patch[noexec] = "1"
+do_configure[noexec] = "1"
+
+VERSION = "0"
+RELEASE_NAME = "${DISTRO_NAME} ${DISTRO} ${VERSION}"
+
+def sanitise_version(ver):
+    ret = ver.replace('+', '-').replace(' ','_')
+    return ret.lower()
+
+python do_compile () {
+    import shutil
+    release_name = d.getVar('RELEASE_NAME')		 
+    with open(d.expand('${B}/openemebedded-release'), 'w') as f:
+        f.write('%s\n' % release_name)
+}
+do_compile[vardeps] += "${RELEASE_NAME}"
+
+do_install () {
+    install -d ${D}${sysconfdir}
+    install -m 0644 openemebedded-release ${D}${sysconfdir}/
+}
-- 
2.7.4


