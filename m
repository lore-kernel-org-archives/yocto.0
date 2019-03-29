Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 049E9E00D28; Thu, 28 Mar 2019 22:28:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.169 listed in list.dnswl.org]
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com
	[209.85.215.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DFF6E00D1B
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 22:28:25 -0700 (PDT)
Received: by mail-pg1-f169.google.com with SMTP id f6so631357pgs.8
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 22:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=LzgVAXfpSt1LvpJJzOlnIudk4rjyL5FmPBU40Nx1V4A=;
	b=GkERJp0tp6RFI8f28wzk4BExVlDPxRYNR2UJ4+Emr+nP2v00bbpq+un4dHT2nCkhis
	iJmg91WHYwefIQOncaIGZrQy6utSAsErnE5hHZ7d3lNnZIISwlY2QnIr3Zgc6fYE4If9
	QoqQuHn7Qv4IipdF8xtU0UvVNzmXkbTMCUsQ9SzWg4IG72yr6c/cfluM3WH3ycuMCsXG
	N/GIcjCmTjk5+fZg0GWGQZfHyFdKTWcnKfgATyk9oo+qzetdoDtY8D9F9+Hi20P69DBv
	yt8VG0vQ+kXDaLu5OqJpuLtdgmfHHRKr7uR4Kdv3ISoxtUSI/Og299SNejAe4vlQHcWl
	pxoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=LzgVAXfpSt1LvpJJzOlnIudk4rjyL5FmPBU40Nx1V4A=;
	b=Cnyn0/pp2sHvHgyGGe1OIv7K3EzUZDAPfUaUZ/J+HXzBmW15TmVcQl9FUWZmmWWpQO
	Dxn5ZA3e5KrmlP54OOvF/1oDl04d5cP//1TD4ki2/MbzVPCH/79zcsmUaC2rLCWe14p2
	DnujvlPYK6ZUmJ1iKTCnkD2pNsClIXEyRQBu0QAxawSjhi2wO3pNNDsWSK4ybjCfkVxr
	Ws5VW+ud/frdngFUwjW5XJhkFecmjuPrETnpK9rvywjH+PCN5I28VHBsKCn8bhpRxohb
	GFKJsntBSeKa4LrEAIACetHC4jOkd1UfD3hR0MD19D+yHGGh6g7tI1i3oCLktY5PT1KN
	0B6g==
X-Gm-Message-State: APjAAAWpDVYLQomyoRNsFD7/XVLdeRExJ3GAPSF0vUJsXFXBiO444BfM
	w95h8RwaqSNUOVppuBOmqeMNzukV
X-Google-Smtp-Source: APXvYqznFIu+eNxvh1GrTTJSa+c51A07UvXQ2okhnHLWMY/8BZ1EYqkXIKPbS5kTnK9ttyVT/pai7Q==
X-Received: by 2002:a63:7117:: with SMTP id m23mr36770738pgc.271.1553837305017;
	Thu, 28 Mar 2019 22:28:25 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id f9sm1133978pfd.10.2019.03.28.22.28.24
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 28 Mar 2019 22:28:24 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Mar 2019 22:28:19 -0700
Message-Id: <20190329052821.13718-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190329052821.13718-1-akuster808@gmail.com>
References: <20190329052821.13718-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/5] sssd: fix a few runtime issues
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
X-List-Received-Date: Fri, 29 Mar 2019 05:28:26 -0000

include a few more RDEPEND packages. remove init script as there really
isn't one yet.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/sssd/sssd_1.16.3.bb | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/recipes-security/sssd/sssd_1.16.3.bb b/recipes-security/sssd/sssd_1.16.3.bb
index 8f7f805..e3fb254 100644
--- a/recipes-security/sssd/sssd_1.16.3.bb
+++ b/recipes-security/sssd/sssd_1.16.3.bb
@@ -14,7 +14,7 @@ SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz\
 SRC_URI[md5sum] = "af4288c9d1f9953e3b3b6e0b165a5ece"
 SRC_URI[sha256sum] = "ee5d17a0c663c09819cbab9364085b9e57faeca02406cc30efe14cc0cfc04ec4"
 
-inherit autotools pkgconfig gettext update-rc.d python-dir distro_features_check
+inherit autotools pkgconfig gettext python-dir distro_features_check
 
 REQUIRED_DISTRO_FEATURES = "pam"
 
@@ -55,6 +55,16 @@ do_install () {
     rmdir --ignore-fail-on-non-empty "${D}/${bindir}"
     install -d ${D}/${sysconfdir}/${BPN}
     install -m 600 ${WORKDIR}/${BPN}.conf ${D}/${sysconfdir}/${BPN}
+
+    # Remove /var/run as it is created on startup
+    rm -rf ${D}${localstatedir}/run
+}
+
+pkg_postinst_ontarget_${PN} () {
+if [ -e /etc/init.d/populate-volatile.sh ] ; then
+    ${sysconfdir}/init.d/populate-volatile.sh update
+fi
+
 }
 
 CONFFILES_${PN} = "${sysconfdir}/${BPN}/${BPN}.conf"
@@ -70,4 +80,4 @@ FILES_${PN}-dev = " ${includedir}/* ${libdir}/*la ${libdir}/*/*la"
 # The package contains symlinks that trip up insane
 INSANE_SKIP_${PN} = "dev-so"
 
-RDEPENDS_${PN} += "bind dbus"
+RDEPENDS_${PN} = "bind dbus samba libldb"
-- 
2.17.1


