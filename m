Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08F2DCCA47A
	for <webhook@archiver.kernel.org>; Sat, 11 Jun 2022 13:42:52 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
 [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web08.5852.1654954964289094398
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Jun 2022 06:42:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Qfaz1Bfl;
 spf=pass (domain: gmail.com, ip: 209.85.210.180,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id c196so1850676pfb.1
        for <yocto@lists.yoctoproject.org>;
 Sat, 11 Jun 2022 06:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=3NgGISlX2jPJ6fLyZTIJcGYIntv8AumbQq07wKSDTz4=;
        b=Qfaz1BflSmM9arsyDaKODksIzttjb8lOQYxkyBsACGbh+Qayxo+kA7ify+5y4TzxGQ
         gJH6+rU38mp27dSkgUV/EG3Jnv/OJ+03O+Lm7aBUAZNbNXjgdITdQHvnZxyXAW+diVq9
         5rg0/yq5B8EJUFIoi6LMlhCItwX+3Sp3HuUCQpCPtCJtouOsSMXnkH7hWTDeD9Ze/0sT
         +Ub0kdVF+wgdnAo5be0n1mAA4u3FkdoY+XoHqt1yqABgMum01BJCx9oTqqg+G0sPHjIF
         tMxML+9LSl5cHx5TTYsnuanva9AYJP1+QXVq0mxmlK4MRAsFtenF1+AMaueIl6qa7uhB
         oIKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3NgGISlX2jPJ6fLyZTIJcGYIntv8AumbQq07wKSDTz4=;
        b=6/u2ObIhUegjvPkw+Myj73ak5j/7TSEmgBgrR16mrIaoFVqWCGmdFekzeeFBdZnucI
         5opX//rxdhXeZWdoDh4Q8pEeINkR3w1u/oSADNUPqypFBHG8d4E+7hr7zh9OtCPf3OBD
         p4Vh4sTMRj226bnWQVQakhpZ9yJZx813XTO/FZX+zCB/LwrLSa9EeZZkhc+VuEd0ga+y
         AW39Ihyho8oPWp31Pmq3U/kanPOBzAqGpQ9I7is6YjHrGv/7lV0qPuhzJ90dDqjnqxIn
         uIqtnDo3avrHg6DpZmbApCII/g3qR90AdrSFbL3kgaDRDzvyIZ5Wq2vqdEAsUHnatPHW
         YQKw==
X-Gm-Message-State: AOAM532LZeG1c5bwz2khHm9CToqYrF+MGZtq8ofGp5a3JcVTEVh1j2K2
	c/5/N07vI9qfW9zGMDU3tngSUCjVV0I=
X-Google-Smtp-Source: 
 ABdhPJw1ySFjSoB63EOy8B9IYCgqaZRTnUqIfUlwGVOPKpCWud40hauzP+BnGFPbR2m7/G9Vj4cdaQ==
X-Received: by 2002:a63:1f55:0:b0:3fd:41c5:b53a with SMTP id
 q21-20020a631f55000000b003fd41c5b53amr34810538pgm.441.1654954963455;
        Sat, 11 Jun 2022 06:42:43 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:7af1:42f3:a8aa:9b00])
        by smtp.gmail.com with ESMTPSA id
 n22-20020a056a00213600b0051b9c02e4a3sm1600466pfj.178.2022.06.11.06.42.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jun 2022 06:42:43 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] oeqa: sssd.py fix tests
Date: Sat, 11 Jun 2022 06:42:40 -0700
Message-Id: <20220611134240.3466903-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220611134240.3466903-1-akuster808@gmail.com>
References: <20220611134240.3466903-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Jun 2022 13:42:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57322

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/sssd.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/oeqa/runtime/cases/sssd.py b/lib/oeqa/runtime/cases/sssd.py
index 4644836..1dfdb94 100644
--- a/lib/oeqa/runtime/cases/sssd.py
+++ b/lib/oeqa/runtime/cases/sssd.py
@@ -28,10 +28,10 @@ class SSSDTest(OERuntimeTestCase):
 
     @OETestDepends(['sssd.SSSDTest.test_sssd_sssctl_conf_perms_chk'])
     def test_sssd_sssctl_deamon(self):
-        status, output = self.target.run('sssctl domain-status')
+        status, output = self.target.run('sssctl domain-list')
         match = re.search('No domains configured, fatal error!', output)
         if match:
-            msg = ('sssctl domain-status failed, sssd.conf not setup correctly. '
+            msg = ('sssctl domain-list failed, sssd.conf not setup correctly. '
                'Status and output:%s and %s' % (status, output))
             self.assertEqual(status, 0, msg = msg)
 
-- 
2.25.1


