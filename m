Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFA21C77B78
	for <webhook@archiver.kernel.org>; Thu,  4 May 2023 17:32:38 +0000 (UTC)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
 by mx.groups.io with SMTP id smtpd.web10.1118.1683221550338229913
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 May 2023 10:32:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@konsulko.com header.s=google header.b=gdBLrD8p;
 spf=pass (domain: konsulko.com, ip: 209.85.166.49, mailfrom: scott.murray@konsulko.com)
Received: by mail-io1-f49.google.com with SMTP id ca18e2360f4ac-7696f591c90so51167539f.1
        for <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 10:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1683221549; x=1685813549;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zdaIquMwNS9Qr/gPma3OsZQzzyPhrP08hsCyghW8oB0=;
        b=gdBLrD8poXfF8cD//WV/h46x40LD+0XkrH9FRFMET5CesVqjNRImMZGyTeku/tZQnW
         0fPN9GzA/HX9D0RCOyxZvuP+o4oo9LnqUX3Ajzh1ocgd0Ha1Nz3OpvVwuIH8IhKDLhts
         CMVFbaFfqiPUM1S1t3Oo8Qakklrzzqp+24oZs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683221549; x=1685813549;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zdaIquMwNS9Qr/gPma3OsZQzzyPhrP08hsCyghW8oB0=;
        b=Fp93rlG4Q88waifdEJRX+CP1u7WtH8cjuwgHLoTrpzJEyOqFKgTNAnPTeaUuXP69kD
         /8KH9cxXU9Cc1hh4MupBPu7h5sxtC03Lk0QnfGXT7H8ThELtaKOZAo25O44m5q9B3Gzb
         O6HoMDv6kuq+8w3Kyg4jxWtVZGtO7pDHcLLguavGcV3196cXNUtw9ZPD1FemUTPfvLPP
         0e/0GeMSf3QCXEcqmgdXCFDYjSJMJOhLipDr/0n0v96AMyBZldL07hY9zINQt7qzXBpp
         OsF/eTnN6sp39KuAyOElicUEmzsRLd+kEXJiUPULSfc0gvDC/KV/NwXi1/AyDApSgGnL
         HDrQ==
X-Gm-Message-State: AC+VfDyBazD2m8b+oOfTbC7Wm3oB2AsanV32rFdBXFsRL1FXOMg9xGlX
	j0x51SuBs1+lUptdUWW7fLverc/prEeE2Zrts0M=
X-Google-Smtp-Source: ACHHUZ6iH9nNZvRlTLFkxtQ5L02srRFTqiIh1It18x9Ky9BETorzfraSr4Z2uFQywYmYJUcdsSl1hA==
X-Received: by 2002:a6b:4002:0:b0:760:ebf0:bdfa with SMTP id k2-20020a6b4002000000b00760ebf0bdfamr459925ioa.2.1683221549307;
        Thu, 04 May 2023 10:32:29 -0700 (PDT)
Received: from ghidorah.spiteful.org (192-0-174-82.cpe.teksavvy.com. [192.0.174.82])
        by smtp.gmail.com with ESMTPSA id l9-20020a5e8809000000b0075cfdf70ca5sm9766629ioj.50.2023.05.04.10.32.28
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 May 2023 10:32:28 -0700 (PDT)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-lts-mixins][kirkstone/rust-1.68 RFC PATCH 4/4] meta/recipes: ensure all recipes have a SUMMARY
Date: Thu,  4 May 2023 13:31:55 -0400
Message-Id: <2b04fc29acca12c671fb84f6f45d76f392b1ea4e.1683220726.git.scott.murray@konsulko.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683220726.git.scott.murray@konsulko.com>
References: <cover.1683220726.git.scott.murray@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 17:32:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59880

From: Alexander Kanavin <alex.kanavin@gmail.com>

DESCRIPTION is optional for now; writing good component descriptions
is not easy (but appreciated).

(From OE-Core rev: 9ce4f9248db3db70732d886a18ea355f321bd49d)

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
[meta/recipes-devtools/rust changes only]
Signed-off-by: Scott Murray <scott.murray@konsulko.com>
---
 recipes-devtools/rust/cargo_1.68.2.bb         | 2 +-
 recipes-devtools/rust/rust-cross-canadian.inc | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-devtools/rust/cargo_1.68.2.bb b/recipes-devtools/rust/cargo_1.68.2.bb
index 2b2394e..a5c1064 100644
--- a/recipes-devtools/rust/cargo_1.68.2.bb
+++ b/recipes-devtools/rust/cargo_1.68.2.bb
@@ -1,4 +1,4 @@
-SUMMARY ?= "Cargo, a package manager for Rust."
+SUMMARY = "Cargo, a package manager for Rust."
 HOMEPAGE = "https://crates.io"
 LICENSE = "MIT | Apache-2.0"
 SECTION = "devel"
diff --git a/recipes-devtools/rust/rust-cross-canadian.inc b/recipes-devtools/rust/rust-cross-canadian.inc
index 17f9339..8d0dc6a 100644
--- a/recipes-devtools/rust/rust-cross-canadian.inc
+++ b/recipes-devtools/rust/rust-cross-canadian.inc
@@ -1,3 +1,4 @@
+SUMMARY = "Rust compiler and runtime libaries (cross-canadian for ${TARGET_ARCH} target)"
 PN = "rust-cross-canadian-${TRANSLATED_TARGET_ARCH}"
 
 inherit rust-target-config
-- 
2.39.2


