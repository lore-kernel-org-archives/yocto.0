Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80DD1C636D3
	for <webhook@archiver.kernel.org>; Mon,  6 Feb 2023 20:11:56 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web11.64960.1675714315573542470
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Feb 2023 12:11:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=DECcXjD2;
 spf=pass (domain: gmail.com, ip: 209.85.160.175, mailfrom: akuster808@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id 5so4364835qtp.9
        for <yocto@lists.yoctoproject.org>; Mon, 06 Feb 2023 12:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AOoYxUaieKrKt05CcDCPVvEJnCgQ5Xj52eEfZJX+DMY=;
        b=DECcXjD2ZFfyCMD4f2kvXMQ6pGkaMXmV3ISogcY/xK/AA9UBzIAZIbfdvffMs+O/Qp
         KifM2tBa+IlrDaRLNx3wvJxclqZKEwhkvkehMW+ahot1r7Ynid3U0j8vkadeHk/ErI5Q
         EJNKi0crvA3ZhyjgIkhdehyRjRy2KauTvQnytC6dE5bIsY+9GScb27sctwXLKXmXH6uI
         Cu3eIcOJvX9vxCuVRvhvzPwloM2uRTeCgU4UV59kM1ohOlwNOv0YFIAnVLCBzsziXLG5
         y2j4tr9Hx704Q7k9vklRcy/UZ+S7y7lK1wvWVLdWdosohkm2uc69vW/A80nIiAJTf2md
         4dqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AOoYxUaieKrKt05CcDCPVvEJnCgQ5Xj52eEfZJX+DMY=;
        b=Vzv9UHnAlmNA1IlPEZqjirAwNpMf5VnU+rYkq82clEB0mr8UhqL0imZ/cAg4s64Rtg
         GhSKPYfP9DWPw6HErkk2vnsUTjEfpmWGQ+/NYNTn+yiVqPjeaiRC5Dv6e+WnkAm8eHno
         k9gvlObJA5DkQkYegwm8SIg7PT0qGVJQ70hRjGt9W57dDxvT9ld6qZNz+0RZVTyzCI0+
         jpAJBasM+FIUzexakIhynoAnwXr2oNhI+YbyJp4aW9MInKG2v/XjGjZvadAjLqk5Ms+V
         nEep1cmfAlevDR9eCfgvMjuWPDBlP1prmMPsHq+/7F7LwKljl5X12uvZvv1h6qjxFsww
         yAZw==
X-Gm-Message-State: AO0yUKXaF2Y1dfEQO5HremiSV9FMkzJRGNr7Zlay4QIpLjsZ6DuKZ/Yr
	sDXqPjpu355Sro8nB8WLcZmqejRZ4jc=
X-Google-Smtp-Source: AK7set/R8s27KJ8t7m6QQ5EyE0oVgbhIpDkzekOzVlVSBHpOGXvkBqfOjFykUIksuXlfA8WKAzT/zg==
X-Received: by 2002:ac8:7e8e:0:b0:3af:55cb:8761 with SMTP id w14-20020ac87e8e000000b003af55cb8761mr1035712qtj.47.1675714314571;
        Mon, 06 Feb 2023 12:11:54 -0800 (PST)
Received: from mvwork.mvista.com (99-157-111-72.lightspeed.tukrga.sbcglobal.net. [99.157.111.72])
        by smtp.gmail.com with ESMTPSA id l16-20020ac84cd0000000b003b9bf862c04sm7815660qtv.55.2023.02.06.12.11.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 12:11:54 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][dunfell][PATCH 2/2] tpm-tools: Fix pod2man race
Date: Mon,  6 Feb 2023 15:09:50 -0500
Message-Id: <20230206200950.1172058-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230206200950.1172058-1-akuster808@gmail.com>
References: <20230206200950.1172058-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Feb 2023 20:11:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59183

On some systems, pod2man is not available so add native depends.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 46622a3b26d8f37d3fd4e82d0452bbd1275d5b0c)
[Fixup for Dunfell context]
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.1.bb b/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.1.bb
index 658283f..158fd7f 100644
--- a/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.1.bb
+++ b/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.1.bb
@@ -9,7 +9,7 @@ SECTION = "tpm"
 LICENSE = "CPL-1.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=059e8cd6165cb4c31e351f2b69388fd9"
 
-DEPENDS = "libtspi openssl perl"
+DEPENDS = "libtspi openssl perl-native"
 DEPENDS_class-native = "trousers-native"
 
 SRCREV = "bdf9f1bc8f63cd6fc370c2deb58d03ac55079e84"
-- 
2.31.1


