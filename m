Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.25967.1619991823128769095
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 May 2021 14:43:43 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@twobit-org.20150623.gappssmtp.com header.s=20150623 header.b=zVO9ddYs;
 spf=none, err=SPF record not found (domain: twobit.org, ip: 198.145.29.25, mailfrom: flihp@twobit.org)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B067D38C05F4
	for <yocto@yoctoproject.org>; Sun,  2 May 2021 21:43:41 +0000 (UTC)
Received: by mail-pj1-f48.google.com with SMTP id md17so1993411pjb.0
        for <yocto@yoctoproject.org>; Sun, 02 May 2021 14:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=twobit-org.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kqA+GZd32QqlaTrEOwtuUaloqEWZimYjo3B4fRVL80A=;
        b=zVO9ddYsLC+xB7JA1G+31ixVLpDxwKzI0nyzYkOfTbweebO/fyWDyaL5G+UJrZ+s6Y
         P6xht3zLgikka5bKkc+lVPaP2Iucbh9piwIxlLX8gaJ13Bdtjc9Dss69oQFBWtbCi4Jd
         NjvfIZSoB1xarnOwECzqwKWUzYUHFfXKrseLb4fuF6MAGjkuL43NqV9rioPLI22BljBz
         Dy2knIrEW0KwHJl/EIppUxFIriS6VTDxlvRItgrdOvxfYWAf3TY5AUSYl8Vck+nzhZz8
         Z2CIKo0IaMATIFUWFJyTy/kdIlYtb1uiTDr6iI9jUVe6Lrw1FlLqCVs6gP3SJBttcnX4
         bshA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kqA+GZd32QqlaTrEOwtuUaloqEWZimYjo3B4fRVL80A=;
        b=Lnv2NrU4qzLXff+b23DhS3u4vsCDV5lphZFYcO0o8vuirGaob+jMXHh645+U12n3Pp
         v2GZb7yj7g+nkbYk57XK1LNdznxVGAUsp0ilypi9Sh7k2BNAAO6S1YtAqY/YmY8vKIXn
         Qq0pJctTzhWtOuR7YnrIOkZb6Lm2/63MYVNAd8Ivi9Dq0h2nFUDdOe7AoMXPdrav0/Hr
         OWc7SLVcG6reB3GzoH614LRNbYZVF/DDgMOhU2c51oFWYSfM3lRi+bU3zpt9XZrCcjSz
         BJ4fGKlHhkjlNHQ32s6X19ZtMJRW3ny8bcXls3awNd3BxnZXGQncoe3CHf2q9Nahmv8A
         /9aQ==
X-Gm-Message-State: AOAM530H1zWUT3CtjviDu3MpO9KMKOl1NJ/lwqsIlBp0tsm8StH/Tk/E
	Rm5C3fVTxNX3OSq5NRtiJaHOp4ooG5YrYWIa
X-Google-Smtp-Source: ABdhPJzzeHdH3TtQ5oVRTdqyq2aEmMUk9Mf+C39xDnQ4NiLL3nbI6KX+o2O8stpU6zXaXkzS1ePz4A==
X-Received: by 2002:a17:90a:6745:: with SMTP id c5mr20288637pjm.4.1619991821139;
        Sun, 02 May 2021 14:43:41 -0700 (PDT)
Received: from jake.grassy-knoll.twobit.us ([76.243.124.129])
        by smtp.gmail.com with ESMTPSA id n129sm2251956pfn.54.2021.05.02.14.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 May 2021 14:43:40 -0700 (PDT)
From: flihp@twobit.org
X-Google-Original-From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Cc: joe_macdonald@mentor.com
Subject: [meta-selinux] MAINTAINERS: Remove myself.
Date: Sun,  2 May 2021 14:43:14 -0700
Message-Id: <20210502214314.11029-1-flihp@twobit.us>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

I have been inactive for an extended period.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 MAINTAINERS | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 36c451f..3166b32 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -24,11 +24,6 @@ F:	conf
 F:	classes
 F:	recipes-*
=20
-M:	Philip Tricca <flihp@twobit.us>
-F:	conf
-F:	classes
-F:	recipes-*
-
 COMMON
 M:	Yi Zhao <yi.zhao@windriver.com>
 F:	conf
--=20
2.20.1

