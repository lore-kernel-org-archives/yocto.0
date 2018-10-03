Return-Path: <open.source@oleksandr-kravchuk.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA82AE00ADD; Wed,  3 Oct 2018 09:17:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
	[209.85.208.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3EC1E00A54
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2018 09:17:44 -0700 (PDT)
Received: by mail-ed1-f66.google.com with SMTP id f4-v6so5908904edq.3
	for <yocto@yoctoproject.org>; Wed, 03 Oct 2018 09:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=oleksandr-kravchuk-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=P0jJigt5PH/lXLbDOBIMZLW+fpWnZRoVtQQ69vg6y6s=;
	b=LbsB6WsNbSBxP0kAUARKlfmHAdSuZ8ANiCvGnVOhiPdLVzWWkKciKUx62/vic6fFMF
	Zkuxdf1wes1QVE3T0ogGNNKhjeS8kTGRLSAgKcUKc3nHMFkav7Dr3L/pmf6wxrHC4n/H
	qu8OUDaKc/7SJHU6FLZ0BPAk14WfLkjNdHpO7Ib+d3bfJ7cC8kObbR/G+OKv8V7Nv36l
	yfmLv+GQhUpixTchBEqQh3MuWPyixMgcO7fJ/KMZ93Zx/laHBVwkYVcsyezKk2rVn7Z2
	XXdlvrSf/be1VaP5+JX13gI/F42n5myQ/p+ONluupeFhM/MXstouHge0t+XkITrbmGMg
	p25g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=P0jJigt5PH/lXLbDOBIMZLW+fpWnZRoVtQQ69vg6y6s=;
	b=YoSWDF/026xKbSNkI8nhzYrhALMy5AmqJw63pJH6o63sy4VpEaksxKy5/xjOXx5wle
	bKNjljM3nAgB3y3BtHamFI6GlC/0lxeQ3PlqNhcf8U87YxiGglrTjSo20BYu/vv0XCq+
	1i6zGD5JLnP3wAA+c/nLWER6hXV+PtgK0xHkoAyYtawBHOwUmzosoNB96jXqNf1OSn55
	xwvNqILcPa8xLfJjqJxAXvssbhwTbAh/FXHt1Dus2bRMXwlyx06kM+N9PfFiEfm7N+2a
	9doGtpCltQJlarnWQcUxTq2qYgqlysoqCHqEKlmhDUFlNCNBnN6ywhPYOUMOToIEweCr
	s3dA==
X-Gm-Message-State: ABuFfojGts3Ut9C6MNqgL70wx+hpscw1rjOxU8SGCnC4isrYQppgD8yp
	BGGsr0Ci6hBJJ2j5h1r7sLdQTj/yxMw=
X-Google-Smtp-Source: ACcGV614p3ktOjjEl1v32abdFAQJZ+bjIBcWqgTSbNVmkvMVacte2vSNEoTZP4F1aM2Za1WNGZHQ8Q==
X-Received: by 2002:a50:a384:: with SMTP id
	s4-v6mr3407217edb.121.1538583463849; 
	Wed, 03 Oct 2018 09:17:43 -0700 (PDT)
Received: from lund.luxoft.com ([2a04:ae08:1403:ff00:b997:d885:94d1:d275])
	by smtp.gmail.com with ESMTPSA id
	94-v6sm612533edc.59.2018.10.03.09.17.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 03 Oct 2018 09:17:43 -0700 (PDT)
From: Oleksandr Kravchuk <open.source@oleksandr-kravchuk.com>
X-Google-Original-From: Oleksandr Kravchuk <dev@sashko.rv.ua>
To: yocto@yoctoproject.org
Date: Wed,  3 Oct 2018 18:17:39 +0200
Message-Id: <20181003161739.28561-1-dev@sashko.rv.ua>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Thu, 04 Oct 2018 10:10:35 -0700
Cc: Oleksandr Kravchuk <dev@sashko.rv.ua>
Subject: [meta-gplv2] grub: use http mirror for SRC_URI instead of ftp
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
X-List-Received-Date: Wed, 03 Oct 2018 16:17:45 -0000

Signed-off-by: Oleksandr Kravchuk <dev@sashko.rv.ua>
---
 recipes-bsp/grub/grub_0.97.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/grub/grub_0.97.bb b/recipes-bsp/grub/grub_0.97.bb
index 997a045..3e4e12c 100644
--- a/recipes-bsp/grub/grub_0.97.bb
+++ b/recipes-bsp/grub/grub_0.97.bb
@@ -12,7 +12,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b \
 RDEPENDS_${PN} = "diffutils"
 PR = "r6"
 
-SRC_URI = "ftp://alpha.gnu.org/gnu/grub/grub-${PV}.tar.gz; \
+SRC_URI = "http://alpha.gnu.org/gnu/grub/grub-${PV}.tar.gz; \
            file://no-reorder-functions.patch \
            file://autohell.patch \
            file://grub_fix_for_automake-1.12.patch \
-- 
2.17.1


