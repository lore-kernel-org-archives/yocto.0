Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72201E00D5F; Sat,  7 May 2016 07:15:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 093DFE00C8B
	for <yocto@yoctoproject.org>; Sat,  7 May 2016 07:15:24 -0700 (PDT)
Received: by mail-pa0-f68.google.com with SMTP id yl2so12336909pac.1
	for <yocto@yoctoproject.org>; Sat, 07 May 2016 07:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=xoFtVmre/Xih2G76Qlzhfy1qq+k7zlRe7slmOBrGDOM=;
	b=RyKJm+JqXVeWCsy0RV8P1AUev/1TtxeVwhvQv/KiP2W7Ax3hUknj6fzdgQcjUE12eF
	uoYoXR+iMGTuz1He7QElGImDOcTTFM4YqSgG/syHcwQ6dEilyEfa60pUFBtMUw5TwUPM
	E3u8by0bLAHqSsYaxivSdm/wvd8c97UFPNH2i5PDW8EH7Tdh8GK5vP9c3qx0laDBFixS
	92R2Vgyn72MVLkSKwd/FhnY3VmdUIrxlO7D3gUBPhW0dhVMHy5xJjiu4oVvHlJAipQt6
	j4pQ9w8dHaARjmtONYsTuAiAIT6vdw9De2cWUkNvZqKcpjJV2Qjr6cw8lFoBRSQGuh0F
	rRpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=xoFtVmre/Xih2G76Qlzhfy1qq+k7zlRe7slmOBrGDOM=;
	b=PqLJ4APN+qj6BXP8e0Iq6Trvm3DririQC2RrEsjKXsGjkeEoV4bvbdZ2FZxlfzkToS
	KjtMuPG+z5gsxiYABwoLRUGNjgd3AibyrG0umi5Hc6tb0kOsxOgOp3KDjkJf77EMd4gj
	CPfAGNDcfyFb3SIaNvZNxtQhE9DlpMyFcvMP8OVD6kHTwIJwpwtrgS2uIOc0IpXC5CW5
	yaxGe9m6OLDuNgEC31G3T+hpWk5TvuXBXXPzfhswiLae9W+yxh5AO4wCmBl1FB9MRdEQ
	DxvwgVFJm58gEqj2m4c66ZaPevcUfFJMV1mRhss4TkaATNnx9FieEcpJd/OWcVSbOB5Q
	4Eaw==
X-Gm-Message-State: AOPr4FXnbj9cShSt5+5lpUItM9Ia5XQYaf5OqOTZ5HUnDJwO9qrXECNOyBQpQ7Bek+PT2A==
X-Received: by 10.66.79.197 with SMTP id l5mr36715190pax.61.1462630523752;
	Sat, 07 May 2016 07:15:23 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	y66sm28585654pfy.66.2016.05.07.07.15.21 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 07 May 2016 07:15:22 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  7 May 2016 07:15:18 -0700
Message-Id: <1462630518-1636-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
In-Reply-To: <1462630518-1636-1-git-send-email-akuster808@gmail.com>
References: <1462630518-1636-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/3] clamav: Fix new QA warning
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
X-List-Received-Date: Sat, 07 May 2016 14:15:26 -0000

NOTE:meta-security/recipes-security/clamav/clamav_0.99.1.bb: base_contains is deprecated, please use bb.utils.contains instead.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.99.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/clamav/clamav_0.99.1.bb b/recipes-security/clamav/clamav_0.99.1.bb
index edccc78..461015f 100644
--- a/recipes-security/clamav/clamav_0.99.1.bb
+++ b/recipes-security/clamav/clamav_0.99.1.bb
@@ -30,7 +30,7 @@ GID = "clamav"
 
 PACKAGECONFIG ?= "ncurses openssl bz2 zlib "
 PACKAGECONFIG += " ${@bb.utils.contains("DISTRO_FEATURES", "ipv6", "ipv6", "", d)}"
-PACKAGECONFIG += "${@base_contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
+PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
 PACKAGECONFIG[pcre] = "--with-pcre=${STAGING_LIBDIR},  --without-pcre, libpcre"
 PACKAGECONFIG[xml] = "--with-xml=${STAGING_LIBDIR}/.., --with-xml=no, libxml2,"
 PACKAGECONFIG[json] = "--with-libjson=${STAGING_LIBDIR}, --without-libjson, json,"
-- 
2.3.5


