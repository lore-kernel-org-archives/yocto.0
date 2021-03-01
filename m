Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.11593.1614602174128955073
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Mar 2021 04:36:14 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=ZhUdQIon;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C0C5B38C064F
	for <yocto@yoctoproject.org>; Mon,  1 Mar 2021 12:36:13 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id h98so15948607wrh.11
        for <yocto@yoctoproject.org>; Mon, 01 Mar 2021 04:36:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ziv9OYoCItjmT/NQsbFTcQv/LTegnMmBUgTasBhxJ84=;
        b=ZhUdQIon/txaDEVPlBvjDW52LCm48BBQyXTy1MhutkzObTRbg6u2j/kYDjpfel8M7y
         PRw9lNjtSwlEMn9lSXx//+/9SDRPMb3pKYsSzzlvVOkQLcyUaCteqmz+iDTymomShr+w
         0+eFaVkIRRBILhvsoRyiBtbG4aqcrEgljhYYoWRnb3EVZm1I3KqDQYx1++UEcrI7yWLa
         mDOpAOVy7Sicbm2Tv+WBUFYkPHyyr458wgyaVePUPmCd06k8MnWHMtOi1ckQW34QVx/U
         G1fLOQBSMgXeUoa9xEBoXLnnHYTcOtyW5V9cj3BqEPQdj143nAtYPEkRju2TnUI6HafL
         fGDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ziv9OYoCItjmT/NQsbFTcQv/LTegnMmBUgTasBhxJ84=;
        b=HIdlJ9tIYjNR+2/gAFFddAnbG7B3e+6w5gWk39IUDxCPxwdHd+16zuymkYSyu0VULU
         oqegvU+iJDKP17DDotYcZccMpVH9lbs9GLp14lbW2n1TNNnQ0/iUaaIDf8zNgiHyGr7W
         va0ktRF/mW/66gjEgb8vOM7fE4pi1G3Pb5RUQFcYPMp8TZdFQDk7DW+Yd4apXbMD2HMZ
         Cfi3S0Gdz4d8o2mua0VTUvWrlInJyXjKXqZ2MhySFJE4vwk6GyuN0QWbMzmNLQZ/TXql
         M2RbHSOFw0Q04kYSJkgFLMci71AjBulyv9FygfXZ3ku2FXr3+VNFv7pK7fiJaA6s1RGz
         SyjQ==
X-Gm-Message-State: AOAM532hL+APcq6FoE3YPBJGU61ay3M8H/N40EuiQNGMRSmpvZVHUAOZ
	X9QP/5YMHXegC+F3bkb0KktubNYxlfs=
X-Google-Smtp-Source: ABdhPJw9cIiUHAtE1byu0EHuSBMuVF55wJ+swc+DXjgkqcSL7QgP6zQetpKlm+s1bEsPluqqOKEiKA==
X-Received: by 2002:a5d:6b8a:: with SMTP id n10mr2018661wrx.150.1614602172075;
        Mon, 01 Mar 2021 04:36:12 -0800 (PST)
Received: from localhost.localdomain (c-3ffb72d5.022-417-73746f13.bbcust.telenor.se. [213.114.251.63])
        by smtp.gmail.com with ESMTPSA id g11sm22476899wmk.32.2021.03.01.04.36.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Mar 2021 04:36:11 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security][PATCH] ima-policy-hashed: add CGROUP2_SUPER_MAGIC fsmagic
Date: Mon,  1 Mar 2021 13:35:58 +0100
Message-Id: <20210301123558.7989-1-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
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

