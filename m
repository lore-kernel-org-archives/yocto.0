Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web08.7292.1627362657446717650
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jul 2021 22:10:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=drO1GYXS;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id m2-20020a17090a71c2b0290175cf22899cso3260285pjs.2
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jul 2021 22:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Yj199nNxWUBwKYGdp+77LckD2FJGqq0KxWscA++WyJ4=;
        b=drO1GYXSCeBkhzIrAPKr2goEoVgQG5Dqe3HCznsR/OdANEZel/cajqWZxNjZC+qa5a
         UdHWaqZuULzczIvdfVYCJDzjEPLqhR/yphpo3M9Qk9jcNXMZRgS1B6wtrbuWk33KNgaj
         NvMWZQM4k2JGe66krc5kj8nTWH8bDDg9NmCYMLdcYZrKg6xYEMVfvKEySAfQUauJwNKa
         3USYuSg1Kw4inFvBXaTM4MrQuDKcY/hFsOthbXFnbWTLfKb482pATCRjW71YENabY6MW
         vGs6CINpbKuFSqXJVcZjvLv3Pf0TLnpvR1vIzwd8pM1C2D30OaWcTOJ/GZ9XdAmqNvuq
         PyWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Yj199nNxWUBwKYGdp+77LckD2FJGqq0KxWscA++WyJ4=;
        b=t9/IG+K5xUU49tea94QWAtQWn8+cuxnf3Te8qBMrDk64kOvIdK+3ymDVAy+j3HSGcC
         3/Ksce7aqhpCKgjUHwyRufq2O+Pl/SJv4+lavbFDdxbq9q2qBGsi4nFBkzol1f4RkGh9
         5enMz8NJVAZZTKFG4QXLaypcFtsMi+MITxTtH+Qzs3yINIWYhiAI6ToiYj3fAtmko4WK
         AGL1sLLkutBl8oOxFK6mLAp9p+B2wNgg5cimzznWyFjyBTevUya0OaVACBe0pqTAjONd
         /Wxi1RHYFDpbl258NrQqyv9gvs4y4P/XddZMTfRv1nJb26P7Mq4S6I7uUGOMWRzVDt0k
         Q2Kw==
X-Gm-Message-State: AOAM531vaW5pr5ffbgKKLwLfyE+9tJ7wrKieRtSZwpxaXsw2rMquI6bN
	Jn4Rw0PLkqHMrf16WopCr++Igt1axNLpZQ==
X-Google-Smtp-Source: ABdhPJxxbTCQpX5GxkQiWUMG+XpWMPWfU4s8Tr698B6j2ccGzOXswaX101ntXchq9ueyFk1Wklsaug==
X-Received: by 2002:a62:4e0e:0:b029:39a:56d1:6d47 with SMTP id c14-20020a624e0e0000b029039a56d16d47mr7474553pfb.1.1627362656581;
        Mon, 26 Jul 2021 22:10:56 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.caveonetworks.com ([2601:202:4180:a5c0:b44a:9e9b:6beb:e170])
        by smtp.gmail.com with ESMTPSA id b9sm1802724pfm.124.2021.07.26.22.10.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jul 2021 22:10:56 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] crowdsec: add pkg
Date: Mon, 26 Jul 2021 22:10:54 -0700
Message-Id: <20210727051055.2225471-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/crowdsec/crowdsec_1.1.1.bb | 42 ++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 recipes-ids/crowdsec/crowdsec_1.1.1.bb

diff --git a/recipes-ids/crowdsec/crowdsec_1.1.1.bb b/recipes-ids/crowdsec/crowdsec_1.1.1.bb
new file mode 100644
index 0000000..1243a3c
--- /dev/null
+++ b/recipes-ids/crowdsec/crowdsec_1.1.1.bb
@@ -0,0 +1,42 @@
+SUMMARY = "CrowdSec is a free, modern & collaborative behavior detection engine, coupled with a global IP reputation network."
+
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://src/import/LICENSE;md5=105e75b680b2ab82fa5718661b41f3bf"
+
+SRC_URI = "git://github.com/crowdsecurity/crowdsec.git;branch=master"
+SRCREV = "73e0bbaf93070f4a640eb5a22212b5dcf26699de"
+
+DEPENDS = "jq-native"
+
+GO_IMPORT = "import"
+
+inherit go
+
+S = "${WORKDIR}/git"
+
+do_compile() {
+    export GOARCH="${TARGET_GOARCH}"
+    export GOROOT="${STAGING_LIBDIR_NATIVE}/${TARGET_SYS}/go"
+
+    # Pass the needed cflags/ldflags so that cgo
+    # can find the needed headers files and libraries
+    export CGO_ENABLED="1"
+    export CFLAGS=""
+    export LDFLAGS=""
+    export CGO_CFLAGS="${BUILDSDK_CFLAGS} --sysroot=${STAGING_DIR_TARGET}"
+    export CGO_LDFLAGS="${BUILDSDK_LDFLAGS} --sysroot=${STAGING_DIR_TARGET}"
+
+    cd ${S}/src/import
+    oe_runmake release
+}
+
+do_install_ () {
+   chmod +x -R --silent ${B}/pkg
+}
+
+
+INSANE_SKIP_${PN} = "already-stripped"
+INSANE_SKIP_${PN}-dev = "ldflags"
+
+RDEPENDS_${PN} = "go"
+RDEPENDS_${PN}-dev = "bash"
-- 
2.25.1

