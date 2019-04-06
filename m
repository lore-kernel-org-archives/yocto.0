Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66B70E00D15; Sat,  6 Apr 2019 16:37:16 -0700 (PDT)
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
	*      [209.85.210.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
	[209.85.210.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 481DBE00C45
	for <yocto@yoctoproject.org>; Sat,  6 Apr 2019 16:37:15 -0700 (PDT)
Received: by mail-pf1-f171.google.com with SMTP id 10so5374468pfo.5
	for <yocto@yoctoproject.org>; Sat, 06 Apr 2019 16:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=Wngk0St6PBDriwO9973W7241XtcxMfiEWIkBbe57C9M=;
	b=LsaAhnCdW2mCwgMD7nz5mM6q7BdCkJb6GGqmjgdSOZvbThJgQENeR3skFnJ4bjsI2t
	7coWzGt9UWCBdtA4lRZP8NKUN0uM8JCutejNUXTR9WB7LRz4HhoVo4Drw/md4IKE/jPc
	JI2mq5MVNOtZxHz0K7dNNcEhJeo/tK+LCxPFz5WL2FGVIGHFJ14AHldJBKekPF1I3qeG
	q2Zmw+NxNnmE0V5FlVO2oRuhX3d9kbsE3sJ3aMSMSfxkRH28wL9B3SnsqWq8LQC5m91d
	0wHw7qJDpunQo3kT6dbksscga7jcsFy8xu+O4vM1PEvb7cMxOZTnSJBa4RtBxkGpdiYs
	t74A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=Wngk0St6PBDriwO9973W7241XtcxMfiEWIkBbe57C9M=;
	b=G70qrqjyRVu2JAEfPcGAzCd8ZUyPZdemD01xo+kIULSvisPVRGn0O0ShBop1Gs9dne
	tnngkpq14gSGSF9f6vAbYwmBy1f420VC51CA5WL/45/AqZI5THxxXca8i+cpyzkLFcJ5
	ziMg7c86J/ra572nEsej5YRTM3nvZMe4z9GV4HTaknd3PD0M5512mUBiWxMAFcDs2Jc4
	doggNKGB3dIRGzbKrK9S7guIbPCktupG5KQ0xAfcRywwQNlpscnaJPsII4E9TMq/nwTE
	/Ws8EV5nU9aowgiuvBP3lDsjhPuqaVsomg1sLwsojhTXOUCDSwnbGy1FBzZRIM4OR6fs
	wIlg==
X-Gm-Message-State: APjAAAVa4LpBOctvQqVdLIR79aLhGLbhoJ75CZrG8G2pjRDXKs1W4nWo
	qRzTdBVXyAB0Kq10pnrbnVQJ9vKq5YA=
X-Google-Smtp-Source: APXvYqz4I7YArX1F2PejMA+wObgTOi/hRY09EZbEGXUJqufuhTcWlFbMRk/stLSz8j+er3GHK+I8nw==
X-Received: by 2002:a62:f20e:: with SMTP id m14mr21380700pfh.228.1554593834220;
	Sat, 06 Apr 2019 16:37:14 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	n82sm41825487pfi.63.2019.04.06.16.37.12 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 06 Apr 2019 16:37:13 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  6 Apr 2019 16:37:10 -0700
Message-Id: <20190406233711.8234-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/2] clamav: fix llvm reference version
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
X-List-Received-Date: Sat, 06 Apr 2019 23:37:16 -0000

llvm8.0 does not exist. dropped the version part.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.99.4.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/clamav/clamav_0.99.4.bb b/recipes-security/clamav/clamav_0.99.4.bb
index 9fee831..2067f2d 100644
--- a/recipes-security/clamav/clamav_0.99.4.bb
+++ b/recipes-security/clamav/clamav_0.99.4.bb
@@ -37,7 +37,7 @@ PACKAGECONFIG ?= "ncurses openssl bz2 zlib llvm"
 PACKAGECONFIG += " ${@bb.utils.contains("DISTRO_FEATURES", "ipv6", "ipv6", "", d)}"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
 
-PACKAGECONFIG[llvm] = "--with-system-llvm --with-llvm-linking=dynamic --disable-llvm, ,llvm8.0"
+PACKAGECONFIG[llvm] = "--with-system-llvm --with-llvm-linking=dynamic --disable-llvm, ,llvm"
 
 PACKAGECONFIG[pcre] = "--with-pcre=${STAGING_LIBDIR},  --without-pcre, libpcre"
 PACKAGECONFIG[xml] = "--with-xml=${STAGING_LIBDIR}/.., --with-xml=no, libxml2,"
-- 
2.17.1


