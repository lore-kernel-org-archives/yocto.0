Return-Path: <jkrishnanjanappa@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E278CE00985; Thu, 13 Aug 2015 01:55:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A8E3E00927
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 01:55:31 -0700 (PDT)
Received: by pabyb7 with SMTP id yb7so33486370pab.0
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 01:55:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=IXCzweQtGnTf8PIVejUlLoHbLpeouCRtG353piLrYvM=;
	b=B6Bs30A/Sxs2W89/GtP8wT8O4kI9NMz2nXE7fRwBn8EbB4uxJTzvz/mb5h1NtFGPSO
	HWEfC4gxQLVe6lmgcv/jkJpFPar+m0hMlFh+MAMughtkbqjOVtsMTqJwaMTyCFMljAM4
	C5iBwHD0w7xR4evokn7iwTALPyNQeFFS4h0kjE7pIwpn0CYZRY7bpgphcDqpA8DgJzNh
	tH/RGfaifmjM1Nz99/Ghmd7Yb5t5B3GePRII1VepyE+jZ/+usM+3jQSD8IKnlxBwyecw
	u3/Ynn5aAh2theuSuHFxrMdOUVBeRK4uCY7DeNGKCLUYxeGJynplG2/gFT23r+rbvB//
	WgCQ==
X-Gm-Message-State: ALoCoQnyjzn/alFzjJX083GEYVSqobPtaKo7V3SXolKWnhrdQ71gZp1yhm/snz2QIZ0/7G5KA2uE
X-Received: by 10.68.116.142 with SMTP id jw14mr76577471pbb.147.1439456130695; 
	Thu, 13 Aug 2015 01:55:30 -0700 (PDT)
Received: from ubuntu64.mvista.com ([111.93.218.67])
	by smtp.gmail.com with ESMTPSA id
	x12sm1770009pbt.56.2015.08.13.01.55.29
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 13 Aug 2015 01:55:30 -0700 (PDT)
From: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
To: yocto@yoctoproject.org
Date: Thu, 13 Aug 2015 14:25:24 +0530
Message-Id: <1439456124-31536-1-git-send-email-jkrishnanjanappa@mvista.com>
X-Mailer: git-send-email 1.9.1
X-Mailman-Approved-At: Wed, 19 Aug 2015 02:49:29 -0700
Subject: [meta-cgl][PATCH] ocfs2-tools-1.4.3: fix SRC_URI[md5sum] and SRC_URI[sha256sum]
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
X-List-Received-Date: Thu, 13 Aug 2015 08:55:33 -0000

The md5sum and sha256sum of source archive present in the
recipe differs with actual md5sum and sha256sum of source archive
present in upstream
(https://github.com/flexiant/ocfs2-tools/archive/ocfs2-tools-1.4.3.zip),
this results in fetch error as below while building ocfs2-tools;

--snip --
ERROR: Fetcher failure for URL: 'https://github.com/flexiant/ocfs2-tools/archive/ocfs2-tools-1.4.3.zip'. Checksum mismatch!
(snip)
SRC_URI[md5sum] = "299191b04ced0d5f71670c799314e684"
SRC_URI[sha256sum] = "6ccac6910f2b91f79326b06f02b8760de863ba881335757063100823b910a45f"
Otherwise you should retry the download and/or check with upstream to determine if the file has become corrupted or otherwise unexpectedly modified.
-- CUT --

Signed-off-by: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
---
 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb
index 1296fd6..a4407ce 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb
@@ -20,8 +20,8 @@ SRC_URI = " \
     file://o2cb.service \
     file://ocfs2.service \
 "
-SRC_URI[md5sum] = "296f1242f4d00d188231d726d7a1d148"
-SRC_URI[sha256sum] = "a809f03c62e515a4c23e98c4b4c3f8150377af2cf44cd2a2ee56e175b0e4d0b3"
+SRC_URI[md5sum] = "299191b04ced0d5f71670c799314e684"
+SRC_URI[sha256sum] = "6ccac6910f2b91f79326b06f02b8760de863ba881335757063100823b910a45f"
 S = "${WORKDIR}/ocfs2-tools-ocfs2-tools-1.4.3"
 inherit autotools-brokensep pkgconfig
 DEPENDS = "corosync openais cluster-glue pacemaker libxml2 linux-libc-headers e2fsprogs"
-- 
1.9.1


