Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22BAFC433F5
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 05:55:09 +0000 (UTC)
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
 [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web10.3809.1642139708410966193
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Z+10VOqm;
 spf=pass (domain: gmail.com, ip: 209.85.215.179,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id t32so1914975pgm.7
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=H8MxJd0XiYMg+XOTEs2HDqKzqKtTC1aBNok4te0Xegk=;
        b=Z+10VOqmyomT4vmlDo7ADj9/uz/Tkq51PAhQxpHpHIZzyLiefXV2jeRosbaEQfGD2a
         eodDOmwqSUt7Tx1AfXlY2KOdgYtbi90jdPeVgu4/62SL5qsFtIm997nP29CTaN2Q29Hr
         mOgPo1AjKx8kMl8xYRHdm2R6bC5DkB17glHtTJIHbZZH0QugvqvqRTHtL0FkH9FpzsRu
         gbW4nQPpzPLxKxPIIK9i2zn0LHqH4nD98MBkr8RgRc0QWVLvRnXgpc/BCHPuhKTrL+0X
         TP7OzEYomFfAQTBBONQCqOlnJ2j39AVM3qUDSlxzTynDiVBRqzCr8/dSe/mbzBblKWJh
         mjuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=H8MxJd0XiYMg+XOTEs2HDqKzqKtTC1aBNok4te0Xegk=;
        b=tQetU6KZjmuZpWSLp4QQl/j9Q+z9dUb14ZIR2LnwGoUolzR0vUFPNZqtFqOCGHoh4a
         WGJNPl5DZseUcDLrgQDMNLA2Le70IaKw5JvvH8kphsZ6QQHUBan+Sp76mwX5Dxo2BrRT
         CSLokoAlh8LVte5ssQlZUnEEDEGqP3herriqRPRxBv2C+KyZmzDw1Lh7FCXELqMBiCjo
         Jc/xt/0MOm2epZks7EJhFyFAyb34VhgB3D9tAwFSb/zahLj6G48r7JuS7Qan2geqz0Vr
         GIRA+16l/h6l6pfb6tYEhcCwaDb6mV/ueL4XUzghL0YaySsG08Cyy44CEhco3uOFBykO
         bDrg==
X-Gm-Message-State: AOAM5306SiK1R/kIa6we019TYsjXgAn0/zpq2SkFSWhBcyrh+SC/9/jF
	3/Nt1/CBxqNNUFzE3Mz2UjwGrWnPuCtR2g==
X-Google-Smtp-Source: 
 ABdhPJzMlG/Y0j5D1P6VrwTbthCsIkfBoglAWGyjlgbdRwrc2OEmSuYQGqtt7V4jkcR3Eq3Dp+xX7w==
X-Received: by 2002:a63:8ac4:: with SMTP id
 y187mr5693021pgd.508.1642139707664;
        Thu, 13 Jan 2022 21:55:07 -0800 (PST)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:bf73:e59:4f56:2dd4])
        by smtp.gmail.com with ESMTPSA id
 d2sm4514714pfu.76.2022.01.13.21.55.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 21:55:07 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex][PATCH v2 01/18] dockersetup.py: fix EMAIL_USE_SSL/TLS
Date: Thu, 13 Jan 2022 21:54:24 -0800
Message-Id: 
 <df4a764d59b273a6ea66d8810eea5a6bbe930adc.1642138698.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642138698.git.tim.orling@konsulko.com>
References: <cover.1642138698.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 05:55:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55852

From: Tim Orling <timothy.t.orling@intel.com>

Need to concatenate str(boolean), not bool

Signed-off-by: Tim Orling <timothy.t.orling@intel.com>
---
 dockersetup.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/dockersetup.py b/dockersetup.py
index e45a846..04dec91 100755
--- a/dockersetup.py
+++ b/dockersetup.py
@@ -353,13 +353,13 @@ def edit_dockercompose(hostname, dbpassword, dbapassword, secretkey, rmqpassword
         elif '- "EMAIL_USE_SSL' in line:
             format = line[0:line.find('- "EMAIL_USE_SSL')].replace("#", "")
             if email_ssl:
-                newlines.append(format + '- "EMAIL_USE_SSL=' + email_ssl + '"\n')
+                newlines.append(format + '- "EMAIL_USE_SSL=' + str(email_ssl) + '"\n')
             else:
                 newlines.append(format + '#- "EMAIL_USE_SSL=<set this here if needed>"\n')
         elif '- "EMAIL_USE_TLS' in line:
             format = line[0:line.find('- "EMAIL_USE_TLS')].replace("#", "")
             if email_tls:
-                newlines.append(format + '- "EMAIL_USE_TLS=' + email_tls + '"\n')
+                newlines.append(format + '- "EMAIL_USE_TLS=' + str(email_tls) + '"\n')
             else:
                 newlines.append(format + '#- "EMAIL_USE_TLS=<set this here if needed>"\n')
         elif "ports:" in line:
-- 
2.30.2


