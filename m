Return-Path: <andrei@gherzan.ro>
Received: from mail-qe0-f51.google.com (mail-qe0-f51.google.com
	[209.85.128.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5864E01832
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 08:19:45 -0800 (PST)
Received: by mail-qe0-f51.google.com with SMTP id t7so384202qeb.38
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 08:19:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=03JGioVquwBBZnqetjtl2J3+nxVenBVDPxlhsoQkLck=;
	b=ScJRujrtPaaoLr1rCc0U6rOsVSxMljX+l79spfenDZSkrmvUnWdChSoo+v0aaN0itw
	uyyDIPM/oWAyDxgBgmnYGFvQ6LKpBKlSl24w/f3+7rVAq50XMuOdwsmKST7HrJEyoeRX
	Bcaeu/XUSDqLjr2OxYOe2chqTXxMJJ2W5eMvoYUF0hq/IR2uKFk9aJBvq2LLPcHn3s8n
	IsSNK79fkPACcF3TfnLi+mS6/tK4EhmQ67YdZusn+bcWWk/kevN+7RfrjHLIgk/bGmtO
	p4u/17jBa3Rx1ZlEp0/f8c9tNtFeNQ9ztnlJy9EucEZI9AZ4ALYBsdm66tHvFMBPw3ku
	75YQ==
X-Gm-Message-State: ALoCoQkwSKqeYw2IyjDZ8XHl2F3Vb3EWmbPD/5uplvC+WHkezQmO3MU76A0qGufv7buHLcLjLkZ0
X-Received: by 10.49.58.175 with SMTP id s15mr66856859qeq.2.1384359585082;
	Wed, 13 Nov 2013 08:19:45 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id p17sm77086894qak.4.2013.11.13.08.19.43
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Nov 2013 08:19:44 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 13 Nov 2013 18:19:25 +0200
Message-Id: <1384359566-32315-5-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1384359566-32315-1-git-send-email-andrei@gherzan.ro>
References: <1384359566-32315-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH V2 5/6] firmware.inc: Update to HEAD on 2013-11-13
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
X-List-Received-Date: Wed, 13 Nov 2013 16:19:46 -0000

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


