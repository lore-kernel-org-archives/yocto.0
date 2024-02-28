Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B20DC5478C
	for <webhook@archiver.kernel.org>; Wed, 28 Feb 2024 20:32:48 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
 by mx.groups.io with SMTP id smtpd.web11.7826.1709152367865472578
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Feb 2024 12:32:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=Fqcz8xqc;
 spf=pass (domain: mvista.com, ip: 209.85.219.180, mailfrom: jpuhlman@mvista.com)
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dc6dcd9124bso212455276.1
        for <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 12:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1709152366; x=1709757166; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PlhN1REFIJ04lOy/evRgkFUrLnPfn4h7pD/b/OOKLDE=;
        b=Fqcz8xqcMI0A0HTjNVd9bfYoT14NrZFvH5wI7i3vVurYgwlbV9Hpn+FeeOGjQTERHY
         HHm84g8caO2ithar6UcJJr7eZpSW70WcukpnLe616Q1GNlgaZV+KUwu5Jby/kpmUefxU
         12J5BXqjP2JlLCf1CjG9w8Fl5xr7T9062NMns=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709152366; x=1709757166;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PlhN1REFIJ04lOy/evRgkFUrLnPfn4h7pD/b/OOKLDE=;
        b=oNybEZUvEQhWJ629MoWzNs0uQ/sUxLxXz2fuzAdN2PgexSKd3W+loXpHG9nSdG0/OS
         kPgnEraizqqOjtiIsYnpWtNtAdRB7XQTFIz+obmM69TC/g5d5Pi2OCHoTHiHXHpg1gFd
         Y1lr7Eyz9K1oSaHITvgMYCq+8RREtCOI1FG76Kt9s9PHl3Xkt2aZ1nPx11TEGjWnpdMb
         hXSZA71GKbJSSB/uCIKEOZZoOuCWxXFFDmZB4psDkT8oF6Rzlm8RKT0+ooA1xkD3ymjJ
         w2ShXpS2mD9WqxHli0ocgIG55Mj9hSwoMoueCs7yz8WLTrU7//GZVD/uvbP7brHdeJ4+
         CLwg==
X-Gm-Message-State: AOJu0YwN84oro1vISeUMz1//1U2O14qxK2awVrmdR4SgqcQDJRPZk2N6
	19of47NjJ210Q9MbmrTp+tpDjeLRNwoxhBIZxPr5fPq3WudKDDDxtN6xjzqUTJuQ+z9H5gkyOCv
	5
X-Google-Smtp-Source: AGHT+IFRqy4pNehTNijqnBS84AeCg9ZWwF59+b+y75XRiS8JUs/Zy+8+hFeaJqeRR7wzphNOs2Z8rw==
X-Received: by 2002:a05:6902:4f1:b0:dca:c369:face with SMTP id w17-20020a05690204f100b00dcac369facemr361065ybs.18.1709152365981;
        Wed, 28 Feb 2024 12:32:45 -0800 (PST)
Received: from brown (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id i14-20020a258b0e000000b00dc6e5ea9152sm40310ybl.29.2024.02.28.12.32.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 12:32:44 -0800 (PST)
Received: by brown (sSMTP sendmail emulation); Wed, 28 Feb 2024 12:32:37 -0800
From: jpuhlman@mvista.com
To: yocto@lists.yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-security][PATCH 2/2] aprwatch: Add path for sendmail
Date: Wed, 28 Feb 2024 12:32:19 -0800
Message-Id: <20240228203219.1861150-2-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20240228203219.1861150-1-jpuhlman@mvista.com>
References: <20240228203219.1861150-1-jpuhlman@mvista.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 20:32:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62643

From: "Jeremy A. Puhlman" <jpuhlman@mvista.com>

Arpwatch won't build on a system without a sendmail provider
installed with out this setting.

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 recipes-scanners/arpwatch/arpwatch_3.3.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-scanners/arpwatch/arpwatch_3.3.bb b/recipes-scanners/arpwatch/arpwatch_3.3.bb
index 391a82e..8e9a268 100644
--- a/recipes-scanners/arpwatch/arpwatch_3.3.bb
+++ b/recipes-scanners/arpwatch/arpwatch_3.3.bb
@@ -42,6 +42,7 @@ CONFIGUREOPTS = " --build=${BUILD_SYS} \
           --infodir=${infodir} \
           --mandir=${mandir} \
           --srcdir=${S} \
+          --with-sendmail=${sbindir}/sendmail \
           "
 
 do_configure () {
-- 
2.31.1


