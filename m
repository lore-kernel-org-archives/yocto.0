Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web11.7432.1584498619628010002
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Mar 2020 19:30:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zwc+YnVs;
 spf=pass (domain: gmail.com, ip: 209.85.214.170, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id t3so10482184plz.9
        for <yocto@lists.yoctoproject.org>; Tue, 17 Mar 2020 19:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=7yavmU1c65Y9f/+ID9hPRzOa6uOIqavY2t1lnhHq1XQ=;
        b=Zwc+YnVsmbp4oJJ3dikNijIqcFNC28YKTWEQm0Tu4pCSpwMttpiuGJnOCIoPTxEeVq
         LwyTfj4EKwaRGPALQ/Q9gfaCEkSJDVzsCP7AOXpDREXU3zWbMzHh3ZTzIKF1uwfN4aHt
         imWZ/FYNjhzTu4CHqTLQGu/006Sxzhc6Kb0D5wmamwrn6KykpRPLEvK4wRBQOEBlwNaj
         h+rv39k6Pdl/fvVZXzfvy9oAOMtX6JkT311Yevg1yMReIKcHxOPwwCC1k9M0BKMoffzE
         p7XsXCroEx0yqH/YgbWCpnraPxbLXeqUJ4mNy8XAgilWiF+eWl6HuzieEbntQFg57kJy
         HwSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=7yavmU1c65Y9f/+ID9hPRzOa6uOIqavY2t1lnhHq1XQ=;
        b=qlk+QK5WOZjCtF/ssmaSNV3F/fJzErw1WdingMnk7Qq2pgG2z8EpQMZRyUbLGBlsWX
         1kcGIhEpwe+mHxlcwQ0u9RJcdHmtUfhkeAbgVGaLWcX04tN6f0J75+8mmPp74LCi0kzb
         oRKeTF7T/6bDdI1HftXdoqguIEeU556CIpyxajhXo5kSSyGCCGcql8s/D7nOj/IWZ+4u
         QzYhIIzQsv4BJLDZ2yUhgyL/6uxsC/IOCcNUQdEzpX5ZsT57HyjAlxL5jQak7YOy7R4R
         8h8G79TpxpTqTqcbr8CQ9NttTEDcmU/rqPnaaU1ZlkHV+WdYp9z31ZMutV6laqVYBrfK
         mpag==
X-Gm-Message-State: ANhLgQ2d6S0F2i+xi0jvmvPGvYpSg7/6t4zghJzkhqBtpOFqAq47IeXZ
	zrE2PxSe+l4gpTRvlqiBd9eN7XMo
X-Google-Smtp-Source: ADFU+vuqCE1cGNDG/lSGo/9Q+ADEAQo86Jvp8TSYOmhfTnpqVCP1tDw+/jJoJnmCdtkxjFh/BIIFTg==
X-Received: by 2002:a17:90a:5898:: with SMTP id j24mr2371506pji.118.1584498618945;
        Tue, 17 Mar 2020 19:30:18 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id z3sm4340083pfz.155.2020.03.17.19.30.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 19:30:18 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/7] clamav: move to recipes-scanners
Date: Wed, 18 Mar 2020 02:30:11 +0000
Message-Id: <20200318023014.31723-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200318023014.31723-1-akuster808@gmail.com>
References: <20200318023014.31723-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 {recipes-security => recipes-scanners}/clamav/clamav_0.101.5.bb   | 0
 .../clamav/files/clamav-freshclam.service                         | 0
 .../clamav/files/clamav-milter.conf.sample                        | 0
 .../clamav/files/clamav.service                                   | 0
 {recipes-security => recipes-scanners}/clamav/files/clamd.conf    | 0
 .../clamav/files/freshclam-native.conf                            | 0
 .../clamav/files/freshclam.conf                                   | 0
 .../clamav/files/tmpfiles.clamav                                  | 0
 .../clamav/files/volatiles.03_clamav                              | 0
 9 files changed, 0 insertions(+), 0 deletions(-)
 rename {recipes-security => recipes-scanners}/clamav/clamav_0.101.5.bb (100%)
 rename {recipes-security => recipes-scanners}/clamav/files/clamav-freshclam.service (100%)
 rename {recipes-security => recipes-scanners}/clamav/files/clamav-milter.conf.sample (100%)
 rename {recipes-security => recipes-scanners}/clamav/files/clamav.service (100%)
 rename {recipes-security => recipes-scanners}/clamav/files/clamd.conf (100%)
 rename {recipes-security => recipes-scanners}/clamav/files/freshclam-native.conf (100%)
 rename {recipes-security => recipes-scanners}/clamav/files/freshclam.conf (100%)
 rename {recipes-security => recipes-scanners}/clamav/files/tmpfiles.clamav (100%)
 rename {recipes-security => recipes-scanners}/clamav/files/volatiles.03_clamav (100%)

diff --git a/recipes-security/clamav/clamav_0.101.5.bb b/recipes-scanners/clamav/clamav_0.101.5.bb
similarity index 100%
rename from recipes-security/clamav/clamav_0.101.5.bb
rename to recipes-scanners/clamav/clamav_0.101.5.bb
diff --git a/recipes-security/clamav/files/clamav-freshclam.service b/recipes-scanners/clamav/files/clamav-freshclam.service
similarity index 100%
rename from recipes-security/clamav/files/clamav-freshclam.service
rename to recipes-scanners/clamav/files/clamav-freshclam.service
diff --git a/recipes-security/clamav/files/clamav-milter.conf.sample b/recipes-scanners/clamav/files/clamav-milter.conf.sample
similarity index 100%
rename from recipes-security/clamav/files/clamav-milter.conf.sample
rename to recipes-scanners/clamav/files/clamav-milter.conf.sample
diff --git a/recipes-security/clamav/files/clamav.service b/recipes-scanners/clamav/files/clamav.service
similarity index 100%
rename from recipes-security/clamav/files/clamav.service
rename to recipes-scanners/clamav/files/clamav.service
diff --git a/recipes-security/clamav/files/clamd.conf b/recipes-scanners/clamav/files/clamd.conf
similarity index 100%
rename from recipes-security/clamav/files/clamd.conf
rename to recipes-scanners/clamav/files/clamd.conf
diff --git a/recipes-security/clamav/files/freshclam-native.conf b/recipes-scanners/clamav/files/freshclam-native.conf
similarity index 100%
rename from recipes-security/clamav/files/freshclam-native.conf
rename to recipes-scanners/clamav/files/freshclam-native.conf
diff --git a/recipes-security/clamav/files/freshclam.conf b/recipes-scanners/clamav/files/freshclam.conf
similarity index 100%
rename from recipes-security/clamav/files/freshclam.conf
rename to recipes-scanners/clamav/files/freshclam.conf
diff --git a/recipes-security/clamav/files/tmpfiles.clamav b/recipes-scanners/clamav/files/tmpfiles.clamav
similarity index 100%
rename from recipes-security/clamav/files/tmpfiles.clamav
rename to recipes-scanners/clamav/files/tmpfiles.clamav
diff --git a/recipes-security/clamav/files/volatiles.03_clamav b/recipes-scanners/clamav/files/volatiles.03_clamav
similarity index 100%
rename from recipes-security/clamav/files/volatiles.03_clamav
rename to recipes-scanners/clamav/files/volatiles.03_clamav
-- 
2.17.1

