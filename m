Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B5F2E00C49; Tue, 20 Sep 2016 07:28:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.67 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F537E00BCE
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 07:27:57 -0700 (PDT)
Received: by mail-pa0-f67.google.com with SMTP id hi10so1001036pac.2
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 07:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=6b+cVMTGhWvJvfgaMs/WUsPP4t0D+4CdY9V03W+Yrzo=;
	b=kEVuLhYMn8d/xf04Jvg4SjyhQfEuj+WQxJ+DL719wmDt9txf1+Q6k/OZ1SfGkOtF/s
	fIOx5tu5l4bipWssx93GYGChZlJjc3W7oodoyXvGG3VjSZi4LqwZW/CI8LhXe9oCDdFZ
	y/hIxJE4Khdl4GDQRMXZzi1vZFbMOlz/8w+mnjEFdrAXwo58TO4YbFZNyX25po3pAv9I
	saaWfV87clb7hTWlD8GK/ofX435dRdupNr4VXizcz0ai84sCLrQb3f7biB5IBmjEaw98
	sfyXRQu5dTfPIlAOSl/ZfBzROhbdoIu1FVxD851ZZ13eeieJHSdgz5l62w5JfjPdJeMY
	3vQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=6b+cVMTGhWvJvfgaMs/WUsPP4t0D+4CdY9V03W+Yrzo=;
	b=VACt0BU4DcBcU0zGu7CsN02Fx5RhATFEPgOObwNotzYLXM2J7SJQktzOcqRQzlwtbA
	RXAqwzDvCOyPffKJmQJun0y9esiq7IRAhibpJz9lgZV30cQsoZIZspJs+r2HJNTfzomf
	H1xgRKez92sdUYk8Dsjk472kBSSOsq3F4G84Fe+im2+7SzUO3Xl4Ok5FSgDdXzZ4HFyB
	mXterFLaUN8iVveKkQDGbbSWXv1FWfe5Vq9DLtgKo+TUCq8dVOccn+RepqjMEyS9Cq5h
	UwG+Klw2yW4IHemtQuR1Qq7QBWoS/4xXONZQ9NDt/F72hwvrS/iIk2pwdf/vpLugxLF3
	f39w==
X-Gm-Message-State: AE9vXwNUyVGWZFWFhqzG5gLM4B4BJGRbNmuLkdtH0UcwxiwyaOWis0kcG2fWfOL6a7jeRQ==
X-Received: by 10.66.10.102 with SMTP id h6mr56119701pab.112.1474381676522;
	Tue, 20 Sep 2016 07:27:56 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id v6sm79831676pfv.8.2016.09.20.07.27.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 20 Sep 2016 07:27:55 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 20 Sep 2016 19:57:45 +0530
Message-Id: <1474381665-20728-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 1/3] selinux-initsh.inc: selinux-init/autorelabel: add force reboot
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
X-List-Received-Date: Tue, 20 Sep 2016 14:28:09 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

Add force reboot during SELinux init and autorelabel, required for smooth
auto-reboot functionality with sysvinit as init manager.

It is required only for sysvinit, so restricting only for sysvinit and not
for systemd.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 recipes-security/selinux/selinux-initsh.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/selinux/selinux-initsh.inc b/recipes-security/selinux/selinux-initsh.inc
index bcdd449..dbbb4f8 100644
--- a/recipes-security/selinux/selinux-initsh.inc
+++ b/recipes-security/selinux/selinux-initsh.inc
@@ -21,6 +21,8 @@ do_install () {
 	install -d ${D}${sysconfdir}/init.d/
 	install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh ${D}${sysconfdir}/init.d/${SELINUX_SCRIPT_DST}
 
+	sed -i 's#/sbin/reboot#/sbin/reboot -f#g' ${D}${sysconfdir}/init.d/${SELINUX_SCRIPT_DST}
+
 	install -d ${D}${systemd_unitdir}/system
 	install -m 0644 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.service ${D}${systemd_unitdir}/system
 
-- 
1.9.1


