Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20D1CC433F5
	for <webhook@archiver.kernel.org>; Sat, 25 Sep 2021 21:17:23 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
 [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web10.11442.1632604640788921271
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Sep 2021 14:17:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=pLn+6BM3;
 spf=pass (domain: gmail.com, ip: 209.85.216.49,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id
 g13-20020a17090a3c8d00b00196286963b9so12240550pjc.3
        for <yocto@lists.yoctoproject.org>;
 Sat, 25 Sep 2021 14:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bizlWC3b8aTCICj6aydpUZ6r95pQN+ZdqWjgKw3Wpjc=;
        b=pLn+6BM3CLQpWSHrsI5UHNecCXucTCibxngxZOU8RLJznIGlfEwTYMdhLTbtLtZIij
         dLiJhdhlxM71HcBLbFYIn1f/zJQAoOF0Wd1XgnHIU4Q+dJAPM0Pb5Q1i35nMHKbWVPXl
         GCxiUS15fh45afFT3QR4CTjyRwRVrl/vxgtxU6cQ+OpqYxCuKpK5L0tUavTuEOvguRt0
         /TakfPO1HDZV9BWNcO2mM2KQuq4dLsqIo7TzzJnVWCxI89eAMo5ZiVg3qmhX3wIjkBwq
         fKUX9eiBM/4hkNmY0vAKEIE0Dv8PVRL5htZTovAIOkpj+ySy3n6WvULKlc9f7Fs9w5Wg
         9gaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bizlWC3b8aTCICj6aydpUZ6r95pQN+ZdqWjgKw3Wpjc=;
        b=dPTXlOMv6jPu5AJLYEtG08g+745C6dNYuHO4K/p3/Bik+Crta8Ym97pFQqzDikK+2B
         Xhmn+zb9lFDBIZHWkkMEQOae5wws8NA8cxSteb3BsuT64sZj844jl8UUXYDPD9XJxohy
         yrBkDELEcvE0XNmjLKfAxNsPHMD+LAzodgzKkwKyPEdGOyW3N6RwQawbdT6CjIhx7Fv9
         bn0p4At5YdXt5XrBi1giLorBFDWdL0pNWW5B7wUq2bHU3hmYhLr5PFNOik+5r8Ad0Jjo
         u8p/Q3ysiJCKLIv+5Mp2YNtI/1W9Cc51y/TnmddAf6iTfCE90inaKcv/ZtBds2psviWr
         9KQA==
X-Gm-Message-State: AOAM533t8/+P3P68UubZnjls6ZeyoIJh39QUq07GllEw57GN9PR9qGa5
	vyJwNTF2qGC4AHT0kChd1Oq4bDubBao=
X-Google-Smtp-Source: 
 ABdhPJyzL+bsq1+c/W1ctFo/BRU8TUV/pcKRqc3kQbgZMx7sT/YEqahDX32ZAsBvnShTtZsLL1YGVQ==
X-Received: by 2002:a17:902:b711:b029:11e:6480:258a with SMTP id
 d17-20020a170902b711b029011e6480258amr15426722pls.41.1632604639963;
        Sat, 25 Sep 2021 14:17:19 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:d7f4:2c1e:8b6e:b548])
        by smtp.gmail.com with ESMTPSA id
 l14sm15683401pjq.13.2021.09.25.14.17.19
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Sep 2021 14:17:19 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] chkrootkit: update to 0.55
Date: Sat, 25 Sep 2021 14:17:18 -0700
Message-Id: <20210925211718.148104-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Sep 2021 21:17:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54854

changes:
Umbreon Linux Rootkit detection
Kinsing.A Backdoor
RotaJakito Backdoor
Minor bug fixes

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../rootkits/{chkrootkit_0.53.bb => chkrootkit_0.55.bb}        | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)
 rename recipes-scanners/rootkits/{chkrootkit_0.53.bb => chkrootkit_0.55.bb} (94%)

diff --git a/recipes-scanners/rootkits/chkrootkit_0.53.bb b/recipes-scanners/rootkits/chkrootkit_0.55.bb
similarity index 94%
rename from recipes-scanners/rootkits/chkrootkit_0.53.bb
rename to recipes-scanners/rootkits/chkrootkit_0.55.bb
index 4536be3..20015a1 100644
--- a/recipes-scanners/rootkits/chkrootkit_0.53.bb
+++ b/recipes-scanners/rootkits/chkrootkit_0.55.bb
@@ -6,8 +6,7 @@ LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=fdbe53788f7081c63387d8087273f5ff"
 
 SRC_URI = "ftp://ftp.pangeia.com.br/pub/seg/pac/${BPN}.tar.gz"
-SRC_URI[sha256sum] = "7262dae33b338976828b5d156b70d159e0043c0db43ada8dee66c97387cf45b5"
-
+SRC_URI[sha256sum] = "a81c0286ec449313f953701202a00e81b204fc2cf43e278585a11c12a5e0258b"
 
 inherit autotools-brokensep
 
-- 
2.25.1


