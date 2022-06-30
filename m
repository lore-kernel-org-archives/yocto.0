Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B80AC43334
	for <webhook@archiver.kernel.org>; Thu, 30 Jun 2022 16:34:52 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
 [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web10.27318.1656606889604402271
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jun 2022 09:34:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=YrKhSOmx;
 spf=pass (domain: mvista.com, ip: 209.85.215.170,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-pg1-f170.google.com with SMTP id s27so1093351pga.13
        for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jun 2022 09:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xgcup5zzIxt9hHBuz+i6eTo5xtNRWpq0t6KDEyNJpDM=;
        b=YrKhSOmx2OhCg3NsHOkcd7IyrZ9SIWtGAs1uiuhpPOmOP/TjMpSylXKMAB5o9uvfHe
         phM10hH8Ar5mUnP31YzLeldNOhlR76hZ6bpX4AtB4IIx0yKssPhRfw2Xe+rhqGYJbFkh
         PtCqs1cANsleaezG09SYFLWmiPs6hek3ij8z4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xgcup5zzIxt9hHBuz+i6eTo5xtNRWpq0t6KDEyNJpDM=;
        b=Yhq2MBqbGforJddcihLXqPcYmAxVGg9oPQijKXF5klEjswdxSM2ybeGBwnWDTRjMhJ
         bIs1VvqWKAnonD7lLbfZZgfUYHXg0qwOP6gesoBNVdD7O8YrbXIfhaevv58Hf5C/6j1Z
         m9b9lAL7VmvC/fOfw6lHBn2yS8VEJEW9HVNdM8EvOGzRZIobOTE+mwFWvDwJQD4PhsLE
         4q0YjvODp9pRdbtSWkKKraCZF4Bw39sd59qmuHi95HRoR/vylbMupPV6Dv6cnmi4NI+T
         iXEIh0lfCIkFi9cVY5e6cYfYY10MhxwF+TkmtQ45tzWaAkvdg156k/x7pLs3gHGNogsM
         LsFw==
X-Gm-Message-State: AJIora9cQgf2Nass2cj3CJyM3MREfm6A2td/39wMCB7oRRLCb4ummeT2
	J4Zd+Ly4vdhC8ivmdRAU5ZiZFn/KQ+wozQ==
X-Google-Smtp-Source: 
 AGRyM1tzDNKo/lEANySbsOewfkSLLBel8LeGBIWljXcv+Gx+WR2eiZoi/GaBusYToaNKxTr2DkQhew==
X-Received: by 2002:a05:6a00:114e:b0:51b:8ff5:e05a with SMTP id
 b14-20020a056a00114e00b0051b8ff5e05amr15581306pfm.37.1656606888885;
        Thu, 30 Jun 2022 09:34:48 -0700 (PDT)
Received: from brown (99-14-97-149.lightspeed.frokca.sbcglobal.net.
 [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id
 16-20020a17090a0e9000b001e292e30129sm4773672pjx.22.2022.06.30.09.34.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 09:34:48 -0700 (PDT)
Received: by brown (sSMTP sendmail emulation); Thu, 30 Jun 2022 09:34:46 -0700
From: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-security][kirkstone][PATCH] python3-privacyidea: add correct
 path to lib/privacyidea
Date: Thu, 30 Jun 2022 09:34:45 -0700
Message-Id: <20220630163445.2788107-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Jun 2022 16:34:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57432

Nothing in getting installed in ${datadir}/lib, it is all going to
${prefix}/lib. setuptools pulls in ${libdir}/* so for the base lib
case of ${prefix}/lib the build works. If libdir is something else
lib64 for example, its still ending up in ${prefix}/lib and it fails
to build.

Set value to correct path as it is being installed.

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
(cherry picked from commit 947a562c769bc7f5443ec68622d9923b087ddd52)
---
 recipes-security/mfa/python3-privacyidea_3.6.2.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/mfa/python3-privacyidea_3.6.2.bb b/recipes-security/mfa/python3-privacyidea_3.6.2.bb
index 40f6d15..8b6af5e 100644
--- a/recipes-security/mfa/python3-privacyidea_3.6.2.bb
+++ b/recipes-security/mfa/python3-privacyidea_3.6.2.bb
@@ -19,7 +19,7 @@ GROUPADD_PARAM:${PN} = "--system privacyidea"
 USERADD_PARAM:${PN} = "--system -g privacyidea -o -r -d /opt/${BPN}  \
     --shell /bin/false privacyidea"
 
-FILES:${PN} += " ${prefix}/etc/privacyidea/* ${datadir}/lib/privacyidea/*"
+FILES:${PN} += " ${prefix}/etc/privacyidea/* ${prefix}/lib/privacyidea/*"
 
 RDEPENDS:${PN} += " bash perl freeradius-mysql freeradius-utils"
 
-- 
2.35.3


