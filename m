Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web09.147.1617728805034503310
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 10:06:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=IUwPEyxe;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.216.45, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pj1-f45.google.com with SMTP id ep1-20020a17090ae641b029014d48811e37so2741310pjb.4
        for <yocto@lists.yoctoproject.org>; Tue, 06 Apr 2021 10:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JcuOkdMY1WX/MNThb0oKNndiKajnHdwaAtpugR4LF9A=;
        b=IUwPEyxeb84NW0iOSkZ6KFaYVkqaivftoCa45Hx2022zoPZzzeAc08PfbEsBi3P1bt
         q1uZ/RJPs3f/kjpu4THlSyvvaMs3Z6Akv9GztiTal1Q9NlaOECRKyauhiwKBMJaCI5li
         I25lD8X1QqBG/ffI7mAViMNvZi3tpsLKyyUng=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JcuOkdMY1WX/MNThb0oKNndiKajnHdwaAtpugR4LF9A=;
        b=tjfRQtYtIypNkuTLTAvuGQ41qbtYHKpK+pLIdkB3+cE4n/9yaZnaUdNJrhXpDiVmeh
         5Xm/bDUSPBFKXvIUP5yFqxaTpbPnugJ3lIV/YnRuF7HEoe3e0Fvbg7QDuXdeyjM3WniW
         1GGcsl59cQq1guoHpjRawOl3cLilrgKpfPjG8nRw9zPoplDME4o/2tGtxlXmL4i6bkpE
         MhkwKU62lJrD5iYGszOazGk0ao7whcdWxv5ES8tyeZFkbCfUw3nhgaAnPklawA3nCrQ7
         da13gMCv6O72xSqmdiR5IWeHwbSdcVd2YXFzVEer4bWsjfAaErdVu3ApWkZPlzceuhU/
         6+8w==
X-Gm-Message-State: AOAM532X0fALop0P/wwjEHtwLX9HTSr1cjAOKvtUN7WmlwhPKb+7gST3
	bdLpxIn2RiayXzXtIhDLnNTdhWAlhf18ww==
X-Google-Smtp-Source: ABdhPJxq2wEPSOGG/7jtuZVGHRfoKk/McVTI82AxZILGI/5qeVY3ffCl/Zt1AoM1HkGPU1Zf4bPZ7w==
X-Received: by 2002:a17:90a:7896:: with SMTP id x22mr5117328pjk.182.1617728804222;
        Tue, 06 Apr 2021 10:06:44 -0700 (PDT)
Return-Path: <mhalstead@linuxfoundation.org>
Received: from localhost.localdomain (c-24-21-216-192.hsd1.or.comcast.net. [24.21.216.192])
        by smtp.gmail.com with ESMTPSA id v27sm19403057pfi.89.2021.04.06.10.06.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 10:06:43 -0700 (PDT)
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linuxfoundation.org>
Subject: [PATCH yocto-autobuilder-helper] run-docs-build: add 3.2.3 release to docs build
Date: Tue,  6 Apr 2021 10:06:33 -0700
Message-Id: <20210406170633.8165-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 scripts/run-docs-build | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index 4af23fd..910f03d 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -77,7 +77,7 @@ for branch in dunfell gatesgarth hardknott; do
 done
 
 # Yocto Project releases/tags
-for tag in 3.1.5 3.1.6 3.2 3.2.1 3.2.2; do
+for tag in 3.1.5 3.1.6 3.2 3.2.1 3.2.2 3.2.3; do
     cd $ypdocs
     git checkout yocto-$tag
     make clean
-- 
2.30.2

