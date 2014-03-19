Return-Path: <firemagelynn@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1DA4E00955
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 20:11:49 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id md12so8199477pbc.21
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 20:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=RWZHNaNid3159gALz7wYkqvySjaFo1fKEKgl1GfUeDk=;
	b=0I36In2nj4Ct1PCNHok4z+5vtfuYYi9xRBwzvWgvWGFzfyBls4zMicSbBT+up2t91Q
	w6UWNDna8c8xB1vN+t4JXHTdV83LZOGU5XUXMBUt+fMPsjbOdvNym9+WlV8cc6GEIHkT
	cUYQCXQOppL0MFYTH3H7Yz7v94PQDOOdJ5P9Y5kxpgeYAEvI4hyI4mA+WwYb5gccLvBJ
	htv+3bGAbq9TpdJcU7JAIlMHb/2k6iRwvW/JG1GSV1lUkpLcxSFiW78N0QXog7UdXPs8
	Obs3y3V86XWD8hLfsOkfiIdLsLjti4FC46pN7QRAtL800sxALyIdUIcZpTBrsz0XzUBM
	IOQQ==
X-Received: by 10.66.226.145 with SMTP id rs17mr14430718pac.144.1395198709443; 
	Tue, 18 Mar 2014 20:11:49 -0700 (PDT)
Received: from lynn-1015E.gateway.sonic.net (50-0-18-180.dsl.static.sonic.net.
	[50.0.18.180]) by mx.google.com with ESMTPSA id
	lh13sm96450235pab.4.2014.03.18.20.11.48 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 18 Mar 2014 20:11:48 -0700 (PDT)
From: Lynn Cyrin <firemagelynn@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 18 Mar 2014 20:10:30 -0700
Message-Id: <1395198633-6308-1-git-send-email-firemagelynn@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [AUTOBUILDER 1/4] nightly.conf: added package image triggers
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
X-List-Received-Date: Wed, 19 Mar 2014 03:11:52 -0000

Added triggers for nightly-rpm, nightly-deb, nightly-ipk into nightly.conf

reference #3140

Signed-off-by: Lynn Cyrin <firemagelynn@gmail.com>
---
 buildset-config.master/nightly.conf |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/buildset-config.master/nightly.conf b/buildset-config.master/nightly.conf
index 085c25f..0bd68e3 100644
--- a/buildset-config.master/nightly.conf
+++ b/buildset-config.master/nightly.conf
@@ -78,7 +78,8 @@ steps: [{'SetDest':{}},
                            'nightly-multilib': {}, 'nightly-x32': {}, 
                            'nightly-ppc': {}, 'nightly-ppc-lsb': {},
                            'nightly-x86-64': {}, 'nightly-x86-64-lsb': {},
-                           'nightly-x86': {}, 'nightly-x86-lsb': {}},
+                           'nightly-x86': {}, 'nightly-x86-lsb': {},
+                           'nightly-rpm': {}, 'nightly-deb': {}, 'nightly-ipk': {}},
                            'schedulerNames_nowait' : {'build-appliance': {},
                            'eclipse-plugin-kepler': {}, 'eclipse-plugin-juno': {},
                            'nightly-non-gpl3': {}, 'nightly-oecore': {},
-- 
1.7.9.5


