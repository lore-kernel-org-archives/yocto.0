Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 168CEE00B81; Mon, 25 Mar 2019 09:58:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86A38E00950
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2019 09:58:58 -0700 (PDT)
Received: by mail-pl1-f193.google.com with SMTP id bf11so230958plb.12
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2019 09:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=48EZDghtIljXLZuhBpRLUIu0I0oxEx9vngWv1I5F3KQ=;
	b=aiHmJnQlfkpN3Q+iNVhfhuaLDvFRpaEEyjEia9t2v+7+KDZ5ltiXnIyyI7HdoYPGL0
	n5DfG+tZjVZR9j0HBGdJoLu8+f6hdkJGWux95ptLkCtwJmkT2N17RfzFrKAXqbDqkym9
	3S79b2xQfN6E5GJGs4V21UveuHoEnbiva/a2N7ONHQHAtocTv1cMlOcHFG5niwliDWz5
	J3LTuW9IeWYRJjk4WPOO6dIX6/bTwMLi1QFrcDLnShLeOYVdEm7nGApbADu6rguZJPYi
	JrDeWIhFvzcJH4Bs6npRy3+ujnNRKrvUtd/y6wW7HK9XTqcW4d5DtEi06Wrs7uT59oNE
	IB0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=48EZDghtIljXLZuhBpRLUIu0I0oxEx9vngWv1I5F3KQ=;
	b=skjlJ7S+GviYFwibSJHQ2eWD7wmfQG4P5IwhfqruGnmP0QYysAwzUWbo9YcTYWige/
	V8VdnWtZ9YYihMRpfUG6KS9i6PyUJ2wqvOvl9NwPWNSSdGwt8aVKqQ8IQC+Iu3s25ptU
	0CpAom0OhJYA0sR9Z3eNA5QF4AmVPXEX+TU5Xg3j1i9tN4w9CwNGIFAJuyaTyln/8mkO
	GCGbmLyKPdQqJaBT+NA762dpPtCzyPbD54RAXz8Ds7B/1eTLKxyIMIwlWZNT10u9gBxj
	qVy+kX9ZEwtAAal7M5gcjFQSG5wL/2yYMs6SjOTjsOdvOfumIYEnkROiNGphfHLET05s
	qhUA==
X-Gm-Message-State: APjAAAUpnfHAfc/t42UxtELtYwB8IxXLQbcQmzIZOd9SBfCb9+UYKxOz
	TFz9NRdyptrNOtVz+j+OY7ZmSgMj
X-Google-Smtp-Source: APXvYqyQP3q7NuZcJgj5XQITaE0pVyL3Ltwa5d+KOApGGspf9utVqdlkgTtuOeIsz+bccmfZiAWlJw==
X-Received: by 2002:a17:902:2ec1:: with SMTP id
	r59mr25931055plb.171.1553533137711; 
	Mon, 25 Mar 2019 09:58:57 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id g5sm4389331pfo.53.2019.03.25.09.58.56
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Mar 2019 09:58:56 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 25 Mar 2019 09:58:54 -0700
Message-Id: <20190325165855.9222-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/2] keyutils: fix pulling in glibc when musl enabled
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
X-List-Received-Date: Mon, 25 Mar 2019 16:58:59 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/keyutils/keyutils_1.6.bb | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-security/keyutils/keyutils_1.6.bb b/recipes-security/keyutils/keyutils_1.6.bb
index 054e0c1..c961fa2 100644
--- a/recipes-security/keyutils/keyutils_1.6.bb
+++ b/recipes-security/keyutils/keyutils_1.6.bb
@@ -46,4 +46,6 @@ do_install_ptest () {
 
 FILES_${PN}-dev += "${nonarch_base_libdir}/pkgconfig/libkeyutils.pc"
 
-RDEPENDS_${PN}-ptest += "glibc-utils lsb"
+RDEPENDS_${PN}-ptest += "lsb"
+RDEPENDS_${PN}-ptest_append_libc-glibc = " glibc-utils"
+RDEPENDS_${PN}-ptest_append_libc-musl = " musl-utils"
-- 
2.17.1


