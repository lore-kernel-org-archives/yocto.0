Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f43.google.com (mail-pb0-f43.google.com
	[209.85.160.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5FD7E00716
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2013 15:18:11 -0800 (PST)
Received: by mail-pb0-f43.google.com with SMTP id jt11so2215976pbb.30
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2013 15:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=BA/E8Vuqp1lqxAyWjjzpYEhv24Ybb4lKCNF/jcOYFRs=;
	b=TQ5nKPfDINAIZL5430X5MycCEULTkGtJAyJuasZsVJ0Ssq+EcL9/VVca1sqYRDORbO
	S8EcKZ6gsd04yhaCvSyQcgrm60cQBCOG/nUsPm/7y7riLAOMY2NEKzUY1wxcemRv78B/
	rBGopzQPkmJghYL73u8cchU1De4LXAwXnXMASzDgxnmxNc3YtjWHnCz/HyjsKQmYN8qM
	rUdOcXE14TfmXAwXbu50tw21QrHiKqlEbrYElCqA4K/m5Fcg0LAYg5MMtJ0WlQLrl0mM
	xwmvanEUXuq2vbmIjSebgymaLcyRyXHkVhLWvh309sSwxgZlwQhs5m4nONQ1e84W3tZI
	osjw==
X-Received: by 10.68.197.71 with SMTP id is7mr33779938pbc.79.1358810291536;
	Mon, 21 Jan 2013 15:18:11 -0800 (PST)
Received: from isis.gateway.2wire.net
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id nt5sm9449743pbb.59.2013.01.21.15.18.10
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 21 Jan 2013 15:18:10 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org,
	autif.mlist@gmail.com
Date: Mon, 21 Jan 2013 15:17:57 -0800
Message-Id: <1358810277-11975-2-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1358810277-11975-1-git-send-email-raj.khem@gmail.com>
References: <1358810277-11975-1-git-send-email-raj.khem@gmail.com>
Subject: [meta-mono][PATCH 2/2] monotools-server: Remove multiline comment
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
X-List-Received-Date: Mon, 21 Jan 2013 23:18:11 -0000

bitbake/master does not like it anymore

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../monotools-server/monotools-server_2.0.bb       |    2 --
 1 file changed, 2 deletions(-)

diff --git a/recipes-mono/monotools-server/monotools-server_2.0.bb b/recipes-mono/monotools-server/monotools-server_2.0.bb
index 551c586..ef738da 100644
--- a/recipes-mono/monotools-server/monotools-server_2.0.bb
+++ b/recipes-mono/monotools-server/monotools-server_2.0.bb
@@ -22,8 +22,6 @@ SRC_URI += " \
 	file://fix-pkglib_SCRIPTS.patch \
 	"
 
-#	file://Makefile-pkglib.patch \
-
 DEPENDS = "mono-xsp gtk-sharp"
 
 S = "${WORKDIR}/${PN}"
-- 
1.7.9.5


