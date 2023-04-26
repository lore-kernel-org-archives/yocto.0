Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C7D4C77B7F
	for <webhook@archiver.kernel.org>; Wed, 26 Apr 2023 14:18:49 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
 by mx.groups.io with SMTP id smtpd.web11.9247.1682518725454589292
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Apr 2023 07:18:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=op1+jwbu;
 spf=pass (domain: gmail.com, ip: 209.85.128.179, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-5529f3b8623so54804237b3.2
        for <yocto@lists.yoctoproject.org>; Wed, 26 Apr 2023 07:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682518724; x=1685110724;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GWZOnQE+pvTCZ1wXQEA87Cwj+fuCwS4uA85oES97VR0=;
        b=op1+jwbuuoditUO/C0+L14DXwaNp1v/0CXx0aeRZU0VSfoP+GglSWo6w38n1l0z/kI
         spCPTsuh4gMJauKtSOzUS9OFEJq28z1OzQiR6pLsri5t0rSbZEkLH0uFVO01AKrPXU/l
         vQ309gODH0PSD4aLsT0bK35X5dtlasmzwWp/R8Yr5KQAsChkBB1YySXY/KckJNxsHB0M
         Z51dGex0UqmZ7MN+W4Z5jcmZOQl4e36ta7kDyhJ/AbLyAiMUac1abWlo3d07ZfNgPqE3
         jM9bUIJsNkFHHaxXJExo3bAQm0VaS35QyYVspiN6Kp1NM9nOtOSy3lXd/54Zs/Q+eLz3
         eKNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682518724; x=1685110724;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GWZOnQE+pvTCZ1wXQEA87Cwj+fuCwS4uA85oES97VR0=;
        b=jtFVivnFYosz09UefCMU0np6Riz8g3MEgDWIDlT1a1zzqUYmSsBLw7HPuYyZkIrGlf
         JJc2zeBarukfuxIFWmVgmYmyEO7JwIrX6DF3mRO+YVho8WasrhBaH7zv83+T14sVuBVT
         dOvK1ZZTyG1pBM6xQLqWGnYg8pvGB8oqrtPNzpcmbLuyGwgDw72O31G8sbi39UL8ciUr
         CF35Bo3KGzoMEu5WkWGL9GRwReFx4Ff3ASjWeWadYAktTaLvkmcAbOx/AHJLhADXUmVt
         ZrGLBLpXMzKqNsnhgzQslH3MT0Pj5IilTor5i41EAcf3MlWWG3xqPftvNCx1kKieVHZr
         sfwg==
X-Gm-Message-State: AAQBX9eE7Vfc3hQT7U3adZ/XFS+I+PD60x68hi6jiuDKR1BRxJ4mJdA9
	BwAVWecJHt/z//YqZgEQI89yhxfgBho=
X-Google-Smtp-Source: AKy350agV72vTw1ocwpRYzRGDCdnwz+KCyn137mwkcE0LvQbx7kQuje/szWMx9iuBo9U/mKyY/lQqg==
X-Received: by 2002:a81:5291:0:b0:54f:e0e7:c6fb with SMTP id g139-20020a815291000000b0054fe0e7c6fbmr14378812ywb.8.1682518724281;
        Wed, 26 Apr 2023 07:18:44 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:dca5:ab45:75c1:b60d])
        by smtp.gmail.com with ESMTPSA id p71-20020a0de64a000000b00545b9498c1asm4214462ywe.12.2023.04.26.07.18.43
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 07:18:43 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/4] recipes-tpm: use this for common tpm recipes
Date: Wed, 26 Apr 2023 10:18:38 -0400
Message-Id: <20230426141840.764144-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230426141840.764144-1-akuster808@gmail.com>
References: <20230426141840.764144-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Apr 2023 14:18:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59785

a bit of re-org

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../libtpm/files/Convert-another-vdprintf-to-dprintf.patch        | 0
 .../libtpm/files/Use-format-s-for-call-to-dprintf.patch           | 0
 .../libtpm/files/fix_signed_issue.patch                           | 0
 meta-tpm/{recipes-tpm1 => recipes-tpm}/libtpm/libtpm_0.9.5.bb     | 0
 .../{recipes-tpm1 => recipes-tpm}/swtpm/files/fix_fcntl_h.patch   | 0
 .../swtpm/files/fix_lib_search_path.patch                         | 0
 .../{recipes-tpm1 => recipes-tpm}/swtpm/swtpm-wrappers-native.bb  | 0
 meta-tpm/{recipes-tpm1 => recipes-tpm}/swtpm/swtpm_0.7.3.bb       | 0
 8 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-tpm/{recipes-tpm1 => recipes-tpm}/libtpm/files/Convert-another-vdprintf-to-dprintf.patch (100%)
 rename meta-tpm/{recipes-tpm1 => recipes-tpm}/libtpm/files/Use-format-s-for-call-to-dprintf.patch (100%)
 rename meta-tpm/{recipes-tpm1 => recipes-tpm}/libtpm/files/fix_signed_issue.patch (100%)
 rename meta-tpm/{recipes-tpm1 => recipes-tpm}/libtpm/libtpm_0.9.5.bb (100%)
 rename meta-tpm/{recipes-tpm1 => recipes-tpm}/swtpm/files/fix_fcntl_h.patch (100%)
 rename meta-tpm/{recipes-tpm1 => recipes-tpm}/swtpm/files/fix_lib_search_path.patch (100%)
 rename meta-tpm/{recipes-tpm1 => recipes-tpm}/swtpm/swtpm-wrappers-native.bb (100%)
 rename meta-tpm/{recipes-tpm1 => recipes-tpm}/swtpm/swtpm_0.7.3.bb (100%)

diff --git a/meta-tpm/recipes-tpm1/libtpm/files/Convert-another-vdprintf-to-dprintf.patch b/meta-tpm/recipes-tpm/libtpm/files/Convert-another-vdprintf-to-dprintf.patch
similarity index 100%
rename from meta-tpm/recipes-tpm1/libtpm/files/Convert-another-vdprintf-to-dprintf.patch
rename to meta-tpm/recipes-tpm/libtpm/files/Convert-another-vdprintf-to-dprintf.patch
diff --git a/meta-tpm/recipes-tpm1/libtpm/files/Use-format-s-for-call-to-dprintf.patch b/meta-tpm/recipes-tpm/libtpm/files/Use-format-s-for-call-to-dprintf.patch
similarity index 100%
rename from meta-tpm/recipes-tpm1/libtpm/files/Use-format-s-for-call-to-dprintf.patch
rename to meta-tpm/recipes-tpm/libtpm/files/Use-format-s-for-call-to-dprintf.patch
diff --git a/meta-tpm/recipes-tpm1/libtpm/files/fix_signed_issue.patch b/meta-tpm/recipes-tpm/libtpm/files/fix_signed_issue.patch
similarity index 100%
rename from meta-tpm/recipes-tpm1/libtpm/files/fix_signed_issue.patch
rename to meta-tpm/recipes-tpm/libtpm/files/fix_signed_issue.patch
diff --git a/meta-tpm/recipes-tpm1/libtpm/libtpm_0.9.5.bb b/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.5.bb
similarity index 100%
rename from meta-tpm/recipes-tpm1/libtpm/libtpm_0.9.5.bb
rename to meta-tpm/recipes-tpm/libtpm/libtpm_0.9.5.bb
diff --git a/meta-tpm/recipes-tpm1/swtpm/files/fix_fcntl_h.patch b/meta-tpm/recipes-tpm/swtpm/files/fix_fcntl_h.patch
similarity index 100%
rename from meta-tpm/recipes-tpm1/swtpm/files/fix_fcntl_h.patch
rename to meta-tpm/recipes-tpm/swtpm/files/fix_fcntl_h.patch
diff --git a/meta-tpm/recipes-tpm1/swtpm/files/fix_lib_search_path.patch b/meta-tpm/recipes-tpm/swtpm/files/fix_lib_search_path.patch
similarity index 100%
rename from meta-tpm/recipes-tpm1/swtpm/files/fix_lib_search_path.patch
rename to meta-tpm/recipes-tpm/swtpm/files/fix_lib_search_path.patch
diff --git a/meta-tpm/recipes-tpm1/swtpm/swtpm-wrappers-native.bb b/meta-tpm/recipes-tpm/swtpm/swtpm-wrappers-native.bb
similarity index 100%
rename from meta-tpm/recipes-tpm1/swtpm/swtpm-wrappers-native.bb
rename to meta-tpm/recipes-tpm/swtpm/swtpm-wrappers-native.bb
diff --git a/meta-tpm/recipes-tpm1/swtpm/swtpm_0.7.3.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.7.3.bb
similarity index 100%
rename from meta-tpm/recipes-tpm1/swtpm/swtpm_0.7.3.bb
rename to meta-tpm/recipes-tpm/swtpm/swtpm_0.7.3.bb
-- 
2.25.1


