Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFD0CE00CF4; Mon, 14 Jan 2019 06:42:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96A16E00CD6
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:17 -0800 (PST)
Received: by mail-wm1-f68.google.com with SMTP id a62so9168596wmh.4
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=iW83iRtxVk2YuTaJQim+uLVMx/254ENsAb6AiLA8iOw=;
	b=t7U/e3K4VQbNH2b30871+xSVYJwVBGlPxwHnGVV9Rwmb2r5mvYxUfhO9mErTmXDJUG
	Mjw4eTh+SzUvLIzwsJPSy93H3s1bSKmg0E2u7T63X74mlePBiUZrnLA7FPHoC4/HkwAR
	7foQj/tE0HiYt7xPSwF/EQXcz/T/fSj1AKUCu0l8E3Xz86u4F7EtShHPRv2Z9QIOjAlm
	T6SoMgdFo9aeBPwpbufwWBLxhd+JIpWTeY96YzZcUwd38h+NhV7ulLB153H1lMi2MCQ8
	qIQazPCbU/U8/1QAjVDqfly+nSF1lKECSfeTticym+pX9J8pxCXzqKOEEeVq/lGZ+uz1
	du8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=iW83iRtxVk2YuTaJQim+uLVMx/254ENsAb6AiLA8iOw=;
	b=GO9bTBb2aSThK8FKpacPis7uVWmiZnjJHrZCQCrVK8OSa1yHAkEnGgDja8TQ8GuVPH
	FscTOJte15+YrTmhM3UXrunfD3sadGIPJcS25EwCkcS2RPwfBXqCVZMp2HcgmxzUaGRT
	kNGOGhSqdGQVKYLhbgNOoPlKJWC3QzdyxQks3mSjm/AQFAXzjsXy1OfNUoWOb3uoMUYe
	59g+RHSsEp3LODlI1y17xr37gd4mzJImNu4aDgsqdepzObNzOWRw8Yu+8joKYp5qnQ4G
	XtegaaYnOmANLQBZ2moQMYhFFLpBJOGF/F+t/edi/OAK02fitwOaJNgkh/tlQ3hKcUAl
	n2aA==
X-Gm-Message-State: AJcUukc3j6ddbI94SxakrmbUGI1cky0p4AG+0BnvlfFvf49EvcRjDZZ/
	NFfcAIWMa39PPWN+2DSRuOp6N6KnnYI=
X-Google-Smtp-Source: ALg8bN7ZG3IRMG3VuV97F/jIySw6Eb2raEsu4C+5LhCz6DnMEckwGBjs/Lujv8E9EZbC/vGE3FkLgw==
X-Received: by 2002:a1c:282:: with SMTP id 124mr11869203wmc.113.1547476936317; 
	Mon, 14 Jan 2019 06:42:16 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	s3sm22517084wmj.23.2019.01.14.06.42.14 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Jan 2019 06:42:14 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Jan 2019 14:41:58 +0000
Message-Id: <20190114144208.14353-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [meta-security][PATCH 01/11] README: add git-config tips
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 14 Jan 2019 14:42:19 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 README | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/README b/README
index e238271..c15fea9 100644
--- a/README
+++ b/README
@@ -57,6 +57,13 @@ Send pull requests, patches, comments or questions to yocto@yoctoproject.org
 When sending single patches, please using something like:
 'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-security][PATCH'
 
+These values can be set as defaults for this repository:
+
+$ git config sendemail.to yocto@yoctoproject.org
+$ git config format.subjectPrefix meta-security][PATCH
+
+Now you can just do 'git send-email origin/master' to send all local patches.
+
 Maintainers:    Armin Kuster <akuster808@gmail.com>
                 Saul Wold <sgw@linux.intel.com>
 
-- 
2.11.0


