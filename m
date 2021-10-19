Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED10FC433F5
	for <webhook@archiver.kernel.org>; Tue, 19 Oct 2021 20:10:00 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
 [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web12.15500.1634674200178218598
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Oct 2021 13:10:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=Ed7n8Vqa;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.172,
 mailfrom: steve@sakoman.com)
Received: by mail-pg1-f172.google.com with SMTP id c4so13355555pgv.11
        for <yocto@lists.yoctoproject.org>;
 Tue, 19 Oct 2021 13:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=MsftV3vgeyOuKlXIEkfjQ7QDHpIxe0qCrXCwDNUef5k=;
        b=Ed7n8VqaVCkutLHJT0UC39MMYpyOwBi8AXDmJ+LKcUMrSFPRbJGXVmMPDyEP/oTeEi
         /c8loR7sJx3rae1K1Yu40c7aCc0uIkIOYznoluProCRhQVJjiZ5InUwUxrs+XHr/5RkS
         l2J4gkCJTPAFNDiXucLV3krgClTZiXqtxk+w8bttRewaq7qHGze6qrQRA328z41prBF5
         NNTx0ZPIztGxG5GOybYA/kMEspvvw7YGshpK/UszGk9qUAZ6yQuaPjPiRMklw9nof8Ft
         ++pr2gf6VqqrvQjkc5k7o2o4a+YHi7GY4Mxo65nhQv6v0DJMhkOhx0rZ6G3RFoFR8YCs
         uLkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MsftV3vgeyOuKlXIEkfjQ7QDHpIxe0qCrXCwDNUef5k=;
        b=2ajD/NYH1KoFi1Mf9vQk3mhE3/WFPrNi+DwDJ0SF8ga5l1lff0mD8fRxMMuLf/2WyR
         zOO2LSYPu/PDrGyJViy0Z7Sp3wk5G4Yv0HjiPzAEiYrp3u9unAMIC5xWlcw3sClOD0MR
         0Wf6kqP+LHx28FErD5YeWJgKJuu6klklo9CpOjuB7GYq2/nDpyf4d1tgEr2AstJV8hpr
         sjw6ImEyUI7D3B4JxtFuJVZH+dxksW2ffA6xS0eXG86gPP68DZ84i0uU5uUSeI1NNfy5
         oNsNtikhbwXoI0RRV0EUOInJIKqot39kceYgO49bFSzF6zLcKFTEmjTYY4wUxZu8k+9U
         Oq7g==
X-Gm-Message-State: AOAM53088KTuG2eH1aaF3IztPYanXByS99SCSU7TyG6GmkFatgPaw/fW
	Ed3+lLGEJtqdJPFk/k9mLdroq0RjN+ck+5FzjpE=
X-Google-Smtp-Source: 
 ABdhPJyk965fjRsAbrW3cfVqdwVJUdOLNkoSSzpDR/3vPWyABmC1URrpT6cvZENiHdl061uOf8qFAw==
X-Received: by 2002:aa7:88cc:0:b0:431:c124:52ba with SMTP id
 k12-20020aa788cc000000b00431c12452bamr1918714pff.63.1634674199220;
        Tue, 19 Oct 2021 13:09:59 -0700 (PDT)
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com.
 [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id z71sm85819pfc.19.2021.10.19.13.09.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 13:09:58 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 2/3] config.json: Ensure
 BB_HASHSERVE is set in SDKs to auto
Date: Tue, 19 Oct 2021 10:09:28 -1000
Message-Id: 
 <e0b1f67327b41c4458cdbfaabeb7e7f5e81c1063.1634674038.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634674038.git.steve@sakoman.com>
References: <cover.1634674038.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Oct 2021 20:10:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55104

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 4689763b513521fc70cca576b88035de240a3ba6)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 571ddae..fa475e3 100644
--- a/config.json
+++ b/config.json
@@ -31,7 +31,7 @@
         "DLDIR" : "DL_DIR = '${BASE_SHAREDDIR}/current_sources'",
         "SSTATEDIR" : ["SSTATE_DIR ?= '${BASE_SHAREDDIR}/pub/sstate-dunfell'"],
         "SSTATEDIR_RELEASE" : ["SSTATE_MIRRORS += 'file://.* file://${BASE_SHAREDDIR}/pub/sstate-dunfell/PATH'", "SSTATE_DIR ?= '${BASE_PUBLISHDIR}/sstate/@RELEASENUM@'"],
-        "SDKEXTRAS" : ["SSTATE_MIRRORS += '\\", "file://.* http://sstate.yoctoproject.org/dev/@RELEASENUM@PATH;downloadfilename=PATH'"],
+        "SDKEXTRAS" : ["SSTATE_MIRRORS += '\\", "file://.* http://sstate.yoctoproject.org/dev/@RELEASENUM@PATH;downloadfilename=PATH'", "BB_HASHSERVE = 'auto'"],
         "BUILDINFO" : false,
         "BUILDHISTORY" : false,
         "BUILDINFOVARS" : ["INHERIT += 'image-buildinfo'", "IMAGE_BUILDINFO_VARS_append = ' IMAGE_BASENAME IMAGE_NAME'"],
-- 
2.25.1


