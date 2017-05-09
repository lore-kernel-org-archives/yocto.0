Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8852DE00ACD; Tue,  9 May 2017 07:31:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.181 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C4A8E00A48
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 07:31:51 -0700 (PDT)
Received: by mail-qk0-f181.google.com with SMTP id k74so2355014qke.1
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 07:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=cohb42dKUzIGt0h/2uTbhvbRThksO+gtQo6hM17qmxI=;
	b=cpZF6oeRDpENWO8/EU8rnHj/+xja1sQXCqREOSe7+S/keDGfTme9bxzYz3Kf36g3wJ
	DwS5FJ8wSTxEg+7zsArCXviNbYShs3134hx3TACRHJZeWjB87YaE/rhaYe80eZFIeK0t
	yLnTHM/Drs7fMEra8Hhbty/9xVGEe+Hd14ldhq/JNueFco84sSJgvLWocxkfj+54lycq
	8b0TzEvU6tD/rCsyeUGQoY38umqfpkOBw4y7J0tNBqTk7BffGmNkN9436YKnig+5iCMr
	LZNlHWk2TvebKCgZDxyaIe7ASSVZxCUNpCVvMqwFCyuIVZQgO7WO4B9aZfM08EF9nauZ
	nyvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=cohb42dKUzIGt0h/2uTbhvbRThksO+gtQo6hM17qmxI=;
	b=BOHgHbvLD+/23sinoTy5q2v3fnrFDZ9qcJmpbyHwIngXKG5USro4RL8y656JMwMA0p
	vipkJoVx/b6zxqHiF44o3f+XJFwT5tFCqFfhuZJK2BJ31Ae2pbBVG1RjSWvR+oPgo3+R
	ky+Qk6zRiDOtlxOwqjY1QxMM+J3M4aMA0ObU28rU7lzHaKXPvsUrk3Q/CpuxjzbsJa1N
	bO0k0gYZUTg5o9iafva+S/QvpR5Rizcliwv3LH3mkyvQSOGn+DeaRYMAwqi9rnIQBpUQ
	y4Jv8FCLKz/LiQ3LabeWnWHnnRIbe+9pCsXGBfF6VyJfZXU99iXpRQW9vRFyztx/6tqj
	1/4Q==
X-Gm-Message-State: AODbwcC57dHHiSeIe8UzWytLGsf3t8AC66NW4vN5vS6Swg6X4rlHrAw+
	unOgahjs4cRnovvo
X-Received: by 10.233.237.70 with SMTP id c67mr466579qkg.54.1494340310839;
	Tue, 09 May 2017 07:31:50 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id z42sm71284qtb.26.2017.05.09.07.31.49
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 09 May 2017 07:31:50 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  9 May 2017 07:31:48 -0700
Message-Id: <1494340308-3816-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] clamav: fix new build error
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
X-List-Received-Date: Tue, 09 May 2017 14:31:55 -0000

configure: error: The installed zlib version may contain a security bug. Please upgrade to 1.2.2 or later: http://www.zlib.net. You can omit this check with --disable-zlib-vcheck but DO NOT REPORT any stability issues then!

bypass check as our zlib is 1.2.11

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.99.2.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/clamav/clamav_0.99.2.bb b/recipes-security/clamav/clamav_0.99.2.bb
index 3e5f36c..c755a64 100644
--- a/recipes-security/clamav/clamav_0.99.2.bb
+++ b/recipes-security/clamav/clamav_0.99.2.bb
@@ -51,7 +51,7 @@ PACKAGECONFIG[json] = "--with-libjson=${STAGING_LIBDIR}, --without-libjson, json
 PACKAGECONFIG[curl] = "--with-libcurl=${STAGING_LIBDIR}, --without-libcurl, curl,"
 PACKAGECONFIG[ipv6] = "--enable-ipv6, --disable-ipv6"
 PACKAGECONFIG[openssl] = "--with-openssl=${STAGING_DIR_HOST}/usr, --without-openssl, openssl, openssl"
-PACKAGECONFIG[zlib] = "--with-zlib=${STAGING_DIR_HOST}/usr, --without-zlib, zlib, "
+PACKAGECONFIG[zlib] = "--with-zlib=${STAGING_DIR_HOST}/usr --disable-zlib-vcheck , --without-zlib, zlib, "
 PACKAGECONFIG[bz2] = "--with-libbz2-prefix=${STAGING_LIBDIR}/.., --without-libbz2-prefix, "
 PACKAGECONFIG[ncurses] = "--with-libncurses-prefix=${STAGING_LIBDIR}/.., --without-libncurses-prefix, ncurses, "
 PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_unitdir}/system/, --without-systemdsystemunitdir, "
-- 
2.7.4


