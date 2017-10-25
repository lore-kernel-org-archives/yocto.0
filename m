Return-Path: <mgloff@emacinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F2D9E00D1E; Tue, 24 Oct 2017 22:43:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C938E00D0E
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 22:43:43 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id n195so12724128itg.2
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 22:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=emacinc-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=6911ev97/6mnDYvjXZZqDXnhKOFT6WFfeiA6RHjbC+s=;
	b=D77gCEuBXR6Nz0OJQYNbNkCSDHJCKoWGcyLmh8c6r0i+DYsTOPEw4qsu3UO9RI+B+L
	q3+w2xWV3kag1UCk+zO/bOvd476pQ7w/R1qRf/xfm0k++q+gXI366obrnAPxAWu7EcAG
	wGXAft2f/Hm6POJ8AKgBSJPZz/UhRLPRAlkCzZYiYGl7OVXWVx9M51rJ4h4P7Ipi13ic
	/muKAtaRxEI+bb46xJLAvbtexPwW3F2BVDoOkL/1Icx1owiCCrFXkg0C5MOheN4jSqUe
	tYb7f7S5CjXGQV7J2euM2f/0poHOQ+1ztr8e3t+A5jP/UMppspmHn6MQrnhXe2NVVCEa
	yNQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=6911ev97/6mnDYvjXZZqDXnhKOFT6WFfeiA6RHjbC+s=;
	b=tr8ogqC3XriOXjksHOngHZITzEyHA/WuKK4vYxl4LyHGeTEY2BqIu/oRpUMwRKxSVL
	tOZerTkfBvMXciMZDOLcfAo7ZI1ZD7Cr3dmNYUVHFHq4H+n9FYBDYyalBZtRBgu0UgSW
	4mXMQfrfccO0kEqCjJHM1mkfKHV7Tx6XmCl0Frz/eBVcGBYfH3K5iIjjJy7BRIfcEywi
	nah3Dj+b7OY4p7mwpQvd7V9Bqf95PbR9dgkc51/bXt/cW1XcEMpFZN09AyxZaGL3UzSB
	aFJJwp3DCYP3pAcplxKnsST01RaA6C+CscInUmBFeA1UhpUCvaP81wHyl223fD4Skrwp
	DA+A==
X-Gm-Message-State: AMCzsaUUtQHK0rjZEy5nc1ukHAhj/fHH/1CFwiA5LfEfhCpO65lylekT
	6syuwJr8809ulIppBCsUnBbExfBM
X-Google-Smtp-Source: ABhQp+SrhS+sDPuO2hDG4lCRiXGleh7bdqjdEilw0W8cuD1CitdGrNIu12DFyk2SS3aJ5KMsrYlPuw==
X-Received: by 10.36.225.200 with SMTP id n191mr692147ith.82.1508910222566;
	Tue, 24 Oct 2017 22:43:42 -0700 (PDT)
Received: from localhost.localdomain
	([2604:2d80:8039:8064:ec83:a329:df73:818a])
	by smtp.gmail.com with ESMTPSA id
	a187sm929278itd.31.2017.10.24.22.43.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 24 Oct 2017 22:43:42 -0700 (PDT)
From: Michael Gloff <mgloff@emacinc.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Oct 2017 00:43:29 -0500
Message-Id: <20171025054330.23222-2-mgloff@emacinc.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <20171025054330.23222-1-mgloff@emacinc.com>
References: <20171025054330.23222-1-mgloff@emacinc.com>
Cc: Michael Gloff <mgloff@hotmail.com>
Subject: [meta-raspberrypi][PATCH 2/3] linux-raspberrypi: Replace /lib with ${nonarch_base_libdir}
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
X-List-Received-Date: Wed, 25 Oct 2017 05:43:45 -0000

From: Michael Gloff <mgloff@hotmail.com>

    Use standard variable name and avoid
    QA errors when usermerge DISTRO_FEATURE is enabled.

Signed-off-by: Michael Gloff <mgloff@emacinc.com>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index da36ca7..cf9f182 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -162,7 +162,7 @@ do_compile_append_raspberrypi3-64() {
 }
 
 do_install_prepend() {
-    install -d ${D}/lib/firmware
+    install -d ${D}${nonarch_base_libdir}/firmware
 }
 
 do_deploy_append() {
-- 
2.14.3


