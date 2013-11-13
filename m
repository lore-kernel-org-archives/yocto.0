Return-Path: <andrei@gherzan.ro>
Received: from mail-qe0-f47.google.com (mail-qe0-f47.google.com
	[209.85.128.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9BBBE0184A
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:47:51 -0800 (PST)
Received: by mail-qe0-f47.google.com with SMTP id b4so361775qen.34
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:47:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=03JGioVquwBBZnqetjtl2J3+nxVenBVDPxlhsoQkLck=;
	b=C1ZIHPqmGYj0rwqBYt97iHQiGGXp8b2nkZNqnwAyP+P7CchzFcehxTYorHPOWEgwgL
	IgkNTp79+9M7dcD+klin5jC4KjUanvMvOHQ92ZvIrmhlm4ISGtoTuzm7070oZrydwbo9
	/WOl+05MfeuGyreD6mT2Przo9cJnkik5C7aE1mkgSvQUOtTfq/G1kMwoyFqoNu7kd2te
	/fJ4i1wX/chFGVaohWUznVX9x9nRNpXMCnRQ3VBnxkOl3f5D654Q/WcmYodrGeqZVrdz
	G0Xn4eLcV0+tigrQMqqN7UGpkUr+v1D7VRjV7Vqnbv1LkUi6i0sn7eB2jB/1mTVz+CPl
	EAUA==
X-Gm-Message-State: ALoCoQkbisXOdDdAd5kcEEnGg1SGqbm6sj/y3zG0eMMXwdreWMFm/XL1kOBrHpmj1CSQfgMZZs8S
X-Received: by 10.229.58.4 with SMTP id e4mr66597986qch.22.1384357670627;
	Wed, 13 Nov 2013 07:47:50 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id j15sm10643621qaa.6.2013.11.13.07.47.48
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Nov 2013 07:47:50 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 13 Nov 2013 17:47:30 +0200
Message-Id: <1384357651-26684-5-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1384357651-26684-1-git-send-email-andrei@gherzan.ro>
References: <1384357651-26684-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 5/6] firmware.inc: Update to HEAD on 2013-11-13
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
X-List-Received-Date: Wed, 13 Nov 2013 15:47:51 -0000

Change-Id: I00ace3f8575015612ae09dfb99e2a33d87ddc4cb
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bcm/common/firmware.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bcm/common/firmware.inc b/recipes-bcm/common/firmware.inc
index 5bad182..c780e63 100644
--- a/recipes-bcm/common/firmware.inc
+++ b/recipes-bcm/common/firmware.inc
@@ -1,6 +1,6 @@
 # 19/08/2013 firmware; this can be overridden from distro config
-RPIFW_SRCREV ?= "5b37b2a7f357236210eef1a438becaa2a57148f2"
-RPIFW_DATE ?= "20130819"
+RPIFW_SRCREV ?= "3e92add424c3c2617d5df65caa307c808017a9ea"
+RPIFW_DATE ?= "20131113"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
1.8.1.4


