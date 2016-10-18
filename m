Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9B01E00D45; Tue, 18 Oct 2016 09:52:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BBD7E00D3D
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 09:52:57 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id 128so15604679pfz.1
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 09:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=yQt2m6Vqpp8dREBfQjjCqmNc0mGYq+7x9kpSxW/xlE4=;
	b=qvaDZRWboIR+VLK9GOZuF6Yi2mBGRRH6zDoy1gCGnMUmHod9eqY/RGGyMrJ8zqWZz5
	kvZO0ubX53Q05h9v7TveQxkmH9d2gnC3q2RdfDUtGEPrfhUhqKJuZkoRF+54HZCAn8QC
	s+Y50VT1D6QvJjz7epTjXB+fpdyKe3U2wQOQgxeIwa/m20jjGWYocY3kdsr+2eeYL4Wk
	adWM4MIAcFW8eo8/+QcTJdSC9J6ZGjPPw5iX49CRrSk9Fo8pJTdixVvh3MElG3Wfnztp
	qrIwlmkNq9TPSb+wvwYhKOlhvJoMKZa0/ANxeEPSonLQVht7SsFzfT4p2OgQGc7SS+L7
	9SIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=yQt2m6Vqpp8dREBfQjjCqmNc0mGYq+7x9kpSxW/xlE4=;
	b=VKLgrNwZI2fURqOLM5ETzTiBnqEq8DG5j0hh3YtzkVqV35Y5z3SI3fAamZp9dHLN+0
	qbCeDkwwnQUIM4w8sL7O7m8x4BIOdROdAa6rrV6wKLjHVJvVVTj99SFIdQ3VHFSCunx6
	fnButRyf3csZVsHTfH9S3IZDtgGMxFvDTtyjEsQPR2wWThP+spYV3XjfmEn2z1j1hy1l
	ASdZZdMLABXSGbpqkCisyf4dobo6SmCD+k90aZl8VBqBaCVpuSJzpeEpLWT/FSr3F0eX
	eDV1UjekYeK1uh/6grYF7l7NA4UC2U9LhkEzXnKJ3PX7eSBvTzfzQ2DESk2EquJcnf0Z
	zDmQ==
X-Gm-Message-State: AA6/9RkH+BuFDUGDkwkaXFgRKHZCv7ObTGecrNEZOsN+9GpIS9EPYxs//NEZwQgZ2KMWLg==
X-Received: by 10.99.204.5 with SMTP id x5mr1908875pgf.96.1476809577550;
	Tue, 18 Oct 2016 09:52:57 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	b4sm57498878paw.10.2016.10.18.09.52.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 18 Oct 2016 09:52:57 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue, 18 Oct 2016 09:52:55 -0700
Message-Id: <1476809575-21711-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][V2][PATCH] libtpm: add new package
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
X-List-Received-Date: Tue, 18 Oct 2016 16:52:58 -0000

V2:
- use SRCPV

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-tpm/libtpm/libtpm_1.0.bb | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 recipes-tpm/libtpm/libtpm_1.0.bb

diff --git a/recipes-tpm/libtpm/libtpm_1.0.bb b/recipes-tpm/libtpm/libtpm_1.0.bb
new file mode 100644
index 0000000..83b78a0
--- /dev/null
+++ b/recipes-tpm/libtpm/libtpm_1.0.bb
@@ -0,0 +1,15 @@
+SUMMARY = "LIBPM - Software TPM Library"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=97e5eea8d700d76b3ddfd35c4c96485f"
+SRCREV = "e5dc628043e981c9f8d7711ddfe5812c8f4e38cc"
+SRC_URI = "git://github.com/stefanberger/libtpms.git"
+
+S = "${WORKDIR}/git"
+inherit autotools-brokensep pkgconfig
+
+PACKAGECONFIG ?= "openssl"
+PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
+
+PV = "1.0+git${SRCPV}"
+
+BBCLASSEXTEND = "native"
-- 
2.7.4


