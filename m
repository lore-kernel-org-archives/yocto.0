Return-Path: <andrei@gherzan.ro>
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4063EE01885
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:47:52 -0800 (PST)
Received: by mail-qc0-f181.google.com with SMTP id w4so327176qcr.40
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:47:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=1XwkBYcJIuNOC2YL7e96mzvtJS6LdkSdjFDfAFGquPg=;
	b=K9V73Gsc1hOM37bKssMxX5GmzYI7rWSHeBpEmMx3MV6AkJGlSUrx+xkfxEC6vlFxTV
	R5COByFEfp+nGsbQthxhzIRCaSrg5At9o/i0Zhpo1wddxrqwVghuiQPLzgAkoMf+jJhj
	F6R1JAwg0hJhsNkD1/422DyJQY952FqMEK1gP7HCYLwK4RLykaP9KH8/3OTozDErMRTZ
	zDNd9yrbC2nMg/WxSwTC/tltpdGmZTBD4o/oLGY1Gcr2riwFvuCEHvnZpL+sJAlefh3y
	KVgI+nwdXK5HTOxhIE5B+BCyw3D4t0vZGocTe3ErBsHCIyfa8G2guwanuWJQrerg+zn4
	0pjA==
X-Gm-Message-State: ALoCoQkq4WfMMQrencP71Xg+pqZcjus2ssLZvEf+YchWFexAmHghCeLfbSpfFCyb+txpyw3risib
X-Received: by 10.49.127.2 with SMTP id nc2mr20868908qeb.71.1384357672340;
	Wed, 13 Nov 2013 07:47:52 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id j15sm10643621qaa.6.2013.11.13.07.47.50
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Nov 2013 07:47:51 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 13 Nov 2013 17:47:31 +0200
Message-Id: <1384357651-26684-6-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1384357651-26684-1-git-send-email-andrei@gherzan.ro>
References: <1384357651-26684-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 6/6] userland: Update to HEAD on 2013-11-13
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
X-List-Received-Date: Wed, 13 Nov 2013 15:47:53 -0000

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


