Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACC1BE00DFC; Mon, 22 Aug 2016 06:06:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f68.google.com (mail-pa0-f68.google.com
	[209.85.220.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 540D9E00DD3
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 06:06:33 -0700 (PDT)
Received: by mail-pa0-f68.google.com with SMTP id vy10so8073274pac.0
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 06:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=DL3JMONRihg8JHINFQoFNdLcddxZoDh/HmFdSVTMZx4=;
	b=LeNhqwtmQF78X39anJ8cudu2ovBtK8EWkM7ghhmNivZmsNpyH3cz0ihyW4XSjA1N+j
	RlP3KNP7dcxtSlCwDhhMx0AxFPlJgmLl9jFcj5HGcK8L9i4Mh2Y8IYUzWcaDKkCyIAMo
	EKTpEPZ2TrEf6sGFlszMDY0TPrLx6QcFELJQF4YJYaNtulqGz5L1Jd7y7dhmcOaieg/D
	c86sm5eEOfLcZm2nx7UIwghaTyieN2rXovwfMzlZU6OM1GZrZ8RJoCF8UjzXqO8ty1d4
	rwmoO8HE9jztXZEH3mitWfcBjVsi6S4mqQFQovU444D9cY2svSTFujoczcoFzVPJzXKj
	UyRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=DL3JMONRihg8JHINFQoFNdLcddxZoDh/HmFdSVTMZx4=;
	b=Tna3H1FiUNZftjgkNSHoxGJjJchXOLSmZZO2ZAfI8q5YVFBVn0tYbiwa+AvGrGYmJa
	b6YEkdTmSiW6Yw0eHf/FmoDAZdlFg6w3KWGN0oeeE8fiIce23PTtjeoNy31B5ZmU/R9s
	vcsmiv/Ga2wpg+fr/XRnDSDvP/tydvCJS9RTfqOXosGR5fxqA4jhi9B6U+2WFVzTogVL
	y7iJhBgYJ74Spy1C27IGSoysorIDGeBidecsgJoAbIK8VEaaagfCvKmJZJoz05BW5R0V
	Z4oCgXULS3ipUlLo6u+yUqDz+eL5XPN0G/orlb0YQHttNqfnT6kUhT7Vwe0PYEdgtcbN
	BMiw==
X-Gm-Message-State: AEkooutl7DyBsJ4OWi0Pf/jbwrIZj30EpXw3QBqIuT+SZMo7uDP3SlRlyHQ+64wIxqCjcQ==
X-Received: by 10.66.138.74 with SMTP id qo10mr41825463pab.135.1471871192568; 
	Mon, 22 Aug 2016 06:06:32 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	q1sm27262871pfd.48.2016.08.22.06.06.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 22 Aug 2016 06:06:31 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 22 Aug 2016 18:36:20 +0530
Message-Id: <1471871180-28072-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 1/5] selinux-initsh.inc: add systemd support
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
X-List-Received-Date: Mon, 22 Aug 2016 13:06:34 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

add support for systemd service file and handling of script required by
systemd service file.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 recipes-security/selinux/selinux-initsh.inc | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/recipes-security/selinux/selinux-initsh.inc b/recipes-security/selinux/selinux-initsh.inc
index f7348bb..bcdd449 100644
--- a/recipes-security/selinux/selinux-initsh.inc
+++ b/recipes-security/selinux/selinux-initsh.inc
@@ -13,11 +13,21 @@ CONFFILES_${PN} += "${sysconfdir}/init.d/${SELINUX_SCRIPT_DST}"
 
 PACKAGE_ARCH ?= "${MACHINE_ARCH}"
 
-inherit update-rc.d
+inherit update-rc.d systemd
+
+SYSTEMD_SERVICE_${PN} = "${SELINUX_SCRIPT_SRC}.service"
 
 do_install () {
 	install -d ${D}${sysconfdir}/init.d/
 	install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh ${D}${sysconfdir}/init.d/${SELINUX_SCRIPT_DST}
+
+	install -d ${D}${systemd_unitdir}/system
+	install -m 0644 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.service ${D}${systemd_unitdir}/system
+
+	if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
+		install -d ${D}${bindir}
+		install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh ${D}${bindir}
+	fi
 }
 
 sysroot_stage_all_append () {
-- 
1.9.1


