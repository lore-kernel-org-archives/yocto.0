Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5C3BE00AD5; Sun,  2 Apr 2017 19:20:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 864C0E00A76
	for <yocto@yoctoproject.org>; Sun,  2 Apr 2017 19:20:12 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id 79so26449170pgf.0
	for <yocto@yoctoproject.org>; Sun, 02 Apr 2017 19:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=goeLv0p/9ChADAxZypHJ5BlZVOZIKUVSgFspPIngVgg=;
	b=GJ1muFZgyaB9UTFQMglfj2/sE9eOCKws0zkO3XnBtICux1j1y7r02fUP89v74VJ7FG
	UWorLp9qcK09M7z/Of6SVhvRv1S/hsiqPittx4t89Y73TpQSbaIkOYO/0M+pwpcuKjdd
	sUVPpcmvGrQxYuEyG8PaiicpFnGRtodnzcEfEhfCRRZqEN8c6dbkf5fljCZOAYMh5dUk
	dwih7qXn45yhfQjVTjhP9QwvOVtrlXCuKfq3fVFMNhiaEsWUpx/qtxcZKV1RHZL1N2tE
	tf4odxtTLNg3BfBL81l2fOh2YYgNs7SjNL03pH66hMQtj57Tjh6/5mF1l7UvD7hLjK76
	XqFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=goeLv0p/9ChADAxZypHJ5BlZVOZIKUVSgFspPIngVgg=;
	b=A7k1oQpJHgPMVjIWC4X2mb1TKCk6o5SBUtT+lp+V4RivE2LSmf7ok4mx/6KG8HshGc
	R+CbrLMCtL3ioZ/AV6Z2xsVt8rn1fwykZEZQjdMOpyzjhf+56iHGSwTLZHzD9gHp38jd
	ZSW4eNdXr07u3/AgYWsXVJMknhvP32ky1OkVzeqVSsk46lZz9pN+rd38f0b7JhQVKsXF
	a+rtJ1Sf4po4LF11IlEmReF01t9d/VYYNemj+lfHvbm7FXx3L2LJ0N76b55DW9EpQoIo
	XADrkpZPel2E53OhO6c9cEhbDLdYPfhLw73gFbYvxz/5rqRAXLNKf/tizWY3vdMFKkud
	pQow==
X-Gm-Message-State: AFeK/H3I5erG9nsIJD9jkUPUumkgNJ+ZxI7C21lu7uEhaRx5RWnxTGGfkN2M29oyazeT6Q==
X-Received: by 10.99.99.135 with SMTP id x129mr15287789pgb.121.1491186012436; 
	Sun, 02 Apr 2017 19:20:12 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id
	a77sm22109468pfl.91.2017.04.02.19.20.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 02 Apr 2017 19:20:11 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sun,  2 Apr 2017 19:20:08 -0700
Message-Id: <1491186010-5930-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/3] libseccomp: update to 2.3.2
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
X-List-Received-Date: Mon, 03 Apr 2017 02:20:15 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libseccomp/libseccomp.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-security/libseccomp/libseccomp.bb b/recipes-security/libseccomp/libseccomp.bb
index 97283d4..7b9e0e5 100644
--- a/recipes-security/libseccomp/libseccomp.bb
+++ b/recipes-security/libseccomp/libseccomp.bb
@@ -4,11 +4,11 @@ SECTION = "security"
 LICENSE = "LGPL-2.1"
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=0;endline=1;md5=8eac08d22113880357ceb8e7c37f989f"
 
-SRCREV = "ce5aea6a4ae7523b57ec13e2e6150aa5d83c1b4e"
+SRCREV = "2331d104bc0cbde5f6c54e504a038e52bfe8e12d"
 
-PV = "2.3.1+git${SRCPV}"
+PV = "2.3.2+git${SRCPV}"
 
-SRC_URI = "git://github.com/seccomp/libseccomp.git \
+SRC_URI = "git://github.com/seccomp/libseccomp.git;branch=release-2.3 \
            file://run-ptest \
 "
 
-- 
2.7.4


