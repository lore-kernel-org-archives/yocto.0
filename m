Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 062B7C433EF
	for <webhook@archiver.kernel.org>; Mon, 30 May 2022 22:04:23 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
 [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web09.42255.1653948253458037235
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 15:04:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=j595cDrU;
 spf=pass (domain: gmail.com, ip: 209.85.216.52,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f52.google.com with SMTP id
 n13-20020a17090a394d00b001e30a60f82dso483328pjf.5
        for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 15:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=eEX3EZh1lljG51isSBpnDrq+N5jET1ymwffFMttx++8=;
        b=j595cDrUjIx1JrqZyvbYSCJ9J212v+Px8uwiiffSILbpPEN20Oz/MFMW/MsPQlpem/
         ZWmGzgvBH9xCJ1EeaZqzW0Qv1LSWIHG3NLBXWhhCMJ5Bv0f61NoDCJb6bYeOUnXHBsnG
         tS8dq2x8vDkkPx4XDvLEvJJx4ewupb6WWVL88gAuqjrmpNykdieoPwepln6KQYdQ3M+k
         Yai1GjG125noSg4feJINJXzjuH58wYb/ANmuH7whH9RTf3yFBpHtgygwNJIWkOP6FPLZ
         hHKDolbxCxiqNHxAXsUR/mLEHKEqjT0e++Id780CsGHA+kmbIStvPbrIh6kBry4TmGxR
         Nn9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eEX3EZh1lljG51isSBpnDrq+N5jET1ymwffFMttx++8=;
        b=HxwTimbMkUCTwZCG3lqMiD8IEWM0TiUwien2wrzGeW5/3I8Ep/T7jyw2SvV1eVhwy+
         bmbarMCAd1KaE41dG4zHG2YJntDTByqzwwcMWT0I7Xf5xN1lC2hU7wnGmczw7v3epcCS
         hgP5Xfy/mv/CUzWzYm/j4ATWsM3gyOkTBQ/6tA6sHMpsF5BgWMHI+ME7lMHk1x8iL5si
         vWPolHqwVD3aJjpJD6Ucba5J/qGUh7NI0hNOJPAvZpTkjK8k9zRTN/DtZ9atk2I2RWXa
         Os+0ZCKPbFy824+SHusUz5V5ZKXe90OMtKCemAglytLPt2r6iAt5YOH4eKUjuHjj6NKH
         ZeVA==
X-Gm-Message-State: AOAM53013naDDSZXmla1KV7/8V/LsrEAL9q/Es28SGvqlTk7IoCrGx+w
	DOx654U9mNssuJ6tJhvzev3ANFVBqyc=
X-Google-Smtp-Source: 
 ABdhPJyhp18B58tamtV+WclybBealEztAFcDNkHH4DlDgBLsG4L/LtlAqWnmJ8XANPGD8I6zDRihSA==
X-Received: by 2002:a17:90a:9505:b0:1df:2162:2bb5 with SMTP id
 t5-20020a17090a950500b001df21622bb5mr25191907pjo.73.1653948252489;
        Mon, 30 May 2022 15:04:12 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 x22-20020a170902b41600b001635a8f9dfdsm9679198plr.26.2022.05.30.15.04.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 15:04:11 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] smack-test: switch to python3
Date: Mon, 30 May 2022 15:02:07 -0700
Message-Id: <20220530220208.477287-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220530220208.477287-1-akuster808@gmail.com>
References: <20220530220208.477287-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 May 2022 22:04:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57225

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/smack/smack-test_1.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-mac/smack/smack-test_1.0.bb b/recipes-mac/smack/smack-test_1.0.bb
index d7824ae..3ab57c6 100644
--- a/recipes-mac/smack/smack-test_1.0.bb
+++ b/recipes-mac/smack/smack-test_1.0.bb
@@ -22,4 +22,4 @@ do_install() {
     install -m 0755 *.sh ${D}${sbindir}
 }
 
-RDEPENDS:${PN} = "smack python mmap-smack-test tcp-smack-test udp-smack-test"
+RDEPENDS:${PN} = "smack python3-core mmap-smack-test tcp-smack-test udp-smack-test"
-- 
2.25.1


