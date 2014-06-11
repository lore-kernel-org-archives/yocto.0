Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24E80E00B7B; Wed, 11 Jun 2014 10:44:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E970E0070F
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 10:43:56 -0700 (PDT)
Received: by mail-wi0-f178.google.com with SMTP id n15so1596987wiw.11
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 10:43:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=lX21C9iX83JAQjfWLgr7E99REs4YCbSVVb1FF+zHDw8=;
	b=TXmbXXZZ5/bctfrQallHotXnYpi4VkXExhIf4aaPbF4mUwILuXBAJM99IPh9vKlrkk
	sHh3PTOQC31deN3TOL8FfnZMV1w2fdltNPzGEN1a2No35E9E8/BCXRvON+J8ggyfjNvf
	aXawo5hL7mb2SP4E5g9DGd3W1qD8hhDhgnce1cMJuGUJvMJHPGLZGbqdMxAFYL8523h5
	kERRF+Wc/et1n12X6yMCh5AbnBZQ0qtHHYL20/K8RItbzFzuRNvADQTCLCKl5LvU/Vg0
	cqBUvdLbDc1cnk+xg9X5E4wlBXheI3miZGQSl+n4eqTUkPxdH+Hil4YV+M2Ac1FUSQQH
	A9rg==
X-Gm-Message-State: ALoCoQlAmf3uZG3AyswrmZVJMn+HxYRHODyAUltUaWkcaYTnu+MgACqoFVR0vkUlIxbo41dSPseA
X-Received: by 10.180.39.66 with SMTP id n2mr52611599wik.17.1402508635562;
	Wed, 11 Jun 2014 10:43:55 -0700 (PDT)
Received: from otp-agherzan-l1.VodafoneMobile.WiFi ([82.137.12.98])
	by mx.google.com with ESMTPSA id 8sm60730776eea.10.2014.06.11.10.43.53
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 11 Jun 2014 10:43:54 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 11 Jun 2014 20:43:46 +0300
Message-Id: <1402508626-4638-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.5.3
Subject: [meta-raspberrypi][PATCH 1/1] README: Add patch guidelines info
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
X-List-Received-Date: Wed, 11 Jun 2014 17:44:00 -0000

Change-Id: I2dac882a6dbe2fbca63a5c7405339edcca18cf04
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 README | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/README b/README
index daa4059..ab2959d 100644
--- a/README
+++ b/README
@@ -202,6 +202,9 @@ Gerrit review repo:
 To contribute to this layer you should send the patches for review to the
 mailing list.
 
+The patches should be compliant with the openembedded patch guidelines:
+http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines
+
 Mailing list:
     https://lists.yoctoproject.org/listinfo/yocto
 
-- 
1.8.5.3


