Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B961E00B92; Mon, 11 Feb 2019 08:39:12 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8290CE00708
	for <yocto@yoctoproject.org>; Mon, 11 Feb 2019 08:39:10 -0800 (PST)
Received: by mail-pl1-f180.google.com with SMTP id o6so5522550pls.13
	for <yocto@yoctoproject.org>; Mon, 11 Feb 2019 08:39:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=XA4W0yo/rJeJwSnPwcfJqpiNxC7iGa2e4+HKdl9FJjQ=;
	b=IFeVEp6H9qyLx/E6nh3J3OCZSQXeolnfh6f2/5j13WIsK8mKyL4TRsMNS2tR3uv1Bi
	IDLbl6QP1h0s+j4uAxT//oALJe7DUGYOkYymgEBdkjpyLn2jG1F5pLoDEgipCbO76Dg5
	R+fJZafZqfVq67ItI03TN2iJ6nV38yKBJw0sYjSDwTguj2e6nnHBlLkbu/EDBNC1ALXC
	tkereLig0p6irYnhVvrwtUHevyGPQljOGsfuNg7Xpnuz3soKWB/+n8SpoVS7kl009hZV
	CeVD2PLn3vtWd54sQfWF/EPjQ78nlrxMih40xawpI+pDVkbDGYJnBoq9OJ9RAqZLGxjM
	G4Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=XA4W0yo/rJeJwSnPwcfJqpiNxC7iGa2e4+HKdl9FJjQ=;
	b=fLiXPL0HtP0Zyp3N3KRCWtlkimhZ1tWhztrZZcA504brIMrEsPbz7p7riqYJbmEKwr
	f2X6FkHTkgovfMXTLO+XdWSld/aCBMgfJcr0uq3kZWw4poN4aj2nOd0V0H8UQdQNbhCT
	9QbIirza5tvfW9k8FPMwFwMTcLShmPjvNxfw6vBshP3RVnUPSK084k8Jvp7rNED2IF3A
	umVeoy36L3n1KDmqCfbkYSWZZfhscFIK64+eLkYzRLc/QbOoCaoOtpe9ICJCShuV8svu
	BK6jF9B8eLLS9NC+xgPO7wLFRf0HbQ6AqUZx57HvvgC3X0j+EkbnIftOPgJ8p4xNwth0
	jq8g==
X-Gm-Message-State: AHQUAuYR6zPjUd7oRnhqSE2rdEL/TngRHwo3A0eRAJpQ6wsXtu5ikVHS
	XhhBelv9dDwQIuEyAL9TcswCEmbNAPg=
X-Google-Smtp-Source: AHgI3IakTcYLt6uDvKPEk9pPvKJ6SYPQp4YHzLIGmGN349KJkVn4LLMuHtvYCb74sh6jvwNZd9e4QA==
X-Received: by 2002:a17:902:7044:: with SMTP id
	h4mr38287259plt.35.1549903149821; 
	Mon, 11 Feb 2019 08:39:09 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	u66sm25590769pfi.115.2019.02.11.08.39.09 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 Feb 2019 08:39:09 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Feb 2019 08:39:08 -0800
Message-Id: <20190211163908.25635-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] libwhisker2-perl: fix QA message
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
X-List-Received-Date: Mon, 11 Feb 2019 16:39:12 -0000

WARNING: libwhisker2-perl-2.5-r0 do_package: QA Issue: libwhisker2-perl: Files/directories were installed but not shipped in any package:
  /usr/share
  /usr/share/perl
  /usr/share/perl/5.28.1
  /usr/share/perl/5.28.1/LW2.3pm

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-perl/perl/libwhisker2-perl_2.5.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-perl/perl/libwhisker2-perl_2.5.bb b/recipes-perl/perl/libwhisker2-perl_2.5.bb
index d9af430..71857ab 100644
--- a/recipes-perl/perl/libwhisker2-perl_2.5.bb
+++ b/recipes-perl/perl/libwhisker2-perl_2.5.bb
@@ -24,4 +24,6 @@ do_install() {
     oe_runmake install DESTDIR=${D} INSTALLDIR=${PERLLIBDIRS}/vendor_perl/${PERLVERSION} MANDIR=${datadir}/perl/${PERLVERSION}
 }
 
+FILES_${PN} += "${datadir}/perl"
+
 BBCLASSEXTEND = "native"
-- 
2.17.1


