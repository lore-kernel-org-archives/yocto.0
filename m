Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6079FE00AD1; Sun, 16 Sep 2018 08:57:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com
	[209.85.210.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A622E00AAA
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:27 -0700 (PDT)
Received: by mail-pf1-f172.google.com with SMTP id l9-v6so6397256pff.9
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=CRju1XQo66NlPxc1ZGV5cQAI6ZVOdjQQAuvspksVJAs=;
	b=RH4dWSYM0xKQccDLF0+lXFsrEt2rIULWmRf55g4c4R4FI7reTct4M0MwvKxk6nV7bf
	cAwspoZIMs64EhjkY8mkZfCDJXBohYzHeYqiPz/c0UVfrhzSqYrWfhtT5DG3omV/Uupp
	z5YsjjTT16ABVQ9tkrzi+m5laL9vqQpfGXfkq6AA5F2UaNZStKbIaUdoNB3Y3Mm1a01Q
	U20V9KTBX0sEYOYkZGY6eQCjPPEuYTKFzZLNAS6WDh2emk8Od5s2QPS3kS3YtQlky38M
	KzIfGgtHtDMpPwiiXvA8LodYHnN9JP5OP0qBzdSMcHw/6ThCJByUpsJ+lfgielv4m/Z5
	k6Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=CRju1XQo66NlPxc1ZGV5cQAI6ZVOdjQQAuvspksVJAs=;
	b=pzUxKeLqsv44V8JJzzD8m7rTJ4c89Z0TqUzFFNKynCPQUdDo6T7UIsE5KJrCS+rIKm
	07wuWV9NQY8ZIhyqYIdGIkoEyiBbLGq4+kChkEfH/WM6d7RA/n7DBVb2ijchNyrE0gt7
	c/PqCFXSfDXXdzo2o6Cg4KP133e5oWY9VFAgbqpyNdBEt1EntJ/fKtnHXcYjrHp564bk
	xcVWs+iQJvBf7tUczhq2Yawy3mXoaUr4l4j1VYMuCBZpLmMuJdthXxDRflB2dlc1DlsL
	QIHeARBi9cEfvxeTzMAEenhPex/wtAVoqySIMquqzsSaiQNKvO+kDA1EHqeDM8a+ckpQ
	ZsWA==
X-Gm-Message-State: APzg51DDNFq76TiVxGlQRYOyWMMedzwGqciaou4X4PKt2SuFg9p7KAdi
	YMfyt7LIGwxlQXAFajuFcZDSxcAS
X-Google-Smtp-Source: ANB0VdZn5JTitSvSB1b14KYdgBuLff8XtZ4BJ0jIGQRNl8ArfxczQlvDoTaO+b/sQy63avddOGHMRA==
X-Received: by 2002:a62:2119:: with SMTP id
	h25-v6mr22493330pfh.112.1537113446431; 
	Sun, 16 Sep 2018 08:57:26 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.25
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:25 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:57:00 -0700
Message-Id: <20180916155719.9911-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 06/25] openscap: update 1.2.17
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:29 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../openscap/{openscap_1.2.15.bb => openscap_1.2.17.bb}        | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)
 rename meta-security-compliance/recipes-openscap/openscap/{openscap_1.2.15.bb => openscap_1.2.17.bb} (96%)

diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_1.2.15.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_1.2.17.bb
similarity index 96%
rename from meta-security-compliance/recipes-openscap/openscap/openscap_1.2.15.bb
rename to meta-security-compliance/recipes-openscap/openscap/openscap_1.2.17.bb
index 7cbb1e2..e2a4fa2 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap_1.2.15.bb
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap_1.2.17.bb
@@ -11,7 +11,7 @@ DEPENDS = "autoconf-archive pkgconfig gconf procps curl libxml2 rpm \
 
 DEPENDS_class-native = "autoconf-archive-native pkgconfig-native swig-native curl-native libxml2-native libxslt-native dpkg-native libgcrypt-native nss-native"
 
-SRCREV = "240930d42611983c65ecae16dbca3248ce130921"
+SRCREV = "59c234b3e9907480c89dfbd1b466a6bf72a2d2ed"
 SRC_URI = "git://github.com/akuster/openscap.git;branch=oe \
            file://crypto_pkgconfig.patch \
            file://run-ptest \
@@ -46,6 +46,7 @@ do_configure_prepend () {
 	sed -i 's:-I/usr/include:-I${STAGING_INCDIR}:' ${S}/swig/perl/Makefile.am
 	sed -i 's:-I/usr/include:-I${STAGING_INCDIR}:' ${S}/swig/python3/Makefile.am
 	sed -i 's:-I/usr/include:-I${STAGING_INCDIR}:' ${S}/swig/python2/Makefile.am
+	sed -i 's:python2:python:' ${S}/utils/scap-as-rpm
 }
 
 
-- 
2.17.1


