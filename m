Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web10.20847.1626649657912702982
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jul 2021 16:07:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eEFlYmIf;
 spf=pass (domain: gmail.com, ip: 209.85.216.42, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id g6-20020a17090adac6b029015d1a9a6f1aso10370012pjx.1
        for <yocto@lists.yoctoproject.org>; Sun, 18 Jul 2021 16:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=H0eCom7hTJl9Nlgzd6RnKO8IgnuMPhfe98sNp4azONI=;
        b=eEFlYmIfBmx51X0EjzQdfGPl1qurHN1zuMjmKVPF1aqwltGldVZ+hYZAMWO7biR4hI
         qySvr8xw4Z+eDSX2NWobguyM9xoNfKo/qS8DQQeEnoH0GG8Rj1aCBWmyLI76B7jCSGtz
         bpxYxqsTiB0KVOpvfTzR/EXIdnrhPJDsrv3Z6LsJvD9YzfYZA8/o96LJ3KNtnt7Epltr
         wqwOmCnn8kmqu66OfXKObSeJvOItT5QFVSsjY6EOIXZX6uUubdlBzbul2a1zQS8IRR7p
         y+zep9IoN8vzrPpLMBXPqqJubqAVR51IcCiyFQBI8Onvp780vWoIMU6pBrORqIlLdiDF
         oQ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=H0eCom7hTJl9Nlgzd6RnKO8IgnuMPhfe98sNp4azONI=;
        b=CL+Pg3aNU5Qt+lmvhMH3TZaCgygDf/Bi+XP5WVXoFmuZ1gRgvXKRdjsLMp2yBJZU3Y
         Tu/IrBcK3EQIki1+p3dzeQFf4BzkAyuXxoAUse7O3dG0vTjFbQeXXRg2Dt3J2TYFrsz7
         xrGG7uc+R364iTOfAWgvUgo/1EvA4lYQPbujO6LKmTN3P62hv2WO8A4xwSLzgYhLTsWJ
         QfCy+g+g2LlG328q979DyLk8zavCZPhOVXQAsZHHqiR26JCXjPezFdE0EBJhBNZSCy9A
         U5TyZy8yPIsC3f8Q1vdWZ6hti24f66TKd1irLTXBqKcu0wab3TAstuK7dKx5wnnOeiMy
         E3dw==
X-Gm-Message-State: AOAM530LQM+VaSyNKIfD3jfeANtyGsbbjrhYWPvaDuWUDxDCixvegb1n
	IQRWrd4NbxcWFZDnC/dcnke0vVGgxXpxDQ==
X-Google-Smtp-Source: ABdhPJwNPuwJaCT9Szc2qSYeHKFEHnlreAo9U9ZYxGSiSyCUs+EZjdss2aog+wuAhgzLZSeYKYZFjA==
X-Received: by 2002:a17:903:2451:b029:12b:3feb:a3ce with SMTP id l17-20020a1709032451b029012b3feba3cemr16996097pls.83.1626649657269;
        Sun, 18 Jul 2021 16:07:37 -0700 (PDT)
Return-Path: <ticotimo@gmail.com>
Received: from sid.hsd1.or.comcast.net ([2601:1c0:6000:1830:7cf5:d4d2:8539:2774])
        by smtp.gmail.com with ESMTPSA id t2sm17440589pjq.0.2021.07.18.16.07.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 16:07:37 -0700 (PDT)
From: "Tim Orling" <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <timothy.t.orling@intel.com>
To: yocto@lists.yoctoproject.org
Cc: mhalstead@linuxfoundation.org,
	Tim Orling <timothy.t.orling@intel.com>
Subject: [layerindex-web][PATCH 04/15] dockersetup.py: letsencrypt 2048 bit rsa
Date: Sun, 18 Jul 2021 16:07:09 -0700
Message-Id: <ad2a20c63f7c2f99c65d97712daf3d811b471b28.1626647881.git.timothy.t.orling@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1626647881.git.timothy.t.orling@intel.com>
References: <cover.1626647881.git.timothy.t.orling@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The minimum length for an RSA pem is 2048 for the dummy cert.

Signed-off-by: Tim Orling <timothy.t.orling@intel.com>
---
 dockersetup.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/dockersetup.py b/dockersetup.py
index 04dec91..6a0ab67 100755
--- a/dockersetup.py
+++ b/dockersetup.py
@@ -483,7 +483,7 @@ def setup_https(hostname, http_port, https_port, letsencrypt, cert, cert_key, em
             os.makedirs(local_letsencrypt_cert_dir)
         keyfile = os.path.join(letsencrypt_cert_subdir, 'privkey.pem')
         certfile = os.path.join(letsencrypt_cert_subdir, 'fullchain.pem')
-        return_code = subprocess.call(['openssl', 'req', '-x509', '-nodes', '-newkey', 'rsa:1024', '-days', '1', '-keyout', os.path.join(local_cert_dir, keyfile), '-out', os.path.join(local_cert_dir, certfile), '-subj', '/CN=localhost'], shell=False)
+        return_code = subprocess.call(['openssl', 'req', '-x509', '-nodes', '-newkey', 'rsa:2048', '-days', '1', '-keyout', os.path.join(local_cert_dir, keyfile), '-out', os.path.join(local_cert_dir, certfile), '-subj', '/CN=localhost'], shell=False)
         if return_code != 0:
             print("Dummy certificate generation failed")
             sys.exit(1)
-- 
2.32.0

