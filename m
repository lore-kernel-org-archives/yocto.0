Return-Path: <andrei@gherzan.ro>
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F266E00883
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 07:16:57 -0800 (PST)
Received: by mail-qc0-f180.google.com with SMTP id i17so3619354qcy.25
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 07:16:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ki+ysLUJrdKms1FL9HFJefmRbSyVUmMIJtGANJrtAXM=;
	b=flGx64XmOeC/Rd2UAGlDlFPBF598Ca3Tcyt8rh3J1KLpG33KoYRknYiybJW0vtnLRG
	R23KNIQnF68DaSeL3VXMhJ7aMju7ZxG8z4ugC2EAsI0TeQl5IR7h5G6rSnX+0rikfzRM
	eNSInD63Yd1CJkIyPDciakCopzuCehYiA00HYOlOdpBOHlLBIq6qfEa9rHSYONMQyGec
	CtGDNVyMbbCeFXck7JIDXnHOmRkzbMwb/P/L9s9xQ+PyNtDtHupZoaQSq5dareQbPc1I
	sSxSBZbpehvQEcu49T/bEkkgCIP8JpB4lnpzV2f8GpyNBtwnTyefLiS60e+322WuN/z4
	scXw==
X-Gm-Message-State: ALoCoQkj0IMdu/a93mFmnlws2qTzoRFtEr6J3ijxMwaZ7C4NmORuQ+qh4Ly5BcfJHtXPcLyRCAMJ
X-Received: by 10.224.95.69 with SMTP id c5mr4073486qan.64.1389971817321;
	Fri, 17 Jan 2014 07:16:57 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id w8sm14478940qag.15.2014.01.17.07.16.55
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 17 Jan 2014 07:16:56 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 17 Jan 2014 17:16:39 +0200
Message-Id: <1389971801-23724-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1389971801-23724-1-git-send-email-andrei@gherzan.ro>
References: <1389971801-23724-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/5] firmware: Update to remove HEAD
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
X-List-Received-Date: Fri, 17 Jan 2014 15:17:02 -0000

Change-Id: I20a8ebf0e5743250c66fae337d28e867959d3114
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bcm/common/firmware.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-bcm/common/firmware.inc b/recipes-bcm/common/firmware.inc
index 69cf8d2..0b1aa05 100644
--- a/recipes-bcm/common/firmware.inc
+++ b/recipes-bcm/common/firmware.inc
@@ -1,6 +1,6 @@
-# 19/08/2013 firmware; this can be overridden from distro config
-RPIFW_SRCREV ?= "e618d4ff2dc20051bc726834b22487fe2e236fe5"
-RPIFW_DATE ?= "20131217"
+# 17/01/2014 firmware; this can be overridden from distro config
+RPIFW_SRCREV ?= "9babf5f124b85293f81d78b031a15da0d51d46bd"
+RPIFW_DATE ?= "20140117"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
1.8.1.4


