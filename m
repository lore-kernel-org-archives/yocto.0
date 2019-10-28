Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A523E00D35; Mon, 28 Oct 2019 08:58:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.65 listed in list.dnswl.org]
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04777E00AAB
	for <yocto@lists.yoctoproject.org>;
	Mon, 28 Oct 2019 08:58:23 -0700 (PDT)
Received: by mail-io1-f65.google.com with SMTP id 1so11279027iou.4
	for <yocto@lists.yoctoproject.org>;
	Mon, 28 Oct 2019 08:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=FyHWzquZ2DEAFQlHyfkvccKi11zYoVBadSoLiB65EaY=;
	b=g9/onQpmtJG5npcSQgC71t+J1sZwR7BLqVy5WLxIOZajmAwdLTRX/PbQN90ZenrnaH
	x/RZpq0FjDo50z/DPMcL71+BtPMm3LMy0thwIKmqHz0+8D1avlJQC4eY5rCCgARKy/ez
	itRkyoqTEPP57YAuxVUYQ9yDJwMejvg2zKJoChM0Sfvuf3gQQ8zPIdcgdxBD5D6kcNuV
	+nbe7ZYlR+xiOGmgdIqGuTdDVXsGgVkYX5RBCTSItJB30UbY34RkyYqujjwXPkc3M238
	YQce63w9WMDhVF8+9yANzWIz6wvtZo5QO/NMCtmQiXDi/sgJldtvz1CpF0nOzDPqOhIn
	UcpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=FyHWzquZ2DEAFQlHyfkvccKi11zYoVBadSoLiB65EaY=;
	b=UX5ks6jxItBC/RwcuNLi2nZk81d5wVWnxmUhFTqtHUFb6Dg9DH7hWtXE5fqmwazQFK
	0MADomx7odxiZiFSW3kTIHTTBD9kDBNfQ9TQgde3+M8orTZdbv1ER/6tNeWzOE6/IV8S
	cNjEj6OkYkQt3q3/PA9+aWpLyitYGnGg/CPuTw/VmeHuYroxLkaNglf7uzxkJ5brcs6L
	VQ7GhJQL0wqWpZJ7yCXsw29+CEqd0+5OpgraaL4B6Xzb9SiOib0azX8IzlPmOFO6tbJm
	WeItXpKXhlHbVelbCr0YpY03e3tjAV+A1gDzZ53AcUWLBXpn/HBWhmymp2I253IYW89u
	SXCQ==
X-Gm-Message-State: APjAAAWLOTGm8ObWvs7yxtWwk+rNWVmWQU24K1FCYr2g4st6/bk4ZoFe
	4PQ6Swckb5r0CN8g45wSEk4BzJimNFk=
X-Google-Smtp-Source: APXvYqwYXJjcSdX+XJ59eYG1uSe6C3LHL9ISScKwp1FJRSizg8DE9hZ6/zKN8Qs18ucnsgflEDdpUA==
X-Received: by 2002:a02:6306:: with SMTP id j6mr17396639jac.62.1572278303252; 
	Mon, 28 Oct 2019 08:58:23 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	l23sm1085183ion.76.2019.10.28.08.58.22
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 28 Oct 2019 08:58:22 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Mon, 28 Oct 2019 10:58:06 -0500
Message-Id: <20191028155807.9310-2-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191028155807.9310-1-JPEWhacker@gmail.com>
References: <20191028155807.9310-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH 2/3] wayland: Disable library
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
X-List-Received-Date: Mon, 28 Oct 2019 15:58:24 -0000
Content-Transfer-Encoding: 8bit

Disable building the wayland libraries for MinGW. The libraries don't
compile for this platform, and are generally unneeded anyway. The
wayland recipe is usually only compiled for nativesdk to pull in the
wayland-scanner utility.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 recipes-graphics/wayland/wayland_%.bbappend | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 recipes-graphics/wayland/wayland_%.bbappend

diff --git a/recipes-graphics/wayland/wayland_%.bbappend b/recipes-graphics/wayland/wayland_%.bbappend
new file mode 100644
index 0000000..3713f2d
--- /dev/null
+++ b/recipes-graphics/wayland/wayland_%.bbappend
@@ -0,0 +1,2 @@
+EXTRA_OECONF_class-nativesdk_mingw32 = "--disable-documentation --disable-libraries"
+
-- 
2.21.0


