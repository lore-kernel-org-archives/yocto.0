Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EAEFE00B74; Wed, 28 May 2014 19:17:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 334 seconds by postgrey-1.32 at yocto-www;
	Wed, 28 May 2014 19:16:57 PDT
Received: from mail-ig0-f181.google.com (unknown [209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AE65E00B6C
	for <yocto@yoctoproject.org>; Wed, 28 May 2014 19:16:57 -0700 (PDT)
Received: by mail-ig0-f181.google.com with SMTP id h3so3293501igd.14
	for <yocto@yoctoproject.org>; Wed, 28 May 2014 19:16:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ciHSFT9WaDoY7X3AJsBah6UnfMHeMrXK/xmTKM/Skh0=;
	b=VdgiMEx8BYvsQEDGPQnuLYcGF9gMkepBWSgu4vUkpbZPCBWFclFmqIO0DO0zRw2UsI
	ipCCZI89lGIzHX7c9W8eOIkiYBvxJGfBxVtQWPqzxqAK1KQ78W/n3XX0QX3T8Ufzxl59
	UAoY06XaKjz2GKSWAxSE+zj1gsZsiM70wqjqO5lGnAg/Cgr6qijAaU/M4e0aoIfvAwng
	YE3j/LDKgmJUAb0eDIiNNzFXpay3f21T4wgl6dJNUYzphVtsXDuzW1fQBTuudYTf1+J3
	mZQV6HQTJoEP+NgEBAOQchuImvFvDSO5su9xI9RLP0rUEX9UPuSf4hVgJYZ9JX++sbjj
	5lbw==
X-Gm-Message-State: ALoCoQnkVLvpdbuVvLHVMEg/LNlDf0a1pzcO8rJgDtniKaud/ojru92nPVd7cQE6o+wRWYraJVar
X-Received: by 10.42.127.199 with SMTP id j7mr3654486ics.27.1401329484658;
	Wed, 28 May 2014 19:11:24 -0700 (PDT)
Received: from mir.deserted.net (24-246-4-250.cable.teksavvy.com.
	[24.246.4.250])
	by mx.google.com with ESMTPSA id y15sm20305959igy.2.2014.05.28.19.11.22
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 28 May 2014 19:11:23 -0700 (PDT)
From: Joe MacDonald <joe@deserted.net>
To: valentin.cobelea@enea.com,
	Alexandru.Vaduva@enea.com
Date: Wed, 28 May 2014 22:11:13 -0400
Message-Id: <1401329473-23967-3-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1401329473-23967-2-git-send-email-joe@deserted.net>
References: <1401329473-23967-1-git-send-email-joe@deserted.net>
	<1401329473-23967-2-git-send-email-joe@deserted.net>
Cc: yocto@yoctoproject.org
Subject: [meta-cgl][PATCH 2/2] distro: define a cgl distro type
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
X-List-Received-Date: Thu, 29 May 2014 02:17:01 -0000

A CGL image is different enough from other images that it can sensibly be
considered a different DISTRO type.  It's been possible thus far to
piggy-back on 'poky' but recent changes in the base layer make it a
reasonable time to create a full distro for CGL.

Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 conf/distro/poky-cgl.conf |    6 ++++++
 1 file changed, 6 insertions(+)
 create mode 100644 conf/distro/poky-cgl.conf

diff --git a/conf/distro/poky-cgl.conf b/conf/distro/poky-cgl.conf
new file mode 100644
index 0000000..ccc2b90
--- /dev/null
+++ b/conf/distro/poky-cgl.conf
@@ -0,0 +1,6 @@
+require conf/distro/poky.conf
+require conf/distro/poky-lsb.conf
+
+DISTRO = "poky-cgl"
+
+DISTRO_FEATURES_append = " pam selinux"
-- 
1.7.9.5


