Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD720E00CB6; Sun,  1 Oct 2017 09:43:44 -0700 (PDT)
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
	*      [209.85.192.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f175.google.com (mail-pf0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A604E00CA6
	for <yocto@yoctoproject.org>; Sun,  1 Oct 2017 09:43:44 -0700 (PDT)
Received: by mail-pf0-f175.google.com with SMTP id x78so1856010pff.10
	for <yocto@yoctoproject.org>; Sun, 01 Oct 2017 09:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Bxim9zHqcDW841DLzB2W7bOuilAn9dM9752bR3j+N/c=;
	b=MmR2OehOnAd8AmWjDMUhO+KfseY4cEuChYlmNqp8S4KXEUqc8vgiwQJhC7/zYKdu+R
	I1yC4SC9QfX7UEuCMojYQXSdoI/g7rXuuLUycr+cyclHXS9FgCy1B+r07cuCSrIeaYp5
	BFwI5ZMuzm6HaGw68Y4rusDou8au52SbPT0qqMxQUOjAChhFlquA7TTxKDPP7DHtRq7r
	HnuaspU1/U0rGz7p55UCXwzh9fL8yBPqm9Ibka22L+2QZmlVpIFtyFIcjBA91gk5YNmb
	a+HRdn7q/nzBnnaGls2YuNto/b3EYjmqLt+N8pZ9bpfmIoog0XTPa+QGucLyX9N2D2pv
	Objw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Bxim9zHqcDW841DLzB2W7bOuilAn9dM9752bR3j+N/c=;
	b=rwYjT77ZIEDsnEHGzc3g3hrVIqbBGBaoZGQlm1xmnEcD/6ENdxSD0SfpNh2qjoQAjU
	AlNwtrzwXfMurNPZeFwCxcw1Nsr+iCW6ysuS+xU9Z/9F3HqerYAnS/vkY6Zj+9qKGiy9
	QBCRCuMEyOWCQaRTWsfkDZGBO2+X2NZMNOMHeLNtSBllDZbDdRgQRiqPvjYq0aQ+PbX/
	LZfdEb5wCqHJ5CRuZqymHyceG82wf4sIV1BRDirfb2UmclynDR+H4teAxA2KuOcz/DjV
	g+Y95MiY94eb3QiQJd5CnxjaIpIjyCNKRLwb0KPoWp79u4mVXrfhBPZbnSlirwe+L+4v
	zXtw==
X-Gm-Message-State: AHPjjUjchHj41fkgD3sTRi7RIv3u/TZI34FAMUbnRi0QMk/WmyE95Xlc
	WukIaZyS9CTgReBqGBLiwz0Chw==
X-Google-Smtp-Source: AOwi7QCldRpRWcPxE1FDxtBM0GsOnSS5Qsg13vjvpuqopCvbh+GKDRJ6HcBppvs2UVUhSgeharXU8Q==
X-Received: by 10.84.235.135 with SMTP id p7mr12206819plk.181.1506876223784;
	Sun, 01 Oct 2017 09:43:43 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e0ed:d79b:a9ce:26d1])
	by smtp.gmail.com with ESMTPSA id
	h1sm14546794pgf.54.2017.10.01.09.43.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 01 Oct 2017 09:43:43 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sun,  1 Oct 2017 09:43:33 -0700
Message-Id: <1506876220-22710-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506876220-22710-1-git-send-email-akuster808@gmail.com>
References: <1506876220-22710-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 03/10] libenv-perl: add recipe removed from core
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
X-List-Received-Date: Sun, 01 Oct 2017 16:43:44 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-perl/perl/libenv-perl_1.04.bb | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 recipes-perl/perl/libenv-perl_1.04.bb

diff --git a/recipes-perl/perl/libenv-perl_1.04.bb b/recipes-perl/perl/libenv-perl_1.04.bb
new file mode 100644
index 0000000..dd8e115
--- /dev/null
+++ b/recipes-perl/perl/libenv-perl_1.04.bb
@@ -0,0 +1,21 @@
+SUMMARY = "Perl module that imports environment variables as scalars or arrays"
+DESCRIPTION = "Perl maintains environment variables in a special hash named %ENV. \
+For when this access method is inconvenient, the Perl module Env allows environment \
+variables to be treated as scalar or array variables."
+
+HOMEPAGE = "http://search.cpan.org/~flora/Env/"
+SECTION = "libs"
+LICENSE = "Artistic-1.0 | GPL-1.0+"
+
+LIC_FILES_CHKSUM = "file://LICENSE;md5=76c1cbf18db56b3340d91cb947943bd3"
+
+SRC_URI = "http://search.cpan.org/CPAN/authors/id/F/FL/FLORA/Env-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "fdba5c0690e66972c96fee112cf5f25c"
+SRC_URI[sha256sum] = "d94a3d412df246afdc31a2199cbd8ae915167a3f4684f7b7014ce1200251ebb0"
+
+S = "${WORKDIR}/Env-${PV}"
+
+inherit cpan
+
+BBCLASSEXTEND = "native"
-- 
2.7.4


