Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web11.20535.1626649648900222689
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jul 2021 16:07:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oDqaHUy4;
 spf=pass (domain: gmail.com, ip: 209.85.214.180, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id x16so8625577plg.3
        for <yocto@lists.yoctoproject.org>; Sun, 18 Jul 2021 16:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nnfpZ7gE32UbNosa6u6XSovk+Db+DeGb5LGZrwfd8TE=;
        b=oDqaHUy4vYT01GctwvwGcbN472xFmGU72kHQWF6IOYekMj5ZS2eEO73i+fuFyncimm
         cwe7xg+149DjrjD9YZQNjVpc4F48HIcNqamJPLlJpbSXEChVdholw+V6wiCVs0jGcmsv
         mwQ0oZJzm1K4wns/J8r68tyJsPT32vy8H157IWGakTEtSIr5sbrjYCKWef6h4KtqmlBM
         qMi3de4gY9txsFpCIGaESha/aXekZn2/c6NsQBkuyQ/cggQPi9c/o/Mt4yW+0Ny834YE
         oP/pqyEPckpqHCxomHQtqR3bCvRL2YuMnEqsr0fC3GrOSnx+pvjddzqnxLDei11bBOVu
         +b2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nnfpZ7gE32UbNosa6u6XSovk+Db+DeGb5LGZrwfd8TE=;
        b=qhq9+f8hHFRpwOIFvPEah/O1Fe2pdR3oKUAYvpjzlMFHVKZcZ3ff9vv5/zvdUL2mJi
         H+je6h4kgxA6qMxLkIlCQ6RrMiGmwb3EZtNf+gxY1DXfjVscT0QQf381fcV+Tf9EjXSo
         5P7pi2MWtLGR/v221XLA/0y+rbAa+9DN4dorxXIjE6tPkt+2a/enex2mh7nGD4jiBrx7
         qXaNT52JgQeC2jEFcKN5mlm4c7W4BHMCdM0GUhDinjOnGWn9/1eVwFS/3UTIMUXzaOMO
         gD9dGgZjH0PD6L+vduvZgqs+SBJIpyyKLkV7PQXw+G5VWOOlvXMDqa99orKH7TGxNYyj
         3Blg==
X-Gm-Message-State: AOAM530Y2DJuTINpZ0igq8z/P3qO74St1FTm7TR8sbUjbgauHnAgDHVH
	ZhFeVkrVSn4/lfGaUxpc9JjYG1v0LmiSMw==
X-Google-Smtp-Source: ABdhPJxej16DOXGm7dzHPvkWW0lVqUPO7SnrEJ/FTZ+88wKumoQ66RS4TmEMLI4We/kucZG+iakWMA==
X-Received: by 2002:a17:903:404d:b029:129:b048:528b with SMTP id n13-20020a170903404db0290129b048528bmr17137159pla.65.1626649648299;
        Sun, 18 Jul 2021 16:07:28 -0700 (PDT)
Return-Path: <ticotimo@gmail.com>
Received: from sid.hsd1.or.comcast.net ([2601:1c0:6000:1830:7cf5:d4d2:8539:2774])
        by smtp.gmail.com with ESMTPSA id t2sm17440589pjq.0.2021.07.18.16.07.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 16:07:28 -0700 (PDT)
From: "Tim Orling" <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <timothy.t.orling@intel.com>
To: yocto@lists.yoctoproject.org
Cc: mhalstead@linuxfoundation.org,
	Tim Orling <timothy.t.orling@intel.com>
Subject: [layerindex-web][PATCH 01/15] dockersetup.py: fix EMAIL_USE_SSL/TLS
Date: Sun, 18 Jul 2021 16:07:06 -0700
Message-Id: <4618400fac1083ab6595529c977660fc52fda97e.1626647881.git.timothy.t.orling@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1626647881.git.timothy.t.orling@intel.com>
References: <cover.1626647881.git.timothy.t.orling@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Need to concatenate str(boolean), not bool

Signed-off-by: Tim Orling <timothy.t.orling@intel.com>
---
 dockersetup.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/dockersetup.py b/dockersetup.py
index e45a846..04dec91 100755
--- a/dockersetup.py
+++ b/dockersetup.py
@@ -353,13 +353,13 @@ def edit_dockercompose(hostname, dbpassword, dbapassword, secretkey, rmqpassword
         elif '- "EMAIL_USE_SSL' in line:
             format = line[0:line.find('- "EMAIL_USE_SSL')].replace("#", "")
             if email_ssl:
-                newlines.append(format + '- "EMAIL_USE_SSL=' + email_ssl + '"\n')
+                newlines.append(format + '- "EMAIL_USE_SSL=' + str(email_ssl) + '"\n')
             else:
                 newlines.append(format + '#- "EMAIL_USE_SSL=<set this here if needed>"\n')
         elif '- "EMAIL_USE_TLS' in line:
             format = line[0:line.find('- "EMAIL_USE_TLS')].replace("#", "")
             if email_tls:
-                newlines.append(format + '- "EMAIL_USE_TLS=' + email_tls + '"\n')
+                newlines.append(format + '- "EMAIL_USE_TLS=' + str(email_tls) + '"\n')
             else:
                 newlines.append(format + '#- "EMAIL_USE_TLS=<set this here if needed>"\n')
         elif "ports:" in line:
-- 
2.32.0

