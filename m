Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D02C2E009AD; Mon, 30 Jan 2017 00:45:01 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 907DEE009C9
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:56 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id f144so22886141pfa.2
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=cyoMP6wJPlRYDD2ndLGO4XlzdE3+iwJrYHPql6hAtSg=;
	b=FcUcszFcraPKnyHwjFdyDtJY0z/oxtOEA4yAOubZGlBE9LcbK1J0yMXAWtvZeCQtEb
	r31D2Hcg+pnXKmYZaimsLakWWR0NbTGZSf1aGBytDLAl6NJqg3Gg3WduiQHUiSSIR7pP
	23nz0mE/W9nxS2mz+S7t6IplYg90Schtsv05N1b8CWNh5d/FKMPZYX7NTt1lrhNPtmb5
	6lej9M4uvyxr3ZCUEgSFfjJxkDaz3F/TDbXh/HTZ3OpPOL4I0muvgQZMLWVBr/SqrY6B
	TRxJBP3LwVMGjvYK/ykkPSn9/r8PTfek8Hm36wN5YY4h3BeQZ9+sPkEa6+VepV8Q3yHc
	cJ9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=cyoMP6wJPlRYDD2ndLGO4XlzdE3+iwJrYHPql6hAtSg=;
	b=R26jPZ5M3hbvZPz+C89DIM8Iv0ueRGOURgbhShCuRZacaDODbZz7vZ9F62oo6hyFrq
	ihLcMO9+Gul7g6dnNBgGyzcQJi5SmeBYpSH7abkXY+lZQfrcz1Sv7FIAbfKZRYgggrnx
	DkpNFFd1LX6XMsoz27NrJlouYyQIBFYQEhbtvTi/HDAXaEjC+D79gZk3Q5IZgJCJnPQX
	7UPGFHYPn+KOURXZsANSvGjPwdaiVDsCRspuoZjagVts11+YWrMVSvzrQzdelvyUkNVY
	4F+DMuF0YdfmFmCJXEF3muB0XdgWA+qmHt8rbOs420k0AkgK/kwHTS1Ei2ClQukqE7/5
	g6SA==
X-Gm-Message-State: AIkVDXJ8eOiLNIvX865K6x1sHN6TX710ZMgOayImp979ulLYQqTKaWjPyeyLICrshXQoEg==
X-Received: by 10.98.16.201 with SMTP id 70mr21973965pfq.25.1485765895935;
	Mon, 30 Jan 2017 00:44:55 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	i82sm30217246pfk.52.2017.01.30.00.44.53
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:44:55 -0800 (PST)
Date: Mon, 30 Jan 2017 18:44:13 +1000
Message-Id: <20170130084413.12033-8-nathan@nathanrossi.com>
In-Reply-To: <20170130084413.12033-0-nathan@nathanrossi.com>
References: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH v2 8/19] glib-2.0: Prevent a bash dependency via bash-completion
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
X-List-Received-Date: Mon, 30 Jan 2017 08:45:01 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Prevent glib-2.0 depending on bash indirectly due to the RDEPEND on
bash-completion. The bash dependency is undesirable due to bash
depending on POSIX compatibility (fork, etc) which is not provided by
MinGW but instead MSYS or CYGWIN.

The glib-2.0 configure does not allow for disabling of bash-completion
output, so instead of disabling the bash-completion bbclass entirely
allow the output to be packaged but remove the
RDEPENDS_${PN}-bash-completion on bash-completion.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-core/glib-2.0/glib-2.0_%.bbappend | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-core/glib-2.0/glib-2.0_%.bbappend b/recipes-core/glib-2.0/glib-2.0_%.bbappend
index d0531d6f4c..2b9ec53182 100644
--- a/recipes-core/glib-2.0/glib-2.0_%.bbappend
+++ b/recipes-core/glib-2.0/glib-2.0_%.bbappend
@@ -1,2 +1,6 @@
 EXTRA_OECONF_mingw32 = "--enable-included-printf=yes ${CORECONF}"
 FILES_${PN}_append_mingw32 = " ${libdir}/charset.alias ${libdir}/gthread-2.0.def"
+
+# glib always provides bash-completion output, package the output but prevent
+# the dependency chain on bash (via bash-completion) for mingw32 targets only.
+RDEPENDS_${PN}-bash-completion_remove_mingw32 = "bash-completion"
-- 
2.11.0


