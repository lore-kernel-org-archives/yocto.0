Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05E52E00DE1; Sun,  8 Sep 2019 21:16:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.215.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB17AE00DE1
	for <yocto@yoctoproject.org>; Sun,  8 Sep 2019 21:16:34 -0700 (PDT)
Received: by mail-pg1-f175.google.com with SMTP id i18so7010897pgl.11
	for <yocto@yoctoproject.org>; Sun, 08 Sep 2019 21:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=cdGzP5nI0axI4QOJ4nW8tr5EYVIxLDhXmAL+RgXjTLU=;
	b=tNEUhY7P0mOhaIhH2JDJNRJuEWE5g9CV3M5HkrQ9+mb5CLcJd+4l6mNyo5MOaSlS7j
	cx7Mfv96J4/KwANNZdK4pyBcylV4nqJ0yzUhi83GgDkSCfO2eKOvIp7bNa0lu8Wzcg7p
	uJUqA/owITg6pUp833cspiwrIJb558zuqDmag9q2q8huSApNiEIT902krMtQRqt0DD9q
	unEU5jSd8nrYC65HtQw61lbyQAo7XIOv4sA9bVmw1dlEXFD1WUAQQ20hgPp0V/FlN8RP
	uyTvLahEWIS7FiQo37bUMuo1fXFvDp9eVe0ch8yOuhCTziCB8WNozVPBllxOfj4kju2V
	XEyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=cdGzP5nI0axI4QOJ4nW8tr5EYVIxLDhXmAL+RgXjTLU=;
	b=tYjbyYkKqVjk6T/vmHasDiZXwyEfwIEuyl5ywYM0Kve1I4aoJshbwQEJgYDGZv1MZs
	S64wJwxVGo4+dvyV6hM30b9MS06azx2c+mP5nGbRTKBU7qjsFZ/m+7EsPSUdOjA8RQBJ
	2vGJbwIQs0mogUxtyQ5FA5oN1qVZ9dqedaVveFdflrdyVrF7Zk9uyhg/ALeS9SZzhU6x
	bmFNfCvxc2DLCGmvFnAcQ3AuTpxshZVmYUS6E0Py9Eu7p8vNKhQof7SkvkKKVcg0mDFE
	1EHvi+2GwMPuwN9K6racifmaY98T7WJ8yF0ftTryqnDv5ppw4VsgjmSZXLgHxTbi27aU
	hN3w==
X-Gm-Message-State: APjAAAWMibXHyisoXqw2GQwxl/Ied/LJ8+UylWbnfjbcjl4NjzZF90XR
	Yysp93Krl++ksj5QnwZp0jtB0WO9
X-Google-Smtp-Source: APXvYqwk0Nj99WhmdjmXVOCc/r22YhF0jIRIMUuR2OlD+WcpXnW+WWJeNJDfOi5X33t/rqWut90r2A==
X-Received: by 2002:a63:460d:: with SMTP id t13mr19066877pga.205.1568002594268;
	Sun, 08 Sep 2019 21:16:34 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	u11sm5616457pfm.113.2019.09.08.21.16.33 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 08 Sep 2019 21:16:33 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  8 Sep 2019 21:16:27 -0700
Message-Id: <20190909041628.7934-7-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190909041628.7934-1-akuster808@gmail.com>
References: <20190909041628.7934-1-akuster808@gmail.com>
Subject: [PATCH 7/8] tpm2-tcti-uefi: update to tip
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
X-List-Received-Date: Mon, 09 Sep 2019 04:16:36 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
index e822e29..f4918ec 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
@@ -6,9 +6,9 @@ DEPENDS = "libtss2-dev gnu-efi-native gnu-efi pkgconfig autoconf-archive-native"
 
 SRC_URI = "git://github.com/tpm2-software/tpm2-tcti-uefi.git \
            file://configure_oe_fixup.patch \
-	   file://0001-configure.ac-stop-inserting-host-directories-into-co.patch \
+           file://0001-configure.ac-stop-inserting-host-directories-into-co.patch \
           "
-SRCREV = "7baf1eebfeb56a896bdd5d677fb24377d619eb9d"
+SRCREV = "431c85f45dcdca5da003ed47c6e9814282476938"
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1


