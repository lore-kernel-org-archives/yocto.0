Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.1269.1614704333608412152
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 08:58:53 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=f6tV7lQX;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D948A38C1166
	for <yocto@yoctoproject.org>; Tue,  2 Mar 2021 16:58:52 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id o16so3482505wmh.0
        for <yocto@yoctoproject.org>; Tue, 02 Mar 2021 08:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=86VkQdfm7i1g2OPC4ZrXRTszeNets9S54jmGvJ6bWLc=;
        b=f6tV7lQXZ1Qd4Re8CWYLdbv1EQCLu0dBS3P8p0F5BdlBUZB/7glkS7VE4q7xuS9bJO
         6YVOy5+HYPHCrj7AH3TGuPVdpDy4pydWJbZoDOlWvcjqmBsMwrgh3utAijtS1fFFZUcb
         46dO1gvM6oiyi9imnDf/dRLw3C8X+bbzX5R+zMSVj61RbxeF8F2cWZlBmPzWuDh8gpfv
         dFhATyAsqMiqAfK3dhPVCgLuyOaAtrgDTbVZw1qPiqbgmqqT+lLzapYk5lCyk93mhPy0
         52SqjLSDD3LbggOd8HmXb/f4/F5w7PBI70NVzYNAyTp+36oLwtFOWFoiLOH3Wy2l7W69
         l0yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=86VkQdfm7i1g2OPC4ZrXRTszeNets9S54jmGvJ6bWLc=;
        b=YOecRZ7qIoKJLvZeZqYd893JGw21vDT7mtMNQanHHP7Hf9n/or7if6x2FHExdiluSN
         NUj89MRZFVlikVIhllfytTQsBAFzNc+IgYset0cWYzqvtyNyjWJIV1+utuhGXyiFpCLM
         rsRsdbZNaqgftgdrfQgPHfR0gOJvk+G54qoDjxBQoxC9Aqx2WQsa0SWSr4eMhc4qXMCY
         J1frWQs2wpXMEYM+bKrflSQsij8kTzL8ku9KJCAQsUkvOvpsxukTpu2vCcO8DlnpFx0L
         EXR7jfrsqrRRTMsPF4R5oMgbROUeqdEkcVrHuM21Cb9hr/NV80lnKUXeBYDCSSnzDEGe
         jbsA==
X-Gm-Message-State: AOAM533T6Zy71O+OsahadkEGu76aDQ/nEvb04nq1nESaiRSjtFgmNXpP
	k0w2yp3lIN2j9dzGdxRFjQ8/bhoS4sg=
X-Google-Smtp-Source: ABdhPJzMQEGBpGGUX7oGmmOPQDh7AByw3r/Qta0jd09sdAUClKIWHubv5QLYijWXWgJdw2vtfyf4ow==
X-Received: by 2002:a1c:f20f:: with SMTP id s15mr4297427wmc.35.1614697071783;
        Tue, 02 Mar 2021 06:57:51 -0800 (PST)
Received: from peterliu-Precision-7530.toradex.int ([2a00:801:42b:8138:fd2e:3bb6:aed9:2cc1])
        by smtp.gmail.com with ESMTPSA id g202sm2862577wme.20.2021.03.02.06.57.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 06:57:51 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security][dunfell][PATCH 2/9] initramfs-framework-ima: fix a wrong path
Date: Tue,  2 Mar 2021 15:57:38 +0100
Message-Id: <20210302145745.1891826-3-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210302145745.1891826-1-liu.ming50@gmail.com>
References: <20210302145745.1891826-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

/etc/ima-policy > /etc/ima/ima-policy.

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-core/initrdscripts/initramfs-framework-ima/ima      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-integrity/recipes-core/initrdscripts/initramfs-framewor=
k-ima/ima b/meta-integrity/recipes-core/initrdscripts/initramfs-framework=
-ima/ima
index 8616f99..16ed53f 100644
--- a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/i=
ma
+++ b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/i=
ma
@@ -46,7 +46,7 @@ ima_run() {
     # ("[Linux-ima-user] IMA policy loading via cat") and we get better =
error reporting when
     # checking the write of each line. To minimize the risk of policy lo=
ading going wrong we
     # also remove comments and blank lines ourselves.
-    if ! (set -e; while read i; do if echo "$i" | grep -q -e '^#' -e '^ =
*$'; then debug "Skipping IMA policy: $i"; else debug "Writing IMA policy=
: $i"; if echo $i; then sleep ${bootparam_ima_delay:-0}; else fatal "Inva=
lid line in IMA policy: $i"; exit 1; fi; fi; done) </etc/ima-policy >/sys=
/kernel/security/ima/policy; then
+    if ! (set -e; while read i; do if echo "$i" | grep -q -e '^#' -e '^ =
*$'; then debug "Skipping IMA policy: $i"; else debug "Writing IMA policy=
: $i"; if echo $i; then sleep ${bootparam_ima_delay:-0}; else fatal "Inva=
lid line in IMA policy: $i"; exit 1; fi; fi; done) </etc/ima/ima-policy >=
/sys/kernel/security/ima/policy; then
         fatal "Could not load IMA policy."
     fi
 }
--=20
2.29.0

