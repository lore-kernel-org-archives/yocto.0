Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60096E00C2D; Wed,  3 Feb 2016 02:51:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AC01E00C1A
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 02:51:49 -0800 (PST)
Received: by mail-wm0-f41.google.com with SMTP id l66so157442544wml.0
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 02:51:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=ksj0lIEoYaqwJ0UfxjciO7uPq7Bzmi61s6XUpBq22+c=;
	b=evYOueok3sLCFEae9iBMLApQHeoSXb/OEXjcYDKplqt41R8DA7szY7dEbSmElNuL5+
	1q3b0WRiK/s0sMqLZwsde2K3yDSOwGNpLyE9xhexH4Nbg/cvvyvhssC5pSdyUQkh0VEo
	wtKtJAdR88zfMpM3p/cxFEIJbpurKHaSSq4EOwHx4IgyhJTVIkGkvYyXUscEvrU3dnJ5
	icWAj5N6t8prU/bJsZ/MJS/ucjpX2dfph8VknYkPWdRj8AUujWySyKRpFJD8Tz2CjQ0Y
	kdjAirGvuL57o5KsggcayY7LcziRa5onFgXnNviZe3zEDLh2fQ+NLk3/+RUPWvCvAMcm
	moVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ksj0lIEoYaqwJ0UfxjciO7uPq7Bzmi61s6XUpBq22+c=;
	b=AHGf+H+q8a2jUEM6SRVg57lm+zwyzaSpuAgkwr1miRqBCzP1IcMhYONHuQGYSSgyaY
	FCHwkj+Q2KnOcljabX/EFUnGJaeUcbrFSLgULXBoP32ENV0lmlv6rlDe/dLOaKS7IL8M
	gQ3VAFZoBDsiUU823HyXfI63r8myKWJ5AUXkb+tQ9rSFmJmMkfGvEe9wcy8j5Y67gEts
	F3thMzdvdFk7i/1zX8NUeYBr4irpudGQhd0cmTb8GJIMP65DbTZauu2k9pV6nqEb4iFO
	57iDUc8XtEljxGFLiAuEIywZTzoI48GXvmkseqmQSeUgithqtPZL2vnN8iG36rUWPt2G
	vJig==
X-Gm-Message-State: AG10YOTqo1bd9O+eTl2Tvr/c8xa8tHqPP9Wdsk3CHJcmr94yUQKn3rAz1cqO/79Q6WrRdA==
X-Received: by 10.28.53.193 with SMTP id c184mr22746210wma.4.1454496709078;
	Wed, 03 Feb 2016 02:51:49 -0800 (PST)
Received: from localhost.localdomain (boi78-4-88-168-227-92.fbx.proxad.net.
	[88.168.227.92])
	by smtp.gmail.com with ESMTPSA id i2sm5817121wjx.42.2016.02.03.02.51.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 03 Feb 2016 02:51:48 -0800 (PST)
From: John Madieu <j.madieu@expemb.com>
To: yocto@yoctoproject.org
Date: Wed,  3 Feb 2016 11:51:02 +0100
Message-Id: <1454496662-5619-2-git-send-email-j.madieu@expemb.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1454496662-5619-1-git-send-email-j.madieu@expemb.com>
References: <1454496662-5619-1-git-send-email-j.madieu@expemb.com>
Subject: [meta-raspberrypi][PATCH 2/2] layer.conf: avoid to force users to add the qt5 layer because of qtbase bbappend
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
X-List-Received-Date: Wed, 03 Feb 2016 10:51:54 -0000

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


