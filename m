Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C5CCE0086B; Mon, 11 Jan 2016 07:46:24 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D30EE0079A
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 07:46:22 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id u188so219732236wmu.1
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 07:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=ksj0lIEoYaqwJ0UfxjciO7uPq7Bzmi61s6XUpBq22+c=;
	b=dfjS7SsTMv4hMTMtCpXi0FSOP5bjEd/8Ty/wXhBpRc25B9zTHtDcgPuqLkQK7brD8u
	3zID+Ifmu8boDr3mlYjHue1cI8iPd4DdpdnpEYELBdFGfIGex36sfNLdoYGxA0BRV4K/
	UilqHC5qZRYGMYg9MuZf0aAmDsuPNQb9pfzWdcyorv1OzehU6+Oj/qdKVeDpn4BZt7cA
	PjNJ6lcuejpu5xn6a1ciHKuMIaqYNKzASqHCHeGWqs+kNWEYlsL69GC7kFE5/PBUlis+
	h2mwlsnxcJJ9JqRqwOVGgbTm71h2GbwPAcunoNSLELsF0riX0bQs9h89qPIv0069jAOA
	rM4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ksj0lIEoYaqwJ0UfxjciO7uPq7Bzmi61s6XUpBq22+c=;
	b=YxE894JX8f+I2jvMUEq+EDdDUyiYwcwe9z6wxt7m3sQtOHI7Tl5m3bHMtNPlfq40F9
	2qvf09p1yrGJqyfiM3czwdXB4sx11Y1uIjRiLMnn8ct/j6zfJkMev/ZT3WZUltcglvrL
	VhklPT1FODONpnvhaKv8KlicafFCwUmOIq9Pz/pQPlZKvQsjkNhXfEuGDhhJ1ednT0x8
	dIeJet5NROLiQPL5t2+uGjwa1i3lsCNABgerypk4ydow/92NllhxRvlLNoXtAWYfen0S
	JU6nxIU4liNKqTGrX1Zt9Xj6EHXmXfqh55tAHlm/R5Kf48jRYewQWMN+taXamOHEKy5A
	bl4Q==
X-Gm-Message-State: ALoCoQkPPw0XdZOYt1VCDON2SET1DjSYtTPllj9k3eF3HyopZsOQs7hFQ0n2apctWVHlNL2FZVipYyb5UJObit/o6/dsD+auTA==
X-Received: by 10.28.140.142 with SMTP id o136mr5760897wmd.45.1452527181487;
	Mon, 11 Jan 2016 07:46:21 -0800 (PST)
Received: from localhost.localdomain (23-227-190-109.dsl.ovh.fr.
	[109.190.227.23]) by smtp.gmail.com with ESMTPSA id
	m128sm13303731wma.24.2016.01.11.07.46.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 11 Jan 2016 07:46:20 -0800 (PST)
From: John Madieu <j.madieu@expemb.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Jan 2016 16:46:11 +0100
Message-Id: <1452527171-26371-2-git-send-email-j.madieu@expemb.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1452527171-26371-1-git-send-email-j.madieu@expemb.com>
References: <CAK18fxGB5uiXe7LigW3V9TEA2EJFQtsZTt-9yJ=rNwLzdzKY0w@mail.gmail.com>
	<1452527171-26371-1-git-send-email-j.madieu@expemb.com>
Subject: [meta-raspberrypi][PATCH v2 2/2] layer.conf: avoid to force users to add the qt5 layer because of qtbase bbappend
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
X-List-Received-Date: Mon, 11 Jan 2016 15:46:24 -0000

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


