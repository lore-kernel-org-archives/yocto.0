Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51783E00D33; Sun,  8 Sep 2019 21:16:32 -0700 (PDT)
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
	*      [209.85.214.173 listed in list.dnswl.org]
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35000E00D33
	for <yocto@yoctoproject.org>; Sun,  8 Sep 2019 21:16:31 -0700 (PDT)
Received: by mail-pl1-f173.google.com with SMTP id k1so5937406pls.11
	for <yocto@yoctoproject.org>; Sun, 08 Sep 2019 21:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=4srofEJ8+jiYuoMG71JaBG7vKp/dk9qpggco8uU+nkI=;
	b=ss3rxeQWqPUjRTswJuuLUNcNVIcjm+wpMc5o3M0hOlouKMeJdQnaU3bD54daB7iC9f
	+eNqdmyhSWZYChX9/+tPT18FZRWve00ydXiQUrhxAhBDm1Xpt68Ou8P4Lg3litt+/roy
	LSebi+D8HQOahCA3f+BbG70TdVN+ocjtmlGqnvMwI8HFL1or4rdTxCvVl5BD2YarClBV
	AFwAl3hotkiN4glsM1hSuzl8AkMAkkRaP+62Cbf/dedPJaA0wK2Hs3Yvl5Za3WN9ith6
	A4VMmNstXiCVWPB32b6NNxVNhwEZMfz8Err+NbYcnUnRFPPZeafwdh+ZO+FGOG61FcFD
	m6IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=4srofEJ8+jiYuoMG71JaBG7vKp/dk9qpggco8uU+nkI=;
	b=V+CJD302nwnHxzUZZobO/eS1zu4+3ve2vO0BK/Ap0aqH8SXBO6VBvaUuMijoiFVtVc
	2BzNvcpAqRYx4EjoNlWBUS/AMm3HplFYRI4aTixDus8mYKNN2GFR6iixV0dD4sM+ajla
	8FP4KxPrIjm9PUwOx3ZwCfSqHaUHOXMMQT16R6MMcke9MWaPFmIhp9mJTBBDe1tlXRQG
	pJA3Uv2REiX08PoflZNhSjkAUn3sBIN7302bzdFS0q1XHq1ouxDD52XT9HEyVd36xYpK
	SKjTXLAa1WxL5s14B/G+tBR27FrHHh8dLkDWIeF/ZuyJ9Ows6DnWPxnBYUDJ114TtdGv
	UJTA==
X-Gm-Message-State: APjAAAXV/PruYhZzlTSWnU+WCfVWtX1MYEjThvu2NMpP9rIIlNgUiNeJ
	ptmbtj8DqqrBHBw5iVW73DiAgICT
X-Google-Smtp-Source: APXvYqzXwS8EUHhtqd6ElozCYMdnt2xQPAbamjSwsclsaVGctXNawCot2petFKSFFZ+1rsAJ+Ll1ZA==
X-Received: by 2002:a17:902:8e84:: with SMTP id
	bg4mr9615722plb.43.1568002590500; 
	Sun, 08 Sep 2019 21:16:30 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	u11sm5616457pfm.113.2019.09.08.21.16.29 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 08 Sep 2019 21:16:30 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  8 Sep 2019 21:16:22 -0700
Message-Id: <20190909041628.7934-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190909041628.7934-1-akuster808@gmail.com>
References: <20190909041628.7934-1-akuster808@gmail.com>
Subject: [PATCH 2/8] swtpm: update to 0.2.0
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
X-List-Received-Date: Mon, 09 Sep 2019 04:16:32 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm/swtpm/{swtpm_0.1.0.bb => swtpm_0.2.0.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm/swtpm/{swtpm_0.1.0.bb => swtpm_0.2.0.bb} (96%)

diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.1.0.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.2.0.bb
similarity index 96%
rename from meta-tpm/recipes-tpm/swtpm/swtpm_0.1.0.bb
rename to meta-tpm/recipes-tpm/swtpm/swtpm_0.2.0.bb
index 42de8b1..f3a53dd 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.1.0.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.2.0.bb
@@ -9,7 +9,7 @@ DEPENDS = "libtasn1 expect socat glib-2.0 net-tools-native libtpm libtpm-native"
 # then swtpm_setup needs them at runtime
 DEPENDS += "tpm-tools-native expect-native socat-native"
 
-SRCREV = "d803d84575ab3e5dac316bf863c7f569a27ea35f"
+SRCREV = "39673a0139b0ee14a0109aba50a0635592c672c4"
 SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-${PV} \
            file://fix_fcntl_h.patch \
            file://ioctl_h.patch \
-- 
2.17.1


