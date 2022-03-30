Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4DE2C433FE
	for <webhook@archiver.kernel.org>; Wed, 30 Mar 2022 16:33:09 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
 [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web12.51.1648657989387806334
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 09:33:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=ePWreVY8;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.170,
 mailfrom: steve@sakoman.com)
Received: by mail-pf1-f170.google.com with SMTP id u22so19207895pfg.6
        for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 09:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=2agRGLVWG1e1fL59l6a+dwQo/hDvSUac+gCvABudcfo=;
        b=ePWreVY8u4GyE+BSjKBRDQ7Z3tKiEa/xFdjy5kn6AUF8AS4M74geH5Nn8BXxEk6tCX
         DcW+6JKWZRziw8UrPOjCR+oFcxYII2yPn+GXuA6sDG7yxvkP7i+/I4EWgBxkRHvrEs6r
         RZC1I3200bMkdwe9msV4gk8oKFOe9RvueE4JF0c0I9wk8QlXHa7zIShDMjNR+o35ZRzV
         XF97o8K+frQE/XI+msVrTVtHxhXSOOH18ev0ot2vEk77otMnS6FN4laMQzB2Ht4uBH/e
         cVo7ohrQAv4O9yZovZznW98Gtbd1im5zVB6cv9X6SCPqpHUJ2qIHmJXZEkeCKKrtd8eU
         mGgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2agRGLVWG1e1fL59l6a+dwQo/hDvSUac+gCvABudcfo=;
        b=hzDhKyyG/ytNJPdoFs+DdYztIB/9jdEKEcgPPq26PNKVab66/x2yPzLYqYvHumQXZW
         3bSNtpW61UdZx9V7zUGEoJFr/ugT2sk//GUg+DLNgUeQaeQGKPut4ELIFGyzvTyCmB6V
         kxuOpmSq8i5H/Awhbru5vFtrMlU7pMd/wt2ZMwQJ0tfJeZFyk5Mna+stO8nenCkntwnW
         Na/lgZiTiUNPBAzM4KfSsYU6Imyr3I+0LSJVJoh9NCRtAoCQ6pKKorlzrh8iGofR5IgO
         0WSff3UXVvLro1ryWCtMk2rmDODU/z7/xqft3NTrU6AX+rjp9Gt5FzDpjBIuzhnbQGhz
         S3Yw==
X-Gm-Message-State: AOAM5325O1BffjLsY8yzJwhqEOLlMuic6ggVTcMk9ZpA5OuwdPJghFWq
	CLbWE4yOFWFd40W6fuBre/ArpljqMsnk/GesF4M=
X-Google-Smtp-Source: 
 ABdhPJzhWDaTh92dDQBCZA27BYAFwUk8mdFql6VBou9VlL+HrOQq214M8SRobRmzFRLkXw21Ed6Svg==
X-Received: by 2002:a63:6849:0:b0:398:a546:1c46 with SMTP id
 d70-20020a636849000000b00398a5461c46mr3685612pgc.100.1648657988454;
        Wed, 30 Mar 2022 09:33:08 -0700 (PDT)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net.
 [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id
 oc10-20020a17090b1c0a00b001c7510ed0c8sm7382484pjb.49.2022.03.30.09.33.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Mar 2022 09:33:07 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 2/2] config.json: Update to 3.4
 buildtools tarball
Date: Wed, 30 Mar 2022 06:32:53 -1000
Message-Id: 
 <9f825899fd19bed502a0d96b15eddd599be5469b.1648657669.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1648657669.git.steve@sakoman.com>
References: <cover.1648657669.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Mar 2022 16:33:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56605

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Fixes diffoscope-native failing in diffoscope tests on workers using buildtools:

  File "/home/pokybuild/yocto-worker/reproducible-ubuntu/build/build-st/tmp/work/x86_64-linux/diffoscope-native/190-r0/recipe-sysroot-native/usr/lib/python3.10/ctypes/__init__.py", line 392, in __getitem__
    func = self._FuncPtr((name_or_ordinal, self))
AttributeError: nativepython3: undefined symbol: archive_version_number

Missing or incomplete libarchive module. Try installing your system's 'libarchive' package.

(there is a glibc symbol mismatch hidden in a module compile for libarchive)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit f5e89b7431fcde4c54617eca2fbeae43557811d8)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index d63963d..aa7c8be 100644
--- a/config.json
+++ b/config.json
@@ -10,7 +10,7 @@
 
     "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20210214-8/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.2+snapshot-7d38cc8e749aedb8435ee71847e04b353cca541d.sh",
     "BUILDTOOLS_URL_TEMPLOCAL2" : "https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
-    "BUILDTOOLS_URL" : "https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.4_M2/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.3%2Bsnapshot-1ad79313a5c3e6a453fbeb44caac5c5bbad46d3c.sh",
+    "BUILDTOOLS_URL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-3.4/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.4.sh",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
-- 
2.25.1


