Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F3CDE00D42; Mon, 14 Jan 2019 06:42:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17834E00D24
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:26 -0800 (PST)
Received: by mail-wr1-f68.google.com with SMTP id s12so23151000wrt.4
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=yUR8GyxQL6RTVtPwAeExfFzRo8Umwtq3osochOAnwaw=;
	b=a1tr/lvLbfiskR5V44QqggjNa7GHf9RsTSGHi+BDVsyzQzN9WOHy2Lv/POHQH/Y1yA
	gMUuGrRsht9oUZi+8fnrBZs8FyNWbq0lXxQiQyReMbNnZU/H/wE7lF14FZhCvVaNgph9
	6GM2RXQIQN0DmQVFzyhm1HF0AWM0iP0E7l69rd/oQEo/GH0tw2AyPt4cpAraSVJyU36v
	PKEYLlVnjQtoqOptvRkDS9r6D54/gamHhvSfnqHd/B1S0w44cpwel9ASKn8s+zCYOYMY
	giaDSKb1UIMS0M0yZ7Cwj7qNp4M8AYZah7KJFMvgCvxRWmNwZ0fKAQG+5xLaym/ULtF9
	ihTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=yUR8GyxQL6RTVtPwAeExfFzRo8Umwtq3osochOAnwaw=;
	b=Vqu6253vC+7BurZEZjD3pEF/CcDU3/9DS3UeiiO/gh/KRuJ+/KMiudB0xAwPlL0BWs
	ZpGMgXa6G8/rXEPu0KGOB7Oy/4IvwXzkGYyshkj6+cHORuyQKWwGrFUu6ZgnxpOMY6Uo
	PzlBjVM+vhNO5h0Fb0dOiiJbAjaONwV3F2JvZftdC7BZQt65TN2no4zS16awXMRyXKBZ
	iX3HdwCB/B7xIF/MG4mAWLG3Cgbup1duJA/Lg5968Z1gQoKiHzfAE3mNeHDVeqU80pSS
	BVBBg0XENXUd7gO0yBGB6a/mp/jeMF4mP9AWr+QnlnZ4LNhuzUTygM5QRhEDsf0dkT7m
	jovA==
X-Gm-Message-State: AJcUuke8ulkI2YosUT4nrNIxkIUZsu6TXC6q2QzxXdwJeDPcIi2ayU7q
	8EnXLyDxXagekBshy3Ps8aN9fEtqR+0=
X-Google-Smtp-Source: ALg8bN7GKr7+e68CD4Etxr+bZ3b50SjaLyGjk2YbToHf96BpznPfkrG/UakayKXTdJsCcaQkaaUrqA==
X-Received: by 2002:adf:9382:: with SMTP id 2mr24040017wrp.269.1547476945815; 
	Mon, 14 Jan 2019 06:42:25 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	s3sm22517084wmj.23.2019.01.14.06.42.24 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Jan 2019 06:42:25 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Jan 2019 14:42:07 +0000
Message-Id: <20190114144208.14353-10-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190114144208.14353-1-ross.burton@intel.com>
References: <20190114144208.14353-1-ross.burton@intel.com>
Subject: [meta-security][PATCH 10/11] apparmor: if Perl is disabled remove perl-using scripts
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
X-List-Received-Date: Mon, 14 Jan 2019 14:42:31 -0000

aa-notify uses the Perl bindings, so isn't usable when perl is disabled.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-security/AppArmor/apparmor_2.12.bb | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-security/AppArmor/apparmor_2.12.bb b/recipes-security/AppArmor/apparmor_2.12.bb
index 92602f3..ac03a56 100644
--- a/recipes-security/AppArmor/apparmor_2.12.bb
+++ b/recipes-security/AppArmor/apparmor_2.12.bb
@@ -86,6 +86,11 @@ do_install () {
 	oe_runmake -C ${B}/parser DESTDIR="${D}" install
 	oe_runmake -C ${B}/profiles DESTDIR="${D}" install
 
+	# If perl is disabled this script won't be any good
+	if ! ${@bb.utils.contains('PACKAGECONFIG','perl','true','false', d)}; then
+		rm -f ${D}${sbindir}/aa-notify
+	fi
+
 	if test -z "${HTTPD}" ; then
 		oe_runmake -C ${B}/changehat/mod_apparmor DESTDIR="${D}" install
 	fi
-- 
2.11.0


