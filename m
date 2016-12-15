Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC7CDE00E30; Wed, 14 Dec 2016 18:34:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B694BE00E2C
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 18:34:51 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id i88so1897057pfk.2
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 18:34:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=c10SooBM3bycUZSDNYdDc7Cgb0u3YPoD0j4X1NCDjXI=;
	b=knFm5JpHUPVMzitkv49kf+1XiFzHTIH5cxoqy/5O7bvSqV4EFbNMlrsnSODsqmp20H
	JoErJOWL3M7A53AT995xc5iCQJp7AYV/S9M4YvxQN3uVANIfxXxLYLJkO6xBklqIenAe
	AWRd09meeeJI9inU5+qEJlIFXA7vGFRS3ynjEsCSsQ25Muk7fr2kG6cgjjl6hrfZhGMm
	AUeJqMGvzlaYLinksG6iMrfg5x+NjcJGxdVHYgObfL1l+QFIFU1vsL1kOSDjg5DPCyOK
	oJL7s/jf/HLQgINDLj7Vqe3E15SjeixqA+0gFwF5ri0HTh8pno8tDh+gWzZYM33DtdaV
	5GTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=c10SooBM3bycUZSDNYdDc7Cgb0u3YPoD0j4X1NCDjXI=;
	b=tgjWowowa8QbzPI/P36f7XgvuzmIED/QOxKiGlNFw3QWz5XNj/1WdSaZpHXXRZL8hh
	kko0yoQxjG7fU/7sx6vk31KAL3zIGV/E4G6Zbge91HIZMnl/D1XVMwjbV5cgFmHS23Oz
	R+2sh/m7sLM10F5GTZjic+zey5B4TbXf0V7TpXbmjkotoF/BlRqQteQj1OGsjEkxBxLR
	GT8rUMlIEJlEaX8uhpSK97qn879ysHnG74VhoKsClwnEr6SFpUUxonsGGzgEPMlXJqHJ
	OIDBkPWsqi10nafM4gMysVQvRlS62qcEXn96XvQ1cBomEFEKSW9Kg7NZpT6rAkJTT2NS
	MeSA==
X-Gm-Message-State: AKaTC003oEj2HJ31VdlkPSda2JB6g/SZqnF9wSSNcU6csJCz/6tD/PQ4w+gAgO4C0j1Clw==
X-Received: by 10.99.156.2 with SMTP id f2mr7542pge.20.1481769291436;
	Wed, 14 Dec 2016 18:34:51 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	129sm90587319pgj.26.2016.12.14.18.34.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 14 Dec 2016 18:34:51 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 14 Dec 2016 18:34:43 -0800
Message-Id: <20161215023444.15092-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <20161215023444.15092-1-raj.khem@gmail.com>
References: <20161215023444.15092-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/3] userland: Fix building on aarch64
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
X-List-Received-Date: Thu, 15 Dec 2016 02:34:55 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/userland/userland_git.bb | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index bba7541..a37249c 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "7ade0399c4e46fb6277e3e0ec400711ab54ab504"
+SRCREV = "bb15afe33b313fe045d52277a78653d288e04f67"
 
 SRC_URI = "\
     git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
@@ -43,6 +43,9 @@ EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-a
                  -DVMCS_INSTALL_PREFIX=${exec_prefix} \
 "
 
+EXTRA_OECMAKE_append_aarch64 = " -DARM64=ON "
+
+
 PACKAGECONFIG ?= "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}"
 
 PACKAGECONFIG[wayland] = "-DBUILD_WAYLAND=TRUE -DWAYLAND_SCANNER_EXECUTABLE:FILEPATH=${STAGING_BINDIR_NATIVE}/wayland-scanner,,wayland-native wayland"
-- 
2.10.2


