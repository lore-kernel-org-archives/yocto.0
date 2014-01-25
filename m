Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13329E00405
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:24 -0800 (PST)
Received: by mail-ee0-f50.google.com with SMTP id d17so1413886eek.9
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=vQKgh2/IQdbm50YUZyu/iOlwzmQSRdHaoOCtg7SzdM8=;
	b=dywcHvjCZ2x5o9wm+N7YgAb3ND7S8NFDabB7jQ1v5glnGcmP4Xt1pn/PCcL3Miqw34
	W5lYffN6viFN9/W1v6+/64FQ7zD5HY4eUY6AwjtJAmAKCneixB/YiZaZxTAgOfDmjgHA
	sZmfWBv40ZEXxplY+B87Mr4gQu9BZc1O1PpnocdIkSqqDJawWDKGEo5PHMBkcIjqBH+c
	VKg8SD+l5oP6vJKbjqsKaKRMVE4bLDDMRFO8MZqaJa8jG/eKFC2kpAUkRrkzAqrhoTPR
	Vb3FJgmynJqgGSL0S4PdtMZNRq+Gn11ULTyEUSpjN4YI/jP1u3k7xiO27MHKSyvhicBq
	6Suw==
X-Gm-Message-State: ALoCoQnzUQsIotdFSY0F/TUTRW6il1LnJ+o2hKNqKgydciSumJ9ZlIt309/zdQMDnNeFeW2u1uG0
X-Received: by 10.14.107.3 with SMTP id n3mr12940757eeg.67.1390647443685;
	Sat, 25 Jan 2014 02:57:23 -0800 (PST)
Received: from localhost.localdomain (5-13-179-54.residential.rdsnet.ro.
	[5.13.179.54])
	by mx.google.com with ESMTPSA id 4sm14600656eed.14.2014.01.25.02.57.22
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 25 Jan 2014 02:57:23 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sat, 25 Jan 2014 12:56:59 +0200
Message-Id: <1390647421-4818-8-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
References: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 7/9] README: Add info about U-Boot support
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
X-List-Received-Date: Sat, 25 Jan 2014 10:57:25 -0000

Change-Id: I1b17ef313d2005b7bf0ef853a2730144032f8539
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 README | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/README b/README
index 474c5f3..fc492c5 100644
--- a/README
+++ b/README
@@ -36,6 +36,7 @@ Contents:
     2.E. Set overclocking options
     2.F. Optional - Video camera support with V4L2 drivers
     2.G. Images
+    2.H. Boot to U-Boot
 3. Extra apps
     3.A. omxplayer
 4. Source code and mirrors
@@ -146,6 +147,14 @@ VIDEO_CAMERA = "1"
     Image based on rpi-basic-image which includes most of the packages in this
     layer and some media samples.
 
+2.H. Boot to U-Boot
+===================
+To have u-boot load kernel image, set in your local.conf
+KERNEL_IMAGETYPE = "uImage"
+
+This will make kernel.img be u-boot image which will load uImage.
+By default, kernel.img is the actual kernel image (ex. Image).
+
 
 3. Extra apps
 =============
-- 
1.8.1.4


