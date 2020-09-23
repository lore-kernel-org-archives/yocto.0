Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
 by mx.groups.io with SMTP id smtpd.web11.7175.1600842309418276953
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Sep 2020 23:25:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eDece3bW;
 spf=pass (domain: gmail.com, ip: 209.85.218.66, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-ej1-f66.google.com with SMTP id u21so26189729eja.2
        for <yocto@lists.yoctoproject.org>; Tue, 22 Sep 2020 23:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hOOoM4tsMHIgPtCCkvmjagUxoRGDjq781Rk10UzRsQ4=;
        b=eDece3bWeHangg4LbmistcvYjziNCJRyQ0PCuM5CPNktyAGvuMNw4dzp8FbtbizeEk
         i3rH1Cgrdvt3Z+qSfLDRxQEemSzyI24FOZ/7C6jPR3Ad7es64EA1kYZe0bIUncOtM6Ys
         /OWby4PZU5qKFfGdzOeJIJ7egsyrBVjtIesRrzlB9UCMORYScmpqS3zZ2FAU8jTyM13c
         oG6gWUstZfl8LEu1EOVSCjWomtpNtz1IfNtVL1jmSAPos65aA6a5srEjx3PY0ZPEU2TZ
         /7xJGcO+dr5OJSwmxfWk/8ada0fb/YYdf80ZvY0B3WKnYK4P5yLrGLUQV+u/+OPXa2x4
         6kgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hOOoM4tsMHIgPtCCkvmjagUxoRGDjq781Rk10UzRsQ4=;
        b=i5efvtd2s6goMuvoBUYnCK0J9RBo6wsj375Eb+LHiD52xBwJsPVToOEsc8HO4LhF6Q
         AX78olw2MOoIYgpCi4NoMd/pAKyI556E83v+HcuftcInt9wZBCUgeDG+whPZja16R/9+
         YfB4oLsig8YebyI6033P4+l5WG1NAj80Tdb+fZVOeBPRRQNcuPXnQCd8JJDCTUnf58/e
         E/j3V3WsIdqiJRRXgKBGjNKDPIFdbiS5WhANOzrPjqH3mxXg9XfVe0Tlpf1g4+9Sopj3
         V7l50M4hHWnQDwY0dotsqoBnTfFajXd4TqaZ6wrGpz+XVrkUYVeK5Q7pq2/R4zfX94vj
         cFuA==
X-Gm-Message-State: AOAM531aRjZp1UGE03ihthaP9obknCGEReFVC0nPnr2giP/fElb3qpOs
	05P+UfufNFWpGrW6mHxhbhduXcmVvs8Tog==
X-Google-Smtp-Source: ABdhPJwNQjKsTGqLVDuDF7Kqg7jX1f3djuYtQesj2lffPRZofesaMbGmPfP9humjh6w8Ltdwg15NcA==
X-Received: by 2002:a17:906:c1d7:: with SMTP id bw23mr9114167ejb.171.1600842307702;
        Tue, 22 Sep 2020 23:25:07 -0700 (PDT)
Return-Path: <adrian.freihofer@gmail.com>
Received: from md2ramxc.ad001.siemens.net (c-82-192-240-69.customer.ggaweb.ch. [82.192.240.69])
        by smtp.gmail.com with ESMTPSA id j18sm8669073edj.62.2020.09.22.23.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2020 23:25:07 -0700 (PDT)
From: "Adrian Freihofer" <adrian.freihofer@gmail.com>
X-Google-Original-From: Adrian Freihofer <adrian.freihofer@siemens.com>
To: yocto@lists.yoctoproject.org
Cc: Adrian Freihofer <adrian.freihofer@siemens.com>
Subject: [meta-security][master][dunfell][PATCH] gitignore added
Date: Wed, 23 Sep 2020 08:25:03 +0200
Message-Id: <20200923062503.708024-1-adrian.freihofer@siemens.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

After running testimage there are some python left overs at
lib/oeqa/runtime/cases/__pycache__/

Signed-off-by: Adrian Freihofer <adrian.freihofer@siemens.com>
---
 .gitignore | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 .gitignore

diff --git a/.gitignore b/.gitignore
new file mode 100644
index 0000000..c01df45
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1,7 @@
+*.pyc
+*.pyo
+/*.patch
+*.swp
+*.orig
+*.rej
+*~
-- 
2.26.2

