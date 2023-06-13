Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F5CBEB64D7
	for <webhook@archiver.kernel.org>; Tue, 13 Jun 2023 19:13:01 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
 by mx.groups.io with SMTP id smtpd.web10.37.1686683572605208448
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jun 2023 12:12:52 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=B3Mpd7lc;
 spf=pass (domain: gmail.com, ip: 209.85.128.173, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-56cf916aaa2so41660147b3.3
        for <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 12:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686683571; x=1689275571;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dDc0PfcWqzPrEJKxPjQqNkKuq6Onlu7Hyji7gsVMJjo=;
        b=B3Mpd7lc+2NpJhumxIJ9Vh5ffxZWKRQxKsnm6dtme0leSop6re8e8gqySLPq6Ks67h
         B2c6N0Kgk0jSirDz1d+YMh0FVO4UL2vrRPOIcDE6fJpudFsyRdI7LWcxsnteByUWoeMo
         /LpUXeCoCWh5m3uK0AJNsK/qoUPoFa3t8nKjGg+1OMF/6QP2tyDNCX5aBcUsEAqx2Clh
         UhSEw9jkZ1+joXBVZhxtTWdTjVTAUTKK0vXbWHmT4nCpjeHDA0p+SzFptNLDNBhKQZsV
         7s/3WkIlZ0eSnOZ/mz+5wPrxIos8TCXrLrMd8ShB9IMbUgx4TYHu3rWFMXAzCBBi541D
         GnnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686683571; x=1689275571;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dDc0PfcWqzPrEJKxPjQqNkKuq6Onlu7Hyji7gsVMJjo=;
        b=ghIu9TyEwuwZttWOtNxootNfudiKYHxqaCBEV4v8+era2YyvOnaWzBPo53ueLvBCob
         ShZ93jx8eJCa922xDVluS25xO2JeKx8rBhYFE0UIhTYNqimb0EACU16lH203jiurDba9
         mbzXcW4xUkT0EAikIX2DV05X6ukqK/jSQmW/IIMu5miAjK9idILfR7aTa8JiMFOaNf+8
         qHrbzvwSutUyPuMJSo4IIAc0HiJH1tcJ9plgTGMO7krsN8QjS0dg4C6+vVkdc9hcK9Xd
         Xd3kG9qlXEmf1cqvAdGa97CRIXmjIoOfpAzIoc+7WxMnIryoMKsh2KyZnhZGV5Replta
         lZ/w==
X-Gm-Message-State: AC+VfDwS94PMFarKL3tXKVqLTyHPl9vYa9zqUrECuxpzb5RdoKY5E5Ds
	ox54Prvc8qRrvnl4jUPGBfph4U5jBjg=
X-Google-Smtp-Source: ACHHUZ5zIpJXfii046Q67VwDh5EvzZYGve1SWJzK+CJGULdw+f9evJApT0+Tuk/xDp/rZzX82JvFZg==
X-Received: by 2002:a0d:d54d:0:b0:565:5478:713c with SMTP id x74-20020a0dd54d000000b005655478713cmr2686146ywd.0.1686683571527;
        Tue, 13 Jun 2023 12:12:51 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:be62:56a:860e:4129])
        by smtp.gmail.com with ESMTPSA id q133-20020a815c8b000000b005569567aac1sm1971786ywb.106.2023.06.13.12.12.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 12:12:51 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 6/7] openscap: move to main meta-security layer
Date: Tue, 13 Jun 2023 15:12:46 -0400
Message-Id: <20230613191247.18732-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230613191247.18732-1-akuster808@gmail.com>
References: <20230613191247.18732-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 19:13:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60279

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../openscap/openscap_1.3.7.bb                                    | 0
 .../scap-security-guide/scap-security-guide_0.1.67.bb             | 0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename {meta-security-compliance/recipes-openscap => recipes-compliance}/openscap/openscap_1.3.7.bb (100%)
 rename {meta-security-compliance/recipes-openscap => recipes-compliance}/scap-security-guide/scap-security-guide_0.1.67.bb (100%)

diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb b/recipes-compliance/openscap/openscap_1.3.7.bb
similarity index 100%
rename from meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb
rename to recipes-compliance/openscap/openscap_1.3.7.bb
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.67.bb b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
similarity index 100%
rename from meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.67.bb
rename to recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
-- 
2.34.1


