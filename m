Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFE7DE00970; Mon, 30 Jan 2017 23:48:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.182 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5226E0095F
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 23:48:18 -0800 (PST)
Received: by mail-io0-f182.google.com with SMTP id j13so125585520iod.3
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 23:48:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=rygbQn3RZhxMpJ86dQhD/c8IHX8OYTagOHr8LYDEhLg=;
	b=G8HaIwgVF1RPAC9EBxwoo+rk0V6IqwcuZCYV6h0sXrT7RVZdiogJlWLVP6uretltPe
	tKk3BP7yqL2pRs/t4rrdOAVyAjh+s1XZhc3WvUpoIN1PUCzR9HqvWjWQ3M1yLNocioNn
	KqK1LaBUsI3xFfkL+MyMrZVDIyWcMWFQNjmZzAbDYDAvJ6pG63GsIDGhHexEcf6s66ms
	/8J8zINkceN32pwXSLIs6XgsH0dmeisLmknZu5hLz8Giz8fTR4CprP6aXr9jAPIuD8++
	xNR5Y8g7HzHrfyxXwoG79irEv/e38X8Hxsd1PCZdAlQTQL1KED9iFRwrth/evJ4RA+SP
	oahA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=rygbQn3RZhxMpJ86dQhD/c8IHX8OYTagOHr8LYDEhLg=;
	b=bnUSeePsSwE/Zbd7rj3Z1mxeHQsbwQpB5fV/L34OXJVrTzwmFedbyrjOW73lUYwZlN
	bEmEBktdu3CgQjBiUhW+5lEoqeeT0+gtqEA+ySB99Cf4mKBk2kwE3w5VBCt68L2VLKbe
	JPN2S7Po9r63ym9S0Iwj7YggjTjKQ5Y27LD/97PaeVmmtPCgNPj8TAvz98/haG/XPzUg
	dEKwAPXzPYOn/6nQVCZEhMfogk3dyZpo4L45KhoHtv8cj893hTBmZ55BnpsJFc3F+rpv
	/Y/e4lCozzj6hT7DqN1FoVS1YboHVqE576sDJCLwRJunsOddkBzN8vsuIv3dlerGWJ2x
	1CHQ==
X-Gm-Message-State: AIkVDXLrwmDy0wws1dNubZgwfRdLFdqbWKXxn8PJnFzbqt1KsxQGztydzSwykgc6LU4dTwH0
X-Received: by 10.107.47.132 with SMTP id v4mr25625489iov.172.1485848897945;
	Mon, 30 Jan 2017 23:48:17 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8DFEB.dip0.t-ipconnect.de.
	[93.232.223.235])
	by smtp.gmail.com with ESMTPSA id 86sm9758942iok.8.2017.01.30.23.48.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 30 Jan 2017 23:48:17 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 31 Jan 2017 08:48:00 +0100
Message-Id: <81421a577060df46858462fc9ee261698deb807d.1485848669.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.42397547dfc6733226cafa5b4b6bbe50956b78cf.1485848669.git-series.patrick.ohly@intel.com>
References: <cover.42397547dfc6733226cafa5b4b6bbe50956b78cf.1485848669.git-series.patrick.ohly@intel.com>
Subject: [meta-security][PATCH 1/8] trousers: missing libtspi.so.1 in libtspi package
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
X-List-Received-Date: Tue, 31 Jan 2017 07:48:19 -0000

The soname of libtspi.so is "libtspi.so.1" and therefore apps
linked against that library depend on the libtspi.so.1 symlink
to find the library.

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 recipes-tpm/trousers/trousers_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-tpm/trousers/trousers_git.bb b/recipes-tpm/trousers/trousers_git.bb
index 1dedd7c..0a7e5b6 100644
--- a/recipes-tpm/trousers/trousers_git.bb
+++ b/recipes-tpm/trousers/trousers_git.bb
@@ -57,6 +57,7 @@ PACKAGES = " \
 	"
 
 FILES_libtspi = " \
+	${libdir}/*.so.1 \
 	${libdir}/*.so.1.2.0 \
 	"
 FILES_libtspi-dbg = " \
@@ -69,7 +70,6 @@ FILES_libtspi-dbg = " \
 FILES_libtspi-dev = " \
 	${includedir} \
 	${libdir}/*.so \
-	${libdir}/*.so.1 \
 	"
 FILES_libtspi-doc = " \
 	${mandir}/man3 \
-- 
git-series 0.9.1

