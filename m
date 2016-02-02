Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF70DE00BEC; Tue,  2 Feb 2016 09:04:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F209AE00BEC
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2016 09:04:04 -0800 (PST)
Received: by mail-wm0-f41.google.com with SMTP id r129so127631781wmr.0
	for <yocto@yoctoproject.org>; Tue, 02 Feb 2016 09:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=ksj0lIEoYaqwJ0UfxjciO7uPq7Bzmi61s6XUpBq22+c=;
	b=tRYJ2uCVAz3co7fRThcr3cf1zWJann34Oioax39ulBUKYHBsBoKekMWAWWcdbucEcE
	7h2jbh/WW0oSnQ45YvM9d9UIMMQrFcm2Wlbncgn0910Z+wlsz04ScB2MhO2Gs+Yg3bLu
	Tt+dJA7ZK19w2pJMr2NhNbi1UHogomwKU5+4MNxVEo0Pkpzf5CP7u1lwKtASKuq4+A9K
	ESRy/c9mbYLTgSvi1KVfb7y4XQqfVgv+pj/GE+g1HoZqENzdxAkUYI0MzsRzm0FZoGXZ
	JCtC/BqweIpaktu8C/qRPcUkoDqFqoS952eDG2BSEtaoqZ5AmnonxeXpM3RdzmiMxqHL
	tmhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ksj0lIEoYaqwJ0UfxjciO7uPq7Bzmi61s6XUpBq22+c=;
	b=QVbRPy1JzMtbIP1bNIaNerSTVnDUgW5LKp7U1VEwZooVZUUmUeFo3K7tpBUhCa4un8
	MG+uZuM2BodGgJ6Uq7FFl0kyIQrFwAfcrxg3Uw8wEuBBoYAdYRriWah4opUvJELtWcG0
	Yuw71lJ4CYQ1gogSw6YYzkZiL9cen/tx8Y83EWkbu7rXuoTksZy4WbaUea2CceFS+FFY
	Eh4YsSayHMrZsEyAxwrqum52WwG3lmfljh1hgTuLowAYt1XR09cDCfcH7zxSfvLrqXvI
	PIgBo/m3gobiDNL2XoFDh8acAcDQKnRiDm/N99VwBCVP6IzviJLubXKIxbT2FtZGREiZ
	8ntQ==
X-Gm-Message-State: AG10YORRMueNdAiMRdVW/Kjfq7vo1btTnEalFzzEV523a5wmzMlZpeIO+U8PSbhTphRUAg==
X-Received: by 10.28.19.204 with SMTP id 195mr20683062wmt.1.1454432643931;
	Tue, 02 Feb 2016 09:04:03 -0800 (PST)
Received: from localhost.localdomain (boi78-4-88-168-227-92.fbx.proxad.net.
	[88.168.227.92]) by smtp.gmail.com with ESMTPSA id
	gl10sm2377371wjb.30.2016.02.02.09.04.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 02 Feb 2016 09:04:03 -0800 (PST)
From: John Madieu <j.madieu@expemb.com>
To: yocto@yoctoproject.org
Date: Tue,  2 Feb 2016 18:03:58 +0100
Message-Id: <1454432638-20259-2-git-send-email-j.madieu@expemb.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1454432638-20259-1-git-send-email-j.madieu@expemb.com>
References: <EC7BC1CD2E085743BB2AE634252C39C17170D3@server.exchange.local>
	<1454432638-20259-1-git-send-email-j.madieu@expemb.com>
Subject: [meta-raspberrypi][PATCH v3 2/2] layer.conf: avoid to force users to add the qt5 layer because of qtbase bbappend
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
X-List-Received-Date: Tue, 02 Feb 2016 17:04:09 -0000

Signed-off-by: John Madieu <j.madieu@expemb.com>
---
 conf/layer.conf | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index bea5a65..60f1bcb 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -12,3 +12,7 @@ BBFILE_PRIORITY_raspberrypi = "9"
 # Additional license directories.
 LICENSE_PATH += "${LAYERDIR}/files/custom-licenses"
 
+# Let us add layer-specific (such as qt5-layer) bbappends which
+# are only applied when that layer is included in our configuration
+BBFILES += "${@' '.join('${LAYERDIR}/%s/recipes*/*/*.bbappend' % layer \
+               for layer in BBFILE_COLLECTIONS.split())}"
-- 
1.9.1


