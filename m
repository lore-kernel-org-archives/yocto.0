Return-Path: <dev@codyps.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBBAAE0056A; Thu, 26 Jun 2014 16:36:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
Received: from mail-qc0-f194.google.com (mail-qc0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 527C8E00563
	for <yocto@yoctoproject.org>; Thu, 26 Jun 2014 16:36:07 -0700 (PDT)
Received: by mail-qc0-f194.google.com with SMTP id i8so1170124qcq.9
	for <yocto@yoctoproject.org>; Thu, 26 Jun 2014 16:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codyps.com; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=frnAHIJyx8n3DX9CfflD+SzKOHPqISKvW8f0ZvVhuwQ=;
	b=IVw+fF15GW0Yk1ELZdODgn8n4fvbT8pGwYaOrvPm/zr325Ub3XX5CX/8YAmOTg3zia
	3d3fJ/iVlDyhrVi5Tzuaml5D9/myGCT0C1fR+OwWusR9F19FtPAkCzX+BsaHFwWRVi7Z
	agqwr0qd0f1fV5WPVs4Zw6DlgFojN3Mx6GD9M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=frnAHIJyx8n3DX9CfflD+SzKOHPqISKvW8f0ZvVhuwQ=;
	b=SA2lqyP02/guRy4BGGswZEADYy/FHVt1Rak4m/FghelB5CtnswYSJll7bNWGkMNesB
	U8CaHu/Rnka/AV5BD3iaAJAgSQq3eLxOGEYq9XA/HfQMIWwws2AIJ4JUu4ucBF7jGF2H
	om7lHXgC7KeCtjOlqgePsatpk3Lv5t3g8mgqEy2mF023sTfuBGKCLavvetX4fywtcxM7
	dl8Asm9Wt3ST0HmSLEnhEXRjRgzdgPVk7L8HWKHs2rOgVpHj2LIwwDt36RTHKXRqoWv1
	wjAKIp74PNYM1aOujthKVMC2b3qnaayQkz0usy3YJgEfw27Y8cV/UVw/AdP+7yWnb2r2
	SWkQ==
X-Gm-Message-State: ALoCoQnQAUl+SpoyWRFNq0HuhcLoV7UcRPeXxmq21JyfPdXgj5DTWZOPMxf6ku2M/ZlqiLXHjTs4
X-Received: by 10.140.85.102 with SMTP id m93mr26158415qgd.26.1403825766533;
	Thu, 26 Jun 2014 16:36:06 -0700 (PDT)
Received: from localhost (96-39-66-162.static.oxfr.ma.charter.com.
	[96.39.66.162]) by mx.google.com with ESMTPSA id
	l10sm13535593qae.41.2014.06.26.16.36.04 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 26 Jun 2014 16:36:05 -0700 (PDT)
From: Cody P Schafer <dev@codyps.com>
To: ajlennon@dynamicdevices.co.uk, autif.mlist@gmail.com,
	yocto@yoctoproject.org
Date: Thu, 26 Jun 2014 19:35:58 -0400
Message-Id: <1403825758-16139-1-git-send-email-dev@codyps.com>
X-Mailer: git-send-email 2.0.0
Subject: [PATCH] libgdiplus: uses giflib
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
X-List-Received-Date: Thu, 26 Jun 2014 23:36:12 -0000

Depend on giflib-native, without this we end up pulling in the system's
one (which may be the wrong version)

Signed-off-by: Cody P Schafer <dev@codyps.com>
---
 recipes-mono/libgdiplus/libgdiplus-native_2.10.8.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-mono/libgdiplus/libgdiplus-native_2.10.8.bb b/recipes-mono/libgdiplus/libgdiplus-native_2.10.8.bb
index 25dfbbd..cec1fbe 100644
--- a/recipes-mono/libgdiplus/libgdiplus-native_2.10.8.bb
+++ b/recipes-mono/libgdiplus/libgdiplus-native_2.10.8.bb
@@ -14,7 +14,7 @@ SRC_URI = "https://github.com/mono/libgdiplus/archive/${PV}.tar.gz \
 
 inherit autotools pkgconfig native
 
-DEPENDS =+ "cairo-native freetype-native fontconfig-native libxft-native libpng-native pango-native"
+DEPENDS =+ "cairo-native freetype-native fontconfig-native libxft-native libpng-native pango-native giflib-native"
 
 SRC_URI[md5sum] = "6fd45bbb9843f5a8851b5f44e2a5dd04"
 SRC_URI[sha256sum] = "45c533dc72af0a24d1d3a8097873f5fe1670107fe7e6d08fb71ae586c87a0f1d"
-- 
2.0.0


