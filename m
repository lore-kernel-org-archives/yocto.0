Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8F89E00CD5; Tue,  5 Mar 2019 08:46:11 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com
	[209.85.210.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50CCBE007B3
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2019 08:46:11 -0800 (PST)
Received: by mail-pf1-f172.google.com with SMTP id j5so6130519pfa.2
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2019 08:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=KlBG7potY6QljwfXCJsfKM0Vt5UHXLSDBETr4P+Pimo=;
	b=of0nzUfcqxBGTLHufcILDf5Fsgkc4jzjaubRkVcWfoxnkHHOhDFGDsbxM5v9Jr00Fy
	WMteed7zUk4Tb2jyuMKDTxgzQuBnKnOiQglc8F4MmHbYpA/lL+H7IXM3nvvtGerWQcn+
	7rFnK32VfrOJaaPgMp5h2509QBcySQJR2XAuHSIpEI3AluDvVjAVSNVO7SZa8YAKRgZR
	/qoSw8d1+fU+Ol4h8meS7qAQoQjPFaSovDHKVVmpf1qxSOX7RoVVONI5fBQP0MzJcCy3
	4dQski9KwQPidpzGxLlYXHKOH3J7cJIn2QikkfMm2WS7/cBSQcJDyXvkWAf3Gw7427n0
	BveQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=KlBG7potY6QljwfXCJsfKM0Vt5UHXLSDBETr4P+Pimo=;
	b=O9BOlV7hUI5AS5uuDI8Uqu/yMb3Cp1zb8alc2OkhrHwFjkNs+s8y7U+IvJNODfUeGi
	XDdb1b8c/Evr4jQskYmjW1iEj2GhAqUBRSoJxy/7Qk2AHvD+plulrlPmj7SreV3YwFbJ
	U2xxanwIYdfjD3ybv+63Klp0IYx1NXSs4DlJlP7fphtrso1ONSanD/W627opUxzoK7sZ
	/LI6QcF3a3icPIaujFDAvYOaxP7HQZTQzOpkENKN+6RwOHFsG2pf5mw/GN1qjQnJgC6Q
	pj+WrD9+3POnJsOzHiHGlRq/gKhB2FlF07qRg1XHyuxwLyHRwz+IBpTf389ReLrPRshI
	4M4A==
X-Gm-Message-State: APjAAAUngS8M2nnmMIybfr7X62Ta2VsueIfKDL9sPIs82Hz3BA0XdhWk
	HDB36vxV6yKji5TRVBvwCm3OD2G8
X-Google-Smtp-Source: APXvYqx6KUnBzHWAovrx2X6TJR5w8q5RmrfCkE6zJQl/kx26MMqn+DPhw8E0VVEkPPUwvjaZxpmhZA==
X-Received: by 2002:a63:5a5e:: with SMTP id k30mr2166967pgm.345.1551804370684; 
	Tue, 05 Mar 2019 08:46:10 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	n6sm18769726pgh.79.2019.03.05.08.46.09 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 Mar 2019 08:46:10 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Mar 2019 08:46:03 -0800
Message-Id: <20190305164608.12211-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190305164608.12211-1-akuster808@gmail.com>
References: <20190305164608.12211-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/7] keyutils: update to 1.6
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
X-List-Received-Date: Tue, 05 Mar 2019 16:46:12 -0000

remove patch now included in update:
keyutils-use-relative-path-for-link.patch

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../keyutils-use-relative-path-for-link.patch | 28 -------------------
 .../{keyutils_1.5.10.bb => keyutils_1.6.bb}   |  5 ++--
 2 files changed, 2 insertions(+), 31 deletions(-)
 delete mode 100644 recipes-security/keyutils/files/keyutils-use-relative-path-for-link.patch
 rename recipes-security/keyutils/{keyutils_1.5.10.bb => keyutils_1.6.bb} (86%)

diff --git a/recipes-security/keyutils/files/keyutils-use-relative-path-for-link.patch b/recipes-security/keyutils/files/keyutils-use-relative-path-for-link.patch
deleted file mode 100644
index dde1af4..0000000
--- a/recipes-security/keyutils/files/keyutils-use-relative-path-for-link.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-Subject: [PATCH] keyutils: use relative path for link
-
-The absolute path of the symlink will be invalid
-when populated in sysroot, so use relative path instead.
-
-Upstream-Status: Pending
-
-Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
----
- Makefile | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/Makefile b/Makefile
-index 824bbbf..8ce3a13 100644
---- a/Makefile
-+++ b/Makefile
-@@ -167,7 +167,7 @@ ifeq ($(NO_SOLIB),0)
- 	$(INSTALL) -D $(LIBNAME) $(DESTDIR)$(LIBDIR)/$(LIBNAME)
- 	$(LNS) $(LIBNAME) $(DESTDIR)$(LIBDIR)/$(SONAME)
- 	mkdir -p $(DESTDIR)$(USRLIBDIR)
--	$(LNS) $(LIBDIR)/$(SONAME) $(DESTDIR)$(USRLIBDIR)/$(DEVELLIB)
-+	$(LNS) $(SONAME) $(DESTDIR)$(USRLIBDIR)/$(DEVELLIB)
- endif
- 	$(INSTALL) -D keyctl $(DESTDIR)$(BINDIR)/keyctl
- 	$(INSTALL) -D request-key $(DESTDIR)$(SBINDIR)/request-key
--- 
-2.11.0
-
diff --git a/recipes-security/keyutils/keyutils_1.5.10.bb b/recipes-security/keyutils/keyutils_1.6.bb
similarity index 86%
rename from recipes-security/keyutils/keyutils_1.5.10.bb
rename to recipes-security/keyutils/keyutils_1.6.bb
index a4222b9..1d7427d 100644
--- a/recipes-security/keyutils/keyutils_1.5.10.bb
+++ b/recipes-security/keyutils/keyutils_1.6.bb
@@ -16,14 +16,13 @@ LIC_FILES_CHKSUM = "file://LICENCE.GPL;md5=5f6e72824f5da505c1f4a7197f004b45 \
 inherit siteinfo ptest
 
 SRC_URI = "http://people.redhat.com/dhowells/keyutils/${BP}.tar.bz2 \
-           file://keyutils-use-relative-path-for-link.patch \
            file://keyutils-test-fix-output-format.patch \
            file://keyutils-fix-error-report-by-adding-default-message.patch \
            file://run-ptest \
            "
 
-SRC_URI[md5sum] = "3771676319bc7b84b1549b5c63ff5243"
-SRC_URI[sha256sum] = "115c3deae7f181778fd0e0ffaa2dad1bf1fe2f5677cf2e0e348cdb7a1c93afb6"
+SRC_URI[md5sum] = "191987b0ab46bb5b50efd70a6e6ce808"
+SRC_URI[sha256sum] = "d3aef20cec0005c0fa6b4be40079885567473185b1a57b629b030e67942c7115"
 
 EXTRA_OEMAKE = "'CFLAGS=${CFLAGS} -Wall' \
     NO_ARLIB=1 \
-- 
2.17.1


