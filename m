Return-Path: <davidegarde2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5DCC35294
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:41 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
 [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web09.34693.1649077079301081134
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Apr 2022 05:57:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=p/jrRNQD;
 spf=pass (domain: gmail.com, ip: 209.85.218.48,
 mailfrom: davidegarde2000@gmail.com)
Received: by mail-ej1-f48.google.com with SMTP id ot30so9807845ejb.12
        for <yocto@lists.yoctoproject.org>;
 Mon, 04 Apr 2022 05:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0Z5FT3SRidbbGovVRldkqCo9Da4mOr3Svl+KUVv+0PI=;
        b=p/jrRNQD36SxJ2ifa6Mh4tqtoIu347/2zlUrYvppfxhRJU1eil0R+HFJ8Lbw73Kgw6
         yjGCle/hZ+ng4zptD5SL0yYiPC1Eyig8WvW6/Z36qJp4vDtA4+fIp6enwoKVaHClZcQP
         5SWKqA2fI5xsLe03Ng45DSZLLxnCDDHWtC+a6BBlXCqDOblo+9Czsm/Ie022xhNXWCyt
         e1qjfItcwcw3+SIYzhSgJCJG1CtSMVWTdsy/XxYhdnJwy3rKIdIwxt/0mSdoAF6ffCMo
         2sWjO6q3XqB07bZIDpvE2Nm9XswP0rlWxVCS4oeKw5hiEBXzbHRPS+gFJ9c9THROmqAw
         gmbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0Z5FT3SRidbbGovVRldkqCo9Da4mOr3Svl+KUVv+0PI=;
        b=YOIjBwboX+gOvUTknpi2Jco80ldU7l8PqKAL5lZ/5Uh206rDobBv5aSjIhEJH1oZj/
         iu1eOre9RToRHCfAvDt3rSBkyUO/KnSm+7rTcRr8TdFj+Q/J1vwIA9+daxEkuTZFdfcu
         3/fvZgfhK6tDwZk3MDDQHYkQHB2j3X9fwF0/kFMX6eJd261QCEJyiTXH00P1I0a2tEkn
         ZzN44msjMxK9wuIOc96NDyjHxK9ROXge0SE7FazkuP69IlUGfTWFDv/1+fdVluiFXs/P
         gsTobrqMrHQwW3p+aFrrnhFeIbHHGTzxvRO1uITLZq79tMHDBJVj9aj+OVac3PkNRlFD
         61ew==
X-Gm-Message-State: AOAM533FTzkF3ayKzxkDl6wJjBtZy6bsPwwxXiBvnKJ3q3agBh9jk9MX
	nk6FOC24pJtkQ2L0I/wkofLpLKQX+FFUcg==
X-Google-Smtp-Source: 
 ABdhPJyPx+cwgJNFRIiraA9Rku0CZnSuryxFEx8Y6JkqUGlEdKf/PJ9nqMkpJcfsa+Q0xU7LKOoDWQ==
X-Received: by 2002:a17:907:2d07:b0:6e0:13e2:841b with SMTP id
 gs7-20020a1709072d0700b006e013e2841bmr10624158ejc.502.1649077077482;
        Mon, 04 Apr 2022 05:57:57 -0700 (PDT)
Received: from tony3oo3-XPS-13-9370.home
 (host-82-60-178-52.retail.telecomitalia.it. [82.60.178.52])
        by smtp.gmail.com with ESMTPSA id
 o5-20020a170906974500b006dfc781498dsm4401166ejy.37.2022.04.04.05.57.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 05:57:57 -0700 (PDT)
From: Davide Gardenal <davidegarde2000@gmail.com>
X-Google-Original-From: Davide Gardenal <davide.gardenal@huawei.com>
To: yocto@lists.yoctoproject.org
Cc: Davide Gardenal <davide.gardenal@huawei.com>
Subject: [meta-security][PATCH] fscrypt: update dependecy from go-dep-native
 to go-native
Date: Mon,  4 Apr 2022 14:57:53 +0200
Message-Id: <20220404125753.43887-1-davide.gardenal@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56658

Signed-off-by: Davide Gardenal <davide.gardenal@huawei.com>
---
 recipes-security/fscrypt/fscrypt_1.0.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/fscrypt/fscrypt_1.0.0.bb b/recipes-security/fscrypt/fscrypt_1.0.0.bb
index 66bf429..663d8e2 100644
--- a/recipes-security/fscrypt/fscrypt_1.0.0.bb
+++ b/recipes-security/fscrypt/fscrypt_1.0.0.bb
@@ -11,7 +11,7 @@ LIC_FILES_CHKSUM = "file://src/${GO_IMPORT}/LICENSE;md5=3b83ef96387f14655fc854dd
 BBCLASSEXTEND = "native nativesdk"
 
 # fscrypt depends on go and libpam
-DEPENDS += "go-dep-native libpam"
+DEPENDS += "go-native libpam"
 
 SRCREV = "92b1e9a8670ccd3916a7d24a06cab1e4c9815bc4"
 SRC_URI = "git://github.com/google/fscrypt.git;branch=master;protocol=https"
-- 
2.32.0


