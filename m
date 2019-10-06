Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 456E2E00ADD; Sun,  6 Oct 2019 08:40:46 -0700 (PDT)
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
	*      [209.85.210.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
	[209.85.210.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45B92E008C8
	for <yocto@yoctoproject.org>; Sun,  6 Oct 2019 08:40:42 -0700 (PDT)
Received: by mail-pf1-f178.google.com with SMTP id v4so7026803pff.6
	for <yocto@yoctoproject.org>; Sun, 06 Oct 2019 08:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=DHCog4Duf/25opNM5dxqJOx4CXRi5cvBKT17FUemR80=;
	b=qOm+q8jve75lGKgUG/Nn2hNY1Y7/E9PxC2UEvQ4UDmp0wz2ryXSrenlEF+YaxNpF7j
	W2tq1OFuvT6IHlpeQfWVp3JScXd1mWOcWoFQH9N0T8OIB5jq8VdtZ0BytIEDhhsiS+GA
	4/TZwxTk8qTVvvqWmPAYAt0+K9WbJSvQG+sEMM6JxZYnB3+kTvZH+kowqwlXtnmgHxrG
	mRYC2/NWEkUHv5FR8euizVOM/NUQXMIZZoMzBbMcMTPYP3yjZi9dcBAymELE6c8zx9b5
	GVW7zew/vgGyweKeCahVMtpclPW/xUnDeDfzyoFlW0neqYNwRxJ8wpizS2t991AJYVWc
	b9Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=DHCog4Duf/25opNM5dxqJOx4CXRi5cvBKT17FUemR80=;
	b=sCYDYiKFtqRWoq3YUzJ00ghMvgwHjT5Dd71NvbYoyO7sQmncmut0IYKQ6Svdr3KfKh
	rZvnUH4LlJ/bq00dW7/GnTzOl7VVbma9iu6zWx9mnLQEmHCMuXAE6afktGTtfsu64v+C
	dHpXnziHGrt/1EoB9y3/+h9I5KB3f5UVSWinR5ZHJQs0hGtYANmoQFxQU7nZdkpymGj8
	oUtCdgCRjD2FkDNSA5IJAA5Z6wUwaJ3BD5KB9YJiG4t/ZjUFtXo6AxCux8Fl2sKs26ts
	1kvhhieqVBuxonvZxQHrt9fDIeOXdtCWno7hjQNZq7UCD5XQWikw5qhTHDVzsOQCmdGV
	qOYw==
X-Gm-Message-State: APjAAAUWt9A87vme9zfQwkdbx7ttI4no5f3LpjOXoK/3t/vYbUTChyYv
	mB/aM2syLyYk/AihsN9SyD3Cm/lV9nA=
X-Google-Smtp-Source: APXvYqz82l+RZjGxfGp7wfdtVVw0XmT4mnfayZMy2i/rCSJCcXTtPi6EpztkaYgz408rFEU0iWhuXg==
X-Received: by 2002:a17:90b:957:: with SMTP id
	dw23mr29033702pjb.32.1570376441926; 
	Sun, 06 Oct 2019 08:40:41 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:a5c0:65e8:7322:d189:1d85])
	by smtp.gmail.com with ESMTPSA id
	e4sm12226543pff.22.2019.10.06.08.40.41 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 06 Oct 2019 08:40:41 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  6 Oct 2019 08:40:36 -0700
Message-Id: <71bc73ae48188ee52a40b4f69044f1fd281b4d72.1570376186.git.akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1570376186.git.akuster808@gmail.com>
References: <cover.1570376186.git.akuster808@gmail.com>
Subject: [warrior 2/3] conf/poky: add debian-10 to the supported distribution list
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
X-List-Received-Date: Sun, 06 Oct 2019 15:40:46 -0000

From: Ross Burton <ross.burton@intel.com>

Debian 10 is the new stable release and is being tested on the autobuilder, so
add this to the supported distribution list.

[ YOCTO #13432 ]

Signed-off-by: Ross Burton <ross.burton@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 87759b3..f2df2c1 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -59,6 +59,7 @@ SANITY_TESTED_DISTROS ?= " \
             centos-7 \n \
             debian-8 \n \
             debian-9 \n \
+            debian-10 \n \
             opensuse-42.3 \n \
             "
 #
-- 
2.7.4


