Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99818CE7A8A
	for <webhook@archiver.kernel.org>; Sun, 24 Sep 2023 21:23:55 +0000 (UTC)
Received: from mta-64-227.siemens.flowmailer.net (mta-64-227.siemens.flowmailer.net [185.136.64.227])
 by mx.groups.io with SMTP id smtpd.web10.48218.1695590631458422522
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Sep 2023 14:23:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=peter.marko@siemens.com header.s=fm1 header.b=LuOu5lE1;
 spf=pass (domain: rts-flowmailer.siemens.com, ip: 185.136.64.227, mailfrom: fm-256628-20230924212347b1c6c19c15f08d71ca-adlfoe@rts-flowmailer.siemens.com)
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id 20230924212347b1c6c19c15f08d71ca
        for <yocto@lists.yoctoproject.org>;
        Sun, 24 Sep 2023 23:23:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=peter.marko@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=PDHawHWioQpIn+i3TIplVaDldlPGkGRPlliEKq0g4Ys=;
 b=LuOu5lE1E9OtJ64OpravPhMKzJMDDPhLRVtxTIC2c0WTThE954ZyiM5tlTQFYSwcpiJJNN
 q6YYDevUjJ0v775s84iexpGSA4kcSfZz0z1LsQcuUSswQEGaTmKKMmkl/AEcbPig/TGATxGo
 rXdKx/KKnmhQWoV7kEjp/YjPVaoX0=;
From: Peter Marko <peter.marko@siemens.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Marko <peter.marko@siemens.com>
Subject: [yocto][meta-lts-mixins][kirkstone/rust-1.68] gitignore: add pyc files
Date: Sun, 24 Sep 2023 23:23:01 +0200
Message-Id: <20230924212301.43891-1-peter.marko@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-256628:519-21489:flowmailer
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 24 Sep 2023 21:23:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61094

From: Peter Marko <peter.marko@siemens.com>

Using this mixin layer causes dirty repository after parsing
due to lib/mixin/rust.py compilation.

Signed-off-by: Peter Marko <peter.marko@siemens.com>
---
 .gitignore | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 .gitignore

diff --git a/.gitignore b/.gitignore
new file mode 100644
index 0000000..0d20b64
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1 @@
+*.pyc
-- 
2.30.2


