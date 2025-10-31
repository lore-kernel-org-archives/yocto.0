Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A454CCCF9F8
	for <webhook@archiver.kernel.org>; Fri, 31 Oct 2025 22:02:51 +0000 (UTC)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
 by mx.groups.io with SMTP id smtpd.web11.6992.1761948170969361146
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Oct 2025 15:02:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BWYP8zyy;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.217.46, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5db24071011so4048328137.1
        for <yocto@lists.yoctoproject.org>; Fri, 31 Oct 2025 15:02:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1761948170; x=1762552970; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c83zPK0JL5FmTu8JaZYAvGkJb6l4AKd6IULqoppNY2E=;
        b=BWYP8zyysWDPeP2h8oVWI17RUUgpK/3GqUrLSd03cwTL+rXy6mbVVhIFeT9D5LJS00
         Vx20wE1uT/61AuMRlN7wXr0x984LSsLcnK8Q5aow+K7BlTn2lnmwIh551etbyBs3lMrq
         XXrd5Luu3BEnRIyCF7TNPUYzS7dRuku6W2i2Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761948170; x=1762552970;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c83zPK0JL5FmTu8JaZYAvGkJb6l4AKd6IULqoppNY2E=;
        b=RZXMRISkV2g+94g5ZGGXqVcoCFhvcOKOW8hNTroF2RYXQ0XDRn4IniYuEhLq7Aqukp
         QMw0wvx62iKJx5/fL7NxReCfC9mQi47T3iQdyc68cdx7V0wSfbS+ko/BTWzf4CsxTRwi
         Dbvq30UTDN6KjU3CM60ojkNvhLpqJ+CfVdjswYmLaXsFxwKpRkrzLvJiFLZZRjqZTWaD
         raXMxoBtvYbIgxB2jkIro6OsqbmTAWIA43El51QASNBV5FkeytJutpWtL3AVKxha1KBo
         GF+3RSKUEm7pa1opqQ105CKNGiKebyTZOYjv0Evr/zrTd0eUNwRnKC38GsrAmezVRNPz
         4jHw==
X-Forwarded-Encrypted: i=1; AJvYcCVY08fXjPILbEVyybXIDn0YrpQ9HoMVAsg/t0OZGj2IYEkGGzG7stmygSeY/6fDMWIri/U8Cw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yw3ZrXy7NzCBRzDY7Pd+GxjQ68+rq29RbiWyOwTO0ErQ8d02cBs
	ISugIGF6ImoWaGWYPieovyKWuFgFMqlQKzR6ICOdf0tKenjA/kvOK0qLVB3kTUgpbilBEpChQCh
	uqNuN
X-Gm-Gg: ASbGncsUA6fSAzyaAy4WiSC20oj1y6EKL/qKy6Ixep9fzeQ/ggPpEA/Yk5/DQmjmERS
	K7VPRq8AGNDhAwquz+fl9ZE8ZIhTDNgb7r9INWMaCpcCVEgSn2E+NTxTUjaEa4LKSkdsLBR3V/M
	zfi1NCmS0AWA/DC4h3A2Y2PZvn32qdI+xbx5dayRJj/MhrMYBc9DVlvoB+5lixnGurIeHVgkx1s
	VXfwhQaGxMW/RpUl1ue2P3KNSZ8Y3GJS7eq9skqBQ8a5tGqwLmRmdoQRYpB0NI1B6S6onBtixt1
	BNJaXmxfj2vW/YErJx6toiyE8UnWY9S4PS7ufcHmErVdSC3BMS208JyX0nyECUebwmdxKgXBSWj
	zrGPi2NvXsVwjhv78zNej9DaF28lGbprxeti3yyTjWGmQWussDP1gJjEnhdWF1K/9QGQzvRMlwL
	15QF4JsZ2veLv8TKEsXpLk4n48wc1vrPrKyQ==
X-Google-Smtp-Source: AGHT+IFoNfF4oSKwb8jHDDZR1CMXRpNKiIS62qpEogVi35KOJOxd1Df7rsx+uFZEe0DX7sjC/Qu+2g==
X-Received: by 2002:a05:620a:458f:b0:89d:b1e7:29e5 with SMTP id af79cd13be357-8aa29d9a8admr973613985a.5.1761947623530;
        Fri, 31 Oct 2025 14:53:43 -0700 (PDT)
Received: from yoctolap.taild15c8.ts.net ([2607:fb91:1eeb:8e1f:15b6:68a8:131:b8b2])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ac02f84935sm181548085a.38.2025.10.31.14.53.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 14:53:42 -0700 (PDT)
From: Michael Halstead <mhalstead@linuxfoundation.org>
To: yocto@yoctoproject.org,
	yocto@lists.yoctoproject.org
Cc: chee.yang.lee@intel.com,
	Michael Halstead <mhalstead@linuxfoundation.org>
Subject: [PATCH release-tools 1/2] relnotes.py: use kernel mirrors edge network
Date: Fri, 31 Oct 2025 14:53:28 -0700
Message-ID: <20251031215329.199723-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Oct 2025 22:02:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65988

mirrors.kernel.org always resolves to a single authorative host which
may be quite far from the end user. mirrors.edge.kernel.or resolves to
the mirror nearest the user resulting in a far better download
experience.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 relnotes.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/relnotes.py b/relnotes.py
index 94f853f..951226a 100755
--- a/relnotes.py
+++ b/relnotes.py
@@ -141,7 +141,7 @@ if __name__ == '__main__':
     # copied into the release directory. i.e. Just RELEASENOTES, not RELEASENOTES.<release>
     RELEASE_NOTES = ".".join(["RELEASENOTES", RELEASE])
     DL_BASE_URL = "https://downloads.yoctoproject.org/releases/yocto"
-    MIRROR_BASE_URL = "https://mirrors.kernel.org/yocto/yocto"
+    MIRROR_BASE_URL = "https://mirrors.edge.kernel.org/yocto/yocto"
     HOME = os.getcwd()
     POKY_REPO = os.path.join(HOME, "poky")
     outpath = os.path.join(HOME, RELEASE_NOTES)
-- 
2.51.1


