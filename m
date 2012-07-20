Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F731E002AB
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 19:53:27 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so6447824pbb.35
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 19:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=f5kJRL72Sic9yQ8kvJcF5k4ffA9yy6UHbZTkSFRXmtI=;
	b=mQ8o/TsEefZ+M/tlXRKXESSmrfiJ8OEEi7o3SlnBSMCPgImk/RvxEcKIn7XLAeh0UB
	GgMMULv37Wh+7OUtjKvPKnBEqbs3VHiaCnbLg8gT6bz0OTLC7vOAtnYmyrhFqmfUN2q1
	tjieTNBi/uwyrU8HHVrh/UZymfmyzm9indFl1pvI5uD9YuTWgdVA5SSOl6hm3foGWtuU
	2rf1Hu2neKI0sVLhtm1tp/UrdMnvimMgpFFCYKCaSddWZteZ/YIM10bjGednUXyKWpiU
	GlvenRzAdOgKWF/EZIVIbohj1/jbG/s4l9AhM+RYBpPrms8Tqv1ZVJWQcTCRyklnHMuX
	8Ezw==
Received: by 10.68.116.203 with SMTP id jy11mr9847374pbb.129.1342752807140;
	Thu, 19 Jul 2012 19:53:27 -0700 (PDT)
Received: from kraj-lnx.juniper.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPS id sh3sm2971279pbc.16.2012.07.19.19.53.24
	(version=SSLv3 cipher=OTHER); Thu, 19 Jul 2012 19:53:25 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jul 2012 19:53:24 -0700
Message-Id: <1342752804-18293-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-intel][PATCH] va-intel.bb: Add compatible host x86/x86_64
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 20 Jul 2012 02:53:27 -0000

This lets meta-intel to play well in multi-bsp
setup

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 common/recipes-multimedia/libva/va-intel.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/common/recipes-multimedia/libva/va-intel.bb b/common/recipes-multimedia/libva/va-intel.bb
index 3ce857a..69633aa 100644
--- a/common/recipes-multimedia/libva/va-intel.bb
+++ b/common/recipes-multimedia/libva/va-intel.bb
@@ -18,3 +18,4 @@ ALLOW_EMPTY = "1"
 RDEPENDS_va-intel = " \
     ${VA_IMPL} \
     "
+COMPATIBLE_HOST = '(i.86|x86_64).*-linux*'
-- 
1.7.5.4


