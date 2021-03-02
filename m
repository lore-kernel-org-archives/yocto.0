Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.9955.1614698414702365742
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 07:20:14 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=NfX6Vni8;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7930938C057C
	for <yocto@yoctoproject.org>; Tue,  2 Mar 2021 15:20:13 +0000 (UTC)
Received: by mail-lj1-f170.google.com with SMTP id k12so15373753ljg.9
        for <yocto@yoctoproject.org>; Tue, 02 Mar 2021 07:20:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ziv9OYoCItjmT/NQsbFTcQv/LTegnMmBUgTasBhxJ84=;
        b=NfX6Vni8XsdOZhMOCI3H/bwbimdDO+V1mBwIxwpZorRurfkemftTRscgdxrkScJSZd
         mIwni6MK8BJs7jOIS0WfAXsOJOx12fjkVc6ultCCLxiATx9Y8TbTbs6VWFOlhbcab1t1
         o9EUbOeZH1Dr79ybRm95Xtatc73fRKJQKjPjRbss5T9mVk5pIsil6v+wOsc0ErptZt2g
         wsUIbRwNzUUfTSo8sWl5K7YBONKw+sUVl1nzM0dMHaXrJn8l5573aDRVUoL+dmRDxrrT
         vQ/akdse3rJdi7aGsBhLPJb0HoJW8mUMgKeGQ0Ld+MPsq0g0JttISxARlbdXgmHC2EP5
         b38w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ziv9OYoCItjmT/NQsbFTcQv/LTegnMmBUgTasBhxJ84=;
        b=IxhrtNgJZJB3bfRZ0owpSsbL6Lpx96b0od81/hLis9c64xTTp0CI1ayy/ud0prPJo/
         4qnfH/SdhXIBsdQ+h1QVj8XHezPcg2U+z5ziMmSI0EzBjobkRBVL4zF6D/DdJRHxIJqE
         eFf5J/qjrUmhFO4eg94ReHXI24woU2wAR7c+xHW3xA98+rc8vagHrhV15acS7/96ptEq
         JOkVkeZBR6BaUK8mP/psN+l64A0ByyV8KwEqUh06DHFQpdA8g1EWpydmFO+QxlErigUC
         XWPBL336jCftKcdZUqQWJDpBtKObYIFEpKRJvzGFB0C0X22bJQDcA5/aDbxZ4EkTnIFK
         U5QA==
X-Gm-Message-State: AOAM530FzBeF0PvZ5rKOks5T0/lBreJ5+HRCWx9SJJy5mhg4BJizLEcU
	rIKyJK4JiD+y3PPpvf4cPNuu2TB7WrE=
X-Google-Smtp-Source: ABdhPJw1WKSKGRlKohoHKoBi8wCcP49/GgMm0n6cGKOreS0SXISsH8SH85U9PFnWO1Bx/OzE9SHM9g==
X-Received: by 2002:a05:6000:1547:: with SMTP id 7mr22682280wry.301.1614697083477;
        Tue, 02 Mar 2021 06:58:03 -0800 (PST)
Received: from peterliu-Precision-7530.toradex.int ([2a00:801:42b:8138:fd2e:3bb6:aed9:2cc1])
        by smtp.gmail.com with ESMTPSA id g202sm2862577wme.20.2021.03.02.06.58.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 06:58:03 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security][dunfell][PATCH 9/9] ima-policy-hashed: add CGROUP2_SUPER_MAGIC fsmagic
Date: Tue,  2 Mar 2021 15:57:45 +0100
Message-Id: <20210302145745.1891826-10-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210302145745.1891826-1-liu.ming50@gmail.com>
References: <20210302145745.1891826-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

This fixes following systemd boot issues:
[    7.455580] systemd[1]: Failed to create /init.scope control group: Pe=
rmission denied
[    7.457677] systemd[1]: Failed to allocate manager object: Permission =
denied
[!!!!!!] Failed to allocate manager object.
[    7.459270] systemd[1]: Freezing execution.

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
---
 .../recipes-security/ima_policy_hashed/files/ima_policy_hashed | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-integrity/recipes-security/ima_policy_hashed/files/ima_=
policy_hashed b/meta-integrity/recipes-security/ima_policy_hashed/files/i=
ma_policy_hashed
index 7f89c8d..4d9e4ca 100644
--- a/meta-integrity/recipes-security/ima_policy_hashed/files/ima_policy_=
hashed
+++ b/meta-integrity/recipes-security/ima_policy_hashed/files/ima_policy_=
hashed
@@ -53,6 +53,9 @@ dont_measure fsmagic=3D0x43415d53
 # CGROUP_SUPER_MAGIC
 dont_appraise fsmagic=3D0x27e0eb
 dont_measure fsmagic=3D0x27e0eb
+# CGROUP2_SUPER_MAGIC
+dont_appraise fsmagic=3D0x63677270
+dont_measure fsmagic=3D0x63677270
 # EFIVARFS_MAGIC
 dont_appraise fsmagic=3D0xde5e81e4
 dont_measure fsmagic=3D0xde5e81e4
--=20
2.29.0

