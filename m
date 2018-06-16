Return-Path: <alex.kiernan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0474FE00A04; Sat, 16 Jun 2018 03:45:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kiernan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82BF2E0080A
	for <yocto@yoctoproject.org>; Sat, 16 Jun 2018 03:45:32 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id w10-v6so12189738wrk.9
	for <yocto@yoctoproject.org>; Sat, 16 Jun 2018 03:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=F8QShTXyPztQ8PDwVen1OJyvqGgNLS5Bf53LbdXYnns=;
	b=IYjQi+MqAnqwezS4Jl0LHNBEWkpNq9OtVcKO2Y9j7XKgPKfOGXV8eWwOFWpjwKmhdU
	QycNcSOC46OhNR5m5hU7wTLBF5HvFjYkOrJW/IDKcn7i3cKKQMj+ogMOhRXEBg86fhii
	isd27Rf0YYCOiuhQJBJhqn/uHjnXMPCp2BfPmpu/ogGT34IvGDinJi3H/GBviba5wt9W
	VtJnPCw2eFWh4XVVXJ2ed/yLnxoiajYo8X1qpTO8c/h9nrMdIxaubs9KocU1159m6O3z
	jDUc7HcffJuZDzdW61+zy1weTAZkYD3YU/px18BQmhWZHPSqk/cxO4ENBYrfTTfZJZAA
	Xf2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=F8QShTXyPztQ8PDwVen1OJyvqGgNLS5Bf53LbdXYnns=;
	b=DE+icjB9la6ZSJCFXSnI9pIELzSOQQMQhtNoJflqCnA+RVgBlRAjl6n/VgUsO9Tt44
	fxxjqF9zdbSqJPGu3BGkGAUafCQeGsB5jG8aMXQE0l7ale305uDc/tGQqL9fst4d0UQT
	msyhh8Rd6QHkhiKDyS8w1dX8q6jMj3U1u0NVo3/vkUc7m7nHHOc9f+g90jU0+dGVU+aH
	fWtaiKc9HdzlV7d1nuCSiVWxLpO+Al94UMHkuA4OZwiF5jJ+uuYx91wntqygyiLRwcAC
	dD9FQUbp6es3gRKIjQMbsRT0bEjjKIOsHmNC/bRvmpJrCqHpAime1aJrx2iLik4w2IWS
	6s6g==
X-Gm-Message-State: APt69E08buqdytP3v4w48wpAxDPFIszYsjKz7wfL1l/+tchWQA6xM541
	98HSv+GX8RgfM08KTr/MRVGPlgEO
X-Google-Smtp-Source: ADUXVKJt0F/PPtjlGITWu0GL+2PCJ6CORoLTqbcFZ/OBgRhc4dGo3aIKOERGS4Om/kG0viGu9gqgBw==
X-Received: by 2002:adf:c444:: with SMTP id a4-v6mr4737194wrg.20.1529145931392;
	Sat, 16 Jun 2018 03:45:31 -0700 (PDT)
Received: from localhost.localdomain (cust246-dsl91-135-6.idnet.net.
	[91.135.6.246]) by smtp.gmail.com with ESMTPSA id
	r123-v6sm4343979wmb.21.2018.06.16.03.45.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 16 Jun 2018 03:45:30 -0700 (PDT)
From: Alex Kiernan <alex.kiernan@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 16 Jun 2018 10:45:20 +0000
Message-Id: <1529145921-27264-1-git-send-email-alex.kiernan@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] ref-variables: Document UBOOT_DTB_LOADADDRESS/UBOOT_DTBO_LOADADDRESS
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
X-List-Received-Date: Sat, 16 Jun 2018 10:45:34 -0000

Document UBOOT_DTB_LOADADDRESS (address used for device tree blobs) and
UBOOT_DTBO_LOADADDRESS (address used for device tree overlay blobs).

Signed-off-by: Alex Kiernan <alex.kiernan@gmail.com>
---
These variables are introduced by this patch series:

https://patchwork.openembedded.org/series/12601/

 documentation/ref-manual/ref-variables.xml | 43 ++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 1c55a92..0d97e17 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -15862,6 +15862,49 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             </glossdef>
         </glossentry>
 
+        <glossentry id='var-UBOOT_DTB_LOADADDRESS'><glossterm>UBOOT_DTB_LOADADDRESS</glossterm>
+            <info>
+               UBOOT_DTB_LOADADDRESS[doc] = "Specifies the load address for DT blobs in the U-Boot FIT image."
+            </info>
+            <glossdef>
+                <para role="glossdeffirst">
+                    Specifies the load address for DT blobs in the the U-Boot
+                    FIT image.
+                </para>
+
+                <para>
+                    When using DT overlays with <filename>bootm</filename>
+                    then both <filename>UBOOT_DTB_LOADADDRESS</filename> and
+                    <filename>UBOOT_DTBO_LOADADDRESS</filename> must be
+                    specified. See
+                    <filename>doc/uImage.FIT/overlay-fdt-boot</filename> in
+                    U-Boot.
+                </para>
+            </glossdef>
+        </glossentry>
+
+        <glossentry id='var-UBOOT_DTBO_LOADADDRESS'><glossterm>UBOOT_DTBO_LOADADDRESS</glossterm>
+            <info>
+               UBOOT_DTBO_LOADADDRESS[doc] = "Specifies the load address for DT
+blob overlays in the U-Boot FIT image."
+            </info>
+            <glossdef>
+                <para role="glossdeffirst">
+                    Specifies the load address for DT blob overlays in the
+                    the U-Boot FIT image.
+                </para>
+
+                <para>
+                    When using DT overlays with <filename>bootm</filename>
+                    then both <filename>UBOOT_DTB_LOADADDRESS</filename> and
+                    <filename>UBOOT_DTBO_LOADADDRESS</filename> must be
+                    specified. See
+                    <filename>doc/uImage.FIT/overlay-fdt-boot</filename> in
+                    U-Boot.
+                </para>
+            </glossdef>
+        </glossentry>
+
         <glossentry id='var-UBOOT_ENTRYPOINT'><glossterm>UBOOT_ENTRYPOINT</glossterm>
             <info>
                UBOOT_ENTRYPOINT[doc] = "Specifies the entry point for the U-Boot image."
-- 
2.7.4


