Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web08.12660.1624893346504541145
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Jun 2021 08:15:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WtHhfU8b;
 spf=pass (domain: gmail.com, ip: 209.85.160.174, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f174.google.com with SMTP id r7so13759694qta.12
        for <yocto@lists.yoctoproject.org>; Mon, 28 Jun 2021 08:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QXgEwN4G4IY35nXeRI71hPq4cF/EnBhtMUgrqLAQo14=;
        b=WtHhfU8bfDa4o0YDr6t/Y2S7fZZWUmZiu08ObW/z9qtJrcIBL5OK1sTbQMqZWdQXrK
         VXOxiE+/D2bmqK6fgp0b8IBl41VOyadQyVrU/xYwX+TGkfhaTbA7HKWZVnJK5QF2KrDT
         h0LMuKb1ZxcDj2CEAaLSlUCoLq6Z1z6k6E2ZVnYLY/3OBhZV5hoG0pytWIU7EKSBblTG
         7SUYz9iN4qkl/QvpMtZ7ZkoFV67Izz5RlOt4A7ZB1pIZVTUC5wa+a29LtbtWsmP9zpAK
         Khr9n2v8w2jUbhWceLkxNcDZlav6Ogp+vDWw97ryrHz9OVkjQy7MVUc5oVzHCeEfibKc
         ByXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QXgEwN4G4IY35nXeRI71hPq4cF/EnBhtMUgrqLAQo14=;
        b=qU2mhefA92C3zX/zS92iCPNXmxn/I4sCMjF0KzikRjEdtxWzPzWNOvbueqrAdyxF4J
         jXsMR6holPWmFQSrzYLGxKs4qcgIY5+ZVrML9yOowYLjZDS7p+/0krz9ptd+1qpM0vzd
         Jn77zjEVRBKN8s2hpMOLYYas1tMHbtshgoKSyjV4YgXqm+lRyIxNxHZxHZnzry8S2gcP
         4rmEjG6htFw9LPVsx6SQfCH5n6qRB7MJn9PEBNfyTbUFteyYtUYqD38V6i1XWYVFw6wG
         7zlxwVUqwMPd5FAoXI/zjrmETExG04Q4K5UYM4q0Or40yV2niD3HJC+RPx++WvoPWSad
         vjVQ==
X-Gm-Message-State: AOAM5328WSsKRWnQSgylRepJTIqB1cUhyh+7bV0pisqToFMb5WsD1Vq9
	x2b6M/GeCgJ3TJqn9kmPzx+5K0jRoCx98Q==
X-Google-Smtp-Source: ABdhPJzr2sT0kc1mBvUuNTaNFoX7DsIdM5aLtwJtwKVy/An6v+vyz8Rrp35/Hvje45EIHYpntF/n5g==
X-Received: by 2002:ac8:6d14:: with SMTP id o20mr8061433qtt.79.1624893345298;
        Mon, 28 Jun 2021 08:15:45 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id b13sm4107252qtk.30.2021.06.28.08.15.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jun 2021 08:15:44 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 1/3] conf/machine/include/nanopi-m4.inc: add full include path
Date: Mon, 28 Jun 2021 11:15:39 -0400
Message-Id: <20210628151541.26092-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Specify the full include path to the rk3399.inc file.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/nanopi-m4.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/nanopi-m4.inc
index 7ca91db..b5251a1 100644
--- a/conf/machine/include/nanopi-m4.inc
+++ b/conf/machine/include/nanopi-m4.inc
@@ -1,7 +1,7 @@
 # Copyright (C) 2021 Blade SAS
 # Common definitions for all NanoPi M4 RK3399 board variants
 
-require rk3399.inc
+require conf/machine/include/rk3399.inc
 
 MACHINE_FEATURES += "usbhost serial"
 
-- 
2.30.0.rc0

