Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A98E6E00CDC; Wed,  1 Aug 2018 01:09:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.208.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
	[209.85.208.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F028E00CC9
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2018 01:09:51 -0700 (PDT)
Received: by mail-ed1-f66.google.com with SMTP id x5-v6so6284587edr.0
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2018 01:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dominion-thruhere-net.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=mZTJGLGp1E0ZZ/vaAhPeJfaUYONaHqIiYNQNWQ9PGEY=;
	b=gT1ymupsOpISyksQ+s7B1LFzFhYCm89/4DsKQ+v4n8Rwa2SMruEjKuhueZRnzseiwg
	nxzwmwlanjTbB41e4eZKtWorJ0cbYdp7IL416DLDop56e+hPxHVVaJMPKGqxzIA1bCB7
	dYQeYxjqF7lekqtB3dc7kAuYhPI8BXW1wGlq2hPEns8oqOuTPezrBJIqMN6nDVZHXHuG
	JO7gbcPm70sGHvEraCoTBsdmVY5tLrSteEUsykYyexRxYY9CS9PrRt4DcC7irJpgKI6G
	Lil40/M6xFgyocSW7VAw6Dm+mrnOUxLbUcnuaw4OluvyO7ueQGhXKsx5X1NYOSq2fNrd
	L7tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=mZTJGLGp1E0ZZ/vaAhPeJfaUYONaHqIiYNQNWQ9PGEY=;
	b=KgNH+4gNYelL9XsPdvi67Bhs2hAdMsA7vSYiENFKfGyBfV+MTuyJM4RPtIItLOVbUV
	qSEXhAFfn58OeoP7QeVzh1OWgj9pQZur8H4mGfnq7fXosZTnsH0v4Bg1A48dflPEY0cR
	kUMBeXor1KMgEK7qgtmJ5wmZIkSmF+b6xOes8HpmOgow6FmrRx3X9d7hw7ybwkSoYH7X
	XZmIDblZ8TXRM7Q8h6OSHX4iLiu1lLWza/JxqJc4pTIESxkiovh1RNZqeURlLxDJRX9s
	4Akiu4jzjR5mgIi1CvCIEjRC4OwMJJqAdOO4wnqj75nLqCuPLweY7ZCHT3pQjBHoxbSc
	5eiQ==
X-Gm-Message-State: AOUpUlHZZwBgxCsKQV36eXskMZy+McvxF/ThpVnk46a0k8krLBWt0vmO
	p8A/nFpPPxjoN8fnGs8h9NyN4osTSZQ=
X-Google-Smtp-Source: AAOMgpe+MzQcHRDh2C8T6yvBXF3g4jYvD49Xw1XZ7mBQfMClO4JaKW3kkemJhIb4THgXKwsL/AXk1g==
X-Received: by 2002:a50:b642:: with SMTP id
	c2-v6mr2855027ede.288.1533110990128; 
	Wed, 01 Aug 2018 01:09:50 -0700 (PDT)
Received: from localhost.localdomain ([82.163.40.65])
	by smtp.gmail.com with ESMTPSA id
	x51-v6sm3911447edd.67.2018.08.01.01.09.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Aug 2018 01:09:49 -0700 (PDT)
From: Koen Kooi <koen@dominion.thruhere.net>
X-Google-Original-From: Koen Kooi <koen.kooi@linaro.org>
To: yocto@yoctoproject.org
Date: Wed,  1 Aug 2018 10:09:25 +0200
Message-Id: <20180801080927.26522-8-koen.kooi@linaro.org>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20180801080927.26522-1-koen.kooi@linaro.org>
References: <20180801080927.26522-1-koen.kooi@linaro.org>
Cc: Koen Kooi <koen.kooi@linaro.org>
Subject: [meta-security][PATCH 08/10] suricata: install and package rules
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
X-List-Received-Date: Wed, 01 Aug 2018 08:09:53 -0000

This fixes the following warning during startup:

  suricata[22707]: 31/7/2018 -- 13:34:40 - <Warning> - [ERRCODE: SC_ERR_NO_RULES_LOADED(43)] - 47 rule files specified, but no rule was loaded at all!

Signed-off-by: Koen Kooi <koen.kooi@linaro.org>
---
 recipes-security/suricata/suricata_4.0.0.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-security/suricata/suricata_4.0.0.bb b/recipes-security/suricata/suricata_4.0.0.bb
index 928cb07..df5621b 100644
--- a/recipes-security/suricata/suricata_4.0.0.bb
+++ b/recipes-security/suricata/suricata_4.0.0.bb
@@ -40,6 +40,9 @@ PACKAGECONFIG[python] = "--enable-python, --disable-python, python, python"
 export logdir = "${localstatedir}/log"
 
 do_install_append () {
+
+    oe_runmake install-rules DESTDIR=${D}
+
     install -d ${D}${sysconfdir}/suricata
     install -d ${D}${sysconfdir}/suricata ${D}${sysconfdir}/default/volatiles
     install -m 644 classification.config ${D}${sysconfdir}/suricata
-- 
2.9.5


