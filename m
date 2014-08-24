Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9076AE0087E; Sat, 23 Aug 2014 18:09:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0E4AE006AE
	for <yocto@yoctoproject.org>; Sat, 23 Aug 2014 18:09:44 -0700 (PDT)
Received: by mail-lb0-f180.google.com with SMTP id v6so10892074lbi.11
	for <yocto@yoctoproject.org>; Sat, 23 Aug 2014 18:09:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=kVPeuejt6IHL1DqyZNpjJoM7zzSfrHg5t4eNVT5G9II=;
	b=mb24/Dy3ur4/Hbpnk0I1aMzPfHoUajYy9zGK/Ue21Z1q06vX3uDXx/O6cWHi21vfZz
	yvT2RHWn0cfkeLBMEHENLfnq7IY80KvWTMlz5LgTLkdGaslLLnDiK+ZzMMrZzz/e6gpf
	PkuljKtYBDjyfr30t+k3FgRU7ZFvUzDmJ17f/sD8DGS7lfIQKdH41BM2jDjxuY2AJb2p
	ROM2S1GJipcakQdD+D+1zTmRO/8+CrRsPWiB2wz5PBMhb4a9A0s9h6uX6VQQUVmvQmm6
	Rkdlfvg6xC3Ece7O7Qf7YIkx7enmBQ6M3HAZrMSK5nJcmHOU2rC2v+QzcXMhxJ2dkhPY
	UZ3Q==
X-Gm-Message-State: ALoCoQkAp8blpK7acXBnHIrM07qv7f92Ws7VBdfhJoxPHb0ABE5jM8cWiFTPB1++fwTdCN1iQOUB
X-Received: by 10.112.172.38 with SMTP id az6mr11753830lbc.53.1408842582554;
	Sat, 23 Aug 2014 18:09:42 -0700 (PDT)
Received: from otp-agherzan-l1.gjk.dk (dhcp-189-34.gjk.dk. [195.249.189.34])
	by mx.google.com with ESMTPSA id u4sm1192544laa.42.2014.08.23.18.09.41
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 23 Aug 2014 18:09:41 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 24 Aug 2014 03:09:32 +0200
Message-Id: <1408842576-30267-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.9.3
Subject: [meta-raspberrypi][PATCH 1/5] firmware: Update to remote's HEAD
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
X-List-Received-Date: Sun, 24 Aug 2014 01:09:47 -0000

Change-Id: I320ceb1f6c0015d5ce48028b0e3581d2f4d52a3b
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bcm/common/firmware.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bcm/common/firmware.inc b/recipes-bcm/common/firmware.inc
index 168cd37..3223330 100644
--- a/recipes-bcm/common/firmware.inc
+++ b/recipes-bcm/common/firmware.inc
@@ -1,5 +1,5 @@
-RPIFW_SRCREV ?= "c8881991d9181779aee9637d6f4b215f108021a3"
-RPIFW_DATE ?= "20140508"
+RPIFW_SRCREV ?= "43c5b2fc9bdb0a43ba67661b8677445e71ae9e82"
+RPIFW_DATE ?= "20140817"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
1.9.3


