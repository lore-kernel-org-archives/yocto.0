Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8F7DE00C18; Mon, 21 Nov 2016 04:04:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59665E00B8E
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 04:03:58 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id u144so1309776wmu.0
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 04:03:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=5wHRggL7P4sz/V0r4ZhdAMM/JiPEF13TOJh3grqHaW8=;
	b=OKvA+4ydbzsDOTmXK8bc0fOlMHYrLefUyebDJUWfjPn5diWlhUFmvQsDMJOiq0rU5R
	wkVVzrs61zaeVrZjbFuWInV2FKvlaTassrxJt6ZvLiSvNjC5lwKUy74phVhI/DobTsQp
	RCjqVBQRXVJoXDbWxe7M6UK/rSZTyCvUiQVSKV5RzcsEzs7hX1oNtGSA484gxd4LnJMs
	sJNHnXxWqEvE9AWx/oS9SopEpBYIVXXNJTSW5h9k/hLCfiayTYxPT3XFFJewagVU5WCB
	L48gEgCvf2kRGpDPiA6BJNWL/nzQ/DfnHFcnRnlgERFeFeljIXUk6jk4q4ShYczgMm2N
	Vvvg==
X-Gm-Message-State: AKaTC00Zr4GDXFQYdKsCS6/u4XscSoAWR/8BQ9WcPB4sZnEh4b7xchzQXDaXLGDvR+nMEg==
X-Received: by 10.194.57.9 with SMTP id e9mr8618410wjq.116.1479729837826;
	Mon, 21 Nov 2016 04:03:57 -0800 (PST)
Received: from tfsielt31850.tycofs.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	z6sm24565186wjt.24.2016.11.21.04.03.56 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 21 Nov 2016 04:03:56 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon, 21 Nov 2016 12:03:55 +0000
Message-Id: <20161121120355.18309-1-git@andred.net>
X-Mailer: git-send-email 2.10.2
MIME-Version: 1.0
Subject: [meta-swupd][PATCH] bsdiff: update to latest version
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
X-List-Received-Date: Mon, 21 Nov 2016 12:04:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <adraszik@tycoint.com>

This allows us to completely remove the build time
depenency on libcheck when not needed, reducing
overall build time, and in addition tests can be
converted into a PACKAGECONFIG to enable them if
needed.

Signed-off-by: André Draszik <adraszik@tycoint.com>
---
 recipes-devtools/bsdiff/bsdiff_git.bb | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/recipes-devtools/bsdiff/bsdiff_git.bb b/recipes-devtools/bsdiff/bsdiff_git.bb
index 8eb7271..ca0c4c8 100644
--- a/recipes-devtools/bsdiff/bsdiff_git.bb
+++ b/recipes-devtools/bsdiff/bsdiff_git.bb
@@ -6,14 +6,15 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0dbe7a50f028269750631fcbded3846a"
 SRC_URI = "git://github.com/clearlinux/bsdiff.git;protocol=https"
 
 PV = "1.0.1+git${SRCPV}"
-SRCREV = "8c0a87b7c9eb5b22ed4e03a4eb42b32bd390df14"
+SRCREV = "fb5ced7c2cd6aeab0231f0cc3dee6bef72ddfb1e"
 
 S = "${WORKDIR}/git"
 
-DEPENDS = "xz bzip2 zlib libcheck"
+DEPENDS = "xz bzip2 zlib"
 
 inherit pkgconfig autotools
 
-EXTRA_OECONF = "--disable-tests"
+PACKAGECONFIG ??= ""
+PACKAGECONFIG[tests] = "--enable-tests, --disable-tests, libcheck"
 
 BBCLASSEXTEND = "native"
-- 
2.10.2


