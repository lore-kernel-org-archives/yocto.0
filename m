Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 826B6E00B74; Wed, 28 May 2014 19:18:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ig0-f171.google.com (unknown [209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F635E00B6C
	for <yocto@yoctoproject.org>; Wed, 28 May 2014 19:18:36 -0700 (PDT)
Received: by mail-ig0-f171.google.com with SMTP id c1so3262060igq.4
	for <yocto@yoctoproject.org>; Wed, 28 May 2014 19:18:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=X/lKbbQlHUmchhjFZpSd8ME/aq3gmJw3zMLUpt9UZgM=;
	b=kpocYBwpt0YG/MtSuuw3Thc8aCzhUKyJVpndkUk5A9cGRVp1LPX44hjg81jkBCECof
	eJOhNT2CzA71LFVIXTF6cEgdtgJig3rHeY2FeSakr1jQlK/AzQZSKRsChc4x+DkhdGB+
	OpfSH5BLWvrPeWWpzLr1nFoRqcsQZQpugrRNwFvTrait6473KbIvrsBiqsySVm4jggHB
	td3sVMkKxMGzpgE3H6eIddeb33J9zs7Jtgk5c97wjxSDYjfoPFhSMjurcMdWsQHGjVM5
	NdDrGpPEbv9SiAHyYCYu92auf0mFTEkFsjtjWdQvdgbovKnGSi1v4MZpA7uUhjJoy5k9
	D64Q==
X-Gm-Message-State: ALoCoQliQpIswNBf/RAnKhXHqWSJ003F5SBDCH04US2Ohd1PHA+FxIbAjF+kdS5rtxM4uvqJupBR
X-Received: by 10.43.53.73 with SMTP id vp9mr3583471icb.61.1401329482820;
	Wed, 28 May 2014 19:11:22 -0700 (PDT)
Received: from mir.deserted.net (24-246-4-250.cable.teksavvy.com.
	[24.246.4.250])
	by mx.google.com with ESMTPSA id y15sm20305959igy.2.2014.05.28.19.11.20
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 28 May 2014 19:11:21 -0700 (PDT)
From: Joe MacDonald <joe@deserted.net>
To: valentin.cobelea@enea.com,
	Alexandru.Vaduva@enea.com
Date: Wed, 28 May 2014 22:11:12 -0400
Message-Id: <1401329473-23967-2-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1401329473-23967-1-git-send-email-joe@deserted.net>
References: <1401329473-23967-1-git-send-email-joe@deserted.net>
Cc: yocto@yoctoproject.org
Subject: [meta-cgl][PATCH 1/2] doc: update core image name
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
X-List-Received-Date: Thu, 29 May 2014 02:18:37 -0000

The base CGL image is actually named core-image-cgl.  Correct the minor
typo.

Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 README |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README b/README
index 808c059..fea3e13 100644
--- a/README
+++ b/README
@@ -87,7 +87,7 @@ package groups.
 
 An CGL compliant Linux image is also available into the layer. Its use
 is to facilitate the development of a CGL compliant OS.
-The core image name is: cgl-image-core.bb
+The core image name is: core-image-cgl.bb
 
 
 IV. Specific terms and information
-- 
1.7.9.5


