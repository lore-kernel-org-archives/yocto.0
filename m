Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web11.22585.1615131321008043002
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Mar 2021 07:35:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SjPi2+NJ;
 spf=pass (domain: gmail.com, ip: 209.85.216.42, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id f2-20020a17090a4a82b02900c67bf8dc69so1624171pjh.1
        for <yocto@lists.yoctoproject.org>; Sun, 07 Mar 2021 07:35:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=HBSWPNKdOpvM2YcJnY8Mzrqz50nttEB7Y/dq8g925aY=;
        b=SjPi2+NJNbIlpoymPLIJ4xaRxlkFJjfXXAnKoY9YRGQJhzAtyDPd8MI04by9FjffDc
         kbDP8HUFpc9Q/JI147q+dkroXQHT2eePaCL0nEUHPjAptzG12ZRLY46hTFaoSd9EZ6Ei
         VcYxYKPIk1VX4jkWK3SUgd80LtCiyeWJnAjVF3MWCESS+/pmIDGu3wAzjq6Z7Xj3zPY/
         NY33yJWVJt2Y/6+Io1n4AclhpAmMmThrMSvMEH78IICcVpJKmkcwcvD1uQ72n0kz+m1G
         wZh/xXo1DH37RuyIJPi8Q2vnUAULDO7QWMfx0IC6kwwI12R3DRUaUluTGXjRvErZ5P2Y
         Ly3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=HBSWPNKdOpvM2YcJnY8Mzrqz50nttEB7Y/dq8g925aY=;
        b=mTcXn9+BVNotRE5Dav333zP4TS/GzruJTg/Uo6yLLhdoxxi+1CQoe+YMebN8B1n6B8
         rAdWvr2dLaZzQBkinJhQdoH2VNZ1/dB16SvJnLBfdBPSvw/GdB0OzJ5wiyco3GvqyHFM
         QUKxqaeCowJVi9R+5AuFzhNGh3nQHG1Gc9kcXdgGdLHVkoSSpRx3qHpoaJBk/quC5beA
         oc1iO2d11+baKjoMTVFSCM9uDY3gCIfHI/mwA/33NSXnZNyvyjNxMeCj7EJc/ly1B5uT
         pZ11+Vdn5TiCT0mUbyjY4kIOnj84CUh6Q2Jqq7gSZMy7NDWWDzPz1uNN8I3/W2XPn+b4
         chFg==
X-Gm-Message-State: AOAM530mFxVmRE4MZzL8fuv0pi/swH1Iz185zK52B6hR7ArSx6SzVlRR
	dmfkV/nCFfIkG9jMrt8NjAbFH8YPzws=
X-Google-Smtp-Source: ABdhPJxcOCxUBknt7VEebkCMicPvzkmypEx281D78WzAz2CcRfM7YTXxwXEhr3bXL/RiWa+JkGtMPA==
X-Received: by 2002:a17:90a:df85:: with SMTP id p5mr19989086pjv.204.1615131319984;
        Sun, 07 Mar 2021 07:35:19 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:4de0:7e40:32a3:ab29])
        by smtp.gmail.com with ESMTPSA id w26sm4745997pfn.33.2021.03.07.07.35.19
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Mar 2021 07:35:19 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 1/8] libtpm: update to 0.8.2
Date: Sun,  7 Mar 2021 07:35:10 -0800
Message-Id: <20210307153517.5761-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm/libtpm/{libtpm_0.7.2.bb => libtpm_0.8.2.bb} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename meta-tpm/recipes-tpm/libtpm/{libtpm_0.7.2.bb => libtpm_0.8.2.bb} (100%)

diff --git a/meta-tpm/recipes-tpm/libtpm/libtpm_0.7.2.bb b/meta-tpm/recipes-tpm/libtpm/libtpm_0.8.2.bb
similarity index 100%
rename from meta-tpm/recipes-tpm/libtpm/libtpm_0.7.2.bb
rename to meta-tpm/recipes-tpm/libtpm/libtpm_0.8.2.bb
-- 
2.17.1

