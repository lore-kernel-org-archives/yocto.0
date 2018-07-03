Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09FE4E013C2; Tue,  3 Jul 2018 15:29:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95149E00D20
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2018 15:29:48 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id y8-v6so1654223pfm.10
	for <yocto@yoctoproject.org>; Tue, 03 Jul 2018 15:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=sXhvXdKXdmi3+xx+tukziXehOfNcIE35hddnIXvn0KA=;
	b=NTB2D5EPv1okB95pOJW8BSlgRpgz2zxV+HHf3pZA093oYNOyjw8WYOIlcWQOPMUIfM
	D2tTU4ELph/tBEKvSqqmkaH89nbFofuCRsQ8atysK+bUpi0rAVn8QfHO7XqW56Dj6v9x
	rvZAROXocuDLepDfgzoykqMww7VZuTO7ylrqLxk2RSBmfuaVfkBM9afuzNxTwCRoFbCD
	uap1g/KqrjxEXtqY641VVxK3OhW9PRWB6qPf5uuvubtu4oUW7zvdhf/u/08y0kGS6KXa
	TN5DId981mx8tgb/5JzQsz/IrsisNgjc41+R00dxS/qGo/gDwmq0iASw0Nn+V9xiqhLL
	Y2EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=sXhvXdKXdmi3+xx+tukziXehOfNcIE35hddnIXvn0KA=;
	b=ofhzJO2uWc0s3DH8fJ+SUny7l4ygFysp+noP4l8jCsQK5cubXdA2vB1rffIlgO/ZO7
	o0c4KTBcNbkrCBIpZZgWU3xwuuDMomHkMSI9v0z4YGZc6RaJp7iYdIsou31h8V8VbJkm
	lY4Ov1hlUdRmCfNwuwDxqiKDzq+j1vnWuiapiLcF8lV1KWa/2t/YuZCfjyGXQRA8ekRL
	ubQ2KCDS5PNg+dHnh3Sak3X3nuGBF1ZAbqmSTDfdIQm6ww7u9ahWJUogo9BZZQKMUcmk
	XAERxQPmn5A4GP0TyjNRnFT1MlS3igQ5NqRwDAYoUzhWq0vewIYEMGHT5mei9ldl2mTO
	rpZw==
X-Gm-Message-State: APt69E1onhpcFYui5tPXfA9+B2Jnapen8uF9jP1Mq8qGUqLXTZpEtwKJ
	X63Kg/tWZmqn6+vsQkknQa8=
X-Google-Smtp-Source: ADUXVKKHlyYTo6VExGgKdiXw5Ug9el7LOjT/pikXICgrEOy9yg/2HxA0QoXgCFtcZbbaOLriH3U7hQ==
X-Received: by 2002:a65:61c7:: with SMTP id
	j7-v6mr27728872pgv.358.1530656988103; 
	Tue, 03 Jul 2018 15:29:48 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4000:1184:5de9:b95:d152:7b55])
	by smtp.gmail.com with ESMTPSA id
	l15-v6sm4490975pgr.45.2018.07.03.15.29.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 03 Jul 2018 15:29:47 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Tue,  3 Jul 2018 15:29:45 -0700
Message-Id: <1530656986-24071-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/2] suricata: update postinit
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
X-List-Received-Date: Tue, 03 Jul 2018 22:29:49 -0000

[log_check] WARNING: Intentionally failing postinstall scriptlets of ['suricata', 'clamav'] to defer them to first boot is deprecated. Please place them into pkg_postinst_ontarget_${PN} ()

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/suricata/suricata_4.0.0.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/suricata/suricata_4.0.0.bb b/recipes-security/suricata/suricata_4.0.0.bb
index 82d134b..e163486 100644
--- a/recipes-security/suricata/suricata_4.0.0.bb
+++ b/recipes-security/suricata/suricata_4.0.0.bb
@@ -46,8 +46,8 @@ do_install_append () {
     install -m 0644 ${WORKDIR}/volatiles.03_suricata  ${D}${sysconfdir}/default/volatiles/volatiles.03_suricata
 }
 
-pkg_postinst_${PN} () {
-if [ -z "$D" ] && [ -e /etc/init.d/populate-volatile.sh ] ; then
+pkg_postinst_ontarget_${PN} () {
+if [ -e /etc/init.d/populate-volatile.sh ] ; then
     ${sysconfdir}/init.d/populate-volatile.sh update
 fi
     ${bindir}/suricata -c ${sysconfdir}/suricata.yaml -i eth0 
-- 
2.7.4


