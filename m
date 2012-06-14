Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ACAFE0144C
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 22:19:39 -0700 (PDT)
Received: by dadz8 with SMTP id z8so2264105dad.35
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 22:19:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=rsn8NS1oEL2D5YQTQlGej5X89jIqsMsJenk7E2dacWY=;
	b=U+YCsF+cPleUTXHD7HtcskkC01ClTJ1gaNXavF6YRRnlFmPsE68JObtw6orazHFhDh
	wtq0UVZt1eV6SMFH2pQDwCVliF1ZgOvgutjcYT6mOycBseUOacrPBuSNE3sYj8g5gdLa
	Fu210g3+09mBL5cJeewxxWjOJpEknraaMjiWx+hvE2AAFwf0UP4nKh1wb+3Cf6+5LaPy
	RVGq0RmUeYaaX6DbLAbCxX5UfMpr4P/x10kQpDcfG1FF02Unevo+PUMB8HAuUVYWmaLu
	ScVa8yRIMgV5Fl50LrgBKQSS36ccHxeRVJY8SHaZQSbJlQoXj1ikeQZSEEujXbbTiEu4
	GETQ==
Received: by 10.68.228.136 with SMTP id si8mr3694574pbc.159.1339651179173;
	Wed, 13 Jun 2012 22:19:39 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id ol1sm8241578pbb.25.2012.06.13.22.19.38
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 13 Jun 2012 22:19:38 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 13 Jun 2012 22:19:32 -0700
Message-Id: <3b44305edae36265295087fb5f31d22d660599b8.1339650859.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1339650859.git.dvhart@linux.intel.com>
References: <cover.1339650859.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1339650859.git.dvhart@linux.intel.com>
References: <cover.1339650859.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQmZCwBA5acmQ1IL/3B3kJP93iFdwUd8mO3PZTaYA2AvRfZ43LqsUkOhamQ7kmlkKzVhAAQM
Cc: Darren Hart <dvhart@linux.intel.com>,
	OE Core <openembedded-core@lists.openembedded.org>
Subject: [PATCH 2/3] busybox: Add setsid and cttyhack for tiny DISTRO_FEATURE
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
X-List-Received-Date: Thu, 14 Jun 2012 05:19:39 -0000

When building very small systems, it can be useful to spawn
a shell from a simple init script, rather than a full System V Init
process. This requires the shell be the session leader and be able to
open the controlling terminal if it is to have job control.

Enable CONFIG_CTTYHACK and CONFIG_SETSID to enable this for distros
defining the "tiny" DISTRO_FEATURE.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: OE Core <openembedded-core@lists.openembedded.org>
---
 meta/recipes-core/busybox/busybox.inc |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-core/busybox/busybox.inc b/meta/recipes-core/busybox/busybox.inc
index 5b83d32..d07ba7e 100644
--- a/meta/recipes-core/busybox/busybox.inc
+++ b/meta/recipes-core/busybox/busybox.inc
@@ -57,6 +57,8 @@ def features_to_busybox_settings(d):
 	busybox_cfg('nls',  distro_features, 'CONFIG_LOCALE_SUPPORT', cnf, rem)
 	busybox_cfg('ipv4', distro_features, 'CONFIG_FEATURE_IFUPDOWN_IPV4', cnf, rem)
 	busybox_cfg('ipv6', distro_features, 'CONFIG_FEATURE_IFUPDOWN_IPV6', cnf, rem)
+	busybox_cfg('tiny', distro_features, 'CONFIG_SETSID', cnf, rem)
+	busybox_cfg('tiny', distro_features, 'CONFIG_CTTYHACK', cnf, rem)
 	return "\n".join(cnf), "\n".join(rem)
 
 # X, Y = ${@features_to_uclibc_settings(d)}
-- 
1.7.5.4


