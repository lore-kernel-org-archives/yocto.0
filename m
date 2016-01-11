Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCE9DE00B3A; Sun, 10 Jan 2016 18:55:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DDEFE00B3A
	for <yocto@yoctoproject.org>; Sun, 10 Jan 2016 18:55:26 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id f206so195153735wmf.0
	for <yocto@yoctoproject.org>; Sun, 10 Jan 2016 18:55:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=ksj0lIEoYaqwJ0UfxjciO7uPq7Bzmi61s6XUpBq22+c=;
	b=u6uoZDUSD6F6hXmnwjhQY9Ws1P9pyD26sgOhBHHEL7IOOFEV11u0Ng62IcdZerszKy
	+QpxJLu4w18AP5Pme+oUpBwzjptYz/p7/E6fe+MqodsxLiAMaZ514aPWf60TzMkHTJo7
	VjhHrAGa3YpUQJ2Tr+D2LOrKMNadVVgbyz3vd6iEVA+LfYvEE+X8jgDI6wf2vykeWcSp
	gqhM4evb+gqKR8jw10KyuNWxGSX2vtCZfLSRGEBzWZYH0cj7wlfAItLGYAmpqpsa/qhQ
	Q8JA0rxsSqrQbiLCY7aRtmIHrr+AUK31UdoE+KihUNCYnHM+ilkEXG4iDUnCEV4k+e87
	h9zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ksj0lIEoYaqwJ0UfxjciO7uPq7Bzmi61s6XUpBq22+c=;
	b=I09BhhFKp6cZReK1e0KpxemSUi0VWsymnOVx5RR3IQZ/WmdEz29ffNPl3cK+o1ZAqU
	ArFrPSgZImdgTFYoagbo4lRH9lPuabTx2yvlXZtMBbuU5/zljO1AtxEjBX8C6kW9J7fY
	d/iwNpXHeCVMOOomwsQKB87B9NfEXKYsR4fiT8XWxDWPumIMKYeBx1olGDQI7YnkdxVS
	qQknam9m6X0EE1VJYdnqcORwjLg1qpCiqq+nG62Qn/HHj59p1K9x450Wwk4noXKpL2b6
	MP3e2pJf5gomQ49T6k2aBp8S0ypwz7JDHr9oW+qYr2pAHnYWSFt7pQ4lYBuKZe05w67g
	J5Jw==
X-Gm-Message-State: ALoCoQm4TfBnw0f6vCa3px0wsaknyJ5xrzxEyV/mWPBFgO78pTBp/ThRQqX013SLrkUcg5RCYGztTKEBsuK5dyH1IiVRRxt9zQ==
X-Received: by 10.28.21.19 with SMTP id 19mr10322593wmv.43.1452480925180;
	Sun, 10 Jan 2016 18:55:25 -0800 (PST)
Received: from localhost.localdomain (107.146.113.78.rev.sfr.net.
	[78.113.146.107]) by smtp.gmail.com with ESMTPSA id
	lx4sm117492857wjb.5.2016.01.10.18.55.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 10 Jan 2016 18:55:24 -0800 (PST)
From: John Madieu <j.madieu@expemb.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Jan 2016 03:55:12 +0100
Message-Id: <1452480913-15282-2-git-send-email-j.madieu@expemb.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1452480913-15282-1-git-send-email-j.madieu@expemb.com>
References: <CAK18fxHt88ajUp9sXYhDC8U4V+wg+YHMHyKmS22fMziNxrA=pA@mail.gmail.com>
	<1452480913-15282-1-git-send-email-j.madieu@expemb.com>
Subject: [meta-raspberrypi][PATCH 3/4] layer.conf: avoid to force users to add the qt5 layer because of qtbase bbappend
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
X-List-Received-Date: Mon, 11 Jan 2016 02:55:29 -0000

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


