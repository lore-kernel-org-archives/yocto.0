Return-Path: <aj.bagwell@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81086C433F5
	for <webhook@archiver.kernel.org>; Tue, 15 Mar 2022 14:16:02 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web12.11240.1647353761251516723
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 07:16:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=cTeJWCgv;
 spf=pass (domain: gmail.com, ip: 209.85.221.51,
 mailfrom: aj.bagwell@gmail.com)
Received: by mail-wr1-f51.google.com with SMTP id g7so565486wrb.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 07:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l7LpMcKk6SD33YeUGWl9FEZMB+PWTJTr8tOBD3lM+mQ=;
        b=cTeJWCgv4N0Y5McaZ3kM7C7wovLhelhCIP388ZHZTe/q+husQlyijrESi0zrL6kaNq
         UuTYCPTXKNq0+Hy71dZnesYWr4/kN4vh4VZjEWVF7rT9VpwFDlr+MHurunWOTGxjhbxv
         /q07EaNL5VvjcQWdbyfazyLbTKcnbeoAlSynkOuQcK9ZDVLl+rHy7ghDzvsecxlij2II
         skRY/4uXGxtiJwqpxTA4RclDOo7unUPa4wUMt09HTQDD1rN9SNGT9e7xr8HTinfUc5m7
         +/UuAaO03qeNgI3X/6yaAAHtE721c9rfXieCS6Talz3ASZHNLGGyrsUcThEZv3SgOoJW
         Hp9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l7LpMcKk6SD33YeUGWl9FEZMB+PWTJTr8tOBD3lM+mQ=;
        b=zJR796OybdV2EpTDXbSFh6xfcWWInO+pgtEhoiHRieZ4y+nMJ2iTIGEq2j8r+Ul2Uy
         PpXRNub2ERZ5xQi35BqBIDcHfKDDSl5Mu8LdzACVsf8svry7kowGgZyolzi7sRfFCjrw
         pmLP+ShwXykmlNekNJpcOJqL7GDjHfjvohDbs9b9Qg6TmVJXh/itVN6FNCIvQSaTQpIM
         /cwpwIaPalxYgO8fSEVLkVbICzTEXfD5R+qyvx/r25+WY2nKBgNir6VcU9VKC9l6EvG7
         ieGgzurj/hVO/u7Q2IpNOYZGmlPNBBAG96K1+/jRAyxhOpKbU1UZ6gxqn0/f1tnq4eZu
         rCig==
X-Gm-Message-State: AOAM532Cb/amE3HL3Z6PPIl9p581UnNk2H+Aeun41HztZj9nDa0uTFFi
	Au/ssBVPrXdqwSvnEwCaqn9K3fvL8+g=
X-Google-Smtp-Source: 
 ABdhPJzqQVQPbrGcRFaTYGvXorCJFSAKsrpeTzZRJg/CNNpYD9MQr8OLT+9kOi6PxEI/oJNJUyI/oA==
X-Received: by 2002:a05:6000:1688:b0:203:8efe:e0b0 with SMTP id
 y8-20020a056000168800b002038efee0b0mr17485061wrd.289.1647353759202;
        Tue, 15 Mar 2022 07:15:59 -0700 (PDT)
Received: from CMM-C02QQ1FQG8WL.broadband ([90.243.225.29])
        by smtp.gmail.com with ESMTPSA id
 q14-20020a1cf30e000000b0038986a18ec8sm2328341wmq.46.2022.03.15.07.15.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Mar 2022 07:15:58 -0700 (PDT)
From: AJ Bagwell <aj.bagwell@gmail.com>
X-Google-Original-From: AJ Bagwell <anthony.bagwell@hivehome.com>
To: yocto@lists.yoctoproject.org
Cc: AJ Bagwell <anthony.bagwell@hivehome.com>
Subject: [meta-gplv2] [PATCH] sed: mark as providing /bin/sed when usrmerge is
 enabled
Date: Tue, 15 Mar 2022 14:15:45 +0000
Message-Id: <20220315141545.45119-1-anthony.bagwell@hivehome.com>
X-Mailer: git-send-email 2.32.0 (Apple Git-132)
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Mar 2022 14:16:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56441

Otherwise recipies that need sed like strace fail with
"requires /bin/sed, but no providers found in RDEPENDS"
when building.
---
 recipes-extended/sed/sed_4.1.2.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-extended/sed/sed_4.1.2.bb b/recipes-extended/sed/sed_4.1.2.bb
index dc061ca..cd7993c 100644
--- a/recipes-extended/sed/sed_4.1.2.bb
+++ b/recipes-extended/sed/sed_4.1.2.bb
@@ -35,3 +35,5 @@ ALTERNATIVE:${PN} = "sed"
 ALTERNATIVE_LINK_NAME[sed] = "${base_bindir}/sed"
 ALTERNATIVE_PRIORITY = "100"
 
+RPROVIDES:${PN} += "${@bb.utils.contains('DISTRO_FEATURES', 'usrmerge', '/bin/sed', '', d)}"
+
-- 
2.32.0 (Apple Git-132)


