Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 479F7C43334
	for <webhook@archiver.kernel.org>; Thu, 30 Jun 2022 16:31:12 +0000 (UTC)
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com
 [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web08.27323.1656606664319904698
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jun 2022 09:31:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=BfKIvQkj;
 spf=pass (domain: mvista.com, ip: 209.85.210.181,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-pf1-f181.google.com with SMTP id a15so18590907pfv.13
        for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jun 2022 09:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NwLEk4dc4AYQkAZkYwzvBMcO2HhuWvh9hj8lPDmvzg4=;
        b=BfKIvQkjzERR8Ws4kT+IKAcof0dcoQrIza6Q73S72wzrRYLlgQ98K+Ukq91HXDuLSy
         b/Q298Dsy9wpPs1FEmuKFD3w3TuejTs44NBxBwJ23l9juzOunXvPmPg65h+HCSADLKAx
         nssnV6FsfAWZcMykB23Vv/x5lDzg6+VTjocBk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NwLEk4dc4AYQkAZkYwzvBMcO2HhuWvh9hj8lPDmvzg4=;
        b=u4Vswn2YVeePPnVsOc8W0Qhki6NK9ZfSgyeqm/qm7sZM6kMRDHI17Dc7L79ktNOsOy
         1UVuamcEyQIWvU04kMCDWS+prx+2f9UTUHRBGiW7w1YpLqou/i2C58Px/49TvgdB/sQQ
         kVgphoMjzRzZc7/1PFfOtLShTttUwej3nqAcmyhSzqOc4rMPnjgOWnpEwztL5nBKeaR3
         vV1dIH00C4xtvAnV+YeoxMFyo1EAMa0pQfskwYaq1Co+po7Ad0ooe2GFKVzjlxI8V6MR
         41Sii4MsrpLFeyd+49dFrLhfK9d9xlS0JVF6wEkNDJ3cAf+YHcGLsM02mpnR1iliGizY
         VCqg==
X-Gm-Message-State: AJIora89D33W2JgRkDeaMfuUmPTTjejyQlSpZNFMxss8KkAvT3uuvXJ7
	++ivqndumz1djgJgqh/dgG1XYHfapl361Q==
X-Google-Smtp-Source: 
 AGRyM1uXQfOLLjnl9pIpt9+ec0hpOffEdIOd8QBrdvpNyEPqPBpQa7+nJy+p5g0iFlUUXyBaSe6jcA==
X-Received: by 2002:a63:2701:0:b0:40d:511e:51df with SMTP id
 n1-20020a632701000000b0040d511e51dfmr8415948pgn.226.1656606663437;
        Thu, 30 Jun 2022 09:31:03 -0700 (PDT)
Received: from brown (99-14-97-149.lightspeed.frokca.sbcglobal.net.
 [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id
 bo7-20020a056a000e8700b0052515a79b78sm13667153pfb.189.2022.06.30.09.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 09:31:03 -0700 (PDT)
Received: by brown (sSMTP sendmail emulation); Thu, 30 Jun 2022 09:31:01 -0700
From: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-security][master|kirkstone][PATCH] clamav: make install owner
 match the added user name
Date: Thu, 30 Jun 2022 09:30:54 -0700
Message-Id: <20220630163054.2787808-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Jun 2022 16:31:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57430

USERADD_PARAM:${PN}-freshclam = "--system -g ${CLAMAV_GID} --home-dir  \
    ${localstatedir}/lib/${BPN} \
        --no-create-home  --shell /sbin/nologin ${PN}"

The username added to the passwd file is ${PN}. When ${PN} is
multilibized, it no longer matches CLAMAV_UID. Make the two match.

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 recipes-scanners/clamav/clamav_0.104.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-scanners/clamav/clamav_0.104.0.bb b/recipes-scanners/clamav/clamav_0.104.0.bb
index 3bcb5eb..18e8329 100644
--- a/recipes-scanners/clamav/clamav_0.104.0.bb
+++ b/recipes-scanners/clamav/clamav_0.104.0.bb
@@ -56,7 +56,7 @@ export OECMAKE_C_FLAGS += " -I${STAGING_INCDIR} -L ${RECIPE_SYSROOT}${nonarch_li
 
 do_install:append () {
     install -d ${D}/${sysconfdir}
-    install -d -o ${CLAMAV_UID} -g ${CLAMAV_GID} ${D}/${localstatedir}/lib/clamav
+    install -d -o ${PN} -g ${CLAMAV_GID} ${D}/${localstatedir}/lib/clamav
     install -d ${D}${sysconfdir}/clamav ${D}${sysconfdir}/default/volatiles
 
     install -m 644 ${WORKDIR}/clamd.conf ${D}/${prefix}/${sysconfdir}
-- 
2.35.3


