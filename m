Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.14929.1629897420469289151
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Aug 2021 06:17:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rypWeRN6;
 spf=pass (domain: gmail.com, ip: 209.85.128.48, mailfrom: rybczynska@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id d22-20020a1c1d16000000b002e7777970f0so4274181wmd.3
        for <yocto@lists.yoctoproject.org>; Wed, 25 Aug 2021 06:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8wa4nIHfsYKkctuRXsWwMnhrAtThmZd1USLDrgqJS8M=;
        b=rypWeRN6AWSJjGwukZIZ8GZ3j8eTrYSyrVpzhMLHu2cZQQy/RbjwbYCNu1CjwKrIf2
         DQ45OGQN/1l2GUAepIihilFTJGy4cLhiVPUeA8SAJf+AJ0dG+JST4RtnGoI2p1QlN0tX
         HQ16CoOWzZhel6NYf207RIn5V60YUh7GiA0pJcG+9Xrj/9nPchi0i1ILpgjj2IzTyAQK
         ELvoyc0CsScAD1/Mt+/ZJMPAsaOR7/gruurVi7Tq92rxPjslXNH7xaKenop+lbTnKdYH
         w5nPGWx7U/+YUfjcKr3o0Ew+D7uXzEQ3HZ/+qC5jmEJ6h9GuWIJ3bhENLrJ22ovI5og3
         oKmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8wa4nIHfsYKkctuRXsWwMnhrAtThmZd1USLDrgqJS8M=;
        b=GzKZHcAvvjn+2YvTB78D2BPK60nCJl/G5tZHzF1dl4h/L0DrOdPdA2XJbxekIcMvGg
         xiWWd18AYlRvAjIOdYQZxRnR0P6ZbruE1HfEeOWUm3vpEKqnEzXNJLi8nA4lAdyjJ4Oz
         si1AMVP+Q8YO2crDOUhx7Erp5hv9qlcNw50AqltJ7DCal4Mf1ZD/ha06kLtRBoXsJFLk
         xz1e6TulMyPcrPH2TAwFxEI5EjusilIWtbX9zeozOZopPzXVRYeRneRasvXDjLCKY4Ih
         BCnryZLEfd/+6PpBkGKSkySxP3klV8bWR/wJGdh5fplKCB+0m46ApxE0rH6ayIq7Ntem
         zt3w==
X-Gm-Message-State: AOAM533QoSUkFbGl9E45elArs6fKlyDZ87QROWEhGboCEKuxAfh1qTGY
	xWlteOluI6il+ZR6O8sjqH6hgJ6lBSw=
X-Google-Smtp-Source: ABdhPJy8qONC0AZWHgHNnMp+6Z3j/e9IkkojNvnpy471DrbkYcuxhG3PY5FeIFxoeNCQBiLBt3uHaQ==
X-Received: by 2002:a05:600c:1906:: with SMTP id j6mr9259249wmq.166.1629897418735;
        Wed, 25 Aug 2021 06:16:58 -0700 (PDT)
Return-Path: <rybczynska@gmail.com>
Received: from localhost.localdomain ([80.215.178.202])
        by smtp.gmail.com with ESMTPSA id n1sm8028315wrp.49.2021.08.25.06.16.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 06:16:57 -0700 (PDT)
From: "Marta Rybczynska" <rybczynska@gmail.com>
To: yocto@lists.yoctoproject.org,
	akuster808@gmail.com
Cc: Marta Rybczynska <rybczynska@gmail.com>
Subject: [meta-tpm][PATCH] README: fix mailing lists and a typo
Date: Wed, 25 Aug 2021 15:16:46 +0200
Message-Id: <20210825131646.23471-1-rybczynska@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

A number of typo fixes:
- tmp->tpm in the DISTRO_FEATURES
- update the mailing list address as it was out of date
- update the distro name in the subject

Signed-off-by: Marta Rybczynska <rybczynska@gmail.com>
---
 meta-tpm/README | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-tpm/README b/meta-tpm/README
index 4441dd2..5722a92 100644
--- a/meta-tpm/README
+++ b/meta-tpm/README
@@ -5,7 +5,7 @@ The bbappend files for some recipes (e.g. linux-yocto) in this layer need
 to have 'tpm' in DISTRO_FEATURES to have effect.
 To enable them, add in configuration file the following line.
 
-  DISTRO_FEATURES:append = " tmp"
+  DISTRO_FEATURES:append = " tpm"
 
 If meta-tpm is included, but tpm is not enabled as a
 distro feature a warning is printed at parse time:
@@ -57,14 +57,14 @@ other layers needed. e.g.:
 Maintenance
 -----------
 
-Send pull requests, patches, comments or questions to yocto@yoctoproject.org
+Send pull requests, patches, comments or questions to yocto@lists.yoctoproject.org
 
 When sending single patches, please using something like:
-'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-security][PATCH'
+'git send-email -1 --to yocto@lists.yoctoproject.org --subject-prefix=meta-security][PATCH'
 
 These values can be set as defaults for this repository:
 
-$ git config sendemail.to yocto@yoctoproject.org
+$ git config sendemail.to yocto@lists.yoctoproject.org
 $ git config format.subjectPrefix meta-security][PATCH
 
 Now you can just do 'git send-email origin/master' to send all local patches.
-- 
2.30.2

