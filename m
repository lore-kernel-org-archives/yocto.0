Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F98EC43334
	for <webhook@archiver.kernel.org>; Mon, 20 Jun 2022 03:37:20 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
 [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web10.25940.1655696231292155597
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jun 2022 20:37:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YC1svQE0;
 spf=pass (domain: gmail.com, ip: 209.85.215.175,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id 31so9120652pgv.11
        for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jun 2022 20:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=CRCs4UyPBv+CnbRu16CBP8PsBtoo12TsJ4aDnVKNv0I=;
        b=YC1svQE0HjOExVOgWepUeNoMGlP9W8K1QJyBUDQ6Be0Cf452zmePgajjnGc1KtBpgN
         NKfqjhzrYuQm5sSmPlglvu/p1oVXjJ1xu+KOWIAQxCIZDC6S3egGeQy6jUKK4noWJG2e
         VciUXL13JLn174r84RyyJV6dj+WFqjnLfXEoV0CO5CAFYeWa95MASSZVRoaqv+nd4qvW
         d89qmseksn+7MUP7AzfM351A/T5DGqyj/8Wu2bvkvARyAlcDYnMhTPyZgH5hbHjLKaSX
         EECXj4tSm6SgC2eV2+Ehf+OSPslpNQBwXtK9jHfo2j002iDww/BSfopFbmcn3UqA9BdN
         RyKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CRCs4UyPBv+CnbRu16CBP8PsBtoo12TsJ4aDnVKNv0I=;
        b=yac9bJZUVKUhJ2ZMA+9TcKVRvQdPk1zdqLXRBYIC7Ep8Mt3dCOmG91FOtcV5p0FfkR
         QmKCslsiyF3A4kgkGIIjJeakylZiDoT3TTka6gZ6D9281qhqk/pxFl3Lrr6i//W0IeMV
         DdplUV96AX3NLXo7LJdZAMVglZUJpQs+wyDrX7tc0TBEVYU4bI0Gfzi19oX+jDHcRj0/
         PGiAx+GxCbISOwvAONhzziUJWfk20N5PPt81Ig16DZ4yxDjTFRZ44Dl9mvbbUwWUrIQd
         gTVXFbCy11Wf7+dQ8oJsPDzRocbd55eBy1v6bdg4v0sT9PAlL3EThlV+h/x7PGRABg7U
         5daw==
X-Gm-Message-State: AJIora+b1TzSIQF1ViQJWw9Ncvhx4u0eMVoeoBvwhVByNemfYHm//qv8
	hR6AAMDzCKQ1pzQ4ECL/yRl6XxSh/Rk=
X-Google-Smtp-Source: 
 AGRyM1vSTL7df2V2mS6ess2VNb8zkOGPrUDcNbafYi3123P9aQT7eVnRtk6ycWzrS0Km81LO6u2/mQ==
X-Received: by 2002:a05:6a00:14c1:b0:51b:eed4:c571 with SMTP id
 w1-20020a056a0014c100b0051beed4c571mr22511481pfu.72.1655696230235;
        Sun, 19 Jun 2022 20:37:10 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 n5-20020a170902d2c500b00163d6164889sm7425536plc.236.2022.06.19.20.37.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jun 2022 20:37:09 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] oeqa: shut done swtpm before and after
 testing
Date: Sun, 19 Jun 2022 20:35:04 -0700
Message-Id: <20220620033504.994851-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220620033504.994851-1-akuster808@gmail.com>
References: <20220620033504.994851-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Jun 2022 03:37:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57358

fixes:
swtpm: Could not open TCP socket: Address already in use

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-parsec/lib/oeqa/runtime/cases/parsec.py | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/meta-parsec/lib/oeqa/runtime/cases/parsec.py b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
index d3d3f2e..11e5572 100644
--- a/meta-parsec/lib/oeqa/runtime/cases/parsec.py
+++ b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
@@ -12,8 +12,13 @@ from oeqa.core.decorator.data import skipIfNotFeature
 class ParsecTest(OERuntimeTestCase):
     @classmethod
     def setUpClass(cls):
+        cls.tc.target.run('swtpm_ioctl -s --tcp :2322')
         cls.toml_file = '/etc/parsec/config.toml'
 
+    @classmethod
+    def tearDownClass(cls):
+        cls.tc.target.run('swtpm_ioctl -s --tcp :2322')
+
     def setUp(self):
         super(ParsecTest, self).setUp()
         if 'systemd' in self.tc.td['DISTRO_FEATURES']:
-- 
2.25.1


