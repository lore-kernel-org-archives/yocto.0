Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63260E00C66; Tue,  2 Feb 2016 09:04:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D05DE00C36
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2016 09:04:43 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id 128so127925366wmz.1
	for <yocto@yoctoproject.org>; Tue, 02 Feb 2016 09:04:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=ksj0lIEoYaqwJ0UfxjciO7uPq7Bzmi61s6XUpBq22+c=;
	b=Iipe5Ipq0doriPsRNOCBMW9TmK44I/aPWcUPDfXIGr2zdp2gBqvoVCipk7/T5H+6Zz
	AfPHtyVPLh1+P/NKJnl2iptSDFZ54OTbxP7jTrbqBD79gS1vSJsglyWkH0HZY04f7p+8
	R9L0OFmAYuN9rTtns6Ifu8brnGjkCn3HQbMfoIq1yL3WWLteP5MnLZyfSCdWrx/Ldqqx
	vuiCFiqOjt1YWjnjIr3hnh7jAtzIGg+a2l1KAJY8tvk+fT4aBWHvBO2z8nU4FNDvR/7i
	xLB6InV5A1MARA5N+oLJV5BCOCUqh3NGj773JGZT6drli5fGsGT3Kj7G/a8HtqQVW9zB
	Jp3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ksj0lIEoYaqwJ0UfxjciO7uPq7Bzmi61s6XUpBq22+c=;
	b=PTcTExEcwCnw61CjLnHRvYlPw7XjEIb4SnXLxASBmj33f6bsA9t+3BtHh3FY8d3dTt
	D9XqGUQ8nTBbPFxVTHctWAl8YuYWZkjXDfM56piRhKHBuT41NXS894Pk+gVpLjHdgorn
	SfjSXW9Tkccr5D/OEVlZLWOi67pC7QRjl4nwwXN3lERHmW1PSAn/EAb49W1a9llpUPiD
	Hf0hErdBECGP+NkKlZaxBbc1eCNOXMWjJei9tQ0oHXtgKU7jwH82pFN//DozLz7RpU0D
	Is2o2tneCYUYTqAlWovPBQYk3T6rkTJv2mICUSLdWmi9nzWC7HFjX8+DZ+zFiicYVbFG
	86tg==
X-Gm-Message-State: AG10YOQFziwfdvU7VJMQx4FJDBWfZaNqlGwMfY+LqQgM7qw3hNXlpMFTRLiSvovj8c79nw==
X-Received: by 10.194.134.233 with SMTP id pn9mr29426771wjb.77.1454432683276; 
	Tue, 02 Feb 2016 09:04:43 -0800 (PST)
Received: from localhost.localdomain (boi78-4-88-168-227-92.fbx.proxad.net.
	[88.168.227.92])
	by smtp.gmail.com with ESMTPSA id ko2sm2408692wjc.9.2016.02.02.09.04.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 02 Feb 2016 09:04:42 -0800 (PST)
From: John Madieu <j.madieu@expemb.com>
To: yocto@yoctoproject.org
Date: Tue,  2 Feb 2016 18:04:38 +0100
Message-Id: <1454432678-20304-2-git-send-email-j.madieu@expemb.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1454432678-20304-1-git-send-email-j.madieu@expemb.com>
References: <1454432678-20304-1-git-send-email-j.madieu@expemb.com>
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
X-List-Received-Date: Tue, 02 Feb 2016 17:04:50 -0000

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


