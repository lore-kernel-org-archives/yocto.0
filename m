Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web09.9565.1619777968206677467
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Apr 2021 03:19:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tDaHP3kF;
 spf=pass (domain: gmail.com, ip: 209.85.221.52, mailfrom: fede.evol@gmail.com)
Received: by mail-wr1-f52.google.com with SMTP id x7so69898626wrw.10
        for <yocto@lists.yoctoproject.org>; Fri, 30 Apr 2021 03:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zdxzPLmeaxUrztT1/oZ1hRHFdGCmuGG4/Epq58Gv+kU=;
        b=tDaHP3kFsCTab99jJtul7oPaau0uWSZYwRRTZnVvS1/l2pIBpfajugPY3x/kbQPhNv
         9xINOrJuaDt9VN6wSlYKvAISs3ooCuoqACscsVTS+SRNqK4/V9RjqEsjKRtReDin80Rg
         vGgAQhXG1bo43lxd0/w+pbYvYP9QgnOiaGrgZAv6NFXoCNk2krAdx5qYc5FT9yBfM6qS
         ZNXJHGb8yMos9oWr7ghOdN4kgU8g8MBDyN2UlO+a9tpFFWfPn2y5F89T5ZtE8HdzycSF
         B31XBxnjK0pd17CgX3wPLgvS5RlebsTjhTDCeHF2pKs1Pm02GeAABC/M6v4+DZDiZzu7
         nlrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=zdxzPLmeaxUrztT1/oZ1hRHFdGCmuGG4/Epq58Gv+kU=;
        b=gxNr1zXmFAMLDAwSlk6/sSIFl+27Sd4wMzEbUyd06SmzhnWEuWUnpTJK5aPUR9u1D6
         pbqfSci1TRK1jnhJIE/li891nKnmQaLmJ9GviFHy9nSh+0YzfpXFYGnWI4Ehuy4i74bd
         hds4lCWCW1WhI7sANOfSe52QKR/4TiaDXckOXFM4WofUHtYeho9Cp0M1B8P3F7ODk1eK
         IyhN0mfgYdJLzjsDZ9sSHa8B/gmzzzJoVWIP9hWC3qNy5V/88fo7E2hMQmGleTPOMqPp
         6f/nhiqXMtLX+9SUeR0GUHnVQZtT2n6iZqBtntF7Ak5RT8QJ7X//SunvzZ88SN7X61Tu
         hvYw==
X-Gm-Message-State: AOAM533tLA2khmwxdr/ArkUxD8jHWxV18AYuJ4Jena2AMsFJ2BGINdpJ
	aYHuig3y2//5HbisJmCELCqVURDarFpfkg==
X-Google-Smtp-Source: ABdhPJz/6uWMU1E4veIew6KrRV2bC924+vTn2m/rCCJ6EXTxjnsBXLC6TMBNN8tDt3d0k4oOvHbCTA==
X-Received: by 2002:a05:6000:1aca:: with SMTP id i10mr5968973wry.194.1619777966774;
        Fri, 30 Apr 2021 03:19:26 -0700 (PDT)
Return-Path: <fede.evol@gmail.com>
Received: from interzone.fritz.box ([2a02:2455:e61:2400:2f61:91f0:79ef:cf93])
        by smtp.gmail.com with ESMTPSA id l14sm1785869wrv.94.2021.04.30.03.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Apr 2021 03:19:26 -0700 (PDT)
Sender: Federico Pellegrin <fede.evol@gmail.com>
From: "Federico Pellegrin" <fede@evolware.org>
To: yocto@lists.yoctoproject.org
Cc: Federico Pellegrin <fede@evolware.org>
Subject: [yocto][meta-gplv2][PATCH] gnutls: add possibility to build with cryptodev support
Date: Fri, 30 Apr 2021 12:19:15 +0200
Message-Id: <20210430101915.57520-1-fede@evolware.org>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add possibility, via PACKAGECONFIG variable, to enable cryptodev
(hardware crypto acceleration) for gnutls in a very similar way
as it is already present for openssl.

Signed-off-by: Federico Pellegrin <fede@evolware.org>
---
 meta/recipes-support/gnutls/gnutls_3.7.1.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta/recipes-support/gnutls/gnutls_3.7.1.bb b/meta/recipes-support/gnutls/gnutls_3.7.1.bb
index 350d0a018bd..6674542a77d 100644
--- a/meta/recipes-support/gnutls/gnutls_3.7.1.bb
+++ b/meta/recipes-support/gnutls/gnutls_3.7.1.bb
@@ -36,6 +36,7 @@ PACKAGECONFIG[libidn] = "--with-idn,--without-idn,libidn2"
 PACKAGECONFIG[libtasn1] = "--with-included-libtasn1=no,--with-included-libtasn1,libtasn1"
 PACKAGECONFIG[p11-kit] = "--with-p11-kit,--without-p11-kit,p11-kit"
 PACKAGECONFIG[tpm] = "--with-tpm,--without-tpm,trousers"
+PACKAGECONFIG[cryptodev-linux] = "--enable-cryptodev,,cryptodev-linux,cryptodev-module"
 
 EXTRA_OECONF = " \
     --enable-doc \
-- 
2.26.3

