Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21ADC77B7E
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 07:01:56 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web11.13596.1682665311744608271
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 00:01:52 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=LIctuagj;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-94f32588c13so1426107666b.2
        for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 00:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682665310; x=1685257310;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bRahTdoRnYASZVhbx849Ts2SjEWnQE6iAz1oUdlr2zA=;
        b=LIctuagjsEzg/+svQPMFDKLg8LPX2AVbCaNaMgISjgWMet5IE08aIybIsS29ux2NZQ
         /q1WeaoP/TQsrfC7OcaJ33i8FwlWlmNqJmQndDhWNrCK0DLSjEPKn6rBeA2DXrVepOfp
         G7DmIleEZwVD+JmCGTpkq1ZC7tcd17E2qjIXH1cXBzA03wqHyRgCkaleJaUNlfw+fJlJ
         0XMlJW2qoUWJgHtV/Ac9a0Dj3EJmjKSH4eZhzJ+ZnNHnBHwZKTnumJUK+2ucQe4QCaAq
         o+BGaXhCD1tdaeRUv/OG21hjbT5qxe8sIuix7Vyawy2kUxhDHKJUoYaQBeU79ZSAl+dR
         kXmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682665310; x=1685257310;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bRahTdoRnYASZVhbx849Ts2SjEWnQE6iAz1oUdlr2zA=;
        b=UnW7HLDm4ku17Fu3kcgMkJYH8Yxszw3z6ap6f/PlBXEXlh+goCbRnzhiWeioV5izYO
         JvgyqLSxaDjzwN07j1nQ2FHVtBulcHkaaMVCn3EYx1PocRVHx671nsvpJN/7y4BTmP9V
         E0RyIIw5cjWlf4S4bvC7qBQ8/PvqiGf4iwUFviO2HYkNsb8/iyDnz++oDVAug9ADqqRG
         5oLN8pMI7+rkafxnXGb4+octxHGYccpYqQpc2aFtUj1nPI1hMNPBkgBLbsvRkZ+MlHwj
         43QWmKcwEVn/KExeOuShTFFoe2lYjOGgHmVymj/MDpEee628t0IMMSrFo3Tfz0bYd0ih
         zlEQ==
X-Gm-Message-State: AC+VfDxkW+oBDyvJMQu6SOiHPqm5QcwwdJjfBdGnTdmjrPGmlZ9q8vlo
	16REMl6wLAGm+NDV4fD8Oyb1VoBtmQ8=
X-Google-Smtp-Source: ACHHUZ4xQqYkWnTnq1n7O1PM3Q3BvVNZ1kUpKtVYs4d6nmNmkrn7qBhp2GTqcsOz/IQ2hUagQIV4oA==
X-Received: by 2002:a17:907:94c2:b0:94e:dd30:54b5 with SMTP id dn2-20020a17090794c200b0094edd3054b5mr4923771ejc.6.1682665310055;
        Fri, 28 Apr 2023 00:01:50 -0700 (PDT)
Received: from fedora.fritz.box ([2a02:2454:29b:c000:59ca:78e1:31c2:e088])
        by smtp.gmail.com with ESMTPSA id vp3-20020a170907a48300b0094f14286f86sm10599089ejc.48.2023.04.28.00.01.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Apr 2023 00:01:49 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] auh: publish output on https://autobuilder.yocto.io/pub/auh/
Date: Fri, 28 Apr 2023 09:01:39 +0200
Message-Id: <20230428070139.450100-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 07:01:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59790

AUH itself already has an option to include the link into
its email reports; the option just needs to be enabled.

[YOCTO #15103]

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json                            | 2 +-
 scripts/auh-config/upgrade-helper.conf | 2 +-
 scripts/run-auh                        | 6 +++++-
 3 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/config.json b/config.json
index 9da4d85..a2ba46e 100644
--- a/config.json
+++ b/config.json
@@ -1186,7 +1186,7 @@
         },
         "auh" : {
             "EXTRAPLAINCMDS" : [
-                "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR}"
+                "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
             ]
         },
         "a-quick" : {
diff --git a/scripts/auh-config/upgrade-helper.conf b/scripts/auh-config/upgrade-helper.conf
index 3a0aa6c..e0fed11 100644
--- a/scripts/auh-config/upgrade-helper.conf
+++ b/scripts/auh-config/upgrade-helper.conf
@@ -29,7 +29,7 @@ buildhistory=yes
 #testimage_name=core-image-minimal
 
 #workdir=/home/auh/work/
-#publish_work_url=https://logs.yoctoproject.org/auh/
+publish_work_url=https://autobuilder.yocto.io/pub/auh
 
 commit_revert_policy=all
 
diff --git a/scripts/run-auh b/scripts/run-auh
index 527ff96..0419dd1 100755
--- a/scripts/run-auh
+++ b/scripts/run-auh
@@ -7,7 +7,7 @@
 # Called with $1 - the directory where the setup was created
 
 if [ -z $1 ]; then
-  echo "Use: $0 auh_setup_dir"
+  echo "Use: $0 auh_setup_dir [publish_dir]"
   exit 1
 fi
 
@@ -27,4 +27,8 @@ git checkout -B tmp-auh-upgrades origin/master
 source $poky_dir/oe-init-build-env $build_dir
 $auh_dir/upgrade-helper.py -e all
 
+if [ -n $2 ]; then
+  cp -rf $build_dir/upgrade-helper/* $2
+fi
+
 popd
-- 
2.40.0


