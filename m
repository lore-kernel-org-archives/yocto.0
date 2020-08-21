Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
 by mx.groups.io with SMTP id smtpd.web11.140909.1598036885126852054
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Aug 2020 12:08:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=h86LTvk0;
 spf=pass (domain: gmail.com, ip: 209.85.222.196, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f196.google.com with SMTP id j187so2291247qke.11
        for <yocto@lists.yoctoproject.org>; Fri, 21 Aug 2020 12:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DFTn7WJ/B1l/ktSFeuiFq7vYP6lYtcuLEP6wiNzh4Yc=;
        b=h86LTvk0LPT3/EAv84vlr+PmGg3U2aSW1ux7UBExuzOLSNwVsXO8gFEpU42dpjn8U7
         HPPIGosDf4juAM+uzdD+Zy2zedUZ32lcz9slvI3MlXom5AKPBRkueoV/t/hvlC/pLm23
         deW4umcLTCRf18voSeTp10LV4wD+g0/BuEz5FFvMrOQDRIxGScp15YC4ZIWgympMMGyI
         kMnugPqhLOH484uIzGv4jFpd2CLPXFRXaX5x9M5PVpgMRQonjriTBXFQWPMY0E+bzijj
         OFXMsECIC9nNkm5v9jOyJR6PlTauy629OJlO1J9EgNKkW2wtRpewE+ajq4BxPw5lGF5e
         EnVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DFTn7WJ/B1l/ktSFeuiFq7vYP6lYtcuLEP6wiNzh4Yc=;
        b=TpNyNQI8JkGYRR7893LVSQA9lpqNotVnm0tHlAdubVL9jewk62sxC44C1Koh2Lechw
         A2NSHWdbSZQbk0pzjdslG7KYVKER9rkswmewSmnh3hr5TRdCC/0TS4bnV+kIDC2cvnnN
         oXZu2v7FYrS1as84J1RdTqteuo4XwiJof8RI1Qab1g5XwegYvuof5b7KLkf5iB5K1T/m
         c72G1kMUjp8wtbCEdhJm5Z5+I/lleFI0M/12GB190ODBqxLBhqe3C4fIyEBTI7kU+SOA
         Ad9vmGAsztItBW+GQHGDLkf/Di5E7gWtALw3mYZ9yDYvZ7Q+CU+txjUXVY3vrik2wXaT
         GzuA==
X-Gm-Message-State: AOAM5323CHAQJCFT+195rTYTuXN0/zPjPyW5CgepX3pvmoLckkdGKihy
	G69stFgFVU+8Ub+4SxPguC+KYwbvy+11VVCe
X-Google-Smtp-Source: ABdhPJwvFupz+uoo3kerRk5GVk9WC2WHdj2pITnenoRabGEpSqvJ/M+nsWvR4Sae4ExybAsD5ah7tg==
X-Received: by 2002:a37:cc5:: with SMTP id 188mr4003432qkm.195.1598036884143;
        Fri, 21 Aug 2020 12:08:04 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from localhost.localdomain (CPE04d4c4975b80-CM64777d5e8820.cpe.net.cable.rogers.com. [174.112.240.214])
        by smtp.gmail.com with ESMTPSA id y46sm2927264qth.78.2020.08.21.12.08.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:08:03 -0700 (PDT)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 0/3] yocto-bsp/poky: kernel updates and default
Date: Fri, 21 Aug 2020 15:07:59 -0400
Message-Id: <cover.1598036643.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Richard,

Similar to oe-core, these are the patches I'm carrying to update the
reference BSPs to the latest 5.4 (we still need a 5.8 bbappend and
confirmed booting), as well as a switch to 5.8 as the default.

That being said, I'm not sure of the way you'd like the default kernel
set to differentiate between the reference BSPs and qemu. So currently,
I just have the single preferred version set.

Cheers,

Bruce

The following changes since commit c9d0bb421a2f7c6783f2c2bbf47c95da5537985d:

  linux-yocto/5.8: update to v5.8.2 (2020-08-21 14:55:05 -0400)

are available in the Git repository at:

  git://git.yoctoproject.org/poky-contrib zedd/kernel-yocto
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (3):
  poky: set preferred version for linux-yocto to be v5.8
  yocto-bsp: update to v5.4.56
  yocto-bsp: update to v5.4.58

 meta-poky/conf/distro/poky.conf                  |  2 +-
 .../linux/linux-yocto_5.4.bbappend               | 16 ++++++++--------
 2 files changed, 9 insertions(+), 9 deletions(-)

-- 
2.19.1

