Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6964E00D13; Mon, 14 Jan 2019 06:42:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACF80E00CFB
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:21 -0800 (PST)
Received: by mail-wm1-f67.google.com with SMTP id b11so9188547wmj.1
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=oFjcHjMlA2hD2UYVQw5btWMr+05ryhjoOc/3wYlmlgs=;
	b=n9s/xA2YcwKDCrw6BabOKu1lwZNVhx11dDd8v+O7cl464Y9Z/0EY4C9/0XlKlwkoiy
	hoxKY3vz1ZzJTgo9xqVE0VCRLlL03raqvAns2ai5+bRnAS7zJpZTne05/8o4/SfgaMt5
	C5TqDS8t1ApLano5IAe+t+Y4h5vWx4HszHBAC4nr9gMnogYZY+Y9sLrboD3wnq2gOgvl
	rc43Ih9EJpVo1HVTwXXMyTD+DETmiuTIj6nacaKVwNgTzcBJ7FJHxOLwIg0sMX9i8DNx
	AgIjp4L/02RHQHRTJfOLW83w7Z7s2+jDH2q7Duc7NINcXmbE6tKCn1lHYAfHydLZD9mw
	zq2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=oFjcHjMlA2hD2UYVQw5btWMr+05ryhjoOc/3wYlmlgs=;
	b=cRw2wLo1f8p2ly1uAlWm+sSwhSrinlcUF9f9ESg78WPqgDD0aXjrz0TtTu81LUW9oG
	vMp+h9Ufhfq3uHFroJenYKZn63Um/mW2WE6AzbsYqIeqppfeO49Q9eN+3NjvrHUeuRHp
	a/ENZOq/qZa5aS6l8JFZZsc+4HfyX3tSJBd+KPnuBJFGwhUQTaQtJI8jOBx9VnfKzs//
	iSCauHZxEDhUwvCZn8chKEmWfZ/id06Lsm74LbtYYXhug3sgv5+8TmWt6GhS0QJ/UN6U
	sIzmgIrCdO6gyE5cCKXvrN8Cxx7MaBNArlBjx2i2d+p/O6D+iqamkxc7R5aq4O7iB7Jt
	6lrA==
X-Gm-Message-State: AJcUukf2dHmsuplH3dD9IY66tl3jOkpq3zUQyBGqgHBzR2MqLm41Xypr
	pw2mIEakHK9xp2xd60pYJ69DOPtuXA0=
X-Google-Smtp-Source: ALg8bN77Ki0aoYAv5z3bLaxl2M7kIS7W51bm88tID5kN21mllEmleIs1/mg5+XCFalHzWOLGhpr0hA==
X-Received: by 2002:a1c:7306:: with SMTP id d6mr11716986wmb.98.1547476940621; 
	Mon, 14 Jan 2019 06:42:20 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	s3sm22517084wmj.23.2019.01.14.06.42.19 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Jan 2019 06:42:19 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Jan 2019 14:42:02 +0000
Message-Id: <20190114144208.14353-5-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190114144208.14353-1-ross.burton@intel.com>
References: <20190114144208.14353-1-ross.burton@intel.com>
Subject: [meta-security][PATCH 05/11] apparmor: remove redundant S
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
X-List-Received-Date: Mon, 14 Jan 2019 14:42:22 -0000

This is the default value, so remove it.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-security/AppArmor/apparmor_2.12.bb | 2 --
 1 file changed, 2 deletions(-)

diff --git a/recipes-security/AppArmor/apparmor_2.12.bb b/recipes-security/AppArmor/apparmor_2.12.bb
index 303d5c7..6434e42 100644
--- a/recipes-security/AppArmor/apparmor_2.12.bb
+++ b/recipes-security/AppArmor/apparmor_2.12.bb
@@ -32,8 +32,6 @@ PARALLEL_MAKE = ""
 inherit pkgconfig autotools-brokensep update-rc.d python3native perlnative ptest cpan
 inherit ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
 
-S = "${WORKDIR}/apparmor-${PV}"
-
 PACKAGECONFIG ?="man python perl"
 PACKAGECONFIG[man] = "--enable-man-pages, --disable-man-pages"
 PACKAGECONFIG[python] = "--with-python, --without-python, python3 swig-native"
-- 
2.11.0


