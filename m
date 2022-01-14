Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BE55C433F5
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 05:55:21 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web12.3784.1642139713674933151
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LXRWFSiT;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id
 l16-20020a17090a409000b001b2e9628c9cso13171680pjg.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=h3vW6AN/rDfq+boRc4j6nJZ7tuwtT2NXSDCnpoFVX0A=;
        b=LXRWFSiTdhuSt4l9/QAu87dUj/nx0+7JF0+WhJg84fteVNKGfcwZY7uXNvy06KnkRs
         OFLB9jere057g/ljqvCJVRFReXMnrgmudFiTqXoyExtzR4/geRKRuOboGGSUEtKDYgTl
         Kre54E3HDggsofvrJITu/jlc2qSoZLmLegX5bTalAT75oodxCK3sEOgFYEBpV6rIJuIm
         H9hs5qAqeipqteahcVVX1g2g3Nhp5gcQqDhhGMw3DVKxQpm6GxQ+kbOHEVs+jZdXuVuN
         wCV8dD8OZQy/GT1Us44aop6XoaPUAvmfcZKMlyMYkhaD4RRhPxEOfHmTcLEzTm34+440
         dyJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=h3vW6AN/rDfq+boRc4j6nJZ7tuwtT2NXSDCnpoFVX0A=;
        b=1CoV+HJYMtBUoMl1e6gJ4iGEPpVg57u8QajEHcHiAKtW5HNqFSZelyQFYsMRoMCK1P
         3Kc8DUXbnPhHva2i93yvfKgIfbLHIVgD+x5Bp+mdETE12/EcHaOuq/uyNtuc7Fmb2jYK
         R2DGwJZ8kmgEn6SIpd+jVdYB10jx+98yB+mKNi2oGGlfDZbR0AL2I/ACSDuQyUPf2+OH
         U6L4d/OQaf0zqwowk7cnkGVv5WuQX6oq9jcmyihm6z2EZFEM/WSsu8bwoWFkxsoHhR13
         eUvmsTQh20fakkNCKNG/QloRTbCPKLQi+Taf4OH1Kxv3DLIJ7zXLNmn+XhVEfjA5yv8M
         BrvA==
X-Gm-Message-State: AOAM532qn7F3+vcdOqKpB+cmFPk6E7LQ4TgXYUkwU2ZzWWpZsUoAEMvr
	ZaqyT2mkYUreTRuRYyT7kGKvTovLHeot1Q==
X-Google-Smtp-Source: 
 ABdhPJx8/0HAjwM+k2VnlWL6LRDwIM3R5n24Bpn9l+dKWM+r1iyhr7pgpY/Hb+1GDYOdIfXAIWITPw==
X-Received: by 2002:a17:90a:4214:: with SMTP id
 o20mr9145981pjg.80.1642139712927;
        Thu, 13 Jan 2022 21:55:12 -0800 (PST)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:bf73:e59:4f56:2dd4])
        by smtp.gmail.com with ESMTPSA id
 d2sm4514714pfu.76.2022.01.13.21.55.12
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 21:55:12 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex][PATCH v2 03/18] dockersetup.py: letsencrypt 2048 bit rsa
Date: Thu, 13 Jan 2022 21:54:26 -0800
Message-Id: 
 <1f41512758b167502537f775a23c9639baed0889.1642138698.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642138698.git.tim.orling@konsulko.com>
References: <cover.1642138698.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 05:55:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55854

The minimum length for an RSA pem is 2048 for the dummy cert.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 dockersetup.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/dockersetup.py b/dockersetup.py
index 04dec91..6a0ab67 100755
--- a/dockersetup.py
+++ b/dockersetup.py
@@ -483,7 +483,7 @@ def setup_https(hostname, http_port, https_port, letsencrypt, cert, cert_key, em
             os.makedirs(local_letsencrypt_cert_dir)
         keyfile = os.path.join(letsencrypt_cert_subdir, 'privkey.pem')
         certfile = os.path.join(letsencrypt_cert_subdir, 'fullchain.pem')
-        return_code = subprocess.call(['openssl', 'req', '-x509', '-nodes', '-newkey', 'rsa:1024', '-days', '1', '-keyout', os.path.join(local_cert_dir, keyfile), '-out', os.path.join(local_cert_dir, certfile), '-subj', '/CN=localhost'], shell=False)
+        return_code = subprocess.call(['openssl', 'req', '-x509', '-nodes', '-newkey', 'rsa:2048', '-days', '1', '-keyout', os.path.join(local_cert_dir, keyfile), '-out', os.path.join(local_cert_dir, certfile), '-subj', '/CN=localhost'], shell=False)
         if return_code != 0:
             print("Dummy certificate generation failed")
             sys.exit(1)
-- 
2.30.2


