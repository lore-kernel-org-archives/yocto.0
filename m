Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5921BCCA479
	for <webhook@archiver.kernel.org>; Mon, 20 Jun 2022 03:37:10 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
 [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web08.26231.1655696229471345846
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jun 2022 20:37:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NwHP7wwV;
 spf=pass (domain: gmail.com, ip: 209.85.214.173,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f173.google.com with SMTP id m14so8600857plg.5
        for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jun 2022 20:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=wC1iwavS3EqgmrJOpfMcBMPGwzIAHMA58jgYP309X5k=;
        b=NwHP7wwVENXpjpllNFysPT+x/jG7nCkEc6sMa+43mRiwfo9r1PXdl5pm/3L7/9OEoT
         2jje1qcDuE9sWNtoIqDz67scfQWuX3W33NiePAMyKtI/t51MQ2ZI9sntjl5QyEUCZrkM
         nx/LcrJPMSWJZxtX6a1JhUB11mpWs2svzfREpTFM7Dm24OiQP3gQ8nNQ1+so3gGq6AJm
         r2wqAMQtczzQMGWSBO5oTsJdm6cPD+BqRTMAyr7Zer0JTbcJrgC7NWtQZAWGf9IKGKvV
         dsr0B0um9E/T4YilGeg1ex/Eautziq48ZtU0S1QmQ2joQDoRM6cF2bueyt1//otHcmLJ
         2haw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wC1iwavS3EqgmrJOpfMcBMPGwzIAHMA58jgYP309X5k=;
        b=2n7DSIhxDi6MlxEb5eqnXnvrcL8Kf61IP7l77eGVwB8CKK3Uyt6A5OSrZVpCxa6OZW
         +tjZ3QLa4l4f6+EIDVyyYK1HI9up3egQV/0+ZlDCUttZgg+WjN8ic24d0lH8bZwaCY7i
         GcYDlAWG0nx25WO2qrpbpcUyvH0znt03J6zHWuAGir765RUmmNIMhD2KCCtzfKsG2GDM
         ArV8CK9bhzWR7LTgaiUc9AF2+b53WgR72DAAZmPSaQVc4lh30/q/HZNphZXUjk+tohQo
         QsJnTHyOkEu0cErbF1mYPz1mvlRu4+heS3W6ZkVlDUqam3ya4PW6l4RQWzziS1FogKYt
         Ixvw==
X-Gm-Message-State: AJIora9BINUS3xfZ6GOy8LslzKivyaNvy1DtLXEJMMX2+AC8l18ona92
	+vXWvQ06ZhQIMf70bQf3LTpkG0slCeU=
X-Google-Smtp-Source: 
 AGRyM1savYJrGW3y9JFCxIZOibft/eGKDY2Z1IaIGtXIsw8h1lF948b2OwwdnOi5X8sKYRRKletxbA==
X-Received: by 2002:a17:90b:1a86:b0:1e8:2b80:5e07 with SMTP id
 ng6-20020a17090b1a8600b001e82b805e07mr24591940pjb.31.1655696228644;
        Sun, 19 Jun 2022 20:37:08 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 n5-20020a170902d2c500b00163d6164889sm7425536plc.236.2022.06.19.20.37.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jun 2022 20:37:07 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] oeqa: meta-tpm shut swtpm down before and
 after testing
Date: Sun, 19 Jun 2022 20:35:03 -0700
Message-Id: <20220620033504.994851-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220620033504.994851-1-akuster808@gmail.com>
References: <20220620033504.994851-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Jun 2022 03:37:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57357

fixes:
swtpm: Could not open TCP socket: Address already in use

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/lib/oeqa/runtime/cases/swtpm.py | 2 ++
 meta-tpm/lib/oeqa/runtime/cases/tpm2.py  | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/meta-tpm/lib/oeqa/runtime/cases/swtpm.py b/meta-tpm/lib/oeqa/runtime/cases/swtpm.py
index df47b35..0be5c59 100644
--- a/meta-tpm/lib/oeqa/runtime/cases/swtpm.py
+++ b/meta-tpm/lib/oeqa/runtime/cases/swtpm.py
@@ -8,11 +8,13 @@ from oeqa.core.decorator.data import skipIfNotFeature
 class SwTpmTest(OERuntimeTestCase):
     @classmethod
     def setUpClass(cls):
+        cls.tc.target.run('swtpm_ioctl -s --tcp :2322')
         cls.tc.target.run('mkdir /tmp/myvtpm2')
         cls.tc.target.run('chown tss:root /tmp/myvtpm2')
 
     @classmethod
     def tearDownClass(cls):
+        cls.tc.target.run('swtpm_ioctl -s --tcp :2322')
         cls.tc.target.run('rm -fr /tmp/myvtpm2')
 
     @skipIfNotFeature('tpm2','Test tpm2_swtpm_socket requires tpm2 to be in DISTRO_FEATURES')
diff --git a/meta-tpm/lib/oeqa/runtime/cases/tpm2.py b/meta-tpm/lib/oeqa/runtime/cases/tpm2.py
index e64d19d..8e90dc9 100644
--- a/meta-tpm/lib/oeqa/runtime/cases/tpm2.py
+++ b/meta-tpm/lib/oeqa/runtime/cases/tpm2.py
@@ -8,10 +8,12 @@ from oeqa.core.decorator.data import skipIfNotFeature
 class Tpm2Test(OERuntimeTestCase):
     @classmethod
     def setUpClass(cls):
+        cls.tc.target.run('swtpm_ioctl -s --tcp :2322')
         cls.tc.target.run('mkdir /tmp/myvtpm2')
 
     @classmethod
     def tearDownClass(cls):
+        cls.tc.target.run('swtpm_ioctl -s --tcp :2322')
         cls.tc.target.run('rm -fr /tmp/myvtpm2')
 
     def check_endlines(self, results,  expected_endlines): 
-- 
2.25.1


