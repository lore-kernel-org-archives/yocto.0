Return-Path: <andrei@gherzan.ro>
Received: from mail-qa0-f45.google.com (mail-qa0-f45.google.com
	[209.85.216.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5B07E01840
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 08:19:47 -0800 (PST)
Received: by mail-qa0-f45.google.com with SMTP id hu16so3901010qab.11
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 08:19:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=1XwkBYcJIuNOC2YL7e96mzvtJS6LdkSdjFDfAFGquPg=;
	b=JP2bYgvfUyFmuh4z/1oZIClk4bsvRH2VMbfZ8SPkYkFZkWGc7u/WeVS3YhGCtn5KBJ
	nCA0K47BA5T9jYhzOCo2ocgBTxLiiLkjh1xWIoD2T9B6ghlZC94A0lXddNWcKrQSuKXC
	Wj586K1gebjJb2On4sWsRBDFRTo6knhdBhbyMgI80C5WYlU2FTI8h/Kg9QxElyXB2cnB
	YwIArfpgZjRhjCQG1VnK2fmKsuVyRHT0eQKDBLcB+zhS7LtSciDwr6zXwewJHvJAKe0h
	v1HFo1CmD8eW6MgXwmQfO5CH0jb2YdN0MmgQuC92jp1FTk6t/fTlktzfzFWVq7vTBzZX
	3wMA==
X-Gm-Message-State: ALoCoQk6xF/zdwPVkNFx/wKDGaKNL6+pC05YdqL2//RAKhEHryX/YFLPVOi0VyMA7NyxQy4UKHBP
X-Received: by 10.229.72.194 with SMTP id n2mr22978827qcj.7.1384359586853;
	Wed, 13 Nov 2013 08:19:46 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id p17sm77086894qak.4.2013.11.13.08.19.45
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Nov 2013 08:19:46 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 13 Nov 2013 18:19:26 +0200
Message-Id: <1384359566-32315-6-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1384359566-32315-1-git-send-email-andrei@gherzan.ro>
References: <1384359566-32315-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH V2 6/6] userland: Update to HEAD on 2013-11-13
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
X-List-Received-Date: Wed, 13 Nov 2013 16:19:48 -0000

Change-Id: Ic618f8bc5365b9f787a230a2a3e0ccb92c17738a
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-graphics/userland/userland_git.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index c7ea522..18c74fa 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -5,13 +5,13 @@ vcos, openmaxil, vchiq_arm, bcm_host, WFC, OpenVG."
 LICENSE = "Broadcom"
 LIC_FILES_CHKSUM = "file://LICENCE;md5=957f6640d5e2d2acfce73a36a56cb32f"
 
-PR = "r2"
+PR = "r3"
 
 PROVIDES = "virtual/libgles2 \
             virtual/egl"
 COMPATIBLE_MACHINE = "raspberrypi"
 
-SRCREV = "23baee63495aa685e7693467b7a5469ff5ca4481"
+SRCREV = "628498eb6cf501554c98a5e6c7ea3855574fa43e"
 SRC_URI = "git://github.com/raspberrypi/userland.git;protocol=git;branch=master \
           "
 S = "${WORKDIR}/git"
-- 
1.8.1.4


