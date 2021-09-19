Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web10.2297.1632079177043051537
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Sep 2021 12:19:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=aIs8+c/I;
 spf=pass (domain: linaro.org, ip: 209.85.216.43, mailfrom: bhupesh.sharma@linaro.org)
Received: by mail-pj1-f43.google.com with SMTP id k23so10493801pji.0
        for <yocto@lists.yoctoproject.org>; Sun, 19 Sep 2021 12:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mCUYOxzhlfNlZLM4IoXJSUjv6qWYVx1AszbYwvhHPpo=;
        b=aIs8+c/INCH1qMWzc+O/IubvQ1LDqvVH1vMBHF4/d9EV9z+PRVrXSQ+KP8UxSjRp3P
         i7aggqJaLtw9rrSMKm2/Ntiuv8brXFhN4XMu1IrdLlncC34xKmwXyok3rTp/cvEhBLjC
         /e4G6AKq/+XPFxb5XFMKHvlf0ynWkGdirtq+w3HKDOB84XvPUlcT72mvSvmpK2eIXo/k
         AzvofF6ApuucoVrCNmo1uEiVdrZGRDsnPerwVeuD7lRh7Z0WdHPWDJyGGYZjfr5BglWZ
         Sy4YP9Uo6NH7PDOXk8sw+DumTQ9hi6CxuZYZVgmbm16MqcZAxK99tltf00ioznVFXZLr
         EoDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mCUYOxzhlfNlZLM4IoXJSUjv6qWYVx1AszbYwvhHPpo=;
        b=tAKvZ0zf4rRZnYYTYKMFHiEXkLQzsswwceOfeBiezYMyfEvVRBvdNUH5leQDAafOr/
         2Yj3FvCTIyazGhCqqUOX4mPEdCFguZdD/e9NerfMAvwtaFzvlxrYZR2AdRn71hs4eDms
         chE5Yj5RtjfD50lOKiiMrAnzMCo+vFlTbAR+DlzJrQchw7O8xELNBz+EGwBN7n1hVy2Z
         Nt4057eyRlVmGbvvN6TDh6MNAvjN+ynHVSid+Me/9tnBrzo/E68U8iEHi7MqUlAfpJr9
         060+jT+C+NDAEzHb55/7nKU68cNJlWztOdvLADfhqNQxRefeMHr/88+YD6CbmLqEU+jH
         sEpg==
X-Gm-Message-State: AOAM53183hWl1Ma+1lPk/6NM47xxzdM8OngIzxOzg/irx2ly6nF6gUbm
	7CCZxpCvnL36Acy2VNBZBYQQJysDtk5hyQ==
X-Google-Smtp-Source: ABdhPJzLNZFs3URlckwSqYRzMXiJE/e9B+itc7Dss6jXQOMoAI7ss0YmX+0Wg52UDxi3r94U3/rPjA==
X-Received: by 2002:a17:90a:f18f:: with SMTP id bv15mr24489479pjb.93.1632079176234;
        Sun, 19 Sep 2021 12:19:36 -0700 (PDT)
Return-Path: <bhupesh.sharma@linaro.org>
Received: from localhost.name ([122.161.48.157])
        by smtp.gmail.com with ESMTPSA id cp17sm10828628pjb.3.2021.09.19.12.19.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Sep 2021 12:19:35 -0700 (PDT)
From: bhupesh.sharma@linaro.org
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com
Subject: [meta-security,dunfell][PATCH] recipes-security/fscrypt: Add fscrypt .bb file
Date: Mon, 20 Sep 2021 00:49:28 +0530
Message-Id: <20210919191928.3963092-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

fscrypt is a high-level tool for the management of Linux
filesystem encryption. fscrypt manages metadata, key generation,
key wrapping, PAM integration, and provides a uniform interface
for creating and modifying encrypted directories.

Add recipe for the same in 'recipes-security'.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 recipes-security/fscrypt/fscrypt_1.0.0.bb | 49 +++++++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 recipes-security/fscrypt/fscrypt_1.0.0.bb

diff --git a/recipes-security/fscrypt/fscrypt_1.0.0.bb b/recipes-security/fscrypt/fscrypt_1.0.0.bb
new file mode 100644
index 0000000..a70d310
--- /dev/null
+++ b/recipes-security/fscrypt/fscrypt_1.0.0.bb
@@ -0,0 +1,49 @@
+SUMMARY = "fscrypt is a high-level tool for the management of Linux filesystem encryption"
+DESCIPTION = "fscrypt manages metadata, key generation, key wrapping, PAM integration, \
+and provides a uniform interface for creating and modifying encrypted directories. For \
+a small, low-level tool that directly sets policies, see fscryptctl \
+(https://github.com/google/fscryptcl)."
+HOMEPAGE = "https://github.com/google/fscrypt"
+SECTION = "base"
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://src/${GO_IMPORT}/LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
+
+BBCLASSEXTEND = "native nativesdk"
+
+# fscrypt depends on go and libpam
+DEPENDS += "go-dep-native libpam"
+
+SRCREV = "92b1e9a8670ccd3916a7d24a06cab1e4c9815bc4"
+SRC_URI = "git://github.com/google/fscrypt.git"
+GO_IMPORT = "import"
+
+S = "${WORKDIR}/git"
+
+inherit go
+inherit goarch
+
+do_compile() {
+	export GOARCH=${TARGET_GOARCH}
+	export GOROOT="${STAGING_LIBDIR_NATIVE}/${TARGET_SYS}/go"
+	export GOPATH="${WORKDIR}/git"
+
+	# Pass the needed cflags/ldflags so that cgo
+	# can find the needed headers files and libraries
+	export CGO_ENABLED="1"
+	export CGO_CFLAGS="${CFLAGS} --sysroot=${STAGING_DIR_TARGET}"
+	export CGO_LDFLAGS="${LDFLAGS} --sysroot=${STAGING_DIR_TARGET}"
+
+	cd ${S}/src/${GO_IMPORT}
+	oe_runmake
+
+	# Golang forces permissions to 0500 on directories and 0400 on files in
+	# the module cache which prevents us from easily cleaning up the build
+	# directory. Let's just fix the permissions here so we don't have to
+	# hack the clean tasks.
+	chmod -R u+w ${S}/pkg/mod
+}
+
+do_install() {
+	install -d ${D}/${bindir}
+	install ${S}/src/${GO_IMPORT}/bin/fscrypt ${D}/${bindir}/fscrypt
+}
-- 
2.31.1

