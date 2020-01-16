Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.3032.1579207533541796522
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jan 2020 12:45:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=iAT9OkJd;
 spf=pass (domain: konsulko.com, ip: 209.85.221.45, mailfrom: pbarker@konsulko.com)
Received: by mail-wr1-f45.google.com with SMTP id d16so20563222wre.10
        for <yocto@lists.yoctoproject.org>; Thu, 16 Jan 2020 12:45:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FCV6YoZIV6hHNb+sN9DJHLNxwGOcXYmBEVD0CnlC3P4=;
        b=iAT9OkJdIxJyHKIgr34dSg92UsvohCDBHQ3r7MUXhG302UrF/3DCnJLbfdP8uqp4IH
         oZZ8UQxtlhpzKoQGw1sX2DRxxnOR8fwHdFvljEJzVi1RjivY4Lj9A0TzXobO33VtwFDr
         pZ30k7oGygtl189snYgkVhou+heDLKHm91eig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FCV6YoZIV6hHNb+sN9DJHLNxwGOcXYmBEVD0CnlC3P4=;
        b=kjd/knKEU1UYgZYtlKrILePRpL8feF+YjrYc7zO6zgPKh/TPUQ1bq5DiU4ifwurXJY
         1gOUTGwrKhYfn+SD4mOSxlmmbW29pCmLmIApl3GfXzjRRm+zjjby+mbqV8JCwDNJzAnF
         5jzXQAmBJmcgxFoLH5dIekEa8TX+EcRchaEAE4k0YKfmnVJS4I720ZbpsZSl/gkHqFfO
         +KQK/Mjneycc0qEY3H92FGCA3Hh4niAL15Y0d33YJzhYxAvGa+MpYAbmOPMlxG5T/TgO
         HZZm02ZJRLJpnLA0SRzf/CNudywZAJ7sDSjkCliWj8MmuHZiWv+Fd798mF6LX2Oympnz
         fzlg==
X-Gm-Message-State: APjAAAXPBLUn907w6GUWzrSjLWaesMgQoXHBkP6LLjN0HE+1HJ+cFw/8
	2yR6WGjRrzxqcIL3ThByPZcRw0/Y+BtWO/n1
X-Google-Smtp-Source: APXvYqynqurHDe1sE+SlD31mktIFdwAQ3MPyuDXhojEJ6SGAiN74fIWLf5SIdQxYxUkDFhdBmeogwg==
X-Received: by 2002:a5d:51cc:: with SMTP id n12mr5291817wrv.177.1579207531866;
        Thu, 16 Jan 2020 12:45:31 -0800 (PST)
Return-Path: <pbarker@konsulko.com>
Received: from arch0.home.b5net.uk ([213.48.11.149])
        by smtp.gmail.com with ESMTPSA id f127sm2730978wma.4.2020.01.16.12.45.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 12:45:31 -0800 (PST)
From: "Paul Barker" <pbarker@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Paul Barker <pbarker@konsulko.com>
Subject: [patchtest-oe][PATCH 1/2] README: Update maintainers
Date: Thu, 16 Jan 2020 20:45:23 +0000
Message-Id: <20200116204524.5539-1-pbarker@konsulko.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Paul Barker <pbarker@konsulko.com>
---
 README | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/README b/README
index 6284c1a..29176f0 100644
--- a/README
+++ b/README
@@ -23,9 +23,7 @@ Maintenance
 -----------
 
 Maintainers:
-    Leo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
-    Paul "bluelightning" Eggleton <paul.eggleton@linux.intel.com>
-    Daniela Plascencia <daniela.plascencia@linux.intel.com>
+    Paul Barker <pbarker@konsulko.com>
 
 Links
 -----
-- 
2.25.0

