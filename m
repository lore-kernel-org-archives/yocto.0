Return-Path: <davidegarde2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1EC82C63706
	for <webhook@archiver.kernel.org>; Thu, 14 Apr 2022 16:03:57 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web11.11047.1649939865289456987
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Apr 2022 05:37:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ji4fjokx;
 spf=pass (domain: gmail.com, ip: 209.85.208.42,
 mailfrom: davidegarde2000@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id c6so6149131edn.8
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Apr 2022 05:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qqXiOZvO9YGtE9uU4JNazpaoOTBEnT1QXJcmzeepxrw=;
        b=Ji4fjokxCclVjcqNQmv0QQgSW9kzr4+hQN+Qc3K+YAxD4mAd9a+/67qQYhUPujxGdW
         icU/T8gTdo31ZbkVeGg+CJxpMJbqFSifkhlxvefwZoTPzcOiakW0YGmuMSgi67Sktitx
         1UazyZeyYTXS2AxZdDVro0jO0pRD7bDkepkUQ/4cc3s5LXln1EZpMwteRUmTi+Lfdk5l
         PY92m136gsTrZcdPgaMWMstAWUxWEFbaiIINIUYbucprjx4VaNC2G1CI3DCIOZRB8vQi
         kLqwagBpzK4JktyYzy1kuuxtwULHKKo2xeVOYxVxe5nfKQZRoNh7D3MNQ7FYwJlP69Ng
         LkUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qqXiOZvO9YGtE9uU4JNazpaoOTBEnT1QXJcmzeepxrw=;
        b=klqi6MbxqVLp8wRoMqsWBEMxa2EbJ6N8XbXXVAjb8H1xyLs5AYq7R7tw0ZXKDswdE1
         dl5nX4XlY6xYjzGO8HvEVeJhrd1z/dd0ZyWRDKsW4Kz7dJd6c7SQzAZJvpOnagfY6rEU
         bBiZyNz32jO5cmK8+tVcQxgLTkRoO28YyU3Yav7yFCY808dZ1GM1M5JaATquAmIWXS+a
         jXkmnzzFFwHCNsFOVoaeAIIT5Bb/zcFAvKwMa7ENUUf0kL8mrzIp6prgT5SbE42xeGaf
         eC1/eGSQZRHQBLZjYosnZn4ny53ubOJYrkOXAo6gkUpNhHTTPXY7EHLxFRv8DFhD0cW5
         pDcA==
X-Gm-Message-State: AOAM531wUqFdScKzgRe3h5ydJKp3fHojB5lJbCB5V9bZwIIWvJvbeCCA
	L992FnhJ1rcM5PfzELE+h9W4KIrqW1k=
X-Google-Smtp-Source: 
 ABdhPJwYyYPW5ebJgG2h9zxTd3/b+0u5E+/emWeF8UwcHsNDftn4ES6Ao2jsAZ5jmd3OqmRbpROpPA==
X-Received: by 2002:a05:6402:524c:b0:419:4d8c:e959 with SMTP id
 t12-20020a056402524c00b004194d8ce959mr2778998edd.398.1649939863318;
        Thu, 14 Apr 2022 05:37:43 -0700 (PDT)
Received: from tony3oo3-XPS-13-9370.home
 (host-87-5-19-5.retail.telecomitalia.it. [87.5.19.5])
        by smtp.gmail.com with ESMTPSA id
 f5-20020a17090624c500b006cee6661b6esm603843ejb.10.2022.04.14.05.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Apr 2022 05:37:42 -0700 (PDT)
From: Davide Gardenal <davidegarde2000@gmail.com>
X-Google-Original-From: Davide Gardenal <davide.gardenal@huawei.com>
To: yocto@lists.yoctoproject.org
Cc: Davide Gardenal <davide.gardenal@huawei.com>
Subject: [meta-raspberrypi][PATCH] bluez-firmware-rpidistro: add compatibility
 to oe-core/create-spdx
Date: Thu, 14 Apr 2022 14:36:56 +0200
Message-Id: <20220414123656.474960-1-davide.gardenal@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Apr 2022 16:03:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56769

Add do_create_spdx dependency to fix error when LICENCE is not found

Signed-off-by: Davide Gardenal <davide.gardenal@huawei.com>
---
 .../bluez-firmware-rpidistro/bluez-firmware-rpidistro_git.bb    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpidistro_git.bb b/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpidistro_git.bb
index 2e3d1cc..b26e80e 100644
--- a/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpidistro_git.bb
+++ b/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpidistro_git.bb
@@ -39,7 +39,7 @@ do_extract_lic() {
 }
 # Must be before both do_install and do_populate_lic.  Putting it before
 # their common ancestor works; other approaches do not.
-addtask extract_lic after do_unpack before do_patch
+addtask extract_lic after do_unpack before do_patch do_create_spdx
 
 do_compile() {
     :
-- 
2.32.0


