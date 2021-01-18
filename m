Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
 by mx.groups.io with SMTP id smtpd.web12.35873.1610987038239146866
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Jan 2021 08:23:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=H9flVCUT;
 spf=pass (domain: gmail.com, ip: 209.85.166.45, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f45.google.com with SMTP id w18so33853226iot.0
        for <yocto@lists.yoctoproject.org>; Mon, 18 Jan 2021 08:23:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SObsMlYDPvD8cZW1At2hH/d8I0CqkHG2p6NglDY43FU=;
        b=H9flVCUTN4FCD0sgcQyj5WdUMBGkKuGnDzqqBU8oJRoxTF0oKKDThWgqC9y1wshiXP
         PWgRiOUCkUqSJSI1zIUKvD2QOU3VecM1ic3GB61xXg9wbJymiacl7r6CE930GrdpGSyY
         Yla6QP/aIUwxv10nZPtucVlbwI7losI5pTHRpz4fcgutjz/UdICA54G4ZjI1qWy025sn
         W/0NRkQOKaGXymKj2zEdS8Nf4Li/bmNYz3s9ZhijgV9JNy/TSVtjWZJ0Drhra4x2nH14
         IJ8FWAy9m6sMKp4sm/yIATkGJvrap7GkzggLImADdjM95v8u+U0NJGhiOqMpkFobsDUJ
         WkDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SObsMlYDPvD8cZW1At2hH/d8I0CqkHG2p6NglDY43FU=;
        b=IS6s5LBroFuBkbpl+sCJULmKLVdlt9j/N7BSJT98Sdm0eb1qUzLpU5UM6uptz3i4QW
         h3CnxrrgpdNLGh9Mt+O/cXiVp0PcHl12Trjl0frGu8pIlKXatHHe7892etR6N1BdrC/S
         LlxeBEMAiI6bA8WDc0jCBQGMqoFKqoeeV5+N3ZBsC9UdXDFrK8LDvYYzm+tC6K/k04vw
         +aKek/z+H0ORoSgGy56nYAgyUDkQfchZCdySlaokDVGDGn0oFicY1JSLB04ZAgQTulpM
         uBjya+3+QzU2ptjGm89ib0NKQVt50n3qitDaFTbQ8jHxYJ7598wbGi6T4t9E0LvUOF7m
         dqUw==
X-Gm-Message-State: AOAM531HAaY4z7OF93BIZ7pFnbYlNc4JZZV8ggsVPuPqAeac9b0LyBiP
	U4Yvxz5TwTmyGsGZKe3dyhvyOUUu/EQ=
X-Google-Smtp-Source: ABdhPJz94xIzI0qNFE7aX8/6Dj6dXnm4S9wsRIcNFeGhP4zJeyFRQO/hMHGQEgtV4ToPLLt4Kyej8A==
X-Received: by 2002:a05:6e02:16ca:: with SMTP id 10mr89882ilx.28.1610987037154;
        Mon, 18 Jan 2021 08:23:57 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id v82sm2725478ili.71.2021.01.18.08.23.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jan 2021 08:23:56 -0800 (PST)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] linux-yocto_5.8.bbappend: remove
Date: Mon, 18 Jan 2021 11:23:49 -0500
Message-Id: <20210118162349.28714-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

linux-yocto_5.8 has been removed from the list of kernels found in
openembedded-core, therefore this bbappend is no longer needed.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-kernel/linux/linux-yocto_5.8.bbappend | 4 ----
 1 file changed, 4 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-yocto_5.8.bbappend

diff --git a/recipes-kernel/linux/linux-yocto_5.8.bbappend b/recipes-kernel/linux/linux-yocto_5.8.bbappend
deleted file mode 100644
index 5a31842..0000000
--- a/recipes-kernel/linux/linux-yocto_5.8.bbappend
+++ /dev/null
@@ -1,4 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-SRC_URI_append_rock-pi-4 = " file://0001-Revert-regulator-resolve-supply-after-creating-regul.patch"
-
-- 
2.30.0.rc0

