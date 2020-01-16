Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
 by mx.groups.io with SMTP id smtpd.web09.2973.1579207534412092339
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jan 2020 12:45:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=ZogzCRfN;
 spf=pass (domain: konsulko.com, ip: 209.85.221.65, mailfrom: pbarker@konsulko.com)
Received: by mail-wr1-f65.google.com with SMTP id q10so20550654wrm.11
        for <yocto@lists.yoctoproject.org>; Thu, 16 Jan 2020 12:45:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=A0FpWAY5oLLCBqosK3i83UXTs3Qkh2yLaOuLGnLwC3c=;
        b=ZogzCRfNBsw1mrihX3li4rx1kWOs/fTsP2CIFwWXBQHOPNEt1oEbULYCkN3Ybir9ig
         vspY1aHQc2O4Q71M4uiFG3ABcpuduq/PSfkuJnNq6Asf583csZs9HZwmj6qEYSCxfgX6
         ODdSl3sBKVd6ku8nBEZ2arfTMAY7IwAppM1dk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=A0FpWAY5oLLCBqosK3i83UXTs3Qkh2yLaOuLGnLwC3c=;
        b=Oefzo263WSHrs4QGI/bmNAsPzaPV6ugmQElHQ0OEVTFaQW2VudBxTw2k2G49qvXZJg
         GuMTc7ceaaNc0aIAiOe2oENy0ImsyvUZeaaa7NChFC4aEdg0net3hXuX9+QGEmmNirSe
         sEB0K33ZUWgasgGL2jJCUAHDWXOL/wfie417KHokUzpR6usyFtvP3qaA3NhFVtxQE3R1
         Bf2w9j71PDgnbwxvC93+N7+F4ubnO9JPHYm3Hk+3p8Ha0WNXMFEhqyo2/cVJLDst0b3a
         8qnoE7KqO7/ZLzmJKdnY3QzB2cfnRyGHodUQnXnCjNQ/GMapVLb6kCXwlFXYGtJKhOOV
         /8Zw==
X-Gm-Message-State: APjAAAWSUaIOao29W2zD5/0xVn7nmKsiickiLXRK5ZYoYz1UZWEmHlIr
	/ctPLTw+X3kt7xBOPo3dLnJ+VWP5DY9oXH2W
X-Google-Smtp-Source: APXvYqwxMtUfAWnb5DhyMDxNz8e2r79m4L37QTXS8xAOgJP9Ob3KjJArKCza+RopBwJXu/Gj23mgDg==
X-Received: by 2002:adf:e2cf:: with SMTP id d15mr5222463wrj.225.1579207532782;
        Thu, 16 Jan 2020 12:45:32 -0800 (PST)
Return-Path: <pbarker@konsulko.com>
Received: from arch0.home.b5net.uk ([213.48.11.149])
        by smtp.gmail.com with ESMTPSA id f127sm2730978wma.4.2020.01.16.12.45.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 12:45:32 -0800 (PST)
From: "Paul Barker" <pbarker@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Paul Barker <pbarker@konsulko.com>
Subject: [patchtest-oe][PATCH 2/2] README: Update links and other references
Date: Thu, 16 Jan 2020 20:45:24 +0000
Message-Id: <20200116204524.5539-2-pbarker@konsulko.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200116204524.5539-1-pbarker@konsulko.com>
References: <20200116204524.5539-1-pbarker@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

* Switch http links to https.

* Update the yocto mailing list address after the move to groups.io.

* Minor style fixes.

Signed-off-by: Paul Barker <pbarker@konsulko.com>
---
 README | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/README b/README
index 29176f0..19fee8b 100644
--- a/README
+++ b/README
@@ -4,20 +4,23 @@ Patchtest-OE
 Introduction
 ------------
 
-Patchtest-oe is a test suite intended to be used with patchtest [1], targeted for patches
-that get into the openembedded-core mailing list [2] correponding to [3] repository.
+Patchtest-oe is a test suite intended to be used with patchtest [1], targeted
+for patches that get into the openembedded-core mailing list [2] and
+corresponding repository [3].
 
 Contributing
 ------------
 
-The yocto mailing list (yocto@yoctoproject.org) is used for questions, comments and patch review.
-It is subscriber only, so please register before posting.
+The yocto mailing list (yocto@lists.yoctoproject.org) is used for questions,
+comments and patch review.  It is subscriber only, so please register before
+posting.
 
-Send pull requests to yocto@yoctoproject.org with '[patchtest-oe]' in the subject.
+Send pull requests to yocto@lists.yoctoproject.org with '[patchtest-oe]' in the
+subject.
 
 When sending single patches, please use something like:
 
-    'git send-email -M -1 --to=yocto@yoctoproject.org  --subject-prefix=patchtest-oe][PATCH'
+    git send-email -M -1 --to=yocto@lists.yoctoproject.org  --subject-prefix=patchtest-oe][PATCH
 
 Maintenance
 -----------
@@ -27,7 +30,7 @@ Maintainers:
 
 Links
 -----
-[1] http://git.yoctoproject.org/cgit/cgit.cgi/patchtest/
+[1] https://git.yoctoproject.org/cgit/cgit.cgi/patchtest/
 [2] https://www.yoctoproject.org/tools-resources/community/mailing-lists
-[3] http://git.openembedded.org/openembedded-core/
+[3] https://git.openembedded.org/openembedded-core/
 
-- 
2.25.0

