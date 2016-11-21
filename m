Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47263E00503; Mon, 21 Nov 2016 08:29:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD0A1E00498
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 08:29:08 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id m203so349633wma.3
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 08:29:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=xSB987S8ihHXNatoIF+cg47mYPih20p4ZGrVEML7DkE=;
	b=EuMv8X+/gDqzun8sN9CvrH8iTgffuC5oCHqSRGSz/UspszoRdkmGEhCMVYhPpTwSYL
	zW8k8HU7NjYPLcMOo6kRTWtdUiuuuwGGXvX3JBF/8yPIXo4hXFa/U6Z4M0aCR938qPYS
	iQkB0N1IO0RBttrVZfKk2r6qt2k7zjxrdrFT9dUcACxCjl35AkVRCkShWNfL6t1DLqHa
	So9H06EIpJq5QZaD0swd2vmGi59ycM7IrTeHQXkn83pjgjzRlT/fV8KHlF94HrWGoSUs
	Pm+anMDgtNfWMfvkznu1hqQmwy20lOjAyinIOwYxhtPTqmTyFfZPc5Z5taFw7Ycak1me
	s7Cw==
X-Gm-Message-State: AKaTC03kSWU2OXr9+NdxIFteLVWxHsdfrYktTnzf0NtaT9Hc5Y4StExCkIpovE98qoIdNA==
X-Received: by 10.28.234.85 with SMTP id i82mr14647483wmh.6.1479745747214;
	Mon, 21 Nov 2016 08:29:07 -0800 (PST)
Received: from tfsielt31850.tycofs.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	f67sm20361931wmd.13.2016.11.21.08.29.06 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 21 Nov 2016 08:29:06 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon, 21 Nov 2016 16:29:04 +0000
Message-Id: <20161121162904.20027-2-git@andred.net>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <20161121162904.20027-1-git@andred.net>
References: <20161121162904.20027-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-swupd][PATCH 2/2] swupd-client: don't unconditionally depend on bash
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
X-List-Received-Date: Mon, 21 Nov 2016 16:29:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <adraszik@tycoint.com>

The swupd client itself does not depend on bash anymore since
version 3.3.0. Any posix shell is fine. So let's move the
runtime dependency to the appropriate place.

If some layer's oe-swupd-helpers.bbappend does introduce
a bash dependency, it should just state that dependency
itself.

As the shell now be provided by bash or busybox, also add
an appropriate entry to SIGGEN_EXCLUDE_SAFE_RECIPE_DEPS.

Signed-off-by: André Draszik <adraszik@tycoint.com>
---
 conf/layer.conf                                | 1 +
 recipes-core/swupd-client/oe-swupd-helpers.bb  | 3 +--
 recipes-core/swupd-client/swupd-client_2.87.bb | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 2998949..50e7558 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -13,4 +13,5 @@ LAYERVERSION_meta-swupd = "1"
 
 SIGGEN_EXCLUDE_SAFE_RECIPE_DEPS += "\
   oe-swupd-helpers->bash \
+  oe-swupd-helpers->busybox \
 "
diff --git a/recipes-core/swupd-client/oe-swupd-helpers.bb b/recipes-core/swupd-client/oe-swupd-helpers.bb
index 4690f21..9a5a8dd 100644
--- a/recipes-core/swupd-client/oe-swupd-helpers.bb
+++ b/recipes-core/swupd-client/oe-swupd-helpers.bb
@@ -35,5 +35,4 @@ do_install () {
     done
 }
 
-RDEPENDS_${PN} += "bash"
-FILES_${PN} += "${systemd_system_unitdir}"
\ No newline at end of file
+FILES_${PN} += "${systemd_system_unitdir}"
diff --git a/recipes-core/swupd-client/swupd-client_2.87.bb b/recipes-core/swupd-client/swupd-client_2.87.bb
index 96e7a10..09d09a4 100644
--- a/recipes-core/swupd-client/swupd-client_2.87.bb
+++ b/recipes-core/swupd-client/swupd-client_2.87.bb
@@ -24,7 +24,7 @@ SRC_URI[md5sum] = "5d272c62edb8a9c576005ac5e1182ea3"
 SRC_URI[sha256sum] = "45df259a7dc2fed985ee9961e112120fc46670dd75476c3262fc6804b1c66fb8"
 
 DEPENDS = "glib-2.0 curl openssl libarchive"
-RDEPENDS_${PN}_append_class-target = " oe-swupd-helpers bsdtar"
+RDEPENDS_${PN}_append_class-target = " oe-swupd-helpers bash bsdtar"
 # We check /etc/os-release for the current OS version number
 RRECOMMENDS_${PN}_class-target = "os-release"
 
-- 
2.10.2


