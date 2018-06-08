Return-Path: <george.mccollister@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0D39E00A38; Fri,  8 Jun 2018 15:06:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (george.mccollister[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CEAEE0084E
	for <yocto@yoctoproject.org>; Fri,  8 Jun 2018 15:06:23 -0700 (PDT)
Received: by mail-io0-f195.google.com with SMTP id l19-v6so17550577ioj.5
	for <yocto@yoctoproject.org>; Fri, 08 Jun 2018 15:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=fWNJ9U3gmL7hFbchNsnfemYTVKOEbAf66TR8rpzMABQ=;
	b=n96yq3yhYGkb3iGOtpIwusYKJ0y9aEe9dUHXi5GHDxmAwkDKTHidjw/9QFMkGPD+Kk
	474xocN5JLVjSrX/1WUZVoRpVk7y3nzZLPfhWdwxn3GZ7oXZsNR3+UznN+9DQMQe/BgN
	1xkjfQ76b+vTozhfnK3RugZY6Ww9hnitRoIb8VgixL9Fevt0El5+voSxyuMKNJ3oz2GB
	Xc6Myv2V9TGxNtEkZQNX/HDDU/gDys8cGOg6tVe6BBpuG7cvy0QeZI2rt+HfkAFfSTGF
	f1QtAYCesGdWC/FoRLGuleqz0OWDhAeHigfCOsXA7hBW1Y4DHlzqg3D3cj9GVhDJ5jMW
	YXUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=fWNJ9U3gmL7hFbchNsnfemYTVKOEbAf66TR8rpzMABQ=;
	b=U+zL2d3hdumyOqSVX1t7932AKVgi0ozVPHG1Z0HtlOk4UpZGoKcEbhRupbtXUYxlaS
	vuGlqIdLO5C33KWx2Zd7KKB5oevzOHE1l90SHTUYlq3v3SYuBnAgUNSxGUMziseT6G35
	QxYrT//YyfX+oEkkUKcvuqZqfyZK1pjL8/kcqwoDPVl+w6GCJmRulewPj6UzOBfkrj01
	1wiZ6QjoWh3raQrZJwRuS0CCXa81Kc7R+T7rZjEOH6dC8EHt+5DXA8IZmoAf/dYwKrJS
	L91LUCxgcd0edD41XfhowGI8r0yRD+LQcbmXIE10XRfyoMHqMhkbGTirJzZi3qmEc9eW
	Gzuw==
X-Gm-Message-State: APt69E0yiuRjuD1DmNaHNgxMpeIodMAsZthAjvKieVTLymRSZc3G0DIp
	SFCNdm7TA0Uf/ogAZWxP/D9R
X-Google-Smtp-Source: ADUXVKKrhZQtNVh0EQVUk1hXpgUNyOTs6mZ6odCPFvWtCdtEXYN90+uOatLsVwD4BWyUNqwbXNe5LQ==
X-Received: by 2002:a5e:c011:: with SMTP id
	u17-v6mr6444369iol.10.1528495582780; 
	Fri, 08 Jun 2018 15:06:22 -0700 (PDT)
Received: from threadripper.novatech-llc.local ([216.21.169.52])
	by smtp.gmail.com with ESMTPSA id
	75-v6sm1376144itl.8.2018.06.08.15.06.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Jun 2018 15:06:22 -0700 (PDT)
From: George McCollister <george.mccollister@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  8 Jun 2018 17:06:00 -0500
Message-Id: <20180608220600.44144-1-george.mccollister@gmail.com>
X-Mailer: git-send-email 2.11.0
Subject: [meta-selinux][PATCH] semodule-utils: create empty package
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
X-List-Received-Date: Fri, 08 Jun 2018 22:06:24 -0000

Allow creation of an empty package since semodule-utils itself doesn't
actually contain any files but is still required by semodule-utils-dev.
This recipe places every file under one of it's sub-packages.

This fixes an error encountered when building an SDK:
 nothing provides semodule-utils = 2.7-r0 needed by
 semodule-utils-dev-2.7-r0.core2-32

Signed-off-by: George McCollister <george.mccollister@gmail.com>
---
 recipes-security/selinux/semodule-utils.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/selinux/semodule-utils.inc b/recipes-security/selinux/semodule-utils.inc
index 1e92745..114b4b1 100644
--- a/recipes-security/selinux/semodule-utils.inc
+++ b/recipes-security/selinux/semodule-utils.inc
@@ -8,6 +8,8 @@ LICENSE = "GPLv2+"
 
 DEPENDS += "libsepol"
 
+ALLOW_EMPTY_${PN} = "1"
+
 EXTRA_OEMAKE += "LIBSEPOLA=${STAGING_LIBDIR}/libsepol.a"
 
 PACKAGES =+ "\
-- 
2.11.0


