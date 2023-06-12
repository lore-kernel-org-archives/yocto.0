Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DFFC7EE2E
	for <webhook@archiver.kernel.org>; Mon, 12 Jun 2023 10:44:12 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web11.55265.1686566650611516649
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jun 2023 03:44:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=VH4+w41s;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-9745c5fed21so620184466b.3
        for <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 03:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686566649; x=1689158649;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BFi0aJ6JUhTZf4cEhfxGH6Qo0XYdJPUSyVYltGAqrao=;
        b=VH4+w41sUxTZAUR3M0wMA3+HwwjGGQBao9tiFAuAKGWAtV0vZ/OilsR3mQKe6LAIzt
         HBg42vtTjxBP/6ZsGmdwzSIxCL4s9jaJSjag4YG9mNp830CnnhRPY3vQbz8pj34yo7OF
         x1be5OeR8RKN5AJfVMWaCYwA/j6roXBI90Qi+26qJXpe5lS//CIhQtPrmwNpj4XMd5pY
         f9nt+G7O3GbafI9qJ3vRM6okUIuseQPLQ9g9LtQ9mtMttKD8ToEw8yt0JSqcpgA9tUGI
         JiJIco8vJzSvCrUXGZG2PZBIBCv219Kz0yCeApiC33S5vL5I6EdTZOog/ocj6fXRBmFp
         pxEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686566649; x=1689158649;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BFi0aJ6JUhTZf4cEhfxGH6Qo0XYdJPUSyVYltGAqrao=;
        b=ZPvwrc5VF4Wp9uerqHF9kVWiS41QWJndsAFRdE0CbZeFe34ZvS/Tboh6VF6+1zv/mm
         M7qWgbFUaTU0lprjaL+k+nsRbo/vrGHxNbalNq+Ce0dl8yGIMPyD417po8CwbYIU9jgM
         FiEnrf3mE1j0KfMGbI/Cqyw5CSbLl+XZziduSJcfnnXYwRt1kSxSfptGH88+jSq3pm12
         yXs+GkrhZd+LaHsoJCMcXOJMuCiVrtOfzqpb1r7wqtrsYSWFUhBsMy/i8WnJUXOwSHSq
         5684lWxeBNdKXtsuGxxga581jfOJYTJOSEHVtvxwXuXfFTF31XaeKwCJIFoZhSbcaBnr
         pB8Q==
X-Gm-Message-State: AC+VfDzJDTGgRgB/04JAGtg3F8XlH5eJlXgr88EtpMtyn/KtPIEjulqi
	D41v9HLyLIHAKlW7P7Aoj4PDX8hs2lg=
X-Google-Smtp-Source: ACHHUZ7qWkTuVFaoRyhLq81jZlP4qIeCoZQ+5sPjIET3jEDuu0wsbsPDZY//u4NfkzZupPz/MI/kgQ==
X-Received: by 2002:a17:906:fd88:b0:973:edba:df30 with SMTP id xa8-20020a170906fd8800b00973edbadf30mr9977855ejb.61.1686566648742;
        Mon, 12 Jun 2023 03:44:08 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id a12-20020a17090680cc00b0096f7105b3a6sm5005166ejx.189.2023.06.12.03.44.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 03:44:08 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [auh][PATCH] upgrade-helper.py: add patches directly to AUH emails, in addition to attaching them as files
Date: Mon, 12 Jun 2023 12:43:58 +0200
Message-Id: <20230612104358.669755-1-alex@linutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 10:44:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60252

This utilizes the 'scissors' feature as described here

https://git-scm.com/docs/git-mailinfo#Documentation/git-mailinfo.txt---scissors

and allows easy handling of AUH emails with tools like b4, patchwork or
even 'git am' directly, eliminating the need to get the attachment first.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 upgrade-helper.py | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/upgrade-helper.py b/upgrade-helper.py
index 4393589..4f0b6b7 100755
--- a/upgrade-helper.py
+++ b/upgrade-helper.py
@@ -358,6 +358,10 @@ class Updater(object):
             attachment_fullpath = os.path.join(pkg_ctx['workdir'], attachment)
             if os.path.isfile(attachment_fullpath):
                 attachments.append(attachment_fullpath)
+                # Also add the patch inline using the 'scissors':
+                # https://git-scm.com/docs/git-mailinfo#Documentation/git-mailinfo.txt---scissors
+                if attachment_fullpath.endswith('.patch'):
+                    msg_body += "\n\n-- >8 --\n%s" % (open(attachment_fullpath).read())
 
         if self.opts['send_email']:
             self.email_handler.send_email(to_addr, subject, msg_body, attachments, cc_addr=cc_addr)
-- 
2.30.2


