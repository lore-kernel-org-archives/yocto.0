Return-Path: <barry@grussling.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1814EE0097C; Sat,  5 Nov 2016 21:23:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A002DE006D2
	for <yocto@yoctoproject.org>; Sat,  5 Nov 2016 21:23:07 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id 144so3980785pfv.0
	for <yocto@yoctoproject.org>; Sat, 05 Nov 2016 21:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=grussling-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=rhh68AZMrle4sYZFw97wxiMMG56FFbDcXCbUhz1ritE=;
	b=U3E16hUYth82m5ENsaghGJlfPRQbIZ7lPMUMnJPvWangSiRMsdDoricqQxFBDNTzdx
	es1jVw7argwKsOjo0uRrVw07dCReW/KJUgUcN/P+c/o7SopX7Xm1XFAb/aUHk45NgbtL
	bJErEOBg7I+dGiez12jZhS9t9PjioJQAKi5KQMWHEm3Cl6SoRzJ5D+Q2IwGaauSKNxhS
	B90z6Uch4LVHNadQSpTUroYHOOQRQYFja/R7xMG5aq2gdSGEQRbG4Do9PyHVAh7//ShY
	nFDXr+PO2ISoO0mQnPvUxWSZpszoSiOk1o1ZEuFPRm4T+lzNOiXt8FNAVR09iWFx3oLW
	MlIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=rhh68AZMrle4sYZFw97wxiMMG56FFbDcXCbUhz1ritE=;
	b=PBFzISGyr7Fh1SdsKpWxDq4MI+gEenBtA3pMSs32iTS3tOqpoSKrO+ItFRqFVD8rLK
	HzoVRYParuOQTeU2X9iHxEWSOlYv9p2sHFxIzs4tlutjfuKmTr0Unk0LzpvO0D+XWfX1
	WewEJS61gLr3G3h7X00MxkSHoC69K6UMkyOna1weH7vFvETKxMiDTcbQWvUdM/jqAWYq
	+cP1nLjy4Qs2mfrhCbBHy04OnOD6aiEjxCP9Wvk3OY9BxhgIPPp7p0pdT1beBoCfsqgc
	3h/s/hLGO40wa4LOULq5k9mLXNTuloGFigORp/oren4RI8rJaOkUMc19Bb2lDcgsrlfs
	rmHQ==
X-Gm-Message-State: ABUngvfJX6h5fZj67RHXhaXt7QauXcGC/IS1yUIT3VWE7DndG2xLxP57vKugI4vq1RigFA==
X-Received: by 10.98.194.130 with SMTP id w2mr1758621pfk.143.1478406186783;
	Sat, 05 Nov 2016 21:23:06 -0700 (PDT)
Received: from trixie.pullman (cpe-76-178-155-10.natnow.res.rr.com.
	[76.178.155.10]) by smtp.gmail.com with ESMTPSA id
	m69sm30556050pfg.39.2016.11.05.21.23.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 05 Nov 2016 21:23:06 -0700 (PDT)
From: Barry Grussling <barry@grussling.com>
To: ajlennon@dynamicdevices.co.uk
Date: Sat,  5 Nov 2016 21:22:58 -0700
Message-Id: <20161106042304.3357-2-barry@grussling.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <20161106042304.3357-1-barry@grussling.com>
References: <20161106042304.3357-1-barry@grussling.com>
Cc: yocto@yoctoproject.org
Subject: [meta-mono][PATCH 1/7] Add a base .gitignore
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
X-List-Received-Date: Sun, 06 Nov 2016 04:23:10 -0000

Setup a base .gitignore file

Signed-off-by: Barry Grussling <barry@grussling.com>
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
2.10.2


