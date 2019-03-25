Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C3B3E00B81; Mon, 25 Mar 2019 09:58:59 -0700 (PDT)
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
	*      [209.85.214.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11FB8E00994
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2019 09:58:58 -0700 (PDT)
Received: by mail-pl1-f174.google.com with SMTP id bf11so230975plb.12
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2019 09:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Aye+7VfxqbgTAFOXKU9bhfxbfBTT/yFl0VIECQm4ZZk=;
	b=LbB1YhcO2RcVxMRdmb/xL3849glftJY74rTDv7JLhksdtvhlJbC8naKYwQl3OukLLh
	r/xB3PHhaBacXeJN8vZ/JgN2ISw44KPY0GOTcCaZtETwnvOXGBuuLptOpruP37nMq22X
	4vjjEbbJanN7rs8g/I2rZSsVguylqA2ckNL+murpTUOh0LuB0DRQch9r/8/X4vKZROA8
	PIvB2IvXyoJyLyQX/CJYiNIQEHFPKfaQHbp/lX+rrmRR8mJoOrnPZhJLQZWE6Esw10vc
	b/63pQeEYowAULg7ozpUPsyD6krmYPqcW9jM5I4Wgb3L8w4XaCrnHYpp6f/V7WIedtWK
	ttXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Aye+7VfxqbgTAFOXKU9bhfxbfBTT/yFl0VIECQm4ZZk=;
	b=sAIbPNztG1BFfSb9alGcGMROGWJpakc3EtLvPv51mewCjuGQPakSDM9IdyUql3sLrW
	e5ybQ3x57CHm9aEH5xVNcxyIam3NypSH4Sl/BlZJJ+il0dTf/aT6pu9q8oO2QDC9I4Hg
	wglyio2zNkX97VqdqhgqMQKWOw0pLXm9OUcdo/88mIBnGmElatSeuhsuN88aAkCHwnb+
	mBS6DkKNWmXTaOSEzNLN1/dbVwuWQazACr5c16SKmsxBfPxOe7k+fXbhjJL7fLBBqgNn
	oUqpws7l8uownJAxRi1fdW7fmzCLkzF2f5TFMY4jZwshj5j9p/GZQaIlmsRFylSxlFWX
	SKFQ==
X-Gm-Message-State: APjAAAVRbIhmF5sm/SRZrc/ox/EpwLUK1/yzg0ecOr5nD+vlUwjPZv6C
	j/OQScuLJu5ciQn3yapW95lRtW6e
X-Google-Smtp-Source: APXvYqyolpIfsN5nOTlMoNRbLAP4p0MLz7T0x3caKLuOXqsgUR/bL5mO8XUz2kFCattU3pc/gjPveQ==
X-Received: by 2002:a17:902:2963:: with SMTP id
	g90mr26523955plb.182.1553533138546; 
	Mon, 25 Mar 2019 09:58:58 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id g5sm4389331pfo.53.2019.03.25.09.58.57
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Mar 2019 09:58:58 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 25 Mar 2019 09:58:55 -0700
Message-Id: <20190325165855.9222-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190325165855.9222-1-akuster808@gmail.com>
References: <20190325165855.9222-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] sssd: fix libcrypto version used
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
 recipes-security/sssd/sssd_1.16.3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/sssd/sssd_1.16.3.bb b/recipes-security/sssd/sssd_1.16.3.bb
index 8f7f805..d39fa23 100644
--- a/recipes-security/sssd/sssd_1.16.3.bb
+++ b/recipes-security/sssd/sssd_1.16.3.bb
@@ -33,7 +33,7 @@ PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
 PACKAGECONFIG[python2] = "--with-python2-bindings, --without-python2-bindings"
 PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
 PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
-PACKAGECONFIG[cyrpto] = "--with-crypto=libcrypto, , libcrypto"
+PACKAGECONFIG[cyrpto] = "--with-crypto=libcrypto, , libcrypto10"
 PACKAGECONFIG[nscd] = "--with-nscd=${sbindir}, --with-nscd=no "
 PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
 PACKAGECONFIG[systemd] = "--with-systemdunitdir=${systemd_unitdir}/system/, --with-systemdunitdir="
-- 
2.17.1


