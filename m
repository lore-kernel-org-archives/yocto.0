Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5874FE00DB5; Fri, 23 Aug 2019 09:27:20 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
	[209.85.210.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC754E00DA3
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2019 09:27:19 -0700 (PDT)
Received: by mail-pf1-f171.google.com with SMTP id d85so6790939pfd.2
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2019 09:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=3SEWayn031pPDNsJz9Y2rf/mhhjW3UmipGzrpSO9QXw=;
	b=jNAZcrAlKJIzqhVWng3HzFRNHci0hG8xIlvinDx4XADwbRKC/V5HFVjJn8Ba7TJ/J4
	wjJr9ObSQLC/EQQpd0qfgGZrL+AShqHPTZZEGwWz80tBgBaOwyWH9cTTP4c9t6hdAKdp
	IR72cgmJK2yv2S8EePsd2De0NHy3suie7FbiSJbvIOX3RVwT4Qx6RcsrKXtocrlB+DhC
	upr1sMo7GMeEoquXHQqT1k5P5MVHU3fJozkN6Bx0dVn3LpvFRIYMsGB8dJHZD4FIJoNF
	ezTQB7SmI1aZlNCmEwjWD3NR8g+gquNVvR/LOVh/z2AP60PQk9X7Nuu6ogr/+ruw9aL9
	7KWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=3SEWayn031pPDNsJz9Y2rf/mhhjW3UmipGzrpSO9QXw=;
	b=VBXuGBbtW1Q0jtgNLjXn5h+y/uvXHHBFln5mA/nEmx8Gk8d5h6AXRwsrb+LE8u4APC
	BwC3KECYiJdOQBZJTA02xc85P+BRiMSyU93WT0nEbZMDGNyxYEv0/7ENfDHYWcagBlS5
	GPF92lig5VE2gVh4TvAKjezcXxZGU2Tlm+w3wtZu4DTq7B7xeqEiCkUV7Hryr8/8ot2u
	7H8tOTiPEcBW9/prTtA7dsw4rTnOUzF80a6y6WpOFYix777SgKNOugw6RkNN60g9nkXa
	bq5FVNiOwuQhbsJ5uVIRTENRXCTs5JA3f0Q5OoVCoVUu07mk+Key3uIeBmIoCZ6F1MI4
	HlMA==
X-Gm-Message-State: APjAAAUS8DES74LyEVLlYjVvPJrQImBfhav5BrcpOpiwIvZ27NG4MsdM
	eTzrcr1zCRM350Tb9DXDvbuAwpRW
X-Google-Smtp-Source: APXvYqxQdF/jpXOPoKGJSc0xwuZchLeNJ/OoRDlnP9XFOt2NvHGlZECg8RHaf+CLvxTE7ROAbB2SKA==
X-Received: by 2002:a17:90a:cc0c:: with SMTP id
	b12mr5964861pju.138.1566577639151; 
	Fri, 23 Aug 2019 09:27:19 -0700 (PDT)
Received: from localhost.localdomain (wsip-184-188-36-2.sd.sd.cox.net.
	[184.188.36.2]) by smtp.gmail.com with ESMTPSA id
	b30sm4478634pfr.117.2019.08.23.09.27.18 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 23 Aug 2019 09:27:18 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 23 Aug 2019 09:27:16 -0700
Message-Id: <1566577636-29800-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566577636-29800-1-git-send-email-akuster808@gmail.com>
References: <1566577636-29800-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] apparmor: fix RDPENDS
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
X-List-Received-Date: Fri, 23 Aug 2019 16:27:20 -0000

apparmor-2.13.2-r0 do_package_qa: QA Issue: /usr/bin/aa-easyprof contained in package apparmor requires /usr/bin/python3, but no providers found in RDEPENDS_apparmor? [file-rdeps]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/AppArmor/apparmor_2.13.2.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.2.bb b/recipes-mac/AppArmor/apparmor_2.13.2.bb
index 4eaec00..1e9715d 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.2.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.2.bb
@@ -155,6 +155,6 @@ FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}
 FILES_mod-${PN} = "${libdir}/apache2/modules/*"
 
 RDEPENDS_${PN} += "bash lsb"
-RDEPENDS_${PN} += "${@bb.utils.contains('PACKAGECONFIG','python','python3 python3-modules','', d)}"
+RDEPENDS_${PN} += "${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
 RDEPENDS_${PN}_remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
 RDEPENDS_${PN}-ptest += "perl coreutils dbus-lib bash"
-- 
2.7.4


