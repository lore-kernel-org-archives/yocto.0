Return-Path: <geissonator@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 190DCC77B7C
	for <webhook@archiver.kernel.org>; Wed, 24 May 2023 20:03:34 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web11.4211.1684958613835361265
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 May 2023 13:03:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=CeYVZ/iM;
 spf=pass (domain: gmail.com, ip: 209.85.160.180, mailfrom: geissonator@gmail.com)
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-3f6c6020cfbso936251cf.2
        for <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 13:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684958613; x=1687550613;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WF6PgPJmnEqyg8erLNoyfM9U3hHYiJNflj6ZkqmwJww=;
        b=CeYVZ/iMrPC/UkEFBEJqxJr3IudqH54KWO6SMBj9/DPOUcPnuna68PCDkL4/L+nWvW
         /C1v4fT5beS+ERQ4xuVS/lfRRVzkG8UME8q0Ynd3nyp0/1NrYIHXkkOVpof0ybDq+Qdl
         SszQpuk3jlUwgh/SYM0bnOI9iibXcRVSTvQGH3c2Q3TsfsSmhbqT0hb7HwDjlhqTmJsc
         +UBUf2FJAE6cbY0An8DNOnvj454CssFJC1CCMtWFDO/tWdVHh66mBOjC1Ky/nlAVAEf0
         8RLAX5pLArbTP7NG40HKpNKF/WyBtw4I4PeU58S8cxgoefV6K55cgIFOwgS1AvfgfrDD
         j7Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684958613; x=1687550613;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WF6PgPJmnEqyg8erLNoyfM9U3hHYiJNflj6ZkqmwJww=;
        b=NAszCwndjd6jPKlIH4xGWwxUVRRa6/TVSvCay4RghqrGrfjWAisQ96WJnl6N2mvhBa
         FK0fhTfaggPwfgu/53BjRq8ihKUaO51Lfz0EeewTRhEJwr3ronCUjFQLaJlmgImSVuF1
         76W8VW4KHwpsNZO7hnvnOuL7e23DBCx/FLlw0Tv2vdwsUcPKvf/YkzsBx5fmnvSiHaFL
         KTrweC60fgHapCXW9mTd2FVrMsNqdT5rhJ9oC+VpymZ2JSpUIfNMKxo2N1uv0ciBywKf
         yNtOW/rimnJjqmXdwJ/u2umqkUi1LXLa7j6jNwO9qO18ukNS2jdYkj5xmRLyT5lMCUs+
         Ub6A==
X-Gm-Message-State: AC+VfDzQtehGo7Obv7xBF/c4xPcfR04+RSGlDdvoh/P3wCoreCzjhwIa
	STdSYnArS8UbTTDpfEkM5JBJN42ZOtA=
X-Google-Smtp-Source: ACHHUZ6FpDjTBGiIG5j2V/P1eGkubwjFDZFL2y5iuxyzvr+COymB4fQb7Jh0+/or7LkNO6ANSYE1fA==
X-Received: by 2002:a05:622a:1d0:b0:3d2:7f3b:c691 with SMTP id t16-20020a05622a01d000b003d27f3bc691mr29421606qtw.47.1684958612767;
        Wed, 24 May 2023 13:03:32 -0700 (PDT)
Received: from localhost.localdomain (097-086-066-234.biz.spectrum.com. [97.86.66.234])
        by smtp.gmail.com with ESMTPSA id z1-20020ac87ca1000000b003f517e1fed2sm2842667qtv.15.2023.05.24.13.03.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 13:03:32 -0700 (PDT)
From: Andrew Geissler <geissonator@gmail.com>
X-Google-Original-From: Andrew Geissler <geissonator@yahoo.com>
To: yocto@lists.yoctoproject.org
Cc: Andrew Geissler <geissonator@yahoo.com>
Subject: [meta-security][PATCH] ibmswtpm2: update to 164-2020-192.1
Date: Wed, 24 May 2023 16:03:07 -0400
Message-Id: <20230524200307.37451-1-geissonator@yahoo.com>
X-Mailer: git-send-email 2.37.1 (Apple Git-137.1)
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 20:03:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60115

This version supports openssl 3.1

The maintainer changed his tag versions hence the different looking
version.

The maintainer also has stopped releasing tar files and asked we
directly grab from git.

Signed-off-by: Andrew Geissler <geissonator@yahoo.com>
---
 ...ibmswtpm2_1682.bb => ibmswtpm2_164-2020-192.1.bb} | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)
 rename meta-tpm/recipes-tpm2/ibmswtpm2/{ibmswtpm2_1682.bb => ibmswtpm2_164-2020-192.1.bb} (73%)

diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb
similarity index 73%
rename from meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb
rename to meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb
index 85fc7e0..fbeb872 100644
--- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb
@@ -11,18 +11,18 @@ Advantages of this approach: \
 HOMEPAGE = "http://ibmswtpm.sourceforge.net/ibmswtpm2.html"
 LICENSE = "BSD-2-Clause"
 SECTION = "securty/tpm"
-LIC_FILES_CHKSUM = "file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=c75e465155c42c14154bf6a2acb7347b"
 
 DEPENDS = "openssl"
 
-SRC_URI = "https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
+SRC_URI = "git://git.code.sf.net/p/ibmswtpm2/tpm2;protocol=https;branch=master \
            file://tune-makefile.patch \
-           "
-SRC_URI[sha256sum] = "3cb642f871a17b23d50b046e5f95f449c2287415fc1e7aeb4bdbb8920dbcb38f"
+           ""
+SRCREV = "5452af422edeff70fcae8ea99dd28a0922051d7b"
 
-UPSTREAM_CHECK_URI = "https://sourceforge.net/projects/ibmswtpm2/files/"
+UPSTREAM_CHECK_URI = "https://git.code.sf.net/p/ibmswtpm2/tpm2"
 
-S = "${WORKDIR}/src"
+S = "${WORKDIR}/git/src"
 
 CFLAGS += "-Wno-error=maybe-uninitialized -DALG_CAMELLIA=ALG_NO"
 
-- 
2.37.1 (Apple Git-137.1)


