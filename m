Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCF7AE00D24; Fri, 15 Mar 2019 13:11:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.171 listed in list.dnswl.org]
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
	[209.85.210.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E639E00CE6
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2019 13:11:10 -0700 (PDT)
Received: by mail-pf1-f171.google.com with SMTP id j5so7097054pfa.2
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2019 13:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=C7ucNPWBElgfvbQkAlkYOTJK4uT7OZTuoIzRAYKWEcQ=;
	b=X3NBYMzonf0V6QwMdkwQ0gSIQQezcfb4PbecWAkkiMb30LAsKo5kjDxwXPcyE8MGwg
	BhUrqOotZWojFukDAI8UM5qo2wbvOUVn5tF/KfZsDU9k3J/q2IEHeaRf+3Wm8anqorzk
	i7lvG6kw7n1d7n94KW4CfK5RP1KHIinAKluCe9FgHzLmNZdXg+KDJWm52mu3np89c0/M
	UcaupBm+8PAOD7+uoxd64LQGBeV6CWr8b47et8KSDmO+hqNTVDHsyqDXwKIx+ZYzYv0P
	qJpF1dZRroQNvOyyvjclDS2ef9Nl7Vy/ThY2t5AIIx0HsOdvxlaPjv3/1dcjv2k8M8O8
	EBVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=C7ucNPWBElgfvbQkAlkYOTJK4uT7OZTuoIzRAYKWEcQ=;
	b=HE6ZM/yZkjbsFTxNolHSUDIqj74GLys7tzJuPWN7k0waKtYVmpncqVwYVurbX+oYTA
	dyV6nuuraG0G2eAwtMLIExMNO647gfVA+phG1sthpyYMH8owdyFij6KRE6R4eLxrVRbt
	6pmsJY/IOkasqQWzCdwTB4FK9VN1VzLTOsGJZD+fm2WJlGmZfnlvrFfwhyAIAMhm4HAX
	MYfYk23Bskviupb38P4fCTXXtNQEGgYVXxhhovz7j07OG+yUT6TNmfDNoHCJur6QWZOp
	e6uMuc/CFR+gZI8DTuQAKuJ9cC1ZuMoTaVOLHy1Qe/PkXGII5U3wE73LiRLDfyHnI4oN
	LadA==
X-Gm-Message-State: APjAAAXQaCKVxFa1AhjXmnT/s5knaRm5aEo1j2cv82jw/APIYvyH5YJR
	Gn75aYJsuVCglMngLrBZ/noDy2st
X-Google-Smtp-Source: APXvYqwo/u2BAgXqHtBuI642C43LH1LrhQht1UGO3l8KbDOM9BZ0ywlNUTBA89s26Wt2poS8GQfonA==
X-Received: by 2002:a65:438a:: with SMTP id m10mr5167654pgp.191.1552680669745; 
	Fri, 15 Mar 2019 13:11:09 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	c127sm4257284pfg.133.2019.03.15.13.11.08 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 15 Mar 2019 13:11:09 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 15 Mar 2019 13:11:08 -0700
Message-Id: <20190315201108.20920-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] keyutils: fix QA WARNING
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
X-List-Received-Date: Fri, 15 Mar 2019 20:11:11 -0000

WARNING: keyutils-1.6-r0 do_package: QA Issue: keyutils: Files/directories were installed but not shipped in any package:
  /lib/pkgconfig
  /lib/pkgconfig/libkeyutils.pc

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/keyutils/keyutils_1.6.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-security/keyutils/keyutils_1.6.bb b/recipes-security/keyutils/keyutils_1.6.bb
index 730e174..054e0c1 100644
--- a/recipes-security/keyutils/keyutils_1.6.bb
+++ b/recipes-security/keyutils/keyutils_1.6.bb
@@ -35,6 +35,7 @@ EXTRA_OEMAKE = "'CFLAGS=${CFLAGS} -Wall' \
     "
 
 do_install () {
+    install -d ${D}/${nonarch_base_libdir}/pkgconfig
     oe_runmake DESTDIR=${D} install
 }
 
@@ -43,4 +44,6 @@ do_install_ptest () {
     sed -i -e 's/OSDIST=Unknown/OSDIST=${DISTRO}/' ${D}${PTEST_PATH}/tests/prepare.inc.sh
 }
 
+FILES_${PN}-dev += "${nonarch_base_libdir}/pkgconfig/libkeyutils.pc"
+
 RDEPENDS_${PN}-ptest += "glibc-utils lsb"
-- 
2.17.1


