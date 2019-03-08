Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8EA8E00D11; Fri,  8 Mar 2019 07:25:13 -0800 (PST)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.171 listed in list.dnswl.org]
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
	[209.85.210.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66038E00BBC
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2019 07:25:13 -0800 (PST)
Received: by mail-pf1-f171.google.com with SMTP id v21so14387910pfm.12
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2019 07:25:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=BpnSYiwCmozM+fn7B1ujNXD6OEU5fYxZCmN4GQ3z0CI=;
	b=X7OHooLnoPLTVq8CPPpPnBDSvsCFQnKYEO0sr8M/ay+rh10b5jwAWNMKQnTVW2rYZr
	xDyfevmayjafx+LTiBQHvKmzwqEeXrfhqprfYWGrw2LpGCR8/dXMihNUPk+8CWqqaTPb
	U7Jsla+zs9t7yiz48OCpj+ikF2gwSRsi1q4FwsQx/2/R/xSOwAEy5eWZLtn5gGaZjVWU
	3jHcTdKnUyptpL/bk7JjJ/0Si/i5Ywuvj68h4mH5DGsm60lw4+kkrwf5ZVpW/QCQsQAG
	eMEtraJv4l4AqT4eYBRAEam8Z253L8+X7RMzIkEHndi9OyXY3P25KgyhwJDtosKqE5qK
	LeXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=BpnSYiwCmozM+fn7B1ujNXD6OEU5fYxZCmN4GQ3z0CI=;
	b=tY04SyAg6Rs04VZiTa2qXhOjQTLn3qIHnbPArZ3JqaxvygMchn9FbU+4g9LVgNYNfk
	7H6ywy899PGnovph3JT2ISyH6mhn+n+UcGn3V9HaRBeE0kAN7AfUKYjphHKyqOGuCQRc
	aijVB7NggCE2y61aJGM1DhoVwyoTixtHJJlVT1O2Y/iJSFWu94T99tN96RonC12TDage
	4bJaHROPnl08/NQCbraa+Zd0adjColGxoGAd1A1XtIBZcqS3mayFg6mo2GGTYWpaxu4L
	qaQPoZ6QFvuVsQLD3cay4Jrzd0/2OddMTvGw1VgYC3zpgWQDrYUipxUe5q8KHnjh5dwX
	uinA==
X-Gm-Message-State: APjAAAUyATwwOuV7ReBA4TW2uVtIvLFkDxUHSOs64GetWXpTrBbDglba
	Va3Q2NRmBNjzX89Iko6ioK801tt+
X-Google-Smtp-Source: APXvYqzpCG82qo6AZyfzSmw3jBVAh9a5Eo0H4WC9EBQHlP1+3wH7bBGP+W+jlOOGN75iAPMsC4ZdJQ==
X-Received: by 2002:aa7:8d53:: with SMTP id s19mr19485786pfe.16.1552058712819; 
	Fri, 08 Mar 2019 07:25:12 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	u13sm21490467pfa.169.2019.03.08.07.25.12 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Mar 2019 07:25:12 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  8 Mar 2019 07:25:10 -0800
Message-Id: <20190308152510.13245-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190308152510.13245-1-akuster808@gmail.com>
References: <20190308152510.13245-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] tripwire: fix ptest so more tests pass
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
X-List-Received-Date: Fri, 08 Mar 2019 15:25:14 -0000

replace relative path with abs path for binaries.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/tripwire/tripwire_2.4.3.7.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-security/tripwire/tripwire_2.4.3.7.bb b/recipes-security/tripwire/tripwire_2.4.3.7.bb
index ed0974c..c26392a 100644
--- a/recipes-security/tripwire/tripwire_2.4.3.7.bb
+++ b/recipes-security/tripwire/tripwire_2.4.3.7.bb
@@ -62,6 +62,7 @@ do_install () {
 do_install_ptest_append () {
 	install -d ${D}${PTEST_PATH}/tests
 	cp -a ${S}/src/test-harness/* ${D}${PTEST_PATH}
+	sed -i -e 's@../../../../bin@${sbindir}@'  ${D}${PTEST_PATH}/twtools.pm
 }
 
 FILES_${PN} += "${libdir} ${docdir}/${PN}/*"
@@ -70,4 +71,4 @@ FILES_${PN}-staticdev += "${localstatedir}/lib/${PN}/lib*.a"
 FILES_${PN}-ptest += "${PTEST_PATH}/tests "
 
 RDEPENDS_${PN} += " perl nano msmtp cronie"
-RDEPENDS_${PN}-ptest = " perl lib-perl"
+RDEPENDS_${PN}-ptest = " perl lib-perl perl-modules "
-- 
2.17.1


