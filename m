Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7380E009CE; Fri,  3 Feb 2017 00:46:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C2D9E009BA
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 00:46:29 -0800 (PST)
Received: by mail-io0-f176.google.com with SMTP id j13so12693990iod.3
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2017 00:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=4sTNsF7hNkGG272rdyWHvZrMf0S60rIicdRoEVBTCYk=;
	b=cm4et0iw39YYmFmW3XwBFLCDg9U4igBFIaweVtSUTrroinf+1XMy6R21IEoUxFoQRS
	EFqfyWFUfY7iZoTkElekN15UC0nd7OQRgYlAhfyYX7rut+9zyTT1l5Tzr44X1IteafHp
	HlDxvoULlC2D83Bia0C8t98lDVxCxQ8/xGlDPVtIMSEPsuVeIzcSxC8rDPOrrc7TM0pF
	8qVPsw6xbmjORjR0yZGei51xRnZ0gFzKIMc2+x/64wbWDuDolKpIcfBRDOXJ2fdtKmW9
	4IR5O0BsKl+20C5bRfmFK5U0lXzyn4Zo+KBJjgw7BKp1VtoYBixcPqHXUI5ywlr7J9K6
	nfWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=4sTNsF7hNkGG272rdyWHvZrMf0S60rIicdRoEVBTCYk=;
	b=tbF8n2EoEXmnhqHrF6DtFjdvOFDWq5fDzFncLynlPRhFEkirJ9JvKUQLjnHmP/PBDf
	ZnFjAZGcK2ADCfgnenLX2nw86JSN8gHRLGvpHbMSX6FwMavti/ZCIqp8AwR55D284mmd
	bXBWFyjG26Dtg2B5TbimfsBamIVa/xyRNH6+l1NhNsnVimH1hDVkg+9ToijBDz6aMSfR
	330vykOsome6Efq5y5EShqeNiSTioJW57PgIElTJBO3M5EZwXvzGW0g/+uD11Gn5Kdxs
	5f1XKpnLVxnJdYRy7zLx9hyLbtMi7sBeVBm22dTOxat89aI0bwI3pd9lgnTkm1MZb4+U
	RCUQ==
X-Gm-Message-State: AIkVDXJXC6vvgtWEFIrzjXybqGPddlZ+EZo1071nVo6C2pnXglBUgplwSn4nBUhb+NqsvAm5
X-Received: by 10.107.132.232 with SMTP id o101mr9474466ioi.4.1486111588803;
	Fri, 03 Feb 2017 00:46:28 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8E712.dip0.t-ipconnect.de.
	[93.232.231.18])
	by smtp.gmail.com with ESMTPSA id r85sm635758itc.13.2017.02.03.00.46.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 03 Feb 2017 00:46:27 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  3 Feb 2017 09:46:08 +0100
Message-Id: <cf86d7d1cad373109e558e8780ebd864b57bd9d4.1486111542.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
References: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
Subject: [meta-security][PATCH v2 3/9] trousers: tcsd.conf must be owned tss:tss
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
X-List-Received-Date: Fri, 03 Feb 2017 08:46:31 -0000

The upstream dist/Makefile.am ensures that /etc/tcsd.conf is owned by
tss:tss, and that must not be changed because otherwise tcsd refuses
to start.

In addition, tss group and user should be added as special system
group resp. user, because they are not normal users.  This also avoids
the host-user-contaminated QA warning because the "tss" user will
typically not get assigned a UID from the same range as the host user
that is used for building.

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 recipes-tpm/trousers/trousers_git.bb | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/recipes-tpm/trousers/trousers_git.bb b/recipes-tpm/trousers/trousers_git.bb
index 5737de3..6671808 100644
--- a/recipes-tpm/trousers/trousers_git.bb
+++ b/recipes-tpm/trousers/trousers_git.bb
@@ -39,7 +39,6 @@ do_install_append() {
         install -m 0644 ${WORKDIR}/tcsd.service ${D}${systemd_unitdir}/system/
         sed -i -e 's#@SBINDIR@#${sbindir}#g' ${D}${systemd_unitdir}/system/tcsd.service
     fi        
-    chown -R root:root ${D}${sysconfdir}/tcsd.conf
 }
 
 CONFFILES_${PN} += "${sysconfig}/tcsd.conf"
@@ -107,8 +106,8 @@ INITSCRIPT_NAME = "trousers"
 INITSCRIPT_PARAMS = "start 99 2 3 4 5 . stop 19 0 1 6 ."
 
 USERADD_PACKAGES = "${PN}"
-GROUPADD_PARAM_${PN} = "tss"
-USERADD_PARAM_${PN} = "-M -d /var/lib/tpm -s /bin/false -g tss tss"
+GROUPADD_PARAM_${PN} = "--system tss"
+USERADD_PARAM_${PN} = "--system -M -d /var/lib/tpm -s /bin/false -g tss tss"
 
 SYSTEMD_PACKAGES = "${PN}"
 SYSTEMD_SERVICE_${PN} = "tcsd.service"
-- 
git-series 0.9.1

