Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53E36E00C2B; Tue,  5 Sep 2017 08:21:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9694BE009F5
	for <yocto@yoctoproject.org>; Tue,  5 Sep 2017 08:21:00 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id m1so1830115pfk.0
	for <yocto@yoctoproject.org>; Tue, 05 Sep 2017 08:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=dWDu25S7fnefzKw0N+/heRFGR0Eap6yVaWccOQhQVlQ=;
	b=o+z/zxHCqcFUduRz/A8xp+dw4QBtaa9ly+rL9432TFfxMKKTdbGCFeNJxg848Mp3so
	NyzDXWsf8YnB8eab1G/Nw5dMVHvN0t/xObTznVuNpeHrX7zvn+gdEdq5y3+KheQu6PjK
	SqIWaPciaGHd+my33mS1EvRispjjQPTuq485t8vWj2VJAN8GmuG0v/hMbbdlDkw/Vpaj
	b7aZL7NA8MF/53GGCdKB6neFERR0WuZSPDwv/PkeDAQuMvxN4jig2qjmGiNySVhrnS1a
	yu1FIQmlXxGHssTuK+JMCemH2ykCptBspliWMNay3N2UBYhqwL4h2QGZ4J5lIQDit4lL
	EoBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=dWDu25S7fnefzKw0N+/heRFGR0Eap6yVaWccOQhQVlQ=;
	b=c28dy4PC3o7sGUbGfkUU3oW5ZnB699KHmvVD/045lpLoIxLWFjMOlyNb9QppA1hZlm
	DvL32TLrxJq7GPY/oh1mNHAmv6yCMkMEnnaOSW8eh9mhfIcE3HBPCcp5CKaq8wKMwHNE
	wwoX+6cYmjhobBqbTlj+5TA/cnefzW4YLO4rSWUYV7QY59Mu4fOQ/8gXSsvszsm7Zi2D
	TCt3yxeMVMddoByQQnLRQIFEU2en4Brx7vfH3LrhRKrAw6WvXLFItU8/vuhhU2gfH+DR
	zfCqdNcb5e8OlMMWzwK7Fu3hAcyu6HbYh5hIVYYdQixYnOWV2iufKiOHQk1KaXd62q9E
	9RGg==
X-Gm-Message-State: AHPjjUgDHG12+OUcYMR0UeB7ixYnW9q5V8skxpDbXEDFKK0GRhzlhM7B
	NB5HsLInV4Cqwuqn
X-Google-Smtp-Source: ADKCNb4ew2XBDRExORtWwq1Hjq/I2s1CL0Xa9X3nn/mA1zvy0atK5/+0hTPZZ1HXb2leJwwbutjF9g==
X-Received: by 10.99.165.88 with SMTP id r24mr4369736pgu.331.1504624859865;
	Tue, 05 Sep 2017 08:20:59 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:58b1:c8ad:be98:9713])
	by smtp.gmail.com with ESMTPSA id
	z24sm1848992pfk.118.2017.09.05.08.20.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 05 Sep 2017 08:20:59 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  5 Sep 2017 08:20:58 -0700
Message-Id: <1504624858-28252-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] nmap: update to 7.60
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
X-List-Received-Date: Tue, 05 Sep 2017 15:21:01 -0000

LIC_CHKSUM_FILES changed do to yr update.

add a few more PACKCONFIG

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/nmap/{nmap_7.50.bb => nmap_7.60.bb} | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)
 rename recipes-security/nmap/{nmap_7.50.bb => nmap_7.60.bb} (84%)

diff --git a/recipes-security/nmap/nmap_7.50.bb b/recipes-security/nmap/nmap_7.60.bb
similarity index 84%
rename from recipes-security/nmap/nmap_7.50.bb
rename to recipes-security/nmap/nmap_7.60.bb
index 30ae06f..a6616eb 100644
--- a/recipes-security/nmap/nmap_7.50.bb
+++ b/recipes-security/nmap/nmap_7.60.bb
@@ -3,15 +3,15 @@ DESCRIPTION = "Nmap ("Network Mapper") is a free and open source (license) utili
 SECTION = "security"
 LICENSE = "GPL-2.0"
 
-LIC_FILES_CHKSUM = "file://COPYING;beginline=7;endline=12;md5=87c6956e28c3603a0a1dda11bcdc227a"
+LIC_FILES_CHKSUM = "file://COPYING;beginline=7;endline=12;md5=700c690f4ca6b1754f3f1db8645e42d9"
 
 SRC_URI = "http://nmap.org/dist/${BP}.tar.bz2 \
            file://nmap-redefine-the-python-library-dir.patch \
            file://nmap-replace-shtool-mkdir-with-coreutils-mkdir-command.patch \
 "
 
-SRC_URI[md5sum] = "435c7e095bdd4565e0f69c41743a45be"
-SRC_URI[sha256sum] = "e9a96a8e02bfc9e80c617932acc61112c23089521ee7d6b1502ecf8e3b1674b2"
+SRC_URI[md5sum] = "4e454266559ddf2c4e2109866c62560c"
+SRC_URI[sha256sum] = "a8796ecc4fa6c38aad6139d9515dc8113023a82e9d787e5a5fb5fa1b05516f21"
 
 inherit autotools-brokensep pkgconfig pythonnative distro_features_check
 
@@ -21,6 +21,8 @@ PACKAGECONFIG += " ${@bb.utils.contains('IMAGE_FEATURES', 'x11-base', 'zenmap',
 PACKAGECONFIG[pcap] = "--with-pcap=linux, --without-pcap, libpcap, libpcap"
 PACKAGECONFIG[pcre] = "--with-libpcre=${STAGING_LIBDIR}/.., --with-libpcre=included, libpre"
 PACKAGECONFIG[ssl] = "--with-openssl=${STAGING_LIBDIR}/.., --without-openssl, openssl, openssl"
+PACKAGECONFIG[ssh2] = "--with-openssh2=${STAGING_LIBDIR}/.., --without-openssh2, libssh2, libssh2"
+PACKAGECONFIG[libz] = "--with-libz=${STAGING_LIBDIR}/.., --without-libz, zlib, zlib"
 
 #disable/enable packages
 PACKAGECONFIG[nping] = ",--without-nping,"
-- 
2.7.4


