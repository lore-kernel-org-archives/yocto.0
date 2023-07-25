Return-Path: <lukegb@google.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6584DC0015E
	for <webhook@archiver.kernel.org>; Tue, 25 Jul 2023 14:18:04 +0000 (UTC)
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
 by mx.groups.io with SMTP id smtpd.web11.21485.1690294678882958387
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Jul 2023 07:17:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20221208 header.b=qoQx2mxv;
 spf=pass (domain: flex--lukegb.bounces.google.com, ip: 209.85.128.201, mailfrom: 3ldm_zaykbxqdmcwytyggydw.ugeqgulgdaklk.qgulghjgbwul.gjy@flex--lukegb.bounces.google.com)
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-58378ae25bfso68016597b3.0
        for <yocto@lists.yoctoproject.org>; Tue, 25 Jul 2023 07:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1690294678; x=1690899478;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=J64JBZGY/mPIpJHpqzPIc5rP5MYm7wVniwUQ87DBfUc=;
        b=qoQx2mxvzOU9H5zjc2Qk+8t4YteaUU2BM8h0hDbFPdbfHPcMrjezpB1wYFtzMNS3v2
         WBE8QEHx2CFYkFvVgpVXCWmusRE2afybF0lzYMvWXYuoh+yXPM2OtIXh+W7MZvCNDdyp
         gfXxHIKgnyngCijaR9QzRjk1Y+mc8kahAKwrdsTLhxbJlzbvkverdgLYhVUYQ2aStQXr
         OtIR+MByIXTruTbq43KBOGKH97u0mDK/HfQp9MK/lpxJwtaYjEJkIhK4w+Kniez8WyWG
         SDl5iSgTsL6eReYGgMVYOef99lX6WPrQb9MCJ0WNfELTuUphuJbP8KX9D+snHeySYMH8
         UdDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690294678; x=1690899478;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J64JBZGY/mPIpJHpqzPIc5rP5MYm7wVniwUQ87DBfUc=;
        b=dL7VSlQNlmKk13mOb3/pNsz/vxNXxAyscbn8m99n31xhen72Ny22s4LzXXSVZW4ZtP
         OcxyLcuvc6DLpcoOea8ymZgwOYUJUdDD8eUbkNIOkzm6WctWTz2NDmyqvxR/alCjpsQ5
         Nlj26JO6dGlrx7D/9dVT5c/uSAX4cIjLyAnMrd4efqflNnx3Y/qxYMopWD4oOSF+q89l
         x+j40dTeozY3GPBxxCqc2YevKrO6ampXHkUqg3THytLNevY/YfNmEtp26V35lI6QvyR/
         6mpGEwd8pTaYaNTzNQHTa+4rhIc+hBnUKwXsef+AnslBm6mGDyQwncyPsCrYr7h/IK/M
         2Bfg==
X-Gm-Message-State: ABy/qLZZu2gau8MNdnhYNZxhoyiDctRoQUEBYXeGQYBBYAVoe8ZFCKDe
	PTQZWDGfZVw579IhO/k7YMkdLdmMzUjMbj60ZXCFHQiB6NNZG5IPzB5BxEWo9aKsXR6n+wnevFB
	bUA6gVYCX34XEjvWymBwWQo8JP6AsFr/Kif+F28Czuq1cc3TSVtzotidk/OmY5SikM/TtBQ==
X-Google-Smtp-Source: APBJJlEAaK/8aXo9PkCFE4goZZRg3/MRoGTFWk+9H/yHhDDicWFN8M8FcHOHKfR74m1tA9I+oGx428gDrxs=
X-Received: from mehve.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:28c8])
 (user=lukegb job=sendgmr) by 2002:a81:ae18:0:b0:577:4540:905a with SMTP id
 m24-20020a81ae18000000b005774540905amr97442ywh.7.1690294677985; Tue, 25 Jul
 2023 07:17:57 -0700 (PDT)
Date: Tue, 25 Jul 2023 14:17:54 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.41.0
Message-ID: <20230725141754.1447834-1-lukegb@google.com>
Subject: [meta-security][PATCH] glome: update to tip
From: Luke Granger-Brown <lukegb@google.com>
To: yocto@lists.yoctoproject.org
Cc: GLOME Team <glome-team+yocto@google.com>, John Edward Broadbent <jebr@google.com>, 
	Brandon Kim <brandonkim@google.com>, Luke Granger-Brown <lukegb@google.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Jul 2023 14:18:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60649

Markus Rudy (17):
      Use Github TeX Markdown instead of image includes.
      Merge pull request #134 from burgerdev/md-tex
      Merge pull request #135 from vvidic/cli-base64
      RFD 002: public key format at rest (#109)
      Merge pull request #137 from vvidic/hmac
      Merge pull request #138 from vvidic/hmac2
      Update list of supported Python versions
      Install golint instead of 'get'ting it.
      Merge pull request #139 from burgerdev/actions
      Clarify format of public key at rest
      Test all supported config file keys
      Merge pull request #144 from burgerdev/public-key-format
      Fix linter findings for #144
      Use 'release' buildtype for NixOS builds
      Merge pull request #149 from google/l9i/bye-java
      RFD 001: GLOME Login v2 (#102)
      login/v2 implementation for Go (#162)

Philipp Kern (21):
      Merge pull request #133 from google/l9i/pam-fix
      Merge pull request #132 from google/l9i/nix-shell
      Merge pull request #140 from vvidic/defaul-typo
      Merge pull request #142 from vvidic/soversion
      Merge pull request #146 from burgerdev/lint
      Merge pull request #148 from google/dependabot/go_modules/go/golang.org/x/crypto-0.1.0
      Merge pull request #152 from google/l9i/cpplint
      Merge pull request #154 from vvidic/docker-public-key
      Merge pull request #155 from vvidic/prompt-fix
      Insert a slash after url-prefix when writing it into prompt
      Merge pull request #156 from google/url-prefix-compat
      Merge pull request #157 from vvidic/config-order
      State that devices require randomness for the protocol to work
      Update docs/protocol.md
      Merge pull request #158 from google/pkern-patch-1
      Fix error to state "at most" instead of "at least"
      Merge pull request #153 from vvidic/min-tag-length
      Merge pull request #159 from vvidic/host-id-type
      README.md: Codeblock fixups
      Merge branch 'master' into l9i/README
      Merge pull request #141 from google/l9i/README

Piotr Lewandowski (12):
      Fix failing PAM test
      Treat warning as errors
      Define OPENSSL_API_COMPAT to require OpenSSL >=1.1
      Use werror only for CI
      Add nix-shell config for setting up dev environment
      Add GitHub Action workflow for shell.nix
      Add intro and installation steps to README.md
      Address reviewer's comments
      Wrap lines
      Delete Java implementation
      Rename `url-prefix` to `prompt` (#131)
      Add `cpplint` linter

Valentin Vidic (10):
      Update CLI to use base64 instead of hex tags.
      Replace deprecated OpenSSL HMAC API with EVP.
      Replace OpenSSL EVP_DigestSign API with HMAC()
      Fix typo: defaul => default
      Use project version in library version
      Update Docker scripts for new public key format
      Fix setting of prompt parameter
      Parse command line again after reading the config
      Add config option for minimum authcode length #122
      Add config option for host-id type #122

dependabot[bot] (1):
      Bump golang.org/x/crypto in /go

Signed-off-by: Luke Granger-Brown <lukegb@google.com>
---
 recipes-security/glome/glome_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/glome/glome_git.bb b/recipes-security/glome/glome_git.bb
index 12d6d5f..8787ddc 100644
--- a/recipes-security/glome/glome_git.bb
+++ b/recipes-security/glome/glome_git.bb
@@ -12,7 +12,7 @@ DEPENDS += "openssl"
 
 S = "${WORKDIR}/git"
 SRC_URI = "git://github.com/google/glome.git;branch=master;protocol=https"
-SRCREV = "978ad9fb165f1e382c875f2ce08a1fc4f2ddcf1b"
+SRCREV = "48d28f82bd51ae4bccc84fbbee93c375b026596b"
 
 FILES:${PN} += "${libdir}/security"
 
-- 
2.41.0


