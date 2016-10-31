Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3333AE00997; Mon, 31 Oct 2016 11:23:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A911E0095D
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 11:23:53 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id y68so3489314pfb.1
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 11:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=NAOWEpYlZPIcAf8QZFUL2Dsx4KXbnrrIM9xcRgMfbsY=;
	b=UJvM6TzIIluM0RQe4hw3O5m7tVuw0iMY0bVfV1/BXcVeoMTc8sVByqPoonFx6VAc4Z
	ZtVPC4DUHKNhp1ORjeaZL3RRyQz5dVmqtFQlyjlnurnriKPyJqskUDnWQf/3rM+9BIhF
	9czj8MiHsJUsqsqLlfaV6bEWLclTYPuD+GgKLUmTUQ/xenoLETicpElsFkw4u86/g5WM
	dEblEX5ijrAo3qk0mmVVv2qL4Ut9/PkjZAJH2goJ/RpVVid9FgZ8z1eVqWGQKxOIZseI
	GnKLbVJCXGWszNIOSYqge0IT5EUSpXWMXtZbSBe+zit6LVJ8jHSOgH9gzvl2RGgBwBhK
	BKdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=NAOWEpYlZPIcAf8QZFUL2Dsx4KXbnrrIM9xcRgMfbsY=;
	b=Ut+jTOhh5k0kAoa7HPcckcCNgUiHwy/pKI77MdIeW2Bq+WOEF1c5CHiAmlDsZb/+mk
	j/5TCOX/IRWFTeQAR09PCrjCuxtTvJPcSG6IJOP3I3BYejvWUjzuXk4h3cTNFVfSa/P/
	QrINt8lctV097HnPkVuXI57cHV46iKPrVL7MdxPutp5I+7lL62jCMW2Rp/l5MuCC3WYh
	yFPHjkwQfzIcGzEJNhAod1Hj27M4vtIXTU3mXMCl88nB3iPDoB3Pj1oN5zlkm9an50Jf
	4WWYCWR1/3a+cFx3TF6St76kGYpqhvuKxKitSoPsVYS4qzxqqEZNWd4V05sM2jgsZR3M
	7OJw==
X-Gm-Message-State: ABUngvcyZQ2h1CyHfd9Z+hx8y0avDE28cmrkClU3ecVQYfcd6h8CzFyqdvhKaSYTk8LWLg==
X-Received: by 10.99.9.129 with SMTP id 123mr42611547pgj.84.1477938233426;
	Mon, 31 Oct 2016 11:23:53 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:a515:1856:7377:d74f])
	by smtp.gmail.com with ESMTPSA id
	s64sm37059308pfk.81.2016.10.31.11.23.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 31 Oct 2016 11:23:53 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Mon, 31 Oct 2016 11:23:52 -0700
Message-Id: <1477938232-9813-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] nmap: Upgrade package to 7.31
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
X-List-Received-Date: Mon, 31 Oct 2016 18:23:55 -0000

LIC_FILES_CHKSUM change do to yr going from 2015 to 2016 in file.
Added "no update" config option.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/nmap/{nmap_7.12.bb => nmap_7.31.bb} | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)
 rename recipes-security/nmap/{nmap_7.12.bb => nmap_7.31.bb} (88%)

diff --git a/recipes-security/nmap/nmap_7.12.bb b/recipes-security/nmap/nmap_7.31.bb
similarity index 88%
rename from recipes-security/nmap/nmap_7.12.bb
rename to recipes-security/nmap/nmap_7.31.bb
index dadff3d..c50b240 100644
--- a/recipes-security/nmap/nmap_7.12.bb
+++ b/recipes-security/nmap/nmap_7.31.bb
@@ -3,12 +3,12 @@ DESCRIPTION = "Nmap ("Network Mapper") is a free and open source (license) utili
 SECTION = "security"
 LICENSE = "GPL-2.0"
 
-LIC_FILES_CHKSUM = "file://COPYING;beginline=7;endline=12;md5=51f7052ac85aaf1a2127f7803de1261e"
+LIC_FILES_CHKSUM = "file://COPYING;beginline=7;endline=12;md5=bce7593e567a4b12f60c6a04f9b8c1e5"
 
 SRC_URI = "http://nmap.org/dist/${BP}.tar.bz2"
 
-SRC_URI[md5sum] = "0764f4dabe7cccda3c49fc3990b62a8a"
-SRC_URI[sha256sum] = "63df082a87c95a189865d37304357405160fc6333addcf5b84204c95e0539b04"
+SRC_URI[md5sum] = "f2f6660142a777862342a58cc54258ea"
+SRC_URI[sha256sum] = "cb9f4e03c0771c709cd47dc8fc6ac3421eadbdd313f0aae52276829290583842"
 
 inherit autotools-brokensep pkgconfig python-dir distro_features_check
 
@@ -16,14 +16,14 @@ PACKAGECONFIG ?= "ncat nping ndiff pcap"
 PACKAGECONFIG += " ${@bb.utils.contains('IMAGE_FEATURES', 'x11-base', 'zenmap', '', d)}"
 
 PACKAGECONFIG[pcap] = "--with-pcap=linux, --without-pcap, libpcap, libpcap"
+PACKAGECONFIG[pcre] = "--with-libpcre=${STAGING_LIBDIR}/.., --with-libpcre=included, libpre"
 PACKAGECONFIG[ssl] = "--with-openssl=${STAGING_LIBDIR}/.., --without-openssl, openssl, openssl"
 
 #disable/enable packages
 PACKAGECONFIG[nping] = ",--without-nping,"
 PACKAGECONFIG[ncat] = ",--without-ncat,"
 PACKAGECONFIG[ndiff] = ",--without-ndiff,"
-
-PACKAGECONFIG[pcre] = "--with-libpcre=${STAGING_LIBDIR}/.., --with-libpcre=included, libpre"
+PACKAGECONFIG[update] = ",--without-nmap-update,"
 
 #Add gui
 PACKAGECONFIG[zenmap] = "--with-zenmap, --without-zenmap, gtk+ python-core python-codecs python-io python-logging python-unittest python-xml python-netclient python-doctest python-subprocess python-pygtk, python-core python-codecs python-io python-logging python-netclient python-xml python-unittest python-doctest python-subprocess  python-pygtk gtk+"
-- 
2.7.4


