Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3978.1584582816693867590
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hSKJuVuQ;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C717E01885; Wed, 18 Mar 2020 18:53:36 -0700 (PDT)
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
	*      [209.85.210.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CC03E01887
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:34 -0700 (PDT)
Received: by mail-pf1-f193.google.com with SMTP id x2so490412pfn.9
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=sxQOgzVwrm4E1V5tS7qWJrx2qjwfcOWJrmb968i/czk=;
        b=hSKJuVuQR0tfFUCoPAZ8L4o4W0HL0UnDLtphmwOLZ+YwIhEpiwvZiqGedI6p0P6+Pa
         4/zPsle1imNYZCja1zgdqN85CHnAbZFJrqnnBcAckabJNq7P73cTN/uxUroL6yVDj/Je
         +jP44AgBveLG1arFvdeur6AIx5NIqPIeVOlmLPCEFLzpANtapW6qDNb2G2zJGh5WWxEx
         4dHxhGiyfMOG95BNyEuZHqN19f8EviWkoseKoTvz2WfOLu/eRocS6CkwuiBe6lXEWCs0
         qSduyh/khgRB0fhWTxmUYBwy/kv3B+HVirgInHkbqeJ3imWDn+lqbe17hOSldXSztMHu
         ymjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references;
        bh=sxQOgzVwrm4E1V5tS7qWJrx2qjwfcOWJrmb968i/czk=;
        b=jkJHclRrJiWJx8cZiXw4uSQy5tY1+w4ENA4h0OTVk79JZfuxGlLJ5CDhi36MjBNtaL
         t5lic9uxPtErLZ7tzcJjj5B4jQmuXBq2SmSsPY/B7XBNHWRLhDtwQujaDgilL69f+VGd
         ARe7rHgLoKXLEQlmCXWzo57LBN52XinTNORSi9q6Cc2Y0ytIJrhz+0HssJcMp35JZuGC
         umI3JhrfUzEDKA+k2fTL8sPGCaBLmURGg1sI2jpqn6cpQjgOxjIeeVDs8Bl1IdHm+a1j
         7m6RdKX1Er7zeqdQ988PBRO+PQr9Gu0xED5syLGuv/qIf0WtqOZ9NaAfAF+9l/yjA4bq
         qZjA==
X-Gm-Message-State: ANhLgQ0JgzvOKq6SvTI8yP6cegB3by9MN0ju9+OLstVUnY/PjglN4Ft7
	vzhp4onytfU5Yr83IsTecz8=
X-Google-Smtp-Source: ADFU+vtk+FZMKUIp/YQ3uXlFUCRzJHQw7znDE+/mVmb2Glc/mjp37bbluW0hHXze1roXLAUGJ7M4WA==
X-Received: by 2002:a63:6907:: with SMTP id e7mr701582pgc.445.1584582814010;
        Wed, 18 Mar 2020 18:53:34 -0700 (PDT)
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id mq6sm223798pjb.38.2020.03.18.18.53.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:33 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 90E972A04DA; Wed, 18 Mar 2020 18:53:32 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH 13/20] libsocket6-perl: update to 0.29
Date: Wed, 18 Mar 2020 18:53:14 -0700
Message-Id: <20200319015321.15525-13-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20200319015321.15525-1-jpuhlman@mvista.com>
References: <20200319015321.15525-1-jpuhlman@mvista.com>

From: Jeremy Puhlman <jpuhlman@mvista.com>

* license checksum changed because they add more info above the license.

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 .../perl/{libsocket6-perl_0.28.bb => libsocket6-perl_0.29.bb}      | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)
 rename meta-cgl-common/recipes-perl/perl/{libsocket6-perl_0.28.bb => libsocket6-perl_0.29.bb} (72%)

diff --git a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.28.bb b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
similarity index 72%
rename from meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.28.bb
rename to meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
index f76ff22..0d133c6 100644
--- a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.28.bb
+++ b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "Perl extensions for IPv6"
 HOMEPAGE = "https://metacpan.org/release/Socket6"
 SECTION = "libs"
 LICENSE = "BSD"
-LIC_FILES_CHKSUM = "file://README;beginline=31;md5=aa15b0e3744ac40eaada8738eccd24df"
+LIC_FILES_CHKSUM = "file://README;beginline=43;md5=b2bfcdf2de2e951c8e4ed544e942d8e1"
 PR = "r2"
 
 BBCLASSEXTEND = "native"
@@ -10,11 +10,10 @@ BBCLASSEXTEND = "native"
 CFLAGS += "-D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE"
 BUILD_CFLAGS += "-D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE"
 
-SRC_URI = "http://search.cpan.org/CPAN/authors/id/U/UM/UMEMOTO/Socket6-${PV}.tar.gz;name=socket6-perl-${PV} \
+SRC_URI = "https://cpan.metacpan.org/authors/id/U/UM/UMEMOTO/Socket6-${PV}.tar.gz;name=socket6-perl-${PV} \
            file://0001-socket6-perl-fix-configure-error.patch \
 "
-SRC_URI[socket6-perl-0.28.md5sum] = "aa8489135a3dbcec6233396e1aeb043b"
-SRC_URI[socket6-perl-0.28.sha256sum] = "bfd49ab99f3197c99285fed4683c4edc06277c1e4453f593e694d7bff0974586"
+SRC_URI[socket6-perl-0.29.sha256sum] = "468915fa3a04dcf6574fc957eff495915e24569434970c91ee8e4e1459fc9114"
 
 S = "${WORKDIR}/Socket6-${PV}"
 
-- 
2.13.3

