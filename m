Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F2BC04A68
	for <webhook@archiver.kernel.org>; Thu, 28 Jul 2022 22:17:59 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
 [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web08.1528.1659046674597339837
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:17:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Akjyhl43;
 spf=pass (domain: gmail.com, ip: 209.85.215.172,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id q16so2592677pgq.6
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QcNSvGs9qJJYY2XSiqXLgPPA+8ESmlKjFkebfvqSp8w=;
        b=Akjyhl43EurwjspanYwb4ccfkMV0lhFTL3Dp8eH4R/5bAtnGCnVHHOu+3bAYFecNo6
         yq2pu5I4zb6MfqNZgz7tZkuvPht4oo9mfm1ifOUU0rQnEzT3vEGZzTaV799VmuWfSySG
         H4tBRMxvWU8qOJjZWzrvimH2xq6ZztaRvVRU0h8rCf9up3oM+EZo/yDbslfRORhETP/C
         +bIHfm4sD+HdRWZltFWNzcAZtAHoVLo4OjaSzJhSgrbMQzSdrdh1v/o4lGsFXUlr6Ih2
         52Xa0uaKjUo1Gk84vUfNqwh2xKS/1D0Ikc/Bb34DdE03h7h0FjMEcE4BJhm2F1hSPafT
         RDZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QcNSvGs9qJJYY2XSiqXLgPPA+8ESmlKjFkebfvqSp8w=;
        b=6I7FtAC9rHeskawEI76POYIh6lT4LHT+AGLgM4l1guPmAnKlXqyCSReepHASkYDS5H
         wYH4C+FAYPed8Y+ylG2F/zPOjOC0trXWO9w+wrPQBu7LgnVovoqrJcfqHP8ACB/4iY0X
         p27pgjvXNquQ6+TUiMzaZIYeOTZayjXvCOfGNQV/C08l2Dvpbv32zuZufckjmJBLMPyc
         VN6vRKaLUJ/JXTBWP6BG6CJqwkFYtKjOrkuDKwm1PEim7wXanuOhwyx7Nud8YXAw0MWA
         XOGeVIQ/21DZT4Hczgz8XJ6CZ/F4iVgQZx3/CZeApjnhwlTXV0ta/2W3W9xI1ww23zmX
         ExOA==
X-Gm-Message-State: AJIora8H/3fnjOzeBvg/9z/CSMdy4qfRn0lbVmI4yQCEqkwlLfhTjrv0
	7zQ6Qzn2Jozn4yutpXEGY/PcCVbf9cw=
X-Google-Smtp-Source: 
 AGRyM1vHFjw8hV4oJT1PlhcXuY02fe1ts4k1dB8CBDYJzlkBF8SOw8RQ7xDLKAgOTHloimSMTMnl4A==
X-Received: by 2002:a05:6a00:be4:b0:52b:c1f1:cf75 with SMTP id
 x36-20020a056a000be400b0052bc1f1cf75mr901872pfu.51.1659046673467;
        Thu, 28 Jul 2022 15:17:53 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:8cdd:3284:a497:445d])
        by smtp.gmail.com with ESMTPSA id
 o4-20020a170902d4c400b0016d22e6ed57sm1829090plg.293.2022.07.28.15.17.52
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 15:17:52 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/9] fail2ban: add UPSTREAM_CHECK vars
Date: Thu, 28 Jul 2022 15:17:43 -0700
Message-Id: <20220728221751.48428-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Jul 2022 22:17:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57669

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-security/fail2ban/python3-fail2ban_0.11.2.bb        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
index 96e17b7..1f55267 100644
--- a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
+++ b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
@@ -17,6 +17,8 @@ SRC_URI = " git://github.com/fail2ban/fail2ban.git;branch=0.11;protocol=https \
         file://run-ptest \
 "
 
+UPSTREAM_CHECK_GITTAGREGEX = "(?P<pver>\d+(\.\d+)+)"
+
 inherit update-rc.d ptest setuptools3_legacy
 
 S = "${WORKDIR}/git"
-- 
2.25.1


