Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC4E8C636D4
	for <webhook@archiver.kernel.org>; Sat, 11 Feb 2023 15:28:15 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
 by mx.groups.io with SMTP id smtpd.web10.11139.1676129286412953226
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Feb 2023 07:28:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=iVs9Pqbt;
 spf=pass (domain: gmail.com, ip: 209.85.167.170, mailfrom: akuster808@gmail.com)
Received: by mail-oi1-f170.google.com with SMTP id cz14so6880282oib.12
        for <yocto@lists.yoctoproject.org>; Sat, 11 Feb 2023 07:28:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BSa6A3SFrPpAq5HuEgI8ufONilFEj1rrDF4UDcWo8Xg=;
        b=iVs9PqbtfguWwdudQt041z6YrUAul/4dGacV+rAHOefypCJK7wPyPtWxxX45+pm9xw
         UnsGr8rPEFS7mKEay3d8wQ/WviQBL6XKNK9z+ZNEGiKkRsaFdDjZxKs0nQZEOP+V6KY2
         p3+FvKlkQwmptFIW8++6gYnWlr7siQ9O5B2WGUf0NXzsg/SF9qKbRAl3k7rtKAwt1uZz
         cKtxeXoNT2SaTRgWGHTsn2PLeE4FDFQnfyR/SiW9Ja9lbR7XNNTYbsIrsGAjr469PCg4
         PBO+MyY/+D9pXneTZtxF2rycMZieAADZ+tCkrWOZIR/kBLqz+oJPnqvPoZASR7z7E+W+
         zH8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BSa6A3SFrPpAq5HuEgI8ufONilFEj1rrDF4UDcWo8Xg=;
        b=d96i3ONnZ0/7SMQsUn9TcYMAB2pAUyoOz9be70p1fXj7+2ztBONgfJi+JFhQa+onDo
         mTHUi4y3cSBPZWtkIojkjhc8gLrIaixfc5eeW/z6LpOyH90OXC5Mw5rvzqVat0d1nvP7
         whNcuf3oHl7C678fSkZpR2c3QUOtQ2WkOntcui0Sirnl2MBBR9fQF3RkK0xyxWST1Urc
         EvYOlDc+kHxJ1bjIbu7nyA7vHmV0fyJWHpXgDgyRypDNiN+QMCaJYYYLTbupjwDD7PVp
         gr5z9ML/83NaRjkZZVikswn726hxY6mbERaB6rLnBbXpYB+53pu0zWUQufDn2/0ShY9u
         KowA==
X-Gm-Message-State: AO0yUKVKCDEstC0W2eezT7QvTG/uarOll1jmeZQ6Ggni/sa526yGvLpS
	S6G8aJ2hkelNsm3UdHwq9EOG5GuIVIg=
X-Google-Smtp-Source: AK7set86d49OLBleUGGmSWKOKjrMEKHEx50Ai1ytZ+OHSLue/brTC6vhI9GAz4n8899mnoPpq98ZpA==
X-Received: by 2002:aca:f14:0:b0:37b:562:2138 with SMTP id 20-20020aca0f14000000b0037b05622138mr9760047oip.42.1676129285481;
        Sat, 11 Feb 2023 07:28:05 -0800 (PST)
Received: from mvwork.mvista.com (99-157-111-72.lightspeed.tukrga.sbcglobal.net. [99.157.111.72])
        by smtp.gmail.com with ESMTPSA id v16-20020acaac10000000b0037aaf36d173sm3347710oie.3.2023.02.11.07.28.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Feb 2023 07:28:05 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [lirkstone][meta-security][PATCH 2/2] oeqa: meta-tpm shut swtpm down before and after testing
Date: Sat, 11 Feb 2023 10:26:02 -0500
Message-Id: <20230211152603.497253-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230211152603.497253-1-akuster808@gmail.com>
References: <20230211152603.497253-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Feb 2023 15:28:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59211

fixes:
swtpm: Could not open TCP socket: Address already in use

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 0768ad76b16a04654488fe2e0e837a97bd7817d9)
[Fixup for kirkstone context]
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/lib/oeqa/runtime/cases/tpm2.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-tpm/lib/oeqa/runtime/cases/tpm2.py b/meta-tpm/lib/oeqa/runtime/cases/tpm2.py
index e64d19d..8e90dc9 100644
--- a/meta-tpm/lib/oeqa/runtime/cases/tpm2.py
+++ b/meta-tpm/lib/oeqa/runtime/cases/tpm2.py
@@ -8,10 +8,12 @@ from oeqa.core.decorator.data import skipIfNotFeature
 class Tpm2Test(OERuntimeTestCase):
     @classmethod
     def setUpClass(cls):
+        cls.tc.target.run('swtpm_ioctl -s --tcp :2322')
         cls.tc.target.run('mkdir /tmp/myvtpm2')
 
     @classmethod
     def tearDownClass(cls):
+        cls.tc.target.run('swtpm_ioctl -s --tcp :2322')
         cls.tc.target.run('rm -fr /tmp/myvtpm2')
 
     def check_endlines(self, results,  expected_endlines): 
-- 
2.37.3


