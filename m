Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 272B2E00E55; Tue,  6 Feb 2018 07:43:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable
	web server
	*      [223.196.115.131 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BA27E00E2F
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 07:43:49 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id p1so763871pfh.4
	for <yocto@yoctoproject.org>; Tue, 06 Feb 2018 07:43:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=1XAk8nBCpinKDuE0bV/Cklhswe4gsQso9aQgqZlbPKI=;
	b=N7oBFjO2zVBBWh0Mf3ch5Q+HR2jhGqrghA3y/Qt4qGpdc7RgLDVIPLi0nQE0lt1m7A
	ZQi4UU0EcjLKfMhZ5uNT7G4qDatKu/R46HLBr+A0aHxj9i9Ds5m/xVZUfOgt83cl9NXC
	2mQKhmyJ/82a29M2FUoPkaN0sZ7vkusxlE2bR0gH5xNkPmId1gSZnhAIZ/OippLB3RJN
	L80WuyihdsymlFs6k8NW/UuW4V1xc3IvhxrK6xuI93zW0HBP03SnTI5qYaKOcxapqTFg
	s3KeCIj1QPggAQy1f6Avix3DNe9Z+OIWRMUtOqHdDjDUDfSo5c1o2vhpbMJk2rT17Tod
	HddQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=1XAk8nBCpinKDuE0bV/Cklhswe4gsQso9aQgqZlbPKI=;
	b=b9UqcJXXuTXWlWWBFCsNKhWpVtpKtj76pw+ymjr0MonaJgHI7mHfOEsPUI4hVmciQI
	jKsLGuBRO+TMle0CUsMa28w2xGvvmPljw7znXJSyt+NWUp3dYYfm0/VL3+Qy7e2xJBxV
	OSc6LiTmQdyHGm06JAV9j9uK4I3+jnzQSoqQkDK1emyC9auA4j7X7iKLsIh/EahKhVzu
	QLhPYKZuoS2JqDtbwKeoNzd/H3ZcyHfuW+NHrdphWCBTD5gCpd4azE42qobsnhDFFkn6
	J9NWS1zdIU3z7i4kObI8299F9Eei6kloLlPBtxm0rYavCvC7k3Gapwfc6/nle3DdZVP8
	t8lA==
X-Gm-Message-State: APf1xPDQnD7/Z+NtpM/iKXWwB0eiyY5LL8Qbc6uxCwnW+delxdz8WSu+
	wXzj3OBaVcbKW4DAavfbLVjfLA==
X-Google-Smtp-Source: AH8x225bs8DoNMI68tg0z5gTBrQ78Z5CXCuB+SX/Ch/ooFW1uRp85BRK+wb0+Uq8vbyr+mvcGlw27g==
X-Received: by 10.98.49.199 with SMTP id x190mr2853877pfx.1.1517931828866;
	Tue, 06 Feb 2018 07:43:48 -0800 (PST)
Received: from localhost.localdomain ([223.196.115.131])
	by smtp.gmail.com with ESMTPSA id
	a6sm16558140pgq.56.2018.02.06.07.43.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Feb 2018 07:43:48 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  6 Feb 2018 21:13:25 +0530
Message-Id: <1517931813-13010-4-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
References: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 04/12] sssd: update to 1.16.0
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 06 Feb 2018 15:43:50 -0000

update some PACKAGECONFIG changes

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/sssd/{sssd_1.13.3.bb => sssd_1.16.0.bb} | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)
 rename recipes-security/sssd/{sssd_1.13.3.bb => sssd_1.16.0.bb} (86%)

diff --git a/recipes-security/sssd/sssd_1.13.3.bb b/recipes-security/sssd/sssd_1.16.0.bb
similarity index 86%
rename from recipes-security/sssd/sssd_1.13.3.bb
rename to recipes-security/sssd/sssd_1.16.0.bb
index 07abb93..e41a38e 100644
--- a/recipes-security/sssd/sssd_1.13.3.bb
+++ b/recipes-security/sssd/sssd_1.16.0.bb
@@ -11,8 +11,8 @@ DEPENDS += "libldb dbus libtalloc libpcre glib-2.0 popt e2fsprogs libtevent"
 SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz\
             file://sssd.conf "
 
-SRC_URI[md5sum] = "38bbb24ea9139508cc1d6e402e253244"
-SRC_URI[sha256sum] = "3fd8fe8e6ee9f50b33eecd1bcccfaa44791f30d4e5f3113ba91457ba5f411f85"
+SRC_URI[md5sum] = "f721ace2ebfa6744cfea55e3ecd2d82f"
+SRC_URI[sha256sum] = "c581a6e5365cef87fca419c0c9563cf15eadbb682863d648d85ffcded7a3940f"
 
 inherit autotools pkgconfig gettext update-rc.d python-dir
 
@@ -35,9 +35,10 @@ PACKAGECONFIG[cyrpto] = "--with-crypto=libcrypto, , libcrypto"
 PACKAGECONFIG[nscd] = "--with-nscd=${sbindir}, --with-nscd=no "
 PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
 PACKAGECONFIG[systemd] = "--with-systemdunitdir=${systemd_unitdir}/system/, --with-systemdunitdir="
-PACKAGECONFIG[systemd] = "--with-systemdconfdir=${systemd_unitdir}/system/, --with-systemdconfdir="
+PACKAGECONFIG[http] = "--with-secrets, --without-secrets, apache2"
+PACKAGECONFIG[curl] = "--with-secrets --with-kcm, --without-secrets --without-kcm, curl"
 
-EXTRA_OECONF += "--disable-config-lib --disable-cifs-idmap-plugin --without-nfsv4-idmapd-plugin --without-ipa-getkeytab"
+EXTRA_OECONF += "--disable-cifs-idmap-plugin --without-nfsv4-idmapd-plugin --without-ipa-getkeytab"
 
 do_configure_prepend() {
     mkdir -p ${AUTOTOOLS_AUXDIR}/build
-- 
2.7.4


