Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C86C0C54E66
	for <webhook@archiver.kernel.org>; Mon, 11 Mar 2024 16:25:12 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.67369.1710174311613940873
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Mar 2024 09:25:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=B8wq2atH;
 spf=pass (domain: gmail.com, ip: 209.85.221.54, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-33e93514a6aso832717f8f.1
        for <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 09:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710174310; x=1710779110; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MfELlC8PUak7sxJOXH+sa0zoTmib0mF11fhLTJTp/Fc=;
        b=B8wq2atHCI55nZl1nikazlH/6EVxPTwp6skLvlA35evDWGvZiE8iCv1Wsn4AwbRpz/
         yV/XBfzB0mb8zwnHnohUltEV264PGUI+Nkk0U1Dug+bDa/oUyK4jq50vvd3oVlMWH1zG
         mZSgXr3sV2SdSjx74yykSCM/4yNxWnYHTWd4YN3cv/O7KUEvIDa5uMsuq9aU83JZ/z7O
         XIzIAMnLcgkiV/7iJALL9Ptaj5Ul89PrZYw1Jv55JBzEQt18pobbNrxlbZOboOtUKo5t
         h4Vf/uShi9p0GI/FjfymK2D9Ojf9f3jiXpkXxf7S/Un9fEBAlQKss+KEOHkf0MI6fRsu
         L4EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710174310; x=1710779110;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MfELlC8PUak7sxJOXH+sa0zoTmib0mF11fhLTJTp/Fc=;
        b=QvWLXkok6iDYBWn0sRoqtE1LvjMRPTdDToWyc1FYW1Et2aZhwJHwmg/A7w1Z86WARi
         k5O/htz87GdQgFcxvhp61nRY7GGgmcTUa7FGCdR4hfBZNcHhxUbCi9ayc5TL9TszdnIz
         yh2pQjptAY6uaSVEfR53r0W4+UQFxBJE+MvbHP79fBV8TqnmGrib5oHvvGg2IydiYWQ5
         ThlFV9uuKR4gELyvtzuGmewKCagss9VRy1rSnFL+NjkErId4iHdohVLhvEa5l7K0RoFx
         7LW0kIvOyFyyRtzTfTSErMly7nGltZITczrYDY8vlhdih17p7yp7MPpkFza2TJKgD4Zj
         lG1g==
X-Gm-Message-State: AOJu0YwXKqVGWqCpWDOzADKHJZSATHDCDw9zKSS7pmAyFH1AJ3ReOXZz
	aqQoC87/mPbW3xquCNt1LmhYPwoJvAvfWeFoHlfQm9y0Om9u8TauWKnXLKPf
X-Google-Smtp-Source: AGHT+IFpRIX4H1TrcaPo6gMuuSSwwBaLHA2w26wahM0fvMJYs7kFpX8zIEMHcV21ESXO6HznWj0Dug==
X-Received: by 2002:adf:fc8a:0:b0:33e:7054:3791 with SMTP id g10-20020adffc8a000000b0033e70543791mr4724242wrr.70.1710174309647;
        Mon, 11 Mar 2024 09:25:09 -0700 (PDT)
Received: from toster.lan (bl15-243-112.dsl.telepac.pt. [188.80.243.112])
        by smtp.gmail.com with ESMTPSA id bs9-20020a056000070900b0033e9fca1e49sm521935wrb.60.2024.03.11.09.25.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 09:25:09 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org,
	scott.murray@konsulko.com
Cc: Yash Shinde <Yash.Shinde@windriver.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-lts-mixins][kirkstone/rust][PATCH 05/11] rust: Enable rust oe-selftest.
Date: Mon, 11 Mar 2024 16:24:04 +0000
Message-ID: <20240311162419.1138625-5-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311162419.1138625-1-jose.quaresma@foundries.io>
References: <20240311162419.1138625-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 16:25:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62730

From: Yash Shinde <Yash.Shinde@windriver.com>

* Enable rust oe-selftest.

* Include the dependent patches for rust oe-selftest in
  meta/recipes-devtools/rust/rust-source.inc

* Disable rust oe-selftest for mips32 target (Rust upstream has classified it into tier 3 target,
  for which the Rust project does not build or test automatically) as it is unstable with rust tests.
  https://doc.rust-lang.org/nightly/rustc/platform-support.html#tier-3

* The testing is done on arm32, arm64, mips64, x86 and  x86_64 targets on Ubuntu 22.04.

Signed-off-by: Yash Shinde <Yash.Shinde@windriver.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 recipes-devtools/rust/rust-source.inc | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-devtools/rust/rust-source.inc b/recipes-devtools/rust/rust-source.inc
index 83a0dbc..e02829e 100644
--- a/recipes-devtools/rust/rust-source.inc
+++ b/recipes-devtools/rust/rust-source.inc
@@ -10,6 +10,10 @@ SRC_URI += "https://static.rust-lang.org/dist/rustc-${RUST_VERSION}-src.tar.xz;n
             file://0004-musl-Define-O_LARGEFILE-for-riscv32.patch;patchdir=${RUSTSRC} \
             file://0005-musl-Define-SOCK_SEQPACKET-in-common-place.patch;patchdir=${RUSTSRC} \
             file://0001-Revert-Map-source-absolute-paths-to-OUT_DIR-as-relat.patch;patchdir=${RUSTSRC} \
+            file://cargo-path.patch;patchdir=${RUSTSRC} \
+            file://custom-target-cfg.patch;patchdir=${RUSTSRC} \
+            file://rustc-bootstrap.patch;patchdir=${RUSTSRC} \
+            file://target-build-value.patch;patchdir=${RUSTSRC} \
 "
 SRC_URI[rust.sha256sum] = "b98c09d968529212fb29eec7d6d3e9bdaa869810679b7fb86a1ca69469d75f5e"
 
-- 
2.44.0


