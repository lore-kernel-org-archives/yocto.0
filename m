Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43C68E00B1A; Thu, 12 Apr 2018 07:07:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f193.google.com (mail-qk0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16E37E00708
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 07:07:55 -0700 (PDT)
Received: by mail-qk0-f193.google.com with SMTP id c12so4372717qke.3
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 07:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=X3888tB3Xj1nNQ+7LiTbrrKa+3F+eIhkAUsF8KK3C9k=;
	b=kWm7pn13x5XVTSmfb5MIDtjZts4cAaoD/LWQbm+AEAbvBftcb0s2sPISenqHzwUSOG
	GHtMjgzD1I8uLuHDFM9MxW56dy9BoyFaS+9+ZMUPeZFC6YhHOALikITfXOd5RewYipwB
	h+pPhwi0ENTSv/6M0AoTmjqI6leYbJSrwPBhtOOC4/pmzHe4aOJK1ORlumpVLD+SNgw6
	v2qewk7IlfSdI/lkvij0ivJtdRcz1GI9uMiaoeDbRJ9aY7XhAlQUWhJ8R9Zx3rI8EllT
	9QHgZWuw5GUaMPgGIiaWlxpA49AHPMZ7ZsdX6AUSsW5Pa+9UsbLPja1B7rCytowT8AuW
	kC4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=X3888tB3Xj1nNQ+7LiTbrrKa+3F+eIhkAUsF8KK3C9k=;
	b=gqEuwMqExfHMNfGdujN4XnGXysyQYh4rfqdq20vxYrFbXjoFmOjbea0iQ9IHGlm14Q
	HS76MmR2dy9XTs1IxPlanFT+LC68ozRl3dfk7Lon/ao77HM2sPQ9tZC8M/kPUmBsUYnH
	9fIh8Rpy8OgdpzTUTuUs5+e4iqfHQtpoJ04HbTQp1kymiUGfknIuwasWKDzHBrtPjkps
	SlJXM8l5HYUP4j/Q/Cb8bV1RuTHE/hPrQ0AuZoRk1Eta9K4RS2DzScySHRowEDVE7Z9S
	anYi1vRehqBpMyI3UvycDtQPZDgDo02GSRwdjjxhCLiFZd0+OarnhGcUAOITC2dw43Se
	klag==
X-Gm-Message-State: ALQs6tBmhWztRk6lFckA3i65aGJPkRXSor2EPRnyeweYlVGNt1t+0QVQ
	Z/QNxrN19lK0LqV8y7rUpUU=
X-Google-Smtp-Source: AIpwx49JNojJ6egvuCPWQ9alWcDtTlIc/KnDF9WRAGypqCw7pdhYYHr6gUU5VDnUfHWeBmF+OTqMng==
X-Received: by 10.55.23.101 with SMTP id i98mr1410422qkh.91.1523542075448;
	Thu, 12 Apr 2018 07:07:55 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4000:1184:a021:aca9:5eab:bc4b])
	by smtp.gmail.com with ESMTPSA id
	b12sm3145006qtb.62.2018.04.12.07.07.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 12 Apr 2018 07:07:54 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Thu, 12 Apr 2018 07:07:41 -0700
Message-Id: <1523542063-20994-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/3] sssd: only include when pam in DISTRO_FEATURES
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
X-List-Received-Date: Thu, 12 Apr 2018 14:07:57 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/sssd/sssd_1.16.0.bb | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-security/sssd/sssd_1.16.0.bb b/recipes-security/sssd/sssd_1.16.0.bb
index e41a38e..ff5b618 100644
--- a/recipes-security/sssd/sssd_1.16.0.bb
+++ b/recipes-security/sssd/sssd_1.16.0.bb
@@ -14,7 +14,9 @@ SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz\
 SRC_URI[md5sum] = "f721ace2ebfa6744cfea55e3ecd2d82f"
 SRC_URI[sha256sum] = "c581a6e5365cef87fca419c0c9563cf15eadbb682863d648d85ffcded7a3940f"
 
-inherit autotools pkgconfig gettext update-rc.d python-dir
+inherit autotools pkgconfig gettext update-rc.d python-dir distro_features_check
+
+REQUIRED_DISTRO_FEATURES = "pam"
 
 CACHED_CONFIGUREVARS = "ac_cv_member_struct_ldap_conncb_lc_arg=no \
     ac_cv_path_NSUPDATE=${bindir} \
-- 
2.7.4


