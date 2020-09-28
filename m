Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web12.37778.1601302670709582617
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Sep 2020 07:17:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qudOUQm2;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id bw23so770596pjb.2
        for <yocto@lists.yoctoproject.org>; Mon, 28 Sep 2020 07:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=TqFfOMVz6Ljq9w/Q3QRCIhyeAyJceUYHNfmsG5Ne0Vg=;
        b=qudOUQm2nTRsBE3XZv1wIP5fBeT94YrCs98cLditEe/lD8MmHCRwLKFnAnS3LtlKpC
         ObAefch0ULeYobj+MTeJW9KKTpsC9+0L/2KcMhnjXhaqoCS78W+g9W5EAOCNbzq2TIVT
         Pk5YHWjVswHCGeE5j477h9jPWI4TUdLSopHLIMVmZU4aC2AhtrSq+MK9s3zFsgAaTmfZ
         8omKh5KKLwt70MfHFGRdnangvTUKaRJEgETxNIPdnHK05FxzAvfMqLdwXD28WAUIXHIE
         lCxmvVJJIfZQixQz7CsAryYZ086XpNNEfQt3jHqy4sEE/mXbB94W6vHHzR39VmaF62W3
         GNAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=TqFfOMVz6Ljq9w/Q3QRCIhyeAyJceUYHNfmsG5Ne0Vg=;
        b=TTlrvXjVglu2SFQGt84BriX5CH+64LoaDEuLfFISdu/bwmb5ooGITnlSeQUlWRMyTo
         MlXuxyOJV8sEk7R8uGZF1rLyNcH+TWQZFTrQtqigMb777PMcLb3sLJADR20+8JJBDNIH
         VnT5uTs/ThbY3gunEycummEC3hFhIbWWEwu3BU55mnfUN7cX5x5gmog1yPEs5ymerytV
         AWILpX1K8R08y1PKGiHPLgkEz6ok6LrDPcz4meJ+wngr+RmZuaz50AA5q8t37KVdJRw1
         ivLJvSc69cxLZEoZ4wMma0XpzkC7AK+J2fHDHJoHWwK+bBOPclM1wDiZbSubGacDKoFd
         3WtA==
X-Gm-Message-State: AOAM531TNf064vxJvDjjN9i9zl+l6Ut3WbQZukmKIdwjc8Y+HF3QBz1w
	EEkr694Kd0gn1L/ho4LA5gUlQPbRRcM=
X-Google-Smtp-Source: ABdhPJw9YAfzGbq0SWsF9kvkWex/DEbXg5GNm4Oq++eigQj9Sz2ZhXjILWdrHwfOIbtMaN09ST1Nkw==
X-Received: by 2002:a17:90a:930e:: with SMTP id p14mr1567494pjo.49.1601302669902;
        Mon, 28 Sep 2020 07:17:49 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:9d97:e0e:5802:c8f4])
        by smtp.gmail.com with ESMTPSA id u15sm1639533pjx.50.2020.09.28.07.17.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 07:17:49 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] libest: add recipe
Date: Mon, 28 Sep 2020 07:17:40 -0700
Message-Id: <20200928141741.13583-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libest/libest_3.2.0.bb | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 recipes-security/libest/libest_3.2.0.bb

diff --git a/recipes-security/libest/libest_3.2.0.bb b/recipes-security/libest/libest_3.2.0.bb
new file mode 100644
index 0000000..36ff5ca
--- /dev/null
+++ b/recipes-security/libest/libest_3.2.0.bb
@@ -0,0 +1,23 @@
+SUMMARY = "EST is used for secure certificate  \
+enrollment and is compatible with Suite B certs (as well as RSA \
+and DSA certificates)"
+
+LICENSE = "OpenSSL"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=ecb78acde8e3b795de8ef6b61aed5885"
+
+SRCREV = "4ca02c6d7540f2b1bcea278a4fbe373daac7103b"
+SRC_URI = "git://github.com/cisco/libest"
+
+DEPENDS = "openssl"
+
+inherit autotools-brokensep
+
+EXTRA_OECONF = "--disable-pthreads --with-ssl-dir=${STAGING_LIBDIR}"
+
+CFLAGS += "-fcommon"
+
+S = "${WORKDIR}/git"
+
+PACKAGES = "${PN} ${PN}-dbg ${PN}-dev"
+
+FILES_${PN} = "${bindir}/* ${libdir}/libest-3.2.0p.so"
-- 
2.17.1

