Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC5DAE00C93; Fri, 17 May 2019 09:46:07 -0700 (PDT)
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
	*      [209.85.215.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB774E00C46
	for <yocto@yoctoproject.org>; Fri, 17 May 2019 09:46:06 -0700 (PDT)
Received: by mail-pg1-f195.google.com with SMTP id t22so3542796pgi.10
	for <yocto@yoctoproject.org>; Fri, 17 May 2019 09:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=wCCbK+Zzm01OFTEpnKCr6G9zhK6Q6Fk8W00tTneq5Xw=;
	b=e8gflrLqGIWtUYlcBqMzNhuiBrrPB0wePGphFJ44wju67Jorww7+f30gT+G+jjSgl9
	+LCsstNly7MNp6keRMy5Qp0aBrq3Ucy0hpqoqnHYfT3Gb3YP88yY3S8SmVAqWx+0ka/e
	6Qd25ebxhScVKbl9CyMZPMaxPXF7IoVBPJx29gyMDJCIW3fS3WQ1NmNWzyx9aLn8Wv+M
	WNptLAowE8y/VWAHESBPjo42nf6hnska4zNNckFmV1fge9qQ8ST2NIdhf7iq8usIIaOu
	Z/HGxrojqbFDWfNtpzNLXSX218UMsuqiD+NQiD9by8vZO0N3DXMo9tqUiJt/7qqnFaKy
	MQ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=wCCbK+Zzm01OFTEpnKCr6G9zhK6Q6Fk8W00tTneq5Xw=;
	b=G0qqMAtL6sgV24puJdkUHZVHveKb/oaDWj8DfInvGHc/6P8aoSaASGD9pm6qjsme2k
	D+xGbK8F+xM50iY7qpYRl0ICGvKg3tk4cc4+yb9AAOEy1tL2uQguzKiL37SRunOt0tb3
	g9i+QOFwv52xiECEVpByMlY0+TsCroF7V4zhnL9/IgetUXV5+GHOq29mdBaVTF2qjEmz
	48XpSNCOZ1h+3uicWPqTTVd2tUNzydXTO7V9Dq8M1ySzTPtFGsOZPNueonmp+7pzf5yN
	PB9JZrzxfGUXbNO8VxSri0uAX04s5CmhMbit1KH/nKXpiisr4GQYJgW5lTdAGUokRaOw
	3uJw==
X-Gm-Message-State: APjAAAV6LrHWyCTJecc3VnxpiJJl6ojz+1OotS2gZKoCU3VG9YqqScAr
	9UV9HAJxjAAfKnXXDC4UhCkIwLh6
X-Google-Smtp-Source: APXvYqzpsyLs1kZIeBi95vsqGVljurmvgdxNsmqKXws/Qi4rcZnnbM79dCudwjM3wSplcGHIoGnsug==
X-Received: by 2002:a65:41c7:: with SMTP id b7mr33625989pgq.165.1558111565951; 
	Fri, 17 May 2019 09:46:05 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	s19sm8799604pfh.176.2019.05.17.09.46.04 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 17 May 2019 09:46:05 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 17 May 2019 09:46:03 -0700
Message-Id: <20190517164603.13885-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] keyutils: fix library install path
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
X-List-Received-Date: Fri, 17 May 2019 16:46:08 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../files/fix_library_install_path.patch      | 28 +++++++++++++++++++
 recipes-security/keyutils/keyutils_1.6.bb     |  1 +
 2 files changed, 29 insertions(+)
 create mode 100644 recipes-security/keyutils/files/fix_library_install_path.patch

diff --git a/recipes-security/keyutils/files/fix_library_install_path.patch b/recipes-security/keyutils/files/fix_library_install_path.patch
new file mode 100644
index 0000000..938fe2e
--- /dev/null
+++ b/recipes-security/keyutils/files/fix_library_install_path.patch
@@ -0,0 +1,28 @@
+From b0355cc205543ffd33752874295139d57c4fbc3e Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Tue, 26 Sep 2017 07:59:51 +0000
+Subject: [PATCH] Subject: [PATCH] keyutils: use relative path for link
+
+The absolute path of the symlink will be invalid
+when populated in sysroot, so use relative path instead.
+
+Upstream-Status: Pending
+
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+{rebased for 1.6]
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: keyutils-1.6/Makefile
+===================================================================
+--- keyutils-1.6.orig/Makefile
++++ keyutils-1.6/Makefile
+@@ -184,7 +184,7 @@ ifeq ($(NO_SOLIB),0)
+ 	$(INSTALL) -D $(LIBNAME) $(DESTDIR)$(LIBDIR)/$(LIBNAME)
+ 	$(LNS) $(LIBNAME) $(DESTDIR)$(LIBDIR)/$(SONAME)
+ 	mkdir -p $(DESTDIR)$(USRLIBDIR)
+-	$(LNS) $(LIBDIR)/$(SONAME) $(DESTDIR)$(USRLIBDIR)/$(DEVELLIB)
++	$(LNS) $(SONAME) $(DESTDIR)$(USRLIBDIR)/$(DEVELLIB)
+ 	sed \
+ 	-e 's,@VERSION\@,$(VERSION),g' \
+ 	-e 's,@prefix\@,$(PREFIX),g' \
diff --git a/recipes-security/keyutils/keyutils_1.6.bb b/recipes-security/keyutils/keyutils_1.6.bb
index c961fa2..2968a24 100644
--- a/recipes-security/keyutils/keyutils_1.6.bb
+++ b/recipes-security/keyutils/keyutils_1.6.bb
@@ -19,6 +19,7 @@ SRC_URI = "http://people.redhat.com/dhowells/keyutils/${BP}.tar.bz2 \
            file://keyutils-test-fix-output-format.patch \
            file://keyutils-fix-error-report-by-adding-default-message.patch \
            file://run-ptest \
+           file://fix_library_install_path.patch \
            "
 
 SRC_URI[md5sum] = "191987b0ab46bb5b50efd70a6e6ce808"
-- 
2.17.1


