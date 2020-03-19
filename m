Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3975.1584582815682047807
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rZ3G1gWG;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87864E01888; Wed, 18 Mar 2020 18:53:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD5D0E017FC
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:33 -0700 (PDT)
Received: by mail-pg1-f180.google.com with SMTP id x7so308642pgh.5
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=lYSZpKWc6Vl6fQ3oGXfPjcC7iKYgZDJt30iwBk6OoJ0=;
        b=rZ3G1gWGftg9z/GcYih1uY9LDTANpc1VETo5i/dxsW3a9msJ7m4Gd5z617+iPPgPcX
         j8XXJ7g1rzTHsCZB60Rka3JvYYrFjvJOCJB7vtKjUKmVyGxZ9b1nXeDgb/pvQJPu05fX
         uo2BpIyqPJu/6MYSNZfNVWlx13Brandncv9Zle9N7O+AEVVm81yeOtfY4c08XBIn+RgE
         693k6LIrm5PaS3uZnek6jQrHTBay3yuTsk6yUIEiUJptkahU/T3WXt5jdNJymY0W57Li
         efcSitdwsnFMXJjSfDYGARQ1Xm9Rwh2Ao7hk6YJwezCR8TH8Z+aG/3OKXW2SqaiP9XfG
         s4dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references;
        bh=lYSZpKWc6Vl6fQ3oGXfPjcC7iKYgZDJt30iwBk6OoJ0=;
        b=qOhSabiumOFNSWzg/RT8f/CigOCIzjbJZJAWDlaKxBnTBPbspykrt2scy8mCkeHROq
         shtWGt1fRdyeXfuKQTSAYcoBn8Ls+i7d3YY3mNg2CVMrmD6FM4A5XKv5BBzEjr0SAx+K
         dLgZ1TLizf12GT9eI+yo5pQvwAnq3+OUz8+CW3tFrZ8Zdq/c2G5qv3ALSjr0GOGqBNLh
         lQ85jW/Om5WXhh6nFYi/3TAQ4inH5W9PyE5QfuqNX1YOcPnpM4kxRf8dc3uwftVhipMP
         10TgOR96i7sJkAunFycSbF8PA5qZt2Dw+/sWbE4YNtBDDbZo9rqjd1Jg193lRaqVqCwm
         KvTQ==
X-Gm-Message-State: ANhLgQ3PbPqXgKwmBNENsS9gKUh9+SIG8uXcUlFbjo+Saom9b3Snib/V
	/DPd7ToRHeFrexQCOUubvbc=
X-Google-Smtp-Source: ADFU+vtXUeovzVUG+ucl4jypi9yqCxriOCc9Qh/48SOJEkHNcRI5oksZ95MiCFCqg3YU9M0H8gEvsw==
X-Received: by 2002:a63:455:: with SMTP id 82mr686165pge.197.1584582813529;
        Wed, 18 Mar 2020 18:53:33 -0700 (PDT)
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id x17sm280606pfn.16.2020.03.18.18.53.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:32 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id DBE832A09AF; Wed, 18 Mar 2020 18:53:31 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH 12/20] libwww-perl: update to 6.43
Date: Wed, 18 Mar 2020 18:53:13 -0700
Message-Id: <20200319015321.15525-12-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20200319015321.15525-1-jpuhlman@mvista.com>
References: <20200319015321.15525-1-jpuhlman@mvista.com>

From: Jeremy Puhlman <jpuhlman@mvista.com>

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 .../recipes-perl/perl/{libwww-perl_6.36.bb => libwww-perl_6.43.bb}   | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)
 rename meta-cgl-common/recipes-perl/perl/{libwww-perl_6.36.bb => libwww-perl_6.43.bb} (66%)

diff --git a/meta-cgl-common/recipes-perl/perl/libwww-perl_6.36.bb b/meta-cgl-common/recipes-perl/perl/libwww-perl_6.43.bb
similarity index 66%
rename from meta-cgl-common/recipes-perl/perl/libwww-perl_6.36.bb
rename to meta-cgl-common/recipes-perl/perl/libwww-perl_6.43.bb
index 816f4f8..07fadb7 100644
--- a/meta-cgl-common/recipes-perl/perl/libwww-perl_6.36.bb
+++ b/meta-cgl-common/recipes-perl/perl/libwww-perl_6.43.bb
@@ -15,9 +15,8 @@ BBCLASSEXTEND = "native"
 
 PR = "r2"
 
-SRC_URI = "https://cpan.metacpan.org/authors/id/E/ET/ETHER/libwww-perl-${PV}.tar.gz;name=libwww-perl-${PV}"
-SRC_URI[libwww-perl-6.36.md5sum] = "20062717e4084d2f56d84c7ab4c91ec1"
-SRC_URI[libwww-perl-6.36.sha256sum] = "75c034ab4b37f4b9506dc644300697505582cf9545bcf2e2079e7263f675290a"
+SRC_URI = "https://cpan.metacpan.org/authors/id/O/OA/OALDERS/libwww-perl-${PV}.tar.gz;name=libwww-perl-${PV}"
+SRC_URI[libwww-perl-6.43.sha256sum] = "e9849d7ee6fd0e89cc999e63d7612c951afd6aeea6bc721b767870d9df4ac40d"
 
 S = "${WORKDIR}/libwww-perl-${PV}"
 
-- 
2.13.3

