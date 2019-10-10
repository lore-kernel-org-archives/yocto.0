Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9696E00DAF; Thu, 10 Oct 2019 04:22:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 159B4E00DA3
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 04:22:47 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id r3so7415330wrj.6
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 04:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=6qppLn0tj2rUS74R8cmp0pM9btLX8+etNaoHbLQBagc=;
	b=o4kQffQGZ+FkKXos1E0NkRy/PF119Fh43W4AwQkpLGLuGxETRksgVKaq41PNXCdxZp
	tl1qOLp/TwSoZ6ppdvu6AMxuqM/wviw7boprbdB7tRWRHH3E5G5W2oE1gESC/T0psvBW
	GibOzCALPokfF4cu33w2dkS6QbGh5bi8gHQq6IjqOTinT7eaLU2YqjzsefeoEKYF/3Gm
	lcxAv6ubrxS9dPaEOsq5U+b1x2VX9jlhWRkeKtP+E+J9257dgM7DnAki8lgxaiBlicdK
	iIjNYLet73aq+/zwsFYckia1iBkBfV3n8OcCcOYFMAv2iGyObZBBQfBV39AUgo/WnSm8
	py/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=6qppLn0tj2rUS74R8cmp0pM9btLX8+etNaoHbLQBagc=;
	b=nngdGHR5M7ch0jPUqbmslobEBmru9TsGt0hsJfX/MS8LIHA8w+chfWeZI4IqYmw2l/
	3THag+Vasy1E5Rzz26v4UmvmtVQ7qjIRRl2bY5UyaPHQuLiFKXGcWGlfOAdcHb2Whsfm
	c1eCMa4aCyHrtmbhxHYjlpmxOUeT/Vs9Gxzo1dBZKSk3aC9PTCgtSt3wPMGleqwm8h8f
	ORcDUoXxdov0AI2kxn47II/5KwcHhnNpEKDm7YET2By3yN9esENTeZukhSJzswRFTwYv
	3tXqkaFM7gMjwcKO1HdTStAfWDtwUgT+w/ZHVvejR4e+w8ZLKJybHS7eW+M0o/WuHUDY
	AU+Q==
X-Gm-Message-State: APjAAAUw7sf/aawJWf6DRD2ku0n81VVurrN4/wJf14v6JCQZC+wbwM/o
	WqzpaM88RgevZx9jhJgm3/Jmtw1D70Y=
X-Google-Smtp-Source: APXvYqx90OZH8C6nuFINHgdjm2BffYtdYzYYYWDw62w+EiQ4xGuWzlzE+taIr4yBlTBzjfkORFhk+g==
X-Received: by 2002:adf:ee8a:: with SMTP id b10mr8046951wro.40.1570706567027; 
	Thu, 10 Oct 2019 04:22:47 -0700 (PDT)
Received: from alexander-box.luxoft.com ([62.96.135.139])
	by smtp.gmail.com with ESMTPSA id 79sm6532065wmb.7.2019.10.10.04.22.46
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 10 Oct 2019 04:22:46 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 10 Oct 2019 13:22:37 +0200
Message-Id: <20191010112237.4227-2-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191010112237.4227-1-alex.kanavin@gmail.com>
References: <20191010112237.4227-1-alex.kanavin@gmail.com>
Subject: [meta-security][PATCH 2/2] apparmor: make bash dependency optional
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
X-List-Received-Date: Thu, 10 Oct 2019 11:22:48 -0000

Bash is only needed by one not particularly important script,
so not requiring bash is a useful option for builds that
cannot have gpl3 components.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 recipes-mac/AppArmor/apparmor_2.13.3.bb | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.3.bb b/recipes-mac/AppArmor/apparmor_2.13.3.bb
index 990d870..6183064 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.3.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.3.bb
@@ -32,11 +32,12 @@ PARALLEL_MAKE = ""
 
 inherit pkgconfig autotools-brokensep update-rc.d python3native perlnative ptest cpan manpages systemd
 
-PACKAGECONFIG ??= "python perl"
+PACKAGECONFIG ??= "python perl aa-decode"
 PACKAGECONFIG[manpages] = "--enable-man-pages, --disable-man-pages"
 PACKAGECONFIG[python] = "--with-python, --without-python, python3 swig-native"
 PACKAGECONFIG[perl] = "--with-perl, --without-perl, perl perl-native swig-native"
 PACKAGECONFIG[apache2] = ",,apache2,"
+PACKAGECONFIG[aa-decode] = ",,,bash"
 
 PAMLIB="${@bb.utils.contains('DISTRO_FEATURES', 'pam', '1', '0', d)}"
 HTTPD="${@bb.utils.contains('PACKAGECONFIG', 'apache2', '1', '0', d)}"
@@ -97,6 +98,10 @@ do_install () {
 		rm -f ${D}${sbindir}/aa-notify
 	fi
 
+	if ! ${@bb.utils.contains('PACKAGECONFIG','aa-decode','true','false', d)}; then
+		rm -f ${D}${sbindir}/aa-decode
+	fi
+
 	if test -z "${HTTPD}" ; then
 		oe_runmake -C ${B}/changehat/mod_apparmor DESTDIR="${D}" install
 	fi
@@ -161,7 +166,6 @@ PACKAGES += "mod-${PN}"
 FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
 FILES_mod-${PN} = "${libdir}/apache2/modules/*"
 
-RDEPENDS_${PN} += "bash"
 RDEPENDS_${PN} += "${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
 RDEPENDS_${PN}_remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
 RDEPENDS_${PN}-ptest += "perl coreutils dbus-lib bash"
-- 
2.17.1


