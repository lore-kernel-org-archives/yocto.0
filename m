Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39276E00903; Tue, 22 May 2018 05:08:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D94EEE0086B
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 05:08:44 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id a8-v6so31188065wmg.5
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 05:08:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=yMbZ9MuwnLhfrOYXc1XXk+7empEwF0dHx+Nw0ND/uRE=;
	b=iX998NS5cppuYGMHVLvTquwZlnZsdRz7A9avTNBGNaxaXb8odF0CFw8DDis001JyzY
	InRhIAJ7OAPJ5uaGuiuivfNX57f5NGoMWCBx8yKXxamjulemCCL5szSCW5GEz93je+AG
	wz87OM/sHJTmXENzSp/UMRM5eeJuPVeBvF26JmI+7VRWWOXRunVnvXZxE6GHRTxFTTXu
	0fRgGfwf19eev2tvSghQIz2h9Y58kZpy12hPZ1U3D2P9GApZfq1AGzhIvulz3Tm/cAKf
	DnVrVb540EsSxMl2OZDAqNT5fsybmFPLQ+VTARRQRlBzky26jJTkEufCCXqQle90zEEZ
	VglQ==
X-Gm-Message-State: ALKqPwdPS4zWdvUqsNVSZ5fA5j4WE4OszWkYtfiMOxvksjBd+GbKWq1w
	JEXEhyfMw8nIAPlgTHG8VXL6J85D
X-Google-Smtp-Source: AB8JxZo7FHqqjHa6wpOk76Hm2x7fTfW8+maeYNGbt3EnMFNo8IMFfo0c2g2jEo0myNgzyctJBYBTLQ==
X-Received: by 2002:a50:b003:: with SMTP id
	i3-v6mr1899023edd.293.1526990923331; 
	Tue, 22 May 2018 05:08:43 -0700 (PDT)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	f56-v6sm8833509edd.55.2018.05.22.05.08.41
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 22 May 2018 05:08:42 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Tue, 22 May 2018 13:08:41 +0100
Message-Id: <20180522120841.2353-1-git@andred.net>
X-Mailer: git-send-email 2.17.0
MIME-Version: 1.0
Subject: [meta-swupd][PATCH] layer.conf: add LAYERSERIES_COMPAT
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
X-List-Received-Date: Tue, 22 May 2018 12:08:46 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

This layer is compatible with pyro and sumo/master (both tested),
and hence should also be compatible with rocko (untested).

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 conf/layer.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index 50e7558..16b1832 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -11,6 +11,8 @@ BBFILE_PRIORITY_meta-swupd = "6"
 
 LAYERVERSION_meta-swupd = "1"
 
+LAYERSERIES_COMPAT_meta-swupd = "pyro rocko sumo"
+
 SIGGEN_EXCLUDE_SAFE_RECIPE_DEPS += "\
   oe-swupd-helpers->bash \
   oe-swupd-helpers->busybox \
-- 
2.17.0


