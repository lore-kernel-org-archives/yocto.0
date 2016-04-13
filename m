Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09823E00D37; Wed, 13 Apr 2016 01:10:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9414E00C75
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 01:10:19 -0700 (PDT)
Received: by mail-pf0-f173.google.com with SMTP id 184so30007556pff.0
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 01:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=2q5g2/PpRjQP+FVTBH7WaoNLHxdbJwxE5liwepJQoKE=;
	b=WhajzLfu7KWf26oI9LOxPX8N+gfNvJB8+8nVLCQFXy34yjTJleDjKrMvohoU+7PwiO
	iSbi3ogvIYd96gNftonjJZQd6lEB5QkwLribt0nzed9jfc1H87qkF1BGdLvP93cERcHj
	j7VmnmA/BSk/siARnxgba64bVaN6OjzDe6lts0zneLTQCX/d0QMrKUm575bwpykFCqYC
	7hkZY/UglTJs+irM4DeKsHa+9WepUjmAAMOY1usFxea3zWy+QryuclTK6mzEy+3ShaoZ
	pEO6Rb+k1teth0bFy19Sy/Cll6HAVgrCzd6u5I40WrZLNH5hoko7VYnUed5tF/inx2Zo
	+VFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=2q5g2/PpRjQP+FVTBH7WaoNLHxdbJwxE5liwepJQoKE=;
	b=BqjBiIqzTyyCi+NVs6GV9HWI7tMrltlPe5eR+35Oyn4jTAU3Y2hZYOJ40CWGFHHJZ8
	SEihYzetaPQJfX83yv25MonQHD42JwvqU+CJIjln/T0kYJckAYXX8QqChCWgw8qetKlG
	bib+89rYxYBGGJG2KRLq6qo1h7x8U4+zl+UWkB7aJqtcYh3/4ClPLpgM+xkMd7Bt6Wq8
	elckSysyrgXcKBz33NEkSWzNJnGeZsckMVkugf5VBI7ULKnNzLm2Op+lPOz72LjKqCtl
	o+5HiL7RGlqIz1iX3ntbW726q8R0SYO1kHgJIV7ZsrXM0Yz3qi2ez7M/f9gAu41svdyv
	ncrA==
X-Gm-Message-State: AOPr4FV0Js5bpcBAr8URHtsl4IirBU57pPXr5Gs3qup7F51tbOvliU/spvDdDloDKUS6Ug==
X-Received: by 10.98.2.22 with SMTP id 22mr11014884pfc.36.1460535019192;
	Wed, 13 Apr 2016 01:10:19 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	q20sm48874923pfi.63.2016.04.13.01.10.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Apr 2016 01:10:18 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Apr 2016 18:09:55 +1000
Message-Id: <1460534995-21747-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH] userland: fix wayland PACKAGECONFIG
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
X-List-Received-Date: Wed, 13 Apr 2016 08:10:23 -0000

The wayland-native dependency was not added correctly.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-graphics/userland/userland_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index ef06b12..2fdfeed 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -45,7 +45,7 @@ EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-a
 
 PACKAGECONFIG ?= "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}"
 
-PACKAGECONFIG[wayland] = "-DBUILD_WAYLAND=TRUE -DWAYLAND_SCANNER_EXECUTABLE:FILEPATH=${STAGING_BINDIR_NATIVE}/wayland-scanner,wayland-native,wayland"
+PACKAGECONFIG[wayland] = "-DBUILD_WAYLAND=TRUE -DWAYLAND_SCANNER_EXECUTABLE:FILEPATH=${STAGING_BINDIR_NATIVE}/wayland-scanner,,wayland wayland-native"
 
 CFLAGS_append = " -fPIC"
 
-- 
2.7.4


