Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86778C19F2B
	for <webhook@archiver.kernel.org>; Thu, 28 Jul 2022 22:18:19 +0000 (UTC)
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com
 [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web09.1554.1659046678825360684
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:17:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=g37dLAd7;
 spf=pass (domain: gmail.com, ip: 209.85.215.178,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f178.google.com with SMTP id l193so2196238pge.9
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=ByPz2bALlTCPw87q0YtKt31121E3F6JeHNAiSx7sHtg=;
        b=g37dLAd7aBJykS7I9qAt5agM3+7xI0uZ+SiBdHDQcnGUOfsarsC+wxlExKj+LR2FkG
         Li/Cv1AraSbJ2x5v6iHnWo3aNCbdzZmkS/cpkvfIp4vmuu8GoZwUT/eaShI7QWpLoHzi
         4ko/+vlAJ4rzaFrQvW/RabP7ckMYTJWNgKbNQr5jp+aKTaEXQYolmyOvtPJPVBCYh74K
         2cHQDt1sHut1jz62kbvxnPEs48Ck50S0KOKpv1dxd2OEem0Woqg2JjZj9dwBFy0dCt6F
         m40Zlwe88xVu6hpLy8egfcAhef4Kh4KXf1lBqIe5Ox7UhzmNNfxhvG6QzPMb51AX7wi4
         HUrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ByPz2bALlTCPw87q0YtKt31121E3F6JeHNAiSx7sHtg=;
        b=8DYczhKtqniOV6SnPs+RWAjSC1Bz30ypKH5GaC35+BfqJaAWs7FMV0zLBH0+7yB4lQ
         tmj4SHTYMVp310PTjP5AI/ungGrD/zH/bdpiOW6iFDpDoaNQORPHhMImtVWyBeDqQuFg
         pmzpEWuaoBodvLbRwpPAkQ5kQ4RGjTXclaoltf0QQbPOcPYE5h9XkLQrD6Q+uU7YFrlE
         E0LLA67QY70EWabgWe/1Kj/Wru/iE2Lz9Rwf+vgDsjMpoQNBwGQRUI5t71r+LpjmXXBD
         nhTKKL8a8xLiw8AZ+zx2n5Jmdq+9Fiu1suIp4Kix2d3z4/rwmSFYtvkqtHlD1sasPVtz
         i8OA==
X-Gm-Message-State: ACgBeo1mmnCIdH71EKzS+6btxUpm7tgn9o1iY/evaOBC0p1Lvqfypup2
	/Yaqb51rk51a/+1QDRaV5qHyRUVT6hE=
X-Google-Smtp-Source: 
 AGRyM1vye1rynJN8NAo7SZuWAaf5zfKe9azb4ivfcYhNRYe+9CNyTtWFoxYRsDQpohvCeFrTXYdNNw==
X-Received: by 2002:a05:6a00:3388:b0:52a:c018:6cdf with SMTP id
 cm8-20020a056a00338800b0052ac0186cdfmr594349pfb.55.1659046677475;
        Thu, 28 Jul 2022 15:17:57 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:8cdd:3284:a497:445d])
        by smtp.gmail.com with ESMTPSA id
 o4-20020a170902d4c400b0016d22e6ed57sm1829090plg.293.2022.07.28.15.17.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 15:17:56 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/9] tpm2-tss: add UPSTREAM_CHECK_URI
Date: Thu, 28 Jul 2022 15:17:46 -0700
Message-Id: <20220728221751.48428-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728221751.48428-1-akuster808@gmail.com>
References: <20220728221751.48428-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Jul 2022 22:18:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57672

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.0.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.0.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.0.bb
index 8440bb9..1556273 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.0.bb
@@ -12,6 +12,8 @@ SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN
 
 SRC_URI[sha256sum] = "48305e4144dcf6d10f3b25b7bccf0189fd2d1186feafd8cd68c6b17ecf0d7912"
 
+UPSTREAM_CHECK_URI = "https://github.com/tpm2-software/${BPN}/releases"
+
 inherit autotools pkgconfig systemd useradd
 
 PACKAGECONFIG ??= ""
-- 
2.25.1


