Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0A83E00A1E; Mon, 30 Jan 2017 00:45:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BA9CE009F5
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:15 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id y143so22888540pfb.1
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=85czAaGhxSRdSvE2aWEx0od969Ie5b8+xuJ7yw49Dlw=;
	b=YpKQKWN/jjsFGTsHpqyV2o+Sg4oZs8+gWsJgYcKvRgZ0PGX+jz6mzv3FCgANnRZ1lL
	TFN0X6J6IrQ15Yqm+9fvzHbcJVXvwfZ/11D27Z4eMZ2Zo5IFeabjYMuSbonWTqY6jSGi
	0zYseo4XMxcb21TKTPaeRRpdQtk5cRGPBkZZVLx23OKJ+PeEkhtYE/ajLybLj+i8D6Bd
	mM3MGK9IYMc3sLA8+q+WgMQ/IfBTW0/pQxF8BGELuV2uCQtCVRYNjvi2K4DMTGiDnJzL
	YZOZ5AZkrAcgHLMA1UBXgX/ehmmdKexKKVp2U9WeqL/xqPd2k/3cVY4nyUCVl4WNvFWV
	D5yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=85czAaGhxSRdSvE2aWEx0od969Ie5b8+xuJ7yw49Dlw=;
	b=KUsXLdrWE6/UdpCV7vo/9pF+vVB9WH6Zfx3/xlDdcd7rcFs/iYkmCcai8uptlfcqmZ
	J5Gdd6D5jZx2Y0wkWvRJZ4qVXiMCxTOAOmDwznBgH7X8aXLT08Wah1kWuj0Fl1rHUVGI
	bIaM0UCToDzNp+75WKNXvrU/et+RT+4SayUpJk8sESj/oioEb918CnTzMQNOc0GInV7R
	PBaFiJ2q6Xuu1LwKSuhvZtieF7PZOBKybxAjlUDFYH4LxYtRtzYJWjkAUuN9MgOGFfIQ
	dBg3OitjM4Z1NB1W2N841GQGQIcKJdZvHRaT3A3a+M+SGFgbv3exOh2VP5ei3ly0shID
	SJxw==
X-Gm-Message-State: AIkVDXIHl9l6xxPlmg+stZ5mfcKpACDphOb0CFG60Ls35Gvec3qPM2Na36Gq2c/uYxgfRw==
X-Received: by 10.99.171.5 with SMTP id p5mr22541705pgf.182.1485765914814;
	Mon, 30 Jan 2017 00:45:14 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	a2sm30193439pfc.72.2017.01.30.00.45.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:45:14 -0800 (PST)
Date: Mon, 30 Jan 2017 18:44:13 +1000
Message-Id: <20170130084413.12033-12-nathan@nathanrossi.com>
In-Reply-To: <20170130084413.12033-0-nathan@nathanrossi.com>
References: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH v2 12/19] dtc: Only build libfdt for mingw32
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
X-List-Received-Date: Mon, 30 Jan 2017 08:45:24 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Whilst building libfdt on mingw32 is functional, building dtc for mingw32
is not. This is due to dtc relying on certain POSIX functions as well as
not handling the MSVCRT printf formatting.

This change enables building and installing libfdt only for mingw32,
disabling the build of device-tree-compiler itself.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-core/dtc/dtc_%.bbappend | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)
 create mode 100644 recipes-core/dtc/dtc_%.bbappend

diff --git a/recipes-core/dtc/dtc_%.bbappend b/recipes-core/dtc/dtc_%.bbappend
new file mode 100644
index 0000000000..140693778a
--- /dev/null
+++ b/recipes-core/dtc/dtc_%.bbappend
@@ -0,0 +1,16 @@
+
+do_configure_append_mingw32 () {
+		# don't try to build the other dtc components when installing libs
+		sed -i 's/install-lib: all/install-lib: libfdt/g' ${S}/Makefile
+}
+
+do_compile_mingw32 () {
+		oe_runmake libfdt
+}
+
+do_install_mingw32 () {
+		oe_runmake install-lib install-includes
+}
+
+RDEPENDS_${PN}-misc_remove_mingw32 = "bash"
+
-- 
2.11.0


