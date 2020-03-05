Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.11966.1583412497074565819
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Mar 2020 04:48:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=l8JZGT3g;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: jonatan.p@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id b13so4486179lfb.12
        for <yocto@lists.yoctoproject.org>; Thu, 05 Mar 2020 04:48:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=S4FFF4eqFrgjzzKc41iIwtSulOpiDgA+EfCpEWUcQd4=;
        b=l8JZGT3gqVa3d2GIZGWFx8KzvaBBNB8HbQk7R8uqKzNbCp9kmeV+eUN2kDYdTjEroi
         wF6bHskRi4SZh6r1y/zEYlFSfGQ8L4D1Req7YS6api2BcaLdUWDum4ieCrZTr8CrMXwa
         62NYsAhH3iU855l4LfbALIFpUaskzcoslhK86Fxcv5c3YgQ+QLc2GBXllujT1sCP3+tI
         UX9MntHgvwB+W4D1uVpI7VwOawmeCuB7Z6LB2GT8z3TscCxKDGSqAlJqBTlqvaO+Rl6O
         3/gpNDzrqS5E/+LmaVXYy3HGI6NlJdPku+WAmdahtF8wtfm67UJVgJgmwoZ7bCadf1dr
         Hj9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=S4FFF4eqFrgjzzKc41iIwtSulOpiDgA+EfCpEWUcQd4=;
        b=pMALiODy+U0uulxsCFyW71PoBKZBlKeAFzi9SUNY5JBBub84aDsUxGg0YC78pbRJRo
         pQRqDtFP+KxmWHtAzQ6cCxDa0sK84BkhHIqsHqixUnJ3icEzOxTUU1aIfA89AfoZz3eh
         r2faLCT+aNJpRpsvIPApsfDxAK77vRcslNm8iqpcZf9EVEI4G//j3l3CaFM+D1eRFAv8
         zitLXb33jMJHxU5/0j950sJ50Gz5vCreHK3v8Bma0mHCKZ4aJFyOIpn4tP7+b+mx10gY
         QZlaG/3qhLRRqprcH6+bWkVGztu+yJ3Qj4J5cRP1cCVWbETGrtQmLEZmHf9AvowbbeKf
         A+aA==
X-Gm-Message-State: ANhLgQ2tQiNvrjGImqG3JzVKaVUtEGrjg+wWShYafIS1lyNZYdfBKJon
	uV40fjtq2YH86UNGa+9bOjgGA11x
X-Google-Smtp-Source: ADFU+vvCW3Uf2X8XxSS4FZMphttgeOtUZhlxjCSaayQbOpnDsRbFChDwNsi4RCvyLo8zq8WzrR4nbQ==
X-Received: by 2002:ac2:58ec:: with SMTP id v12mr5570562lfo.31.1583412494711;
        Thu, 05 Mar 2020 04:48:14 -0800 (PST)
Return-Path: <jonatan.p@gmail.com>
Received: from X1.jptk.se ([2a02:aa1:101f:619d:9533:e6b4:96e9:5f67])
        by smtp.gmail.com with ESMTPSA id x62sm2147926lff.58.2020.03.05.04.48.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2020 04:48:14 -0800 (PST)
From: =?UTF-8?B?Sm9uYXRhbiBQw6Vsc3Nvbg==?= <jonatan.p@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: =?UTF-8?q?Jonatan=20P=C3=A5lsson?= <jonatan.p@gmail.com>
Subject: [meta-security][PATCH 3/3] sssd: DEPEND on nss if nothing else is chosen
Date: Thu,  5 Mar 2020 13:47:40 +0100
Message-Id: <20200305124740.2582832-3-jonatan.p@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200305124740.2582832-1-jonatan.p@gmail.com>
References: <20200305124740.2582832-1-jonatan.p@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

sssd will attempt to build against nss if no crypto is selected. If a
bbappend sets PACKAGECONFIG = <list without nss or crypto>, the
appropriate DEPEND is not established.

Fixes the following configure error:

    ... snip ...
    | checking for NSS... configure: error: Package requirements (nss) were not met:
    |
    | No package 'nss' found
    |
    | Consider adjusting the PKG_CONFIG_PATH environment variable if you
    | installed software in a non-standard prefix.
    |
    | Alternatively, you may set the environment variables NSS_CFLAGS
    | and NSS_LIBS to avoid the need to call pkg-config.
    | See the pkg-config man page for more details.
    |
    | WARNING: exit code 1 from a shell command.

Signed-off-by: Jonatan Pålsson <jonatan.p@gmail.com>
---
 recipes-security/sssd/sssd_1.16.4.bb | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index 525cea8..8335596 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -8,6 +8,11 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
 DEPENDS = "openldap cyrus-sasl libtdb ding-libs libpam c-ares krb5 autoconf-archive"
 DEPENDS += "libldb dbus libtalloc libpcre glib-2.0 popt e2fsprogs libtevent"
 
+# If no crypto has been selected, default to DEPEND on nss, since that's what
+# sssd will pick if no active choice is made during configure
+DEPENDS += "${@bb.utils.contains('PACKAGECONFIG', 'nss', '', \
+               bb.utils.contains('PACKAGECONFIG', 'crypto', '', 'nss', d), d)}"
+
 SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz\
             file://sssd.conf "
 
-- 
2.25.1

