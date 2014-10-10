Return-Path: <trevor.woerner@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DD5CE00790; Thu,  9 Oct 2014 17:12:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SUBJ_OBFU_PUNCT_MANY autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.7 SUBJ_OBFU_PUNCT_MANY Punctuation-obfuscated Subject: header
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 030A9E00769
	for <yocto@yoctoproject.org>; Thu,  9 Oct 2014 17:12:15 -0700 (PDT)
Received: by mail-ig0-f178.google.com with SMTP id h3so761145igd.5
	for <yocto@yoctoproject.org>; Thu, 09 Oct 2014 17:12:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=7aHY3Js0q826hragqtmsT9j+z2Ad39s9yORnH9qDCcY=;
	b=e94E4mFmRXC7yQGVcE4XkyT0QZCjiY/j10d/EzuPXDjB+Tzxm7gr3XhnuIdRXOjn0B
	upP7TuTYSh2PNwzsmFxj7Z84H4F7uv3VKaet9Ej6imMj8oAUHpoGGI/krPxb77BuXTZy
	BDvUiz47JIFvdCqUu/XVbk8BgEFYmwIdsegtMR8w738Z596gJkUjKWPVm9PXnN8s8uqB
	ooEbKfFlaLfBc01O6a8BtQOnG8IQ0+tbwmrz/fngAbvjGad3+ZNAqzvPX2a2iivCPCB9
	96r4c+hic+0XkUDD0Iq5JdpwvOYlC5GnBqrfI8cbgQRURx8270W4o+wWWfK5C4wfSsOn
	rmUw==
X-Gm-Message-State: ALoCoQnK1EeTcFa3YSiYebcEcMMdmLyZgHirDeTaMZpCGKG2TJaVyPmwAqX/5cnLucn8BtZO5Emh
X-Received: by 10.42.212.7 with SMTP id gq7mr12057452icb.28.1412899934950;
	Thu, 09 Oct 2014 17:12:14 -0700 (PDT)
Received: from openSUSE-i7.site (dsl-67-204-0-176.acanac.net. [67.204.0.176])
	by mx.google.com with ESMTPSA id kj6sm710543igb.6.2014.10.09.17.12.13
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 09 Oct 2014 17:12:14 -0700 (PDT)
From: Trevor Woerner <trevor.woerner@linaro.org>
To: yocto@yoctoproject.org
Date: Thu,  9 Oct 2014 20:11:29 -0400
Message-Id: <1412899892-20251-1-git-send-email-trevor.woerner@linaro.org>
X-Mailer: git-send-email 2.1.1.273.g97b8860
Cc: patches@linaro.org
Subject: [yocto-docs][PATCH] OPENSUSE_HOST_PACKAGES_ESSENTIAL: replace texinfo
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
X-List-Received-Date: Fri, 10 Oct 2014 00:12:21 -0000

On (modern?) openSUSE systems (e.g. 13.1) the entire "texinfo" package
(and the 100's of extra packages it pulls in) aren't required to perform a
successful build. Instead, installing "makeinfo" will suffice.

Signed-off-by: Trevor Woerner <trevor.woerner@linaro.org>
---
 documentation/poky.ent | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/poky.ent b/documentation/poky.ent
index 7beffb7..ca70083 100644
--- a/documentation/poky.ent
+++ b/documentation/poky.ent
@@ -61,6 +61,6 @@
      diffutils diffstat git cpp gcc gcc-c++ glibc-devel texinfo chrpath \
      ccache perl-Data-Dumper perl-Text-ParseWords perl-Thread-Queue socat">
 <!ENTITY OPENSUSE_HOST_PACKAGES_ESSENTIAL "python gcc gcc-c++ git chrpath make wget python-xml \
-     diffstat texinfo python-curses patch socat">
+     diffstat makeinfo python-curses patch socat">
 <!ENTITY CENTOS_HOST_PACKAGES_ESSENTIAL "gawk make wget tar bzip2 gzip python unzip perl patch \
      diffutils diffstat git cpp gcc gcc-c++ glibc-devel texinfo chrpath socat">
-- 
2.1.1.273.g97b8860


