Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.2290.1575427203607553683
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 18:40:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qPTNqwmP;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78220E00EBC; Tue,  3 Dec 2019 18:40:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E544AE00EBC
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 18:40:02 -0800 (PST)
Received: by mail-pg1-f177.google.com with SMTP id k25so2574682pgt.7
        for <yocto@yoctoproject.org>; Tue, 03 Dec 2019 18:40:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=hSIGhe+VfQFh+XF3W1YxdxH0qzKb1D7poS6H2Kt5qCI=;
        b=qPTNqwmPbcuO5qbD946LP+vYBkznOXDnn+wpJM/5o+SoYLzrI3XuxDxmW8MMXaARFY
         WM0K9Kzii9wQXrRffFOewwY0VwSuv1HGuFnUhxK0f2YSZJum5BkbLKv3J+ZKSQewf5rV
         j5ZuDX9BGcOoxRX0c2NuzFbw0vP3eHE59L2CzTpyJMaUoboFa7LesQLfKvzUaAxWF3TU
         jm2NMwriR+7Ctry2uX8HFU85DwGUpC/ca0Zsg78XYuuciy85GBCPqgpM35SzY/nPOlhQ
         w/BTGfd61vpEea6PhLK/QDmtlhtxwfDpvzoh1CQMgmZ08Mzdhtp/8mcG9wJSXZ20TvRH
         f8Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=hSIGhe+VfQFh+XF3W1YxdxH0qzKb1D7poS6H2Kt5qCI=;
        b=mOqnMjIyhHnvg6j2JxcsUlJuCn5F9tDPUJV546vFSyNQt3giWMG1Xh4XQKNfrn0kfk
         terjTl0ACdUB3wtAqns9sODbD5xFn3hsCBHG2IywHPxFI72U961wHJ4eev2x0TPsXnJQ
         RIoNGCXL8ZF8NurjQYMSISz0eeC8zT9NDgNmt345UXoJpw/pwOgtfIDE1H4p+2/LVhch
         aYpKyXZwKqdvEmKmxTNQ/DpgSDh0ey0fkpjGtJfOx+MSn8za1i1e1E36fTFP2hHgea/Y
         70wKBAwCL4F242IUqzYan5otIVuRtNiF0ZR1Vm/IYy580eYQYSfyrbPGvy6pobECJhNS
         o+Xw==
X-Gm-Message-State: APjAAAVlgZeO/xyFWoiIL4mu1WgQrt7D9mg83IE4ml7YzkCAqGtrC42X
	E/736B512J+YYKgPv6mvRiGie1Ge
X-Google-Smtp-Source: APXvYqwCF5EJUXNFFI1Ch53v3KeDgXA5CXCFgxCS0Akeu00A895SWKUfzBlM5Kpg4lcbphQ8mSY1yw==
X-Received: by 2002:a63:6787:: with SMTP id b129mr1023678pgc.103.1575427202265;
        Tue, 03 Dec 2019 18:40:02 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id w4sm4316863pjt.21.2019.12.03.18.40.01
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 18:40:01 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-security][PATCH 3/5] tpm2-tools: update to 4.0.1
Date: Tue,  3 Dec 2019 18:39:56 -0800
Message-Id: <20191204023958.31799-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191204023958.31799-1-akuster808@gmail.com>
References: <20191204023958.31799-1-akuster808@gmail.com>

LIC_FILES_CHKSUM added new copyrights

Migrate to https d/l from git clone

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb   | 15 ---------------
 .../recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb   | 14 ++++++++++++++
 2 files changed, 14 insertions(+), 15 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb
deleted file mode 100644
index b6f1be0..0000000
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb
+++ /dev/null
@@ -1,15 +0,0 @@
-SUMMARY = "Tools for TPM2."
-DESCRIPTION = "tpm2-tools"
-LICENSE = "BSD"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=91b7c548d73ea16537799e8060cea819"
-SECTION = "tpm"
-
-DEPENDS = "pkgconfig tpm2-tss openssl curl autoconf-archive"
-
-SRCREV = "a17daa948fc67685651bf3b7a589ed341080ddd3"
-
-SRC_URI = "git://github.com/tpm2-software/tpm2-tools.git;branch=3.X"
-
-S = "${WORKDIR}/git"
-
-inherit autotools pkgconfig
diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb
new file mode 100644
index 0000000..8f94972
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb
@@ -0,0 +1,14 @@
+SUMMARY = "Tools for TPM2."
+DESCRIPTION = "tpm2-tools"
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=0eb1216e46938bd723098d93a23c3bcc"
+SECTION = "tpm"
+
+DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
+
+SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "071aa40bc8721700ea4ed19cc2fdeabf"
+SRC_URI[sha256sum] = "ccec3fca6370341a102c5c2ef1ddb4e5cd242bf1bbc6c51d969f77fc78ca67d1"
+
+inherit autotools pkgconfig bash-completion
-- 
2.17.1

