Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA4FCC77B75
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:22:51 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web11.61913.1684354966671543864
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:22:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=vP9W7xet;
 spf=pass (domain: baylibre.com, ip: 209.85.222.175, mailfrom: tgamblin@baylibre.com)
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-75771dd7242so76803285a.1
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354965; x=1686946965;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=t5lIwWJqcdp1YwdEMoX4SCOBG2mwZ/1iw3DODCTM6U0=;
        b=vP9W7xet+yAsnEXhTTpxBlwXoz8O4rHIzMt4CrTVhgCiJ679g2bswM3dma2tLb7+uA
         LLNgeUMZbC6HyPnP4bqnsNfrrI5dvyLgKdz6qPZBFi1DolOKYZpMqnoyG163tW+2xq21
         MRlIHVH/x+t66zAQ+wktUp+LobrdUlpJSoPZSz0Irhi8NjyJ1Q2CWLGUfUWza1y63ZBW
         Hn8o7Zkenw5QJC583VWKhUZFaOK9d1RJ4UKmTq2gRLpZJQf6OYgKsisDkIPY23LXJJqq
         dXaWYFcmC4SawqRuHs3QG2H13SAdiJf9m/HcdcrUOokv4+PvUQaClC7wFzfNVy7yVrlJ
         ot0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354965; x=1686946965;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t5lIwWJqcdp1YwdEMoX4SCOBG2mwZ/1iw3DODCTM6U0=;
        b=hp3OVan80dsHW0OIEjbXdtC+++75jwaZ7wlqpquIJ93ztzQdixrvct3NEjyqTjpuCD
         ovIKTibITidzBolThH+prGuAUMMQDVNs2Vv/ZysOU/hbKwOQjsNCXB/CpoaihkxQOtji
         DL+gdnhQiSLCC1ayffxnxUpNf3CCfG1kI023NS54hA7i8gy6xH5LeUPWiiZSmr330xny
         IR0TtneSsWvNoWG9UuSCwvAX9JQGAmdckRvuyg61Yn1oq9D0cJ31Uopa3g6YndPJTyGm
         tuvip7PaT9ICbJaL9sDS197mJ4UKz5dja6lalRcgpPw4LKogrQzZaG8C3k2pT4AGiLM5
         ExWA==
X-Gm-Message-State: AC+VfDyNvqPqw3kYom5qhagFGOkv9qFbtnzG3JqaBhsv7ps+OhP9ehs4
	lPXyzyNuVEX/5TRA/2Sw4slqCjLm+l18mJZ0/YWH5g==
X-Google-Smtp-Source: ACHHUZ79W4RGOAwzB/TDPH/mvLkerMg4PCSSYffoqV+p/UISx0aKuPCDxl6oMUxO1ckE1kudmuuZWA==
X-Received: by 2002:a05:6214:27c7:b0:5af:af15:8d44 with SMTP id ge7-20020a05621427c700b005afaf158d44mr1206730qvb.45.1684354965642;
        Wed, 17 May 2023 13:22:45 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id bv24-20020a05622a0a1800b003f3c9754e1dsm6790815qtb.17.2023.05.17.13.22.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:22:45 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto][patchtest][PATCH v2 00/11] patchtest: layer updates
Date: Wed, 17 May 2023 16:22:33 -0400
Message-Id: <20230517202244.1612047-1-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:22:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60059

This series includes several changes to upgrade existing recipes, add
those that the new upgrades depend on, and remove what's no longer
necessary to have in the layer. The objective is to make patchtest
usable with only oe-core and bitbake, so almost all changes have been
copied over from the meta-python layer. python3-pyparsing is in oe-core,
so it's no longer needed in patchtest.

Resending series so that the proper labels are present.

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


