Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AEA2C7EE22
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:15:02 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web10.61355.1684354498734944764
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:14:59 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=NlvuM+0o;
 spf=pass (domain: baylibre.com, ip: 209.85.160.182, mailfrom: tgamblin@baylibre.com)
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-3f3faefc92cso11251331cf.3
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354497; x=1686946497;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=25JMzv9c8MMTX4QiQ2GJfqRNET6JCKwvEhTtEummfc0=;
        b=NlvuM+0oUtC0ug99WtInT/VcoT02YqNVGGWVeETKDFkOo9NxOL2hjtMm9kpECTl+X8
         YjG2RV8p6+v9qHSVPE00ZooGzE76ujwEp6vKti33epMJ0A1LYVpH9XsQicDbhxRGAXXP
         1tiMNgIMtc/fW2GqlbuHBWMGk1iJF0JltndYxTERWrGOjztaqE1iqD9lqVgn9uVTGvAl
         4R6t+mQXjT5ZD5mB0/bERiCDkO/B5vwJtsUK/VP5wZGP4Z0km3f2OuC1GX7QaKD2WJJ/
         PvTTYI3d2D+CDLlgCcnO3bwr7aDw1nQYJ55X9gdXGKLVlkPN5l6QFVEEE5Vk9UbCI2vO
         JZtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354497; x=1686946497;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=25JMzv9c8MMTX4QiQ2GJfqRNET6JCKwvEhTtEummfc0=;
        b=hFtSs+xhu7b+/kf3p0TjnrV9W1NK3qLcZto4Cg8J7Gr52IL9U+9RmFGuG7JkMO3Cuv
         kjflIQ1R70U339btN5QslvPElDZYDwjNrerN+7RWl8PfYW0daSJb/+HvSTabK9pPEhkG
         nLeosZWe3vIPiE/NCW4xhzBg2d14OzVjTuBGUizELOrSsZQSn5i1jbg8JZxqYsnWmQZE
         VtvU2j8o6Gm5cOmcCM7vC+7G1v/YPu9BbVf7B3nLebxVfTFaOj0E9av+jcq/CaLR25vG
         3PgXu/GUpyevGP471mxYxCsV9hoaLxQMFb/2gg5S0UhudfQ9/OAuJ9YQKPzmJo9LACsD
         9Djg==
X-Gm-Message-State: AC+VfDzUoNbzF8TelMOW+GxLUKiIHCURB3Usn1fv2SHm/fDFWKA2ga+N
	GM2PYQjLClsbSyNP1yDoL7m9bFIwIxZXbJNPMqh+7Q==
X-Google-Smtp-Source: ACHHUZ5hG9BybIF/6BHJPZFWx67FRProWM1Reit/gRw7XXM7ky6jBiwjut1OxyhBVtwH2eQxsMKuSg==
X-Received: by 2002:ac8:5a4f:0:b0:3bf:df2e:a494 with SMTP id o15-20020ac85a4f000000b003bfdf2ea494mr1888095qta.6.1684354497227;
        Wed, 17 May 2023 13:14:57 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id z10-20020a05620a100a00b007592547a822sm868084qkj.80.2023.05.17.13.14.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:14:56 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto][patchtest][PATCH 00/11] patchtest: layer updates
Date: Wed, 17 May 2023 16:14:45 -0400
Message-Id: <20230517201456.1608917-1-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:15:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60047

This series includes several changes to upgrade existing recipes, add
those that the new upgrades depend on, and remove what's no longer
necessary to have in the layer. The objective is to make patchtest
usable with only oe-core and bitbake, so almost all changes have been
copied over from the meta-python layer. python3-pyparsing is in oe-core,
so it's no longer needed in patchtest.

Trevor Gamblin (11):
  python3-astroid: upgrade 1.5.3 -> 2.15.4
  python3-isort: upgrade 4.2.15 -> 5.12.0
  python3-lazy-object-proxy: upgrade 1.3.1 -> 1.9.0
  python3-pylint: upgrade 1.6.5 -> 2.17.4
  python3-pyparsing: remove recipe
  python3-unidiff: upgrade 0.5.4 -> 0.7.5
  python3-wrapt: upgrade 1.10.10 -> 1.15.0
  python3-dill: add recipe
  python3-mccabe: add recipe
  python3-platformdirs: add recipe
  python3-tomlkit: add recipe

 .../python/python3-astroid_1.5.3.bb           | 20 --------
 .../python/python3-astroid_2.15.4.bb          | 35 +++++++++++++
 .../python/python3-dill_0.3.6.bb              | 17 +++++++
 .../python/python3-isort_4.2.15.bb            | 10 ----
 .../python/python3-isort_5.12.0.bb            | 20 ++++++++
 .../python/python3-lazy-object-proxy_1.3.1.bb | 10 ----
 .../python/python3-lazy-object-proxy_1.9.0.bb | 11 ++++
 .../python/python3-mccabe_0.7.0.bb            | 11 ++++
 .../python/python3-platformdirs/run-ptest     |  3 ++
 .../python/python3-platformdirs_3.5.1.bb      | 35 +++++++++++++
 .../python/python3-pylint/run-ptest           |  3 ++
 .../python/python3-pylint_1.6.5.bb            | 33 ------------
 .../python/python3-pylint_2.17.4.bb           | 51 +++++++++++++++++++
 .../python/python3-pyparsing_2.2.0.bb         | 19 -------
 .../python/python3-tomlkit/run-ptest          |  3 ++
 .../python/python3-tomlkit_0.11.8.bb          | 23 +++++++++
 .../python/python3-unidiff/run-ptest          |  3 ++
 .../python/python3-unidiff_0.5.4.bb           |  9 ----
 .../python/python3-unidiff_0.7.5.bb           | 26 ++++++++++
 .../python/python3-wrapt_1.10.10.bb           | 15 ------
 .../python/python3-wrapt_1.15.0.bb            | 16 ++++++
 21 files changed, 257 insertions(+), 116 deletions(-)
 delete mode 100644 meta-patchtest/recipes-devtools/python/python3-astroid_1.5.3.bb
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-astroid_2.15.4.bb
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-dill_0.3.6.bb
 delete mode 100644 meta-patchtest/recipes-devtools/python/python3-isort_4.2.15.bb
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-isort_5.12.0.bb
 delete mode 100644 meta-patchtest/recipes-devtools/python/python3-lazy-object-proxy_1.3.1.bb
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-lazy-object-proxy_1.9.0.bb
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-mccabe_0.7.0.bb
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-platformdirs/run-ptest
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-platformdirs_3.5.1.bb
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-pylint/run-ptest
 delete mode 100644 meta-patchtest/recipes-devtools/python/python3-pylint_1.6.5.bb
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-pylint_2.17.4.bb
 delete mode 100644 meta-patchtest/recipes-devtools/python/python3-pyparsing_2.2.0.bb
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-tomlkit/run-ptest
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-tomlkit_0.11.8.bb
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-unidiff/run-ptest
 delete mode 100644 meta-patchtest/recipes-devtools/python/python3-unidiff_0.5.4.bb
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-unidiff_0.7.5.bb
 delete mode 100644 meta-patchtest/recipes-devtools/python/python3-wrapt_1.10.10.bb
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-wrapt_1.15.0.bb

-- 
2.40.1


