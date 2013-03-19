Return-Path: <kergoth@gmail.com>
Received: from mail-ia0-f176.google.com (mail-ia0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BFAAE01487
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 19:07:02 -0700 (PDT)
Received: by mail-ia0-f176.google.com with SMTP id i1so888112iaa.7
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 19:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=ayBJTf6OA8JeUvOqgHU9NLYFePkpskCDB7psk0oiaDU=;
	b=DAHtOvqNcR+FLVIIPb4TGgZkleEoX1TRH1GrOvNj2QFbOQGWD9Pfo8472zRNPaSB0G
	Nxaj0p2d1RTxcRQV7k5htEuR6aCTf5G8xYO9tgASYxqiV9ZqUGcqbSIKdMGX6HW4k07t
	h4fbcm2VCSDpwk0A8RzMpDToBnv2pyfywCN5X5kdpKFZ3lPJjTAE8SEZfrKSywugzsOG
	GWUfj5l3Z4yi2HKyoYD+ZNS4krIpPsb4eLdV6Uh69CKKLQ1lzAyncXj5hdXEoAa8qfTw
	bPyrz60MlvBC5rxKaaMa4JxtieVwCBmdra4f8yrCjevI0HdLufqqy8UYO4ilkJY6UywY
	M56g==
X-Received: by 10.43.65.195 with SMTP id xn3mr10044669icb.5.1363658822271;
	Mon, 18 Mar 2013 19:07:02 -0700 (PDT)
Received: from precise64.alm.mentorg.com (nat-lmt.mentorg.com. [139.181.28.34])
	by mx.google.com with ESMTPS id ua6sm12086613igb.0.2013.03.18.19.07.00
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 18 Mar 2013 19:07:01 -0700 (PDT)
From: Christopher Larson <kergoth@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 18 Mar 2013 19:06:57 -0700
Message-Id: <1363658817-27658-1-git-send-email-kergoth@gmail.com>
X-Mailer: git-send-email 1.8.2
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-selinux][for-danny][PATCH] layer.conf: avoid unnecessary early expansion with :=
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
X-List-Received-Date: Tue, 19 Mar 2013 02:07:02 -0000

From: Christopher Larson <chris_larson@mentor.com>

bitbake handles immediate expansions of LAYERDIR for us automatically.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 conf/layer.conf | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index ca1bb46..7af76a1 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -1,12 +1,12 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a packages directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
             ${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "selinux"
-BBFILE_PATTERN_selinux := "^${LAYERDIR}/"
+BBFILE_PATTERN_selinux = "^${LAYERDIR}/"
 BBFILE_PRIORITY_selinux = "5"
 
 # This should only be incremented on significant changes that will
-- 
1.8.2


