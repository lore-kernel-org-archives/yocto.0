Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web08.22544.1615131323136820913
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Mar 2021 07:35:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tJtQmyk8;
 spf=pass (domain: gmail.com, ip: 209.85.214.170, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id s7so3679080plg.5
        for <yocto@lists.yoctoproject.org>; Sun, 07 Mar 2021 07:35:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=uDF1Slo7KDUgAqxJtYoiVIfzyEWXZ7J21YW90aobR4s=;
        b=tJtQmyk84mKja1VTF9j01+QJjfvVSPsdB2YQWjcLxJRi2np2mM+Q66qNGpjK5HgyZt
         Zld7cGLG/9TwHen3lFdtB0kE7j2sd64YW5lMkVOCz/OyIJ9+UWBNjelKtqPtBNOQXEVm
         Hz7teu8PytIL7dLpldOW9NNIbv//HKTdLqtletkpwWuoIDxm5cX0Re40sAljqAIc59NH
         GOuN7usGDvcuDYnWgak12jh8Z9kM2P5Jp5b6MoEUd9y45KH/JPGwFg5jahrU6RA/pt3p
         g/YGOKN6tcpbB+auR2L5OHn1FIrO/VVkwXOgTnaHw0OLtIlGODHLzZgIgLic4GjlCMp+
         UxxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=uDF1Slo7KDUgAqxJtYoiVIfzyEWXZ7J21YW90aobR4s=;
        b=L8XpuS/+IcyEfF7d3iQDCdoVpKNAg0OzIRfY4aXXPgwplKg2L+A69ykiBdCw01hc8u
         v5GbhSO6JdXeuoWZqSH5ZTIlVkE6BH53X/NwnGH8D5tv01mBN90gKZgd7Hk+g8LVSNhb
         nRcqV/g1r3qzXRf9Z337LzEOkueu289fPNHZSMppS9biIY8os8Q8oF1kYxNN582ljHsP
         TPdFP2CBQnlOgDr1I1La02/+LV8HcEYNqcd4fQZIEGYbyc2ORCpVhl1J35HXr/DC4YSE
         5LgzM9Z5ZrbRyegPEvFtAFKJFnhm+jsbx51DqE008h15x03Q4OY2xv6bd86XD5DYJUoD
         617A==
X-Gm-Message-State: AOAM531cQDNT57XophQR6zk/S4Gf97jLeVyoVJol+FgnwdCQ6rKLqYMg
	1fKWfDFheErcv4TFBSvC4BTdaf/A/+0=
X-Google-Smtp-Source: ABdhPJxE6ICcwM1OG3Vnlq+BuiArxm2MxB+Am3gF+ejjNjcjN2/uBvucO4GgQi9Dy3fIpPwu08sBXA==
X-Received: by 2002:a17:90a:e614:: with SMTP id j20mr19932689pjy.184.1615131322571;
        Sun, 07 Mar 2021 07:35:22 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:4de0:7e40:32a3:ab29])
        by smtp.gmail.com with ESMTPSA id w26sm4745997pfn.33.2021.03.07.07.35.21
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Mar 2021 07:35:22 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 4/8] tpm2-tools: update to 5.0
Date: Sun,  7 Mar 2021 07:35:13 -0800
Message-Id: <20210307153517.5761-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210307153517.5761-1-akuster808@gmail.com>
References: <20210307153517.5761-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-tools/{tpm2-tools_4.3.0.bb => tpm2-tools_5.0.bb}       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm2/tpm2-tools/{tpm2-tools_4.3.0.bb => tpm2-tools_5.0.bb} (81%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.3.0.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.0.bb
similarity index 81%
rename from meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.3.0.bb
rename to meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.0.bb
index 5bd26ab..dbd324a 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.3.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.0.bb
@@ -8,6 +8,6 @@ DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
 
 SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
 
-SRC_URI[sha256sum] = "ae009b3495b44a16faa3d94d41ac9c9d99c71723482efad53c5eea17eeed80fc"
+SRC_URI[sha256sum] = "e1b907fe29877628052e08ad84eebc6c3f7646d29505ed4862e96162a8c91ba1"
 
 inherit autotools pkgconfig bash-completion
-- 
2.17.1

