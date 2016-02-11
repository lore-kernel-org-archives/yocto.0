Return-Path: <rafael.carre@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DEBCE00BB6; Thu, 11 Feb 2016 03:42:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5842E00BA4
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 03:42:11 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id c200so10158110wme.0
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 03:42:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=xK+hutOJ906wfDln2jbkid+PYDO0io0fs6QLj7q4prg=;
	b=XbrpC2K4bYE77ypUjuwADuewD7gEAtxO72s2gpcXd5HlBQUeOjB7YBO5EsXSbQ9tC9
	slWiaqYrOQbTNS5AlNs+hNaQPbFQ7/pPqVNA+LVAgUdc8lEp/b/Ka4KSbPnT0DlsLze9
	wR+OHLsdZCr0qlV/mwmu+rbN3DS7gCOwxLbADo5vDcPlb6QIqmOxsP4NzH8X/fC+sJq6
	e6CBrUl/hm74GFmOrraMAoHpmPHpMINWHAtNLBoargmcE29DfCEKO97pVQyQdtdL4+IT
	27fP4S/RIk1aXA1vKW8pDFd9lnPEqg0xfzgdzsGKrxbhUbJ3BzW9/B8wUX94UlJJOhFN
	d9fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=xK+hutOJ906wfDln2jbkid+PYDO0io0fs6QLj7q4prg=;
	b=OvElfsV/5iPF4oeCkvPlqwKeeVwPKuuXtxnavPPSeAozd4MADculADHIC0nvKrsSzI
	Jry6XfXnZz0bN0IiBpWlOsvOxYkPamXAEi1u1db4Nw2vRZFUl4awvGQ1iugZ6MTManA8
	8m1N6/dyppm4ypFEvy70dfX3HynCZ4mMA6oNzHOKloKvLHtRyek0a/M0HWQtUqRm+kVH
	8hK5TFIelzIgzLYj9yDxUsHukISUIxZ6ZBh96HFbQD+su7i0AYTu6lDbkkfVtTm213F/
	AcADaH8meXwG5nSiW+xYVsqDDdinqkDJE7arv7btSK1ydEksQQ1EVta2chRBSBlJRdjo
	rtVQ==
X-Gm-Message-State: AG10YOQ71OFOpC/15Bzr4drFB+S3kfmZgPHRkr2q1GM0Fh4gvdKGlOlFVrE1NoxnJvX8GA==
X-Received: by 10.194.242.2 with SMTP id wm2mr45926831wjc.155.1455190930572;
	Thu, 11 Feb 2016 03:42:10 -0800 (PST)
Received: from localhost.localdomain ([81.56.255.191])
	by smtp.gmail.com with ESMTPSA id
	y188sm7633787wmy.11.2016.02.11.03.42.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 11 Feb 2016 03:42:09 -0800 (PST)
Sender: =?UTF-8?B?UmFmYcOrbCBDYXJyw6k=?= <rafael.carre@gmail.com>
From: =?UTF-8?q?Rafa=C3=ABl=20Carr=C3=A9?= <funman@videolan.org>
To: yocto@yoctoproject.org
Date: Thu, 11 Feb 2016 12:42:02 +0100
Message-Id: <1455190922-3669-2-git-send-email-funman@videolan.org>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <1455190922-3669-1-git-send-email-funman@videolan.org>
References: <1455190922-3669-1-git-send-email-funman@videolan.org>
X-Mailman-Approved-At: Mon, 15 Feb 2016 08:36:43 -0800
Subject: [PATCH 2/2] u-boot-edison: expand variables inside python function
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
X-List-Received-Date: Thu, 11 Feb 2016 11:42:12 -0000

---
 recipes-bsp/u-boot/u-boot-osip.inc | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/recipes-bsp/u-boot/u-boot-osip.inc b/recipes-bsp/u-boot/u-boot-osip.inc
index d05d440..0091f28 100644
--- a/recipes-bsp/u-boot/u-boot-osip.inc
+++ b/recipes-bsp/u-boot/u-boot-osip.inc
@@ -140,11 +140,11 @@ python do_osip_mkimage() {
     '000000000000000000000000000000000055aa'
 
     def main():
-        input_file = "${UBOOT_TMP_IMG}"
-        output_file = "${UBOOT_IMG}"
-        handoff_pointer =  ${OSIP_HANDOFF_POINTER}
-        destination_pointer = ${OSIP_DESTINATION_POINTER}
-        starting_lba = ${OSIP_STARTING_LBA}
+        input_file = d.expand("${UBOOT_TMP_IMG}")
+        output_file = d.expand("${UBOOT_IMG}")
+        handoff_pointer =  int(d.expand("${OSIP_HANDOFF_POINTER}"))
+        destination_pointer = int(d.expand("${OSIP_DESTINATION_POINTER}"))
+        starting_lba = int(d.expand("${OSIP_STARTING_LBA}"))
 
         in_file_data = open(input_file, 'rb').read()
 
-- 
2.5.0


