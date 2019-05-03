Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F1E8E00D4A; Thu,  2 May 2019 18:32:49 -0700 (PDT)
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
	*      [209.85.214.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
	[209.85.214.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B618E00754
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 18:32:48 -0700 (PDT)
Received: by mail-pl1-f195.google.com with SMTP id e92so1881981plb.6
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 18:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=V0AEVmQO41j3KXi1mtFFAV75UeN9nBCrfghfoUn9qek=;
	b=j1mBayjwJbMj9HkH3nvQ6UUUaegEx0ZR2JaLm2SDX/cNBEM+9FDP289e3EpwwZk8Q+
	QPveAgeHo/jMFXAaM87LfcefmqbJwzQCExHMOpGk9p2F8K0QoTuOKfyheXu7EJ3+shFv
	qIQyM6xSGvWkhlrW1V4qo1R/cExaO4DO6Zes4Y0f3bHv9OkPYzuFTm6CVRYQQwflZmxh
	pbUhsMZ1J1hzyKEzn8P18E5sBdsH2wvW6iuXj0PbC3pmG3knsgfhsrMt7opLpkrGckYD
	r+j42UDIqFNrmZ8/9T5EGHlPaK/jJUVTF4QSVVO1MXlL0bg0XyZiGEgsVCNINeMNSud3
	PajA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=V0AEVmQO41j3KXi1mtFFAV75UeN9nBCrfghfoUn9qek=;
	b=fwYUWKPVBygeNg09st+fKsasf4ZlcKZxii2NVIk7RVXGAlyKYjE6u9gcKE8DeP+I2X
	smowbZYLKMhFtJku/aYRpgNRNTVxc0ESVyt2vujksYbkYo/QhrZzj3WawfUnjOXXLTCc
	kecEEPMVRDh7yH2423mCNcTay35MjdwtgcQD7bFP3QNlIlayu25441mfQkPs4v5pdx1n
	Y7YDXbThKNAuGE9cbh1AUGOpXwQeO6B4fxbQS3RG+ypmTkxOcQkSWoZWdF4ETom0lU9p
	mLnWZkBD3Ez8yKTKQwYymeQEr+QkhsRU7QVjATd6fnADFhXyfwEiurHP+gAeyc1A06oR
	R1EQ==
X-Gm-Message-State: APjAAAXklg4g7cO6XKjKwFsS3jsfNeo2zAQDjnbAAsS39uU0uiHRI0k1
	X8WzBV/Cmd56jCCmUTE8jvr33FoM
X-Google-Smtp-Source: APXvYqzXrFTIwXMyvYWh8/yeic7u79AwBCB4e3VmZoIpoh6LlTcNmsju4BlqfnVDVYlrAwlup9JeRg==
X-Received: by 2002:a17:902:bd88:: with SMTP id
	q8mr7150091pls.287.1556847168045; 
	Thu, 02 May 2019 18:32:48 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4180:c33:7403:feaf:ea56:abf7])
	by smtp.gmail.com with ESMTPSA id b13sm521699pfd.12.2019.05.02.18.32.47
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 02 May 2019 18:32:47 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  2 May 2019 18:32:44 -0700
Message-Id: <1556847166-24262-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-cgl][PATCH 1/3] cluster: fix SRC_URI and depends
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
X-List-Received-Date: Fri, 03 May 2019 01:32:49 -0000

corosync 1.x have removed from meta-cgl, and use corosync under meta-networking.

corosync 2.x can replace corosync 1.x + openais (in meta-cgl),
so remove depend on openais

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
index 1c6e353..34076d3 100644
--- a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
+++ b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "Red Hat Cluster"
 SECTION = "libs"
 HOMEPAGE = "https://fedorahosted.org/cluster/wiki/HomePage"
 
-SRC_URI = "https://fedorahosted.org/releases/c/l/cluster/${BP}.tar.xz \
+SRC_URI = "https://releases.pagure.org/linux-cluster/cluster/${BP}.tar.xz \
            file://0001-Fix-the-kernel-source-patch.patch"
 
 
@@ -15,7 +15,7 @@ LIC_FILES_CHKSUM = "file://doc/README.licence;md5=ee8ae43af5ea09f12ca7f7a649764c
 
 PR = "r1"
 
-DEPENDS = "corosync dbus openldap openais libxml2 ncurses perl zlib"
+DEPENDS = "corosync dbus openldap libxml2 ncurses perl zlib"
 
 FILES_${PN} += "/lib/udev/rules.d/51-dlm.rules \
     ${localstatedir}/run "
-- 
2.7.4


