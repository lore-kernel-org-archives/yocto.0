Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19C2AE00872; Sat,  6 Apr 2019 07:45:47 -0700 (PDT)
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
	*      [209.85.214.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 038BBE00872
	for <yocto@yoctoproject.org>; Sat,  6 Apr 2019 07:45:45 -0700 (PDT)
Received: by mail-pl1-f196.google.com with SMTP id n8so82119plp.10
	for <yocto@yoctoproject.org>; Sat, 06 Apr 2019 07:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=YuS/YS+N+GvnITY1oAyN1vRz1pEIVCGuMic8oD7E37I=;
	b=nqQ8yX+QhzPlb8h7qNjNwSm3313celqJnARSe69yQDt44RP3GTgn/Il93iTy+cV5xp
	U+9Wn1hA0pLqmRRC2EvOQ2hfM8CoYPbOCkfDmYLEhzjGKeyqMMt/qSge6es+0/i3WkRp
	iGkodlPkSxGIynweDIDQWIVqXcTwW37dSF9tDD4ZG0bqhv0Penlz7lOaVJyQ5BNg2JJH
	SCbC2aH82AScILOuFwchW+cs/vcS0Np8G26doPldnf2gO7+XLUuuR2OruCp+0TeffmCL
	J91TBN+tPFFJoVbHeK6XzuQsxuMkHUJVm2JL2qlqu5a4MYgYwWG1Qx7FXDHVZnJkgAsp
	jeVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=YuS/YS+N+GvnITY1oAyN1vRz1pEIVCGuMic8oD7E37I=;
	b=pQX1T7YyPOUfzGxVxEcHTpgL6UBtDkQL8eAHsILIaumK4gayBPFj1QtRJexdfegdD2
	sah7T/d7limTZEh5SPcnp1AmA7lVvFosKOe9Py2cdAudv1aeAh97uCMBI324J9U2uLF8
	ublwkLgRsr7FfJHeo7RRUP8J9njNFdrztmMfai0z+dZpk2Y6LIgZyfIzCWPXTS0Afl9C
	5DXbr2DK1VViiubajUsjqoTZZzVk1ubb7y2scnhpbADtTmn4HowC0bRVe/PqOkHvHZSi
	FuoyiH5jkZuSf02Oz6TdSJ1Mpo0zRgEmytOb4H98rAlP4rJ0igj8LoWa8KumjHKN06C0
	AcPA==
X-Gm-Message-State: APjAAAWhHtS3RH+VT8jaMq189AwImMKMp7jrXbakcXGCHk9d/EqRybrs
	0YylrjUGPy64BGb9xgRh4xGP7shI
X-Google-Smtp-Source: APXvYqy0cj8AWgG/0JSxaC0vgedUKhaeRj9t0b9EfhGwdFg/QWV46e4rHW5Hs3baZV8BeL3sMe9M5A==
X-Received: by 2002:a17:902:2947:: with SMTP id
	g65mr19001997plb.258.1554561944997; 
	Sat, 06 Apr 2019 07:45:44 -0700 (PDT)
Received: from localhost.localdomain ([116.212.180.67])
	by smtp.gmail.com with ESMTPSA id 6sm4036385pfp.143.2019.04.06.07.45.43
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 06 Apr 2019 07:45:44 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  6 Apr 2019 20:15:40 +0530
Message-Id: <1554561940-31363-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] clamav: freshclam need bind to run
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
X-List-Received-Date: Sat, 06 Apr 2019 14:45:47 -0000

Add it to the rdepends for that package

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.99.4.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/clamav/clamav_0.99.4.bb b/recipes-security/clamav/clamav_0.99.4.bb
index 6219d9e..dbe903f 100644
--- a/recipes-security/clamav/clamav_0.99.4.bb
+++ b/recipes-security/clamav/clamav_0.99.4.bb
@@ -152,3 +152,5 @@ RCONFLICTS_${PN} += "${PN}-systemd"
 SYSTEMD_SERVICE_${PN} = "${BPN}.service"
 
 RDEPENDS_${PN} += "openssl ncurses-libncurses libbz2 ncurses-libtinfo clamav-freshclam clamav-libclamav"
+
+RDEPENDS_freshclam = "bind"
-- 
2.7.4


