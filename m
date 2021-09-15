Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web09.2501.1631740228609884796
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Sep 2021 14:10:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=F4I+Y3sz;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id di6so2840815qvb.1
        for <yocto@lists.yoctoproject.org>; Wed, 15 Sep 2021 14:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=og31EjbxyxNRsEVCin+G39HkgFoGdD/l+vzQnUuZn4U=;
        b=F4I+Y3szAehAPRmmT7jUrJWh6563KAhWWzvRiW6jGBdnshC+h4fKYrZMk2lW+YnRXu
         IO6zrxy26k1cnReRl8SGsllEXlUfBwfsmadoR2di7gmbFacrORyG2hUhYY6hVl1g8IFw
         UCsEcogpNPme0+C2AX0auFLfYiIbtAe4i+mFA3u1TqlZhxtYjTOUYpMsx9kU40iCTyiP
         MQls16rJr/GHCKOyTTLpQlRw/1ni6q2xogMpaJMbMnUdSGYaQWsjhOl/b3nVXqszo+bf
         SSv5X0e4eHa+kiue0x+349/VaV66RYuv7SQZK/g1QMbC4iZPNrww5U57t6tdG57StzpO
         kUmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=og31EjbxyxNRsEVCin+G39HkgFoGdD/l+vzQnUuZn4U=;
        b=ZRMpPsa5AzssAxYCrsxdQTGUIcjAIy/XYwz/19iKuaU+ibGK+72IptA/lsCIeOUWar
         oj1mqjfayL8ZLQ5RDvOw1d7t0a3hrt88XgwMhNtSIRiXehl3z+pIokUHnRn6spy1CJCt
         IXXu+5R7r47Yx6PhSMjeTxVhb6rihHPp0tsdZ1/fqrdolDkQh2wSBvu1y+v1xI6C305e
         0ztQ7rfBEl4QgiRBRH9M8sLrxvBqDonhwhXfYeOOES432S/92WjnSxhGzNfvRoqvUlcQ
         2xRTGVVZdm3wv/S7XHq31kg0ngXPLkX8x4XxlA7MTMSVnWPZVMXUCYyL0tjgFahjvsRX
         XreA==
X-Gm-Message-State: AOAM532RsLLnLstz3hf+frxh1YOvjJluCedphCFytFvx4HjjEoeX4slM
	Y50dJFKLdD/D2VwjMPYP7XAbI91Rb5E=
X-Google-Smtp-Source: ABdhPJywbN0OgXPGseRKtzW2rM2qoMXT7DnAH3IleWUC7dQWCoNrKOkTl3OemAyCAghlBiTFV95oPw==
X-Received: by 2002:ad4:5591:: with SMTP id e17mr1919182qvx.50.1631740227365;
        Wed, 15 Sep 2021 14:10:27 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id o7sm702817qtw.87.2021.09.15.14.10.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Sep 2021 14:10:26 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] rock64: enable lima with rock64
Date: Wed, 15 Sep 2021 17:10:18 -0400
Message-Id: <20210915211018.17694-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The rock64 has an ARM Mali 450 MP2 GPU, therefore enable mesa's lima for
accelerated, open-source graphics.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-graphics/mesa/mesa_%.bbappend | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa/mesa_%.bbappend
index b9089c9..87f4bce 100644
--- a/recipes-graphics/mesa/mesa_%.bbappend
+++ b/recipes-graphics/mesa/mesa_%.bbappend
@@ -1,2 +1,3 @@
 PACKAGECONFIG:append:rk3288 = " kmsro panfrost"
 PACKAGECONFIG:append:rk3399 = " kmsro panfrost"
+PACKAGECONFIG:append:rock64 = " kmsro lima"
-- 
2.30.0.rc0

