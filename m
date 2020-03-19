Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.3952.1584582815602094630
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bQGBNpCs;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77F4AE01885; Wed, 18 Mar 2020 18:53:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.196 listed in list.dnswl.org]
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33B5BE01888
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:32 -0700 (PDT)
Received: by mail-pf1-f196.google.com with SMTP id z65so493939pfz.8
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=VPN1VAZ5rvymNgYazQf8UMJP8cqUlsOqqr7KlNEi4Ds=;
        b=bQGBNpCskcJ9w3mS23gZ/xDqLDKoJkFo35JBZtqoLtYH8fUhhKQK37Mv9RfVQBHk5u
         Q7dYKmKpmr5i3MhOimBZQCnUfsZ/GRlazSbkwLoUbtM5ehsUAQrvOdZuuE6NxnBMqYja
         MLNAEuFAGTE24xIKQJIX73q+xNy0fLUjJUbdQTLNhV4Eu4jzMDFw1lKcYDXByoGrzk+t
         I+RVIgq7k8IGIVr6wQc0y2Dkih4egcmXT0Kl3LxJTtEeYDG5ro/ZhD8E1rL3ajAB3mDl
         dU6KCN70LGmQyVMbRB5+X6Cgc5PNrRhhnEW2YoBRVAJchXd3mJ7ptHQ94KAUVDTYJh8i
         DvLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references;
        bh=VPN1VAZ5rvymNgYazQf8UMJP8cqUlsOqqr7KlNEi4Ds=;
        b=YySD357LcCahOjnv21LSTRQOGeripQiliQiYYUJmZ7SdS6bO+3JQyB/6bRptcxGB8V
         40+bd8BYElWFNkMigh/rh14GquWFAVVZCcm1O6scEDHcRqGuBQLvukxd2GJucf5+TPyv
         gLWD41kAYkqIDY3lmTcJLCiRQzAdsazeXQgK3Zof0Q4rQyhI/Vg/9WsPTIo03sF4ot8g
         qo/G+9kwZ4EoMwzo1gPoOblv+RI9BF3g8iS2Eb59V0yepOgkPhBYw0hsYQNCyOAGKjgX
         WwiesdX1sE6O8t4Fbs00Su2sRyUU6JGHANdrCOv66fBESOo8hu0Hp/ZEwQS1JiP6vEyO
         325A==
X-Gm-Message-State: ANhLgQ0WdrWIQmNmJMUrAZZmBdTMHtJ7iMwpeb2cO0YpxN4uMWW6fBab
	wwo8Go2SunlaQjPhUckjzWqdx3lpWbo=
X-Google-Smtp-Source: ADFU+vt2DEM4DT2srwLxDt5l3zVuV+K9LGRZkCDmnLVgwHYILso08bG8vmEJsIxi4frNV6+r/B3dSA==
X-Received: by 2002:a62:30c6:: with SMTP id w189mr1324560pfw.257.1584582812644;
        Wed, 18 Mar 2020 18:53:32 -0700 (PDT)
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id 144sm280572pfc.45.2020.03.18.18.53.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:32 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 577E32A099A; Wed, 18 Mar 2020 18:53:31 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH 11/20] linux-yocto: Update the append for 5.x
Date: Wed, 18 Mar 2020 18:53:12 -0700
Message-Id: <20200319015321.15525-11-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20200319015321.15525-1-jpuhlman@mvista.com>
References: <20200319015321.15525-1-jpuhlman@mvista.com>

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 .../linux/{linux-yocto_4.%.bbappend => linux-yocto_5.%.bbappend}          | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename meta-cgl-common/recipes-kernel/linux/{linux-yocto_4.%.bbappend => linux-yocto_5.%.bbappend} (100%)

diff --git a/meta-cgl-common/recipes-kernel/linux/linux-yocto_4.%.bbappend b/meta-cgl-common/recipes-kernel/linux/linux-yocto_5.%.bbappend
similarity index 100%
rename from meta-cgl-common/recipes-kernel/linux/linux-yocto_4.%.bbappend
rename to meta-cgl-common/recipes-kernel/linux/linux-yocto_5.%.bbappend
-- 
2.13.3

