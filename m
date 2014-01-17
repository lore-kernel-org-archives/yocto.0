Return-Path: <andrei@gherzan.ro>
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A2A7E00885
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 07:16:59 -0800 (PST)
Received: by mail-qc0-f181.google.com with SMTP id e9so3623963qcy.26
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 07:16:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=F8hyzYfNWFHclCiEG85GE9/QhjouSb9msmRbAkXgNG4=;
	b=C4V6jHtAjbnD38HMVeJ+p3DvYL5SCpHGvg8lL40ovtd3OicfzVacK6eyeQBR4WE9iu
	PInQge6KN3dDEq3+u0P94j5mj1INAGisVh4Jpi6dP8SuNeZ9WzULuWAJlzbhoR9gUCDq
	N1oLusGxImxazIQTxvPHHwPHoRwP8+t/dD10OuTsaxu9v1OnUSTUVhGzfAqY8v794ze5
	XImf00cibs3HwyeXpS6qefA25m3Vl5Z+wuHUAb9lxfqwwJfjWmrf00Xxgo3Pag3v7sPQ
	Q/bNYx01Xu/fk5Xf0KDsAHUPQMANO2jX46HcoSyY4kPANMB4+y0jRgUyROpxL4fDeRpn
	9RGQ==
X-Gm-Message-State: ALoCoQmLVzpr/mPi4POdOG6o6DcTuRC5yb25Vh53Bb2LzGFXoFFnO9EG7hSP+6BAz7Lh0U7sbgbv
X-Received: by 10.224.36.82 with SMTP id s18mr4002273qad.23.1389971819451;
	Fri, 17 Jan 2014 07:16:59 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id w8sm14478940qag.15.2014.01.17.07.16.57
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 17 Jan 2014 07:16:58 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 17 Jan 2014 17:16:40 +0200
Message-Id: <1389971801-23724-4-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1389971801-23724-1-git-send-email-andrei@gherzan.ro>
References: <1389971801-23724-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 4/5] userland: Update to remove HEAD
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
X-List-Received-Date: Fri, 17 Jan 2014 15:17:02 -0000

Change-Id: Ib98889d05b33ec2647966f2827e1fbf84f35fd95
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-graphics/userland/userland_git.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 2993044..cba1709 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -5,13 +5,13 @@ vcos, openmaxil, vchiq_arm, bcm_host, WFC, OpenVG."
 LICENSE = "Broadcom"
 LIC_FILES_CHKSUM = "file://LICENCE;md5=957f6640d5e2d2acfce73a36a56cb32f"
 
-PR = "r3"
+PR = "r4"
 
 PROVIDES = "virtual/libgles2 \
             virtual/egl"
 COMPATIBLE_MACHINE = "raspberrypi"
 
-SRCREV = "d2c9f912da389c23ed27e81e940be3540f64fc59"
+SRCREV = "6da40ffd91f2b3c2aa8471195813322ae5d0cb0d"
 SRC_URI = "git://github.com/raspberrypi/userland.git;protocol=git;branch=master \
           "
 S = "${WORKDIR}/git"
-- 
1.8.1.4


