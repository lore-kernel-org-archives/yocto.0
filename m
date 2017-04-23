Return-Path: <mickey.happygolucky@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41BBBE007BA; Sun, 23 Apr 2017 08:40:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mickey.happygolucky[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB3CFE0077F
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 08:40:45 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id z67so10293220itb.0
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 08:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=GDiVX4Flvify5TWTt8OnFMHrFAZOfyBl2aCa6a+yIVM=;
	b=j/UWTVZY+b7OLeEiEy+YVCHhmTj3OB85TCnK9mVLHmEarWe4NE9eNOu+fOt7oWaZg4
	mhJIhP+gIv0+lNCGpXVT9g1DkgJ11+P3FRrlh5EScMJOf1HUYGyGCYepRuz5qYsaT4vr
	X3Xn0BxWwkxwXnsneDUu8MnkofrkeLNOOIaYC2kjU13hU0VPt57svNyXJpgWq/2fvYQ0
	CGmyk5USB3yhf4/Gs/I6TT2RL629aexXfV1U4gs1mS4ClCMusUKtpbE4HnuRlzz1dZ0J
	zSDpRcs3H942BVO6cff3CwzivLE17x/AvrkLXjeOPnsOIKGf3NpLkH6v7lAP80BhEEZJ
	JE2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=GDiVX4Flvify5TWTt8OnFMHrFAZOfyBl2aCa6a+yIVM=;
	b=H9p5wTjAj8UDeovLtOjZV7Y5RIbCixPQpbn1bzeItYSqg//nhyjgm+2VdHlOHocl3J
	LNXHURQUNEk3JsPpwhskURux1b3ChlTFB57O2gEvHQjK4CWHE9nu2l7IbczdYVF/6A8/
	8nrpt/+yAe1OPpqgvdpgd3kSWtH7c77nFq/tuSs8loyZvtbSXrusapDQ74ajFFrgRP+3
	O1TzOUeMUq4eGIExvs8qwK//REkDvayseuKusYmiTEYRTZRM5rEsmUzNvehqzpD75KtH
	NNZgmSpv4JR6Io66Qg3P/E9A2sWuhslNoDeSgiUGeqKNG9WD8yuy9TruVorq7sZbQv9i
	+1xA==
X-Gm-Message-State: AN3rC/79k2MwdRA+FW/il+igajBNYZ/suTzeoSivFU9zxMGWTijnRFgm
	BA4LTlA5W/vymLaY
X-Received: by 10.99.95.79 with SMTP id t76mr17341925pgb.21.1492962045312;
	Sun, 23 Apr 2017 08:40:45 -0700 (PDT)
Received: from localhost.localdomain
	([2400:2411:21c1:9d00:b8cb:4f3b:9c01:c505])
	by smtp.gmail.com with ESMTPSA id
	y28sm26049065pfk.16.2017.04.23.08.40.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 23 Apr 2017 08:40:44 -0700 (PDT)
From: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 24 Apr 2017 00:40:13 +0900
Message-Id: <1492962013-13945-2-git-send-email-mickey.happygolucky@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1492962013-13945-1-git-send-email-mickey.happygolucky@gmail.com>
References: <1492962013-13945-1-git-send-email-mickey.happygolucky@gmail.com>
Subject: [meta-raspberrypi][morty][PATCH 2/2] xserver-xorg: add xf86-input-libinput to XSERVER_RRECOMMENDS
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
X-List-Received-Date: Sun, 23 Apr 2017 15:40:54 -0000

oe-core's commit is not merged in morty branch.

| xorg-xserver recommends xf86-input-libinput since oe-core's commit
|
|   | commit 2d005faff6341a81a2afae28860101ba9db51ae8
|   | Author: Jussi Kukkonen <jussi.kukkonen@intel.com>
|   | Date:   Wed Oct 26 11:37:38 2016 +0300
|   |
|   |    conf: Use xf86-input-libinput by default
|   | ...

This is workaround to fix the problem that mouse does not work in morty.

Signed-off-by: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
---
 recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend b/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend
index a5a6af3..6fd17da 100644
--- a/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend
+++ b/recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend
@@ -7,3 +7,5 @@ PACKAGECONFIG_rpi ?= " \
     ${@bb.utils.contains("DISTRO_FEATURES", "wayland", "xwayland", "", d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "systemd", "systemd", "", d)} \
 "
+
+XSERVER_RRECOMMENDS_append = " xf86-input-libinput"
-- 
2.7.4


