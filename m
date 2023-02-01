Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BAB4C636CD
	for <webhook@archiver.kernel.org>; Wed,  1 Feb 2023 13:26:22 +0000 (UTC)
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
 by mx.groups.io with SMTP id smtpd.web11.23031.1675257977943523387
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Feb 2023 05:26:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WHmHUUI8;
 spf=pass (domain: gmail.com, ip: 209.85.161.52, mailfrom: akuster808@gmail.com)
Received: by mail-oo1-f52.google.com with SMTP id b10-20020a4a9fca000000b004e6f734c6b4so1925421oom.9
        for <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 05:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+Jx2gZ21DkSCWU5o4PEnoVvMWuS70GByy1Hqs2SRuoQ=;
        b=WHmHUUI8pMj4qAzoZx5pyOZKiVYaGMpsoFGkjc9oShFy1XvrmZ3m0xUpvvpgoCBstD
         i+5bnbL5PdZaGZIWzHyKtvaGYn7Kj1KIeZ+Dom7erqEHIGZOcu4q6QOh9gFFqReXf2Eg
         lSaXoZdlVoOylJ0RKroZkbcfjCkZA8qyEvJmflnibU6FbDoxUhUF8mW3JR5TM5BYZYG4
         LTZm7NbSYoMTx5br/b1O3vzJamcx/YFnp3cat3x8f/JEAIJciTNZQqgbrpKfSWfZU5Ie
         4LYVxG9szVm6tIKnvPA9f57B8KemhJL+FhBG/QMSOmvPiXuggVjXO8kHsqJA1X/2wfho
         JylA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Jx2gZ21DkSCWU5o4PEnoVvMWuS70GByy1Hqs2SRuoQ=;
        b=RYhHkg3qKoDOfzU+38aGHJRpToTipPcWpR+1gTxJLdL02XLhzsCSdcWY7m7n9tuJHW
         dIf9BeKTdhjV0AKmpNe8OAhUwTcTDwW/+uePOEi67bU/9IrjqXJM+Kh2UjlKjigwLSyE
         A5pAEEgsu8IOqBTvPkj6FqqwJ8MZVOuGZ7BiKS6ArMJ+3DstStRszrZmo7+n+qCyDuqR
         Zt6lyrSZmcd1+xAy+DTOxd7VpV0jqSrHsN2RcUp5WvdsCIYk3PFwC0p/CEyg8wL4TDRs
         6apbpa6dc6ytkbGYUuPoE/t30gqxBefebxYh9u/9cPdugJ1FIExm/yqZVti09HKZtYuA
         cEiA==
X-Gm-Message-State: AO0yUKUQHTqMmVM3hNxii4lZLpsYtT/+Zgk3A0ooOF+IDIPe7Gg0Vn9v
	2DzNVljrMulCH/rYwy6hGGmRYo2UR/A=
X-Google-Smtp-Source: AK7set/889TmL8aAdIfV0d/Wpoym+kRmLrOgdm+LBLtvIFuvBqBhC0kY+0VcxzjTsEJxBqbBK5VTOw==
X-Received: by 2002:a4a:dc55:0:b0:517:67ba:586 with SMTP id q21-20020a4adc55000000b0051767ba0586mr995647oov.3.1675257977134;
        Wed, 01 Feb 2023 05:26:17 -0800 (PST)
Received: from mvwork.attlocal.net ([2600:1700:9190:ba10::32])
        by smtp.gmail.com with ESMTPSA id y15-20020a4acb8f000000b0049fd5c02d25sm5010622ooq.12.2023.02.01.05.26.16
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Feb 2023 05:26:16 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [kirkstone][meta-tpm][PATCH 3/3] oeqa: meta-tpm shut swtpm down before and after testing
Date: Wed,  1 Feb 2023 08:26:14 -0500
Message-Id: <20230201132614.2840970-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230201132614.2840970-1-akuster808@gmail.com>
References: <20230201132614.2840970-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 13:26:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59131

fixes:
swtpm: Could not open TCP socket: Address already in use

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit b5642c519b90f83ab6ec1507db9b3b36db43c548)
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
2.37.3


