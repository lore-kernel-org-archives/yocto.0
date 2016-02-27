Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9F7DE008DB; Sat, 27 Feb 2016 07:27:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3801E00C5B
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:16 -0800 (PST)
Received: by mail-qg0-f50.google.com with SMTP id y9so87796596qgd.3
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=K2K3+xBvWNPsT+lxUz0UXLjXoK+dS+RQRaC6sNM5aEA=;
	b=obMM/23PWNjPNpco4Jf0hcecalFnVx8PvJ9kXb4Uutlk4yf9UOe1UwjoG1q5uoU104
	VmCkPtWokgITS/3prBEOz2gD3hOghvMJWuYsXtR3C1bzGIulO3LrH+9gyOugStjADsvI
	UsZp7DXNxmP1/kHfszzgcyYXONtZkzRN+oYPtEUR/LlNL5rZ4y1ZTcNLzzaOxmPipfQM
	yPqTzNyi7faVhDAzX7XBfkxmrRX2IqMHbsSMiCV1tVunHDVIlWHdSx4P90yeLnVYcyf6
	Cb6dqqNnuNXEa+o3tJbwtSr7XQUpQzliL/CADWXohqWS/J3B7u5NDP3D5zkkJXio+8NX
	WjqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=K2K3+xBvWNPsT+lxUz0UXLjXoK+dS+RQRaC6sNM5aEA=;
	b=TAbUh2w4+flwrH75TDaC4tcnYbBK0byFd1C8//RvPxCZnkRjxlTeEw9dnFALRfBJhj
	r60vI6Xx8XchO3PgU6ttaTwutD5PdacKsHUH/9lfHc4CmGgWiIK3I2LFQDpsInpy0Kmr
	/xQ4TXVyJDwm0zUaCKvd4kMFMUGpvDeakCWtfMXGhGM1qnyZcVZBQMS+4unFvUMRVw8e
	CVFcFCfCzU9e/VbpTbDdZIUOrO03W/SWaZGseIKqRU1VE3J4XnASv27Nv9gVph6SqjFv
	8ZhNO2ufHTyn42EKbhdDJ2j8zN1Yz3F8TY6QayGBGsOzxALuULNbgdNXj+BOXYF+Rdkp
	79Dg==
X-Gm-Message-State: AD7BkJLCtEPoWV6GMHCH+wEC+BGv74YuETV4T/d4o5r0vXCYh3fopP9vxXKYIAUUqmSqzg==
X-Received: by 10.141.5.213 with SMTP id h204mr9240209qhd.48.1456586835994;
	Sat, 27 Feb 2016 07:27:15 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:15 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:26:51 +0000
Message-Id: <b4a090113b124cd20efedbc2d045ecbec31bc2aa.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 12/23] userland: Add wayland to deps if in DISTRO_FEATURES
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
X-List-Received-Date: Sat, 27 Feb 2016 15:27:26 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/userland/userland_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 5ea48e1..7ec02e7 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -46,7 +46,7 @@ EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-a
 
 PACKAGECONFIG ?= "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}"
 
-PACKAGECONFIG[wayland] = "-DBUILD_WAYLAND=TRUE,,wayland,"
+PACKAGECONFIG[wayland] = "-DBUILD_WAYLAND=TRUE -DWAYLAND_SCANNER_EXECUTABLE:FILEPATH=${STAGING_BINDIR_NATIVE}/wayland-scanner,,wayland"
 
 CFLAGS_append = " -fPIC"
 
-- 
1.9.1


