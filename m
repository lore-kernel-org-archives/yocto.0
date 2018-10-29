Return-Path: <joe.macdonald@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD04BE00C09; Mon, 29 Oct 2018 11:33:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f194.google.com (mail-it1-f194.google.com
	[209.85.166.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CA50E00C31
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 11:33:03 -0700 (PDT)
Received: by mail-it1-f194.google.com with SMTP id e17so9150655itk.5
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 11:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=SuGpgJtPg9K2JSMyKj0JR1TzGq6CDb1uKywp7vDba7I=;
	b=jnHG3Lfdq5AMt1HA+pEsmYrv2UKmay1MhepoIbdSRMNXyqjo1W7lMJMRv6rhRUIfL9
	EtYegIIROHLdUfzUGQC8xz7vJqwKsaLmVdUYK2hWi6u7vjS2FeWVzJxlzix2QjZUdsV/
	Eum8vuZChTF7mbPzgIxoskZy/VT+UEz6v4ysTe5/WA33WpoTyqggj+WCHuUnkIE6N5yy
	DzHOwMz/0HBR87hNhacOdg1urj7APRMg92bnApNnK31eEvFIBlVIzKojpP91J1rWuuwc
	Rucm2+j0383dGx/vXg7eoqUhsoxBFk0ShNwNIhCJCrl9V+sx/pPI5n53r2wCpTrUEVb3
	+u5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=SuGpgJtPg9K2JSMyKj0JR1TzGq6CDb1uKywp7vDba7I=;
	b=MwPV3jKew37Wz+tn0PpDtxnF8V1Q94ELKqV4i0Tug8NWbkKpbZGJBAhT7fKT6h30po
	nK2EVDpcTOWvEewlHAjDaC7SfpO0jS4MgZ8yx30hFkKTBkE0F1rJ+IIu3ho8Wu/gBgBT
	qrAadDgDRMm0KUwI/tWEXR2HQCefBCXOYt0p9Q/Tx93FmCXJIt97eV5XoXwzlWaDS0YX
	M99bJPRo1/HLBGunlTVs8+DfaKL1BZXKtKj9dOoafMy7sezkihBVOkRVQZr5rueSFekA
	zvU1+l62FjBbWpuwiJTui20bZdJcJ+k5VcIav1wNmUkCHNWPGqdsBkCaRci2zaQ9LMWX
	iwPw==
X-Gm-Message-State: AGRZ1gIZK/JDT/tonA1KdhsduVBCRwrgyEO8KlFW8UZUR56ziNDz3ula
	6/Bienjb1oqx078ZR+8PYchufxUxjmU=
X-Google-Smtp-Source: AJdET5d2FBWRuY+Rw5uhar6D4bOLFXBdIEObpLobsUYUv92K67iNDeLJxNEFH6f1XNdLaM4GPKdEvw==
X-Received: by 2002:a24:edc3:: with SMTP id
	r186-v6mr10465718ith.100.1540837982205; 
	Mon, 29 Oct 2018 11:33:02 -0700 (PDT)
Received: from burninator2.deserted.net (23-233-29-148.cpe.pppoe.ca.
	[23.233.29.148]) by smtp.gmail.com with ESMTPSA id
	y11-v6sm7152984ioa.24.2018.10.29.11.33.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Oct 2018 11:33:01 -0700 (PDT)
Sender: Joe MacDonald <joe.macdonald@gmail.com>
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org
Date: Mon, 29 Oct 2018 14:32:53 -0400
Message-Id: <20181029183257.20970-3-joe@deserted.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20181029183257.20970-1-joe@deserted.net>
References: <CANBf+V1cOSgDpoKvmz4shhZEjCKXtYAe9gz13K2PPjuTWf7KRA@mail.gmail.com>
	<20181029183257.20970-1-joe@deserted.net>
Subject: [meta-selinux][sumo][PATCH 3/7] libselinux: Fix build with musl libc.
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
X-List-Received-Date: Mon, 29 Oct 2018 18:33:11 -0000

From: Piotr Tworek <tworaz666@gmail.com>

Musl libc does not implement file traversal functions from fts.h.
Oe-core provides fts library which implements those. Libselinux makefile
allows us to use such additional library by specifying required linker
flags via FTS_LDLIBS variable.

Signed-off-by: Piotr Tworek <tworaz666@gmail.com>
Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 recipes-security/selinux/libselinux.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/selinux/libselinux.inc
index 28c437f..33621cc 100644
--- a/recipes-security/selinux/libselinux.inc
+++ b/recipes-security/selinux/libselinux.inc
@@ -8,6 +8,7 @@ LICENSE = "PD"
 inherit lib_package pythonnative
 
 DEPENDS += "libsepol python libpcre swig-native"
+DEPENDS_append_libc-musl = " fts"
 RDEPENDS_${PN}-python += "python-core"
 
 PACKAGES += "${PN}-python"
@@ -23,6 +24,7 @@ def get_policyconfigarch(d):
 EXTRA_OEMAKE += "${@get_policyconfigarch(d)}"
 
 EXTRA_OEMAKE += "LDFLAGS='${LDFLAGS} -lpcre' LIBSEPOLA='${STAGING_LIBDIR}/libsepol.a'"
+EXTRA_OEMAKE_append_libc-musl = " FTS_LDLIBS=-lfts"
 
 do_compile_append() {
     oe_runmake pywrap -j1 \
-- 
2.17.1


