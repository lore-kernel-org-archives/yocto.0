Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web10.3597.1593716094523963399
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jul 2020 11:54:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=YO3A4JyA;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.49, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f49.google.com with SMTP id gc9so6323491pjb.2
        for <yocto@lists.yoctoproject.org>; Thu, 02 Jul 2020 11:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=hPUxDhoiQ10tEnyF6bp+JDHxx0KNze/+0kr/VVBRPG8=;
        b=YO3A4JyAGL9CExPGDIJq4Rf3d7gUx1vqbba+p5HZk8i8Q0P7zcsuUcQfK2kkDowUWs
         8uj2VHNOb+E++jvvIPI0a5qjamG/36zfG3R1V1CWHEJshKoNIR6iFapXdX9B9NzLzsIC
         wFPiSwecTg3LkDUoujTlpMWLXCYgaYCRmebQfatLSdlOIiRQBNFWWbj3P+YAoTYEXnpB
         hltmy9JhYRflnU9lBNohPmFC3fn3HZab0DcqZXfR1GRVyjqud/GhCytXrvNVUnfcUSuN
         2/Ts+amojNuwBi13PMJeXJkZXHrfMA86vvsPr4pRbAPN5SWkxbVzYTrfwU6boYrpgChF
         Q8/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=hPUxDhoiQ10tEnyF6bp+JDHxx0KNze/+0kr/VVBRPG8=;
        b=d7kuVp9MeI8MxE5Y6eo5kpCOSKyN5XOflev1i5jie1N4TrQaCw13zcsHKqw89F6FW9
         SA+yRFM1m++TaTR++hPWKCrsXq/DznlbO+pfYpPIhG+0pAcLI5tOTQOU1DNnYp3jKtHy
         +7bka88Z6LySeq1vFFsqtXrD5WhgNxXl1ahfPABFt7XXEpz0ZE2QZsYo5JPh8MH+kHsb
         sbDxOd4j5cD84Wm++q8YJqYYvjOnaKUQWq17by9eyr+u8fxGGPBSil//uAkdVcajmP/5
         z5t+KfYvOCiDrw6kdLEuOAuIfhFh61rpoAGZdo3Z72MPqqwOJjK6eA59eRDlZoEYyJqn
         4rWA==
X-Gm-Message-State: AOAM531NOfIk+PmcxKI0SCKIIr8dPPNeiba/S3/PDIuP2Rn0Jvtk3Nm8
	ejblL7pWJh82pPCsqBjUYDG9rV4yLBBvUQ==
X-Google-Smtp-Source: ABdhPJyMrTnfYqjyRgDvdK6zW4SbsFfBbFcTQ+C8th14pYo28Sv63ZFXBDdCMxs9+Mw8Cvk7KjmFhg==
X-Received: by 2002:a17:90a:970c:: with SMTP id x12mr33096240pjo.115.1593716093638;
        Thu, 02 Jul 2020 11:54:53 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id j16sm9411204pgb.33.2020.07.02.11.54.52
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 11:54:53 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 6/6] scripts/utils.py: Convert md5sum to sha256sum for layer tarballs
Date: Thu,  2 Jul 2020 08:54:02 -1000
Message-Id: <9d03270212d0414e5c90a37d75cf3cebe7120239.1593715874.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1593715874.git.steve@sakoman.com>
References: <cover.1593715874.git.steve@sakoman.com>

From: Vineela <vineela.tummalapalli@intel.com>

Signed-off-by: Vineela Tummalapalli <vineela.tummalapalli@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 3aefa5a763125c760813a8f8434c574ecd3ca99b)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/utils.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/utils.py b/scripts/utils.py
index d7b9ae7..ec43832 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -251,7 +251,7 @@ def publishrepo(clonedir, repo, publishdir):
     revision = subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=sharedrepo).decode('utf-8').strip()
     archive_name = repo + "-" + revision + ".tar.bz2"
     subprocess.check_call("git archive --format=tar HEAD --prefix=" + repo + "/ | bzip2 -c > " + archive_name, shell=True, cwd=sharedrepo)
-    subprocess.check_call("md5sum " + archive_name + " >> " + archive_name + ".md5sum", shell=True, cwd=sharedrepo)
+    subprocess.check_call("sha256sum " + archive_name + " >> " + archive_name + ".sha256sum", shell=True, cwd=sharedrepo)
     mkdir(publishdir)
     subprocess.check_call("rsync -av " + archive_name + "* " + publishdir, shell=True, cwd=sharedrepo)
 
-- 
2.17.1

