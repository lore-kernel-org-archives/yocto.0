Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0162FC433FE
	for <webhook@archiver.kernel.org>; Mon, 21 Feb 2022 21:14:58 +0000 (UTC)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
 [209.85.215.177])
 by mx.groups.io with SMTP id smtpd.web08.4626.1645478098142686673
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Feb 2022 13:14:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=oMD7nhc0;
 spf=pass (domain: gmail.com, ip: 209.85.215.177,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f177.google.com with SMTP id 27so10072115pgk.10
        for <yocto@lists.yoctoproject.org>;
 Mon, 21 Feb 2022 13:14:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Tz+Q+7W2igPyuCNfiiRoYqegyOs7aobkXx5NPfmP9bc=;
        b=oMD7nhc01gcCUj3t8/pNZpYMaiDZ9NBrB56N7kcQtqXCT3mJITsdgoiRxHeASFUopH
         l7KCtJ8qa1mbh6ei9QZJMqUxKXD/5ewIyOGkDFQB6cTalx3fAhwDxeUdjK2Ss7Zeh0xD
         A/IwF50oNAuWwbfBoJnXnMFqNXIolvNky95oQMqCPu9Ji6MMMnoicVzLP874BxWClewJ
         QrTb2pzBF0IAcFOIFdYuVC4Eznx7hZsBCjzPwf3R3txIMszQCJCd81eBoHYwa7sW+yK1
         +PdRD5/QWUN6f10o1Whc2Nl1V9sR80akfZruHCPR09TErB90dHgkJqxvDbXFcQuDeJUX
         32sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Tz+Q+7W2igPyuCNfiiRoYqegyOs7aobkXx5NPfmP9bc=;
        b=0+EkKsxj6MLJB5l1kHjobE1EmZJa1OaaPw2LnoMzdQ/Z3Gp2p6IIvFV1xqQgWnDbsS
         d31IdAHPNljDnFzBffPFUjgaT1Z7J1iqRd0EVJiMj1cXjOYOxp1TrOjqArYUQ/5I4hav
         Z15iKABSI0TXWol+ufMPC28y7BwvwtW76NSCf4CylibDDxPvJMYhUWgI/k/C4zcY2/W9
         Kw1j7Nwg7aYZqtwtBGY4G5ZG1Oupgw3MI3BrbWvYpjUTaLnFw+6XyzyDZEKnp03C9by0
         EDlmFK9JqxIaNVJ/4K4mwaInX3DVKeC5tJIu/wnMNaE9y9NZ2d4uBRy43Ufm7ZDXO7Cn
         PRWg==
X-Gm-Message-State: AOAM531Qxcmo8It5o4NaVhagVGkI+7SuIjFX6sVmDvNCNVaI/bUKyQrG
	/ITQauCxJnxCM9G188LhkanwDeP0CUM=
X-Google-Smtp-Source: 
 ABdhPJzjv8Fowa5yNtF936ifuQcIgQF/uB2f7GayVdXJ/pkVMAKgnh1bPFLui9ViI3ekFGzG66kfIA==
X-Received: by 2002:a65:6751:0:b0:363:43a5:c7e3 with SMTP id
 c17-20020a656751000000b0036343a5c7e3mr17338300pgu.46.1645478097567;
        Mon, 21 Feb 2022 13:14:57 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:c5c2:4687:1c77:58fa])
        by smtp.gmail.com with ESMTPSA id
 a9sm18827862pgb.56.2022.02.21.13.14.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Feb 2022 13:14:57 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] chipsec: fix WARNING
Date: Mon, 21 Feb 2022 13:14:54 -0800
Message-Id: <20220221211455.1241096-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220221211455.1241096-1-akuster808@gmail.com>
References: <20220221211455.1241096-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Feb 2022 21:14:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56225

distutils3.bbclass is deprecated, please use setuptools3.bbclass instead

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/chipsec/chipsec_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/chipsec/chipsec_git.bb b/recipes-security/chipsec/chipsec_git.bb
index e265a08..156be09 100644
--- a/recipes-security/chipsec/chipsec_git.bb
+++ b/recipes-security/chipsec/chipsec_git.bb
@@ -20,7 +20,7 @@ EXTRA_OEMAKE = "CC='${CC}' LDFLAGS='${LDFLAGS}' CFLAGS='${CFLAGS}'"
 DEPENDS = "virtual/kernel nasm-native python3-setuptools-native"
 RDEPENDS:${PN} += "python3 python3-modules"
 
-inherit module distutils3
+inherit module setuptools3
 
 do_compile:append() {
 	cd ${S}/drivers/linux
-- 
2.25.1


