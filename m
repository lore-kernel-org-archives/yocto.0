Return-Path: <jpuhlman@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CB12E00CA6; Mon, 21 May 2018 12:29:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f182.google.com (mail-pf0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 260EAE00C5B
	for <yocto@yoctoproject.org>; Mon, 21 May 2018 12:29:27 -0700 (PDT)
Received: by mail-pf0-f182.google.com with SMTP id f189-v6so7562100pfa.7
	for <yocto@yoctoproject.org>; Mon, 21 May 2018 12:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=gmq6iBf3HsbsG3RUKwDy9XLBQDR5rNlaH3O4tqGM8Yw=;
	b=FHS9+uEa/1zmaXN+9nQtDn8MgsrSWgWi3vp5uUQIWPYlkfh6OZA2LPwCPDH0Y2II8A
	nh0wq7Az4NR1XZLpo5YjZE6GQbBwW9tC6NKwYO5SvQemBie2uicGBpkuRM85/w+wmtHn
	LAT8+vw1kOq5QhBWqhy1NKPaPSF/OI6d1vVfAp25IXqRG/60lUpa7kepl2IU3BHNLyjE
	jkDiE2z1VBMfJlKEVT8TCCmlP1vhshXZoNEGLiKTmgRkOPeK3suiPXFU2hnRUNGTNXF7
	mFhpcdkGB25UX43phMon3Kpub0i86Iw9/Eca0UGyFq/x2jgnduH3p0i5XGjvcaXS1zrE
	HS4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=gmq6iBf3HsbsG3RUKwDy9XLBQDR5rNlaH3O4tqGM8Yw=;
	b=fXVLmv9wonE6+oJHlki0ixI/Ypx1T/JZbpf7Z0RROjj+l6pqSBQRuOXPOsreQZEQvt
	x6wbKs2Gm45e0E083GIHNfrgFUTCJ7iyCf11ntjxGIJFGr2EvF56ku2HriFCVpNwwojs
	rzgXQBEJTHjmN4QJj/+mvTfqdgRanD2vdhiQE3AzOZfMUitNPn9bQlye+zLCWABJYoFY
	muepnNphhlGKVJUOOGgMthlF/lufqTetRBYvCRiOd3qe7VUmAUsJzJl2CYOgs+sum3xC
	cSeYQ4qjpYIWlvkwxb6M0mYwSfCAMmrZtbmbC0McHQO6+n5Zs5yxCJ0cXMNsCSXeUmkp
	rOwA==
X-Gm-Message-State: ALKqPwfZyYN9lB/FEU3myWlPWVsZp3cr6zcnUEDHA2D1yKIDcjMICOX2
	7npprb6SUFK0G1P1w2TN9PdCRtMG
X-Google-Smtp-Source: AB8JxZpz2xiSLfQVHIPP8CTT4vbFsIkRjmN64+gV/E3AOpIl3CcLBqiaO+eUNKO+BKyXL7sWkphdNQ==
X-Received: by 2002:a62:f80c:: with SMTP id
	d12-v6mr21346240pfh.159.1526930967342; 
	Mon, 21 May 2018 12:29:27 -0700 (PDT)
Received: from workhorse.mvista.com
	(99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
	by smtp.gmail.com with ESMTPSA id
	w12-v6sm20740280pge.69.2018.05.21.12.29.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 21 May 2018 12:29:26 -0700 (PDT)
From: Jeremy Puhlman <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Date: Mon, 21 May 2018 12:29:19 -0700
Message-Id: <1526930959-7384-1-git-send-email-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.6.2
Subject: [meta-cgl][PATCH] Add LAYERSERIES_COMPAT
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
X-List-Received-Date: Mon, 21 May 2018 19:29:29 -0000

From: "Jeremy A. Puhlman" <jpuhlman@mvista.com>

---
 meta-cgl-common/conf/layer.conf  | 2 +-
 meta-cgl-fsl-ppc/conf/layer.conf | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
index bdf5f3f..9384ec7 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -10,7 +10,7 @@ BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 BBFILE_COLLECTIONS += "cgl-common"
 BBFILE_PATTERN_cgl-common = "^${LAYERDIR}/"
 BBFILE_PRIORITY_cgl-common = "7"
-
+LAYERSERIES_COMPAT_cgl-common = "sumo"
 LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security selinux"
 
 require conf/distro/include/cgl_common_security_flags.inc
diff --git a/meta-cgl-fsl-ppc/conf/layer.conf b/meta-cgl-fsl-ppc/conf/layer.conf
index 353824d..525080c 100644
--- a/meta-cgl-fsl-ppc/conf/layer.conf
+++ b/meta-cgl-fsl-ppc/conf/layer.conf
@@ -10,3 +10,4 @@ BBFILE_PATTERN_cgl-fsl-ppc = "^${LAYERDIR}/"
 BBFILE_PRIORITY_cgl-fsl-ppc = "7"
 
 LAYERDEPENDS_cgl-fsl-ppc = "cgl-common"
+LAYERSERIES_COMPAT_cgl-fsl-ppc = "sumo"
-- 
2.6.2


