Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14A91E00A54; Thu, 18 Oct 2018 18:41:34 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
	[209.85.214.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FA65E0097C
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 18:41:33 -0700 (PDT)
Received: by mail-pl1-f195.google.com with SMTP id p5-v6so215797plq.8
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 18:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=LxJvrugRBrJw9TXP9tZdloONRP1cw+1QRf+YRRqsNmU=;
	b=oqGbOINdzLT0JgLPTC9Qs5v4iNDoO8qXEPdHxaWb1X6iQfC/+1eeNgzgvj6+jlsA49
	tBRZ6mp7Tknx27OVqutf6FF8TtDYikMH9B3bDUylMzRZNjOF+qGsB1CZ/ClC7inyvZ6E
	zN3KGrefDyEw6w9KSEZ+TVJSFOSuFh/J5TSHhHRpnIumDXa54QBdIq5K2xomOTQxrg/C
	DcRHLsl/8NASEgUm3zgOJzVzZjr5+udDx1FBpi2UcOBggnQjMvPsHHJ/MxZ2KDAiUfQX
	J0t3O6vEYKWaQJNshO25EgmqsYzO+gMVec1Q6AOW8UFm2tqToduBgyUC/eAy0zC7ekCk
	uwdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=LxJvrugRBrJw9TXP9tZdloONRP1cw+1QRf+YRRqsNmU=;
	b=TN1C7QLfpGaiH0ivHbUUAlHVZTH64Mtz8M4NXUxIEOdi04gD1OT90pp7h/ed9nC7v0
	qvSLx0veNzljtWTX2JCSf1/cjAzanK+SO417H9upJ1ntOdlKjydJnE8zcNjsKdOZOGLC
	Rx/jztVUgDnSDJl0Tx2MHx2NK7+gYn4igjmHJd/iIJy/d1XSAaNpXa9DEjyoEXiBVhug
	d4xpgkmT9sR0PuNtu+r/RYAjCQoYiU2/MAXeDvapfzdXl169D6ZdaJcbZzumCbSEEsHh
	Oixw80FfJy5ETQHlIFKznI5ngmjeufSU2ph0rmwoJ2buugV9vXVYDi2MH7XX4Jc+gLdf
	9WjQ==
X-Gm-Message-State: ABuFfog3yHlEORjuc/6M+Ejk+D3Jjp5i8AMBIQ/M312b0iSbhJuyZjJM
	C/Bam64UZTuCpjzTowDOJwkPhKPXjUw=
X-Google-Smtp-Source: ACcGV62NhC75VwR/Ds5TbUqcKlFItiLDiAOZ0PUbblcRsL6iF6Z9iqgxF2MjFcqpMDrSSs2O7Qsjnw==
X-Received: by 2002:a17:902:9:: with SMTP id
	9-v6mr32152543pla.293.1539913292702; 
	Thu, 18 Oct 2018 18:41:32 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com ([109.144.216.73])
	by smtp.gmail.com with ESMTPSA id
	y185-v6sm34032168pgd.8.2018.10.18.18.41.31
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 18 Oct 2018 18:41:32 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 18 Oct 2018 18:41:28 -0700
Message-Id: <1539913288-2889-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] suricata: fix QA error
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
X-List-Received-Date: Fri, 19 Oct 2018 01:41:34 -0000

ollected errors:
 * check_data_file_clashes: Package suricata wants to install file .../1.0-r0/rootfs/var/run
	But that file is already provided by package  * base-files

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/suricata/suricata_4.0.5.bb | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/recipes-security/suricata/suricata_4.0.5.bb b/recipes-security/suricata/suricata_4.0.5.bb
index b30e9c5..90b4638 100644
--- a/recipes-security/suricata/suricata_4.0.5.bb
+++ b/recipes-security/suricata/suricata_4.0.5.bb
@@ -69,6 +69,10 @@ do_install_append () {
          -e s:/bin/kill:${base_bindir}/kill:g \
          -e s:/usr/lib:${libdir}:g \
          ${WORKDIR}/suricata.service > ${D}${systemd_unitdir}/system/suricata.service
+
+    # Remove /var/run as it is created on startup
+    rm -rf ${D}${localstatedir}/run
+
 }
 
 pkg_postinst_ontarget_${PN} () {
@@ -80,7 +84,7 @@ fi
 SYSTEMD_PACKAGES = "${PN}"
 
 PACKAGES =+ "${PN}-socketcontrol"
-FILES_${PN} += "${systemd_unitdir} /run"
+FILES_${PN} += "${systemd_unitdir}"
 FILES_${PN}-socketcontrol = "${bindir}/suricatasc ${PYTHON_SITEPACKAGES_DIR}"
 
 CONFFILES_${PN} = "${sysconfdir}/suricata/suricata.yaml"
-- 
2.7.4


