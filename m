Return-Path: <sebmennetrier@gmail.com>
Received: from mail-we0-f177.google.com (mail-we0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21FC7E00A2F
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 01:05:19 -0800 (PST)
Received: by mail-we0-f177.google.com with SMTP id u57so803238wes.8
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 01:05:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:mime-version:content-type
	:content-transfer-encoding;
	bh=K4DGDeZerxHR/ofi0j7g7CCZ1hu46R4Wwsv7Hq3a9JY=;
	b=yUPNHk0waUSoGwDDnkFo5XZvipD9R2R5u4QTTGdWRNvDZZtIqC/tDbPRv/eT8sUCw5
	bLTFI+kbBhfuYqyZtN2vCsW6pzfM4hsFAEi4KM1vn93XhGaWMqDYHM51Tlsj/ZwKIGlI
	THWqVhR757+nIe4M1tVFelwMAlGgNckBbbnUc+G0X8idL3frTc+1P93mhMyOnTCcBbXB
	CVNa0qWa5X5J1kZBXaM54KslaGx5ZnA1goUqykKpAInjka5fEQn/4WHfEI4grbx+3tof
	/MY7BjveGVpFQYVBomr4hl88lVOCj3UdVhjppMYuZayoinVxDETccpImJAZCnxBJsbE9
	ZQdA==
X-Received: by 10.194.175.66 with SMTP id by2mr6417611wjc.59.1394010318019;
	Wed, 05 Mar 2014 01:05:18 -0800 (PST)
Received: from smennetrier-desktop.mpl.mstarsemi.fr
	(connected-labs-gw1.ter2.neodc.mpl.cust.as8218.eu. [94.103.137.126])
	by mx.google.com with ESMTPSA id dk9sm8578376wjb.4.2014.03.05.01.05.16
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 05 Mar 2014 01:05:17 -0800 (PST)
Sender: Sebastien MENNETRIER <sebmennetrier@gmail.com>
From: =?UTF-8?q?S=C3=A9bastien=20Mennetrier?= <s.mennetrier@innotis.org>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:04:28 +0100
Message-Id: <1394010268-16318-1-git-send-email-s.mennetrier@innotis.org>
X-Mailer: git-send-email 1.8.1.2
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH V2] omxplayer : Install fonts directory in datadir
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
X-List-Received-Date: Wed, 05 Mar 2014 09:05:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Sébastien Mennetrier <s.mennetrier@innotis.org>
---
 recipes-multimedia/omxplayer/omxplayer_git.bb | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index a456026..7492f62 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -52,9 +52,12 @@ do_compile() {
 
 do_install() {
 	oe_runmake dist
+	mkdir -p ${D}${datadir}/fonts/truetype/freefont/
+	install ${S}/fonts/* ${D}${datadir}/fonts/truetype/freefont/
 }
 
 FILES_${PN} = "${bindir}/omxplayer* \
-               ${libdir}/omxplayer/lib*${SOLIBS}"
+               ${libdir}/omxplayer/lib*${SOLIBS} \
+               ${datadir}/fonts"
 
 FILES_${PN}-dev += "${libdir}/omxplayer/*.so"
-- 
1.8.1.2


