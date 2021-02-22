Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web09.2731.1614037899106998663
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 15:51:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=HYViDMFk;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.210.174, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pf1-f174.google.com with SMTP id z6so7654176pfq.0
        for <yocto@lists.yoctoproject.org>; Mon, 22 Feb 2021 15:51:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sF9R8V/iRJnpXiCRWIP/vXbUz4WM3oM3AhfxdCSp7B0=;
        b=HYViDMFkCAqFxzWJca5fNCaLBYNaCRVXtuxwedS4HBdcNTFDEWkzpyAoAza1PxP8Kk
         3Ru21Y8CJhcXTKOYjsRrO8r5zu+raQPeRlZ6DSxXEEcv9Uwbom3Hl9nXnFRJxJSLatn3
         5MpRR4StQE9OjA+aAjj+NKPuefPltoO0pr18o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sF9R8V/iRJnpXiCRWIP/vXbUz4WM3oM3AhfxdCSp7B0=;
        b=PQ01jH2mojPVA4R4TRChOsjSYUlgBJA1/Th1QkEMdpj3VzfmbN1p5TLUDDrKsKbR2i
         hjqpoCK5V4fZqewGDra9U6KZtGyD21pCbn0iYHPiC8jndurdSpmg1RNU8qOAislqlRq6
         zn5tmUW2ohPzdqSUrRhjzRqB2QdKp48dxIDp5tQw+NimpGx1e4LL1o2FEp3Slw1RvHhR
         pB2P8k4VxsuZ8vuu70l1d//dDmlRFncrjG1W7I+vLfM9kqgIABtAQ2696nrwolK6kCk3
         EX/9uRY9wrW2ZG4x7Yo5j7eScZC4kh9R4U2CHeGxEQ9GdrEk7Yh6HztNDnZnzPromllD
         cZkw==
X-Gm-Message-State: AOAM530ddWLBHS3mM/XMqX+RxpxD8AOwUDhCRHrAHjde96JXyfhtvGrK
	sTjNhy15W8ceGqaQeXOvqj5AwABmyDKUUg==
X-Google-Smtp-Source: ABdhPJwCLNI6tN7HDdPeJCCaHuPCvXqn0ASQhrFk7LxRPttfk7Hz0nJrYtdtgrEbw4Wjijr6QB7NjQ==
X-Received: by 2002:a62:804a:0:b029:1e7:d747:de3 with SMTP id j71-20020a62804a0000b02901e7d7470de3mr16266862pfd.38.1614037898336;
        Mon, 22 Feb 2021 15:51:38 -0800 (PST)
Return-Path: <mhalstead@linuxfoundation.org>
Received: from localhost.localdomain.org (c-24-21-216-192.hsd1.or.comcast.net. [24.21.216.192])
        by smtp.gmail.com with ESMTPSA id g8sm573154pjj.41.2021.02.22.15.51.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 15:51:37 -0800 (PST)
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linuxfoundation.org>
Subject: [PATCH yocto-autobuilder-helper] send-qa-email: Save the QA email in case it doesn't reach the mailing lists.
Date: Mon, 22 Feb 2021 15:51:22 -0800
Message-Id: <20210222235122.148734-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 scripts/send-qa-email | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/scripts/send-qa-email b/scripts/send-qa-email
index 6785df3..1b69307 100755
--- a/scripts/send-qa-email
+++ b/scripts/send-qa-email
@@ -145,6 +145,10 @@ Build hash information: \n
 
 ''' % (args.release, args.publish_dir.replace(web_root, web_url), buildhashes)
 
+# Store a copy of the email in case it doesn't reach the lists
+with open(os.path.join(args.publish_dir, "qa-email"), "wb") as qa_email:
+    qa_email.write(email.encode('utf-8'))
+
 utils.printheader("Sending QA email")
 env = os.environ.copy()
 # Many distros have sendmail in */sbin
-- 
2.29.2

