Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web09.20599.1626649652221300633
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jul 2021 16:07:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FzIQSrXU;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id jx7-20020a17090b46c7b02901757deaf2c8so10959719pjb.0
        for <yocto@lists.yoctoproject.org>; Sun, 18 Jul 2021 16:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=I+OCoMyElxrU35W6+lhL1vJwZOzNWRxzMMmsmhCZLxw=;
        b=FzIQSrXUXzaj3o9hotKALWeH3UYGK52BmhBhbRdf1kEmZpsrgv9XLuiDkfoPIkcWB2
         0Uhg5YeDRVnOl27noC217VCuhsVYIXAZfcygbzQRs4GtGETFjcMaRWO0T44aJjRP8oT1
         2qp3NApsVb22MB5qxABNR1YZ/LNsa+anDupvPz9hSngG/HGhbe4xdOngRzqplcEmH2Gg
         gShDxzmYjU1Npe+7vycX4Lvca6rcSv5IGiIF9G9R+Gb8WB0sjZpy0B4RUk9pCzDtA+Yu
         x6GLHIXS1QhENOZYJMhS0FHaLrfX7Ve8HaEEPeYFCEi4aquJ9UuPXcqeNuG5Hz8jsp0n
         IzwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=I+OCoMyElxrU35W6+lhL1vJwZOzNWRxzMMmsmhCZLxw=;
        b=eMlSuzFaQlVLDGqXmqDbwkFWAeIxXog9eeh1ms0+maGJk1wsx+mIwY8lr/VvMl7Zys
         XtpEzmPd1J/3jOLB1S4J6S8HaS3tSfwZKR2SPARwyhJmOAFCFHwhIXqkWI2BZvrLinb3
         ymdjLHbuSfoEi+WTH5w5s1X7hmRrNDOHjN2LUpUqsct/cl3+rKjwvQPUR7KsO2FQXM7V
         QZfQdTfTetQdBykzGw0ztQjH4YWt7loazXCzOotMbs7P5+qmLm2klL3TbAuSYRZlwYhq
         LXtX9xYGRnzk+S+Jrvolxc5b2uUqhtYTON/XcJdQpURdbjLfrZkEXq70EVtGRzcthy0f
         4yYA==
X-Gm-Message-State: AOAM531P03ii4wfch1ZPFOH6BP4jE8uIKKr9P/EMkam3WAYkCeZukCdp
	P3D+3dTsty7N614t/5A3LcXOz7vETrQJmg==
X-Google-Smtp-Source: ABdhPJybeiz0PVbBAp9wca2R8911G63CPbaFg29KyyQ6tMKxdLSXinlI3Wl1tw4NvNuF5anzTPMbPw==
X-Received: by 2002:a17:902:f546:b029:12b:fd9:3527 with SMTP id h6-20020a170902f546b029012b0fd93527mr17180778plf.74.1626649651470;
        Sun, 18 Jul 2021 16:07:31 -0700 (PDT)
Return-Path: <ticotimo@gmail.com>
Received: from sid.hsd1.or.comcast.net ([2601:1c0:6000:1830:7cf5:d4d2:8539:2774])
        by smtp.gmail.com with ESMTPSA id t2sm17440589pjq.0.2021.07.18.16.07.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 16:07:31 -0700 (PDT)
From: "Tim Orling" <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <timothy.t.orling@intel.com>
To: yocto@lists.yoctoproject.org
Cc: mhalstead@linuxfoundation.org,
	Tim Orling <timothy.t.orling@intel.com>
Subject: [layerindex-web][PATCH 02/15] requirements.txt: fix range check
Date: Sun, 18 Jul 2021 16:07:07 -0700
Message-Id: <04f7b052107b0265e70ae23adc6c3d011ca589d4.1626647881.git.timothy.t.orling@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1626647881.git.timothy.t.orling@intel.com>
References: <cover.1626647881.git.timothy.t.orling@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The range check needs a comma between >=2.2 and <2.3,
otherwise we end up with Django 3.2.5 installed and
we are not ready for that yet.

Signed-off-by: Tim Orling <timothy.t.orling@intel.com>
---
 requirements.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/requirements.txt b/requirements.txt
index c7399ff..1c2c4a1 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -3,7 +3,7 @@ beautifulsoup4==4.8.1
 billiard==3.6.1.0
 celery==4.3.0
 confusable-homoglyphs==3.2.0
-Django>=2.2<2.3
+Django>=2.2,<2.3
 django-appconf==1.0.3
 django-axes==4.5.4
 django-bootstrap-pagination==1.7.1
-- 
2.32.0

