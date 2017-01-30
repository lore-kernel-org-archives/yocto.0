Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65CC2E00A03; Mon, 30 Jan 2017 00:45:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDB2EE00998
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:05 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id y143so22888289pfb.1
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=91dK8l9R1lrv1rBaSr3+YgOxNdpFnxcOF1yLtRVNPNA=;
	b=UHCjqm9GrUX4cCP7Z2Wso8Oibld1jtmwetBpbYToOFxihSNGVdDeVQInrGeKSOk2nl
	Sw8n0l0g5p8HNGtaRTzvYiBWiHRVuCSTPAcoW/GghMI+HbeRv6W9ti6Y6r/l7Yd2l21K
	X3vWW8/ryudo0JD5aYSp9X6Hsq7UCX0BJm0q0rsVQ1MP0oXRKZXUo8NhctkvgRioYuwe
	MxCWgLTnpBKGCbAfXJqMgM35Zzu6dUnlejCS88xSu7ky3Gy/N8ScAhQoM6Qmt45BHgEU
	r09GFRA8K4VWvc7ce7ZC1UZuBjO30fM7RhwNQ+rxsQS6ctu7LnJj78UDTpvnivBAiQHq
	ajQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=91dK8l9R1lrv1rBaSr3+YgOxNdpFnxcOF1yLtRVNPNA=;
	b=ipe4dJfJ4IehXIzNyNBUOItkmEEzFuiII9qNy5tsgIGEywfxxBDdo316/QcDWL8Z7R
	DmOEoXvts7GSz+12yFWx64zhup3Emu9ss7Tli/j0wBymsm9AGX63B192mP4bsyazLzED
	WGAQMUp+0GPO3rnCpgimaP+2xTNPJ2TOTcNej62Q/kWmElFle3An4oydXC3JWpzHFfkf
	rwNpFFCcMBt8Vtjkb/nfsOGGa2IIiJwl2X6pAXwgvJeQwWZVBMU+g0uiqugvmtutbc4D
	QY+J+XMfc+QAz9DStlma/ZOdMBVMiEoadY7uxoBkKq21aNjBaUmSj94jvBSRbnznpiR8
	bCLQ==
X-Gm-Message-State: AIkVDXLesKD1LJhyZ0b2VVBI2s2d90MijZdIK8iyuSIlMLDqk97699weUwPgsTniSLCHKA==
X-Received: by 10.84.210.232 with SMTP id a95mr30093932pli.31.1485765905639;
	Mon, 30 Jan 2017 00:45:05 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	134sm30303611pgh.13.2017.01.30.00.45.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:45:05 -0800 (PST)
Date: Mon, 30 Jan 2017 18:44:13 +1000
Message-Id: <20170130084413.12033-10-nathan@nathanrossi.com>
In-Reply-To: <20170130084413.12033-0-nathan@nathanrossi.com>
References: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH v2 10/19] glib-2.0: Handle packaging .dll and .exe files for mingw32
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
X-List-Received-Date: Mon, 30 Jan 2017 08:45:13 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Handle the packaging of .dll files into the ${PN} package, also package
only certain .exe files into the ${PN} and others into the ${PN}-utils
packages. This is required due to the mingw/windows convention where
.dll's are shipped in the bindir.

Move the packaging of *.def into the ${PN}-dev package, it is only used
during development/compilation.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-core/glib-2.0/glib-2.0_%.bbappend | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/recipes-core/glib-2.0/glib-2.0_%.bbappend b/recipes-core/glib-2.0/glib-2.0_%.bbappend
index 5683364c37..2accd7aa83 100644
--- a/recipes-core/glib-2.0/glib-2.0_%.bbappend
+++ b/recipes-core/glib-2.0/glib-2.0_%.bbappend
@@ -1,5 +1,5 @@
 EXTRA_OECONF_mingw32 = "--enable-included-printf=yes ${CORECONF}"
-FILES_${PN}_append_mingw32 = " ${libdir}/charset.alias ${libdir}/gthread-2.0.def"
+FILES_${PN}_append_mingw32 = " ${libdir}/charset.alias"
 
 # glib always provides bash-completion output, package the output but prevent
 # the dependency chain on bash (via bash-completion) for mingw32 targets only.
@@ -8,3 +8,10 @@ RDEPENDS_${PN}-bash-completion_remove_mingw32 = "bash-completion"
 # libmount is not buildable for mingw/windows
 PACKAGECONFIG_remove_mingw32 = "libmount"
 
+FILES_${PN}_append_mingw32 = " \
+		${bindir}/lib*.dll \
+		${libexecdir}/*gio-querymodules.exe \
+		"
+FILES_${PN}-dev_append_mingw32 = " ${libdir}/*.def"
+FILES_${PN}-utils_mingw32 = "${bindir}/*.exe"
+
-- 
2.11.0


