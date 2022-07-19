Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95477CCA47F
	for <webhook@archiver.kernel.org>; Tue, 19 Jul 2022 10:51:08 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web09.38979.1658227858183202934
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jul 2022 03:50:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=AycBi8k2;
 spf=pass (domain: gmail.com, ip: 209.85.208.42,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id w12so18983207edd.13
        for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jul 2022 03:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TZtlGA0TeRWWfBSWU4kLmrViDBhTY6UUmH1aL3rb6Uc=;
        b=AycBi8k2mikNqlMrhh1Vx+uc/jYOBSFKPsCgS6oGaeMhf5zgma6/ipWmOWUOj8II0f
         KP9zmFQNq0rXRAkKYuBQ11ZczAVoFpxg+8LM3mpata8ZakRL+cNTrqYVMB6engmu7IEi
         ZdBeTgK5JdCoS3jS/xYrqGNbyx9A0GedFSsxNFveMoiYjGSPBXJ4KLnV28WQzunkK9jb
         Ju12OxtB8Dx4ym9YgU8Lu8BNVky3+G0U5Og33PARvgqN4+vgF+ZWQ6H/herdwhsrGPpo
         vgShCuq1YFcSOMUCzafD34S1LoU3VUTR+5oT30/O0HRDsNV3BmtbRXLjZB5CCvgRbdts
         IJ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TZtlGA0TeRWWfBSWU4kLmrViDBhTY6UUmH1aL3rb6Uc=;
        b=cmptSt7TQFLeIdEnMGofc+vkOVUaWSgDslIffosXYhU7gCHTW3OeRyr8OKx6X7wmyM
         +fhK6VWZlGHzO8h9XIGn26b4Itohd2W53mFEXD4nGRXw9fI4yPYd0OjAAi3t0OdYIdcD
         zOhWB5/IbYdLKU1LIUi8d4N6rWOXqRQ3Q71BJuo1kfQJNSLc9S495HPs32kSzbgo/rNN
         c+8FjhWRl8ZKaptXWfx0Cj7Zzyf8vcDRPN/d+9VkSR1g2qk520qQZCUJttYeqSPAqRXH
         wa9aKvOmzozSMbccX0Z+XQZqWqMgOf9UKWKvyQ1SdBinJKsrZaK2bfT4G7MfFZBQFYAW
         tntw==
X-Gm-Message-State: AJIora9XSEjIxyHeH+9hT4Qm1BjD120CoKtRVOxtEvCUUedbBo9jfQc1
	FrovV9Vv5QWmmCudQ9NBEqqWOqVOAU0=
X-Google-Smtp-Source: 
 AGRyM1ufszzmrWcpwmJWVqiEObs77ZkBsNoXhYFEryu+gFTCy96PTRSDvYn0m2SCH4mkNv+n9W02Uw==
X-Received: by 2002:a05:6402:3681:b0:43a:7c29:466a with SMTP id
 ej1-20020a056402368100b0043a7c29466amr42564836edb.367.1658227856531;
        Tue, 19 Jul 2022 03:50:56 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de.
 [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id
 l12-20020a50d6cc000000b0043b240ce57bsm10424647edj.82.2022.07.19.03.50.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jul 2022 03:50:56 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [AUH][PATCH 1/2] emailhandler: correctly send binary attachments
Date: Tue, 19 Jul 2022 12:50:51 +0200
Message-Id: <20220719105052.638381-1-alex@linutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Jul 2022 10:51:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57569

MIMEBase should not be used directly and results in
sending raw binary data without encoding it with base64.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 modules/utils/emailhandler.py | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/modules/utils/emailhandler.py b/modules/utils/emailhandler.py
index 8c8b85b..1ed4bfc 100644
--- a/modules/utils/emailhandler.py
+++ b/modules/utils/emailhandler.py
@@ -30,7 +30,7 @@ from logging import info as I
 from smtplib import SMTP
 import mimetypes
 from email.mime.text import MIMEText
-from email.mime.base import MIMEBase
+from email.mime.application import MIMEApplication
 from email.mime.multipart import MIMEMultipart
 from email.generator import Generator
 import shutil
@@ -89,8 +89,7 @@ class Email(object):
             if maintype == "text":
                 attachment = MIMEText(open(file).read(), _subtype=subtype)
             else:
-                attachment = MIMEBase(maintype, _subtype=subtype)
-                attachment.set_payload(open(file, 'rb').read())
+                attachment = MIMEApplication(open(file, 'rb').read(), _subtype=subtype)
 
             attachment.add_header('Content-Disposition', 'attachment; filename="%s"'
                                   % os.path.basename(file))
@@ -108,4 +107,3 @@ class Email(object):
             smtp.close()
         except Exception as e:
             E("Could not send email: %s" % str(e))
-
-- 
2.30.2


