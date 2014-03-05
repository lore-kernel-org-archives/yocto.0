Return-Path: <andrei@gherzan.ro>
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06E77E0078E
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 07:30:18 -0800 (PST)
Received: by mail-qc0-f174.google.com with SMTP id x13so1266045qcv.33
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 07:30:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=RhZl2g/gRMf2YLAzPRMlsMbepRKxk3hI9smFzsZuxp4=;
	b=Q0D5e8qOXULEeIaO+V3Wr4xdVH9hlMATzq6UQ4jXVmpMEusDJ6VXYXef5+uUX5+yYu
	EMKQPEHMFLveKEoOTyTl3rKerXBZccRvSEU4J0flL3Cj0bI65U7+srmu4UfZ9X83T+WG
	z7dqcHRw7IpUrcolHFRp80Q8osStrV+V3tvvyCdplaA9haJGzV3DjXml5nFgDuCDbXzt
	F3pjG/Cw+tUlWmqelqA2Vvj4uf40pEdT6SZXqOSbl2p5MpffqEtVAgTezPhiVYQZcOjk
	LotDRDXrX2l6hBSkffGE6d98Hqys7QvrhcWTkHvsg8B2QQ82Un9fy0c2JPreYcBMhbaq
	f52w==
X-Gm-Message-State: ALoCoQn/StCM5NJKMVAeY9bHl5y++CQZhN3+DPZO4C9gHR6JxAE5lA0t2bn1xPPPxB4ERAzkUrig
X-Received: by 10.140.49.109 with SMTP id p100mr7162787qga.52.1394033417731;
	Wed, 05 Mar 2014 07:30:17 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id i7sm8746074qan.0.2014.03.05.07.30.15
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Mar 2014 07:30:16 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 17:29:56 +0200
Message-Id: <1394033396-3514-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.5.3
Subject: [meta-raspberrypi][PATCH1 1/1] omxplayer: Don't hardcode datadir
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
X-List-Received-Date: Wed, 05 Mar 2014 15:30:21 -0000

Change-Id: Ibe66106fdf1da38d43278f5e2853c722709b91db
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-multimedia/omxplayer/omxplayer_git.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index 526dc86..c83d6c3 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -57,13 +57,13 @@ do_compile() {
 
 do_install() {
     oe_runmake STRIP='echo skipping strip' dist
-    mkdir -p ${D}/usr/share/fonts/truetype/freefont/
-    install ${S}/fonts/* ${D}/usr/share/fonts/truetype/freefont/
+    mkdir -p ${D}${datadir}/fonts/truetype/freefont/
+    install ${S}/fonts/* ${D}${datadir}/fonts/truetype/freefont/
 }
 
 FILES_${PN} = "${bindir}/omxplayer* \
                ${libdir}/omxplayer/lib*${SOLIBS} \
-               /usr/share/fonts"
+               ${D}${datadir}/fonts"
 
 FILES_${PN}-dev += "${libdir}/omxplayer/*.so"
 
-- 
1.8.5.3


