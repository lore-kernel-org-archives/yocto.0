Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CAA1E009B9; Mon, 30 Jan 2017 00:44:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50144E0093F
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:27 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id y143so22887380pfb.1
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=8I+WmDNd9yXWv0L864OULsrvhG7XRCdGW51u5ybAsm0=;
	b=hbwP7Cm1NmX8nSkJnlWum6b8e7xLJMkqYlJcOeNwViQ7Ce8zHTo4ZI6/YHl3NsCIhv
	nhtv/1LHd+fu4vIWnDLZh6js+4kCg0vPwQH1G9Ql/AmDf2DFjUGMddlG4qF/51yY6EVs
	S9ZEdA/WM3tBMW4mL4FcTcx8EyokOAzIhqexDViitSXV2XOl5wQRVUHyNbGtASjjaHIq
	5aAgg/jNE2BLbMuAcrIEU9Qlpy2uR6e0X567Ddq7WJaXeygV0jBaEoHxieVl8mmnqKUC
	orgKSBpnTvkuzUboJZsdzOu57p3Zzzy9yyWE0WOw33tw21On3zFJHhkVWkZQhzylhPoe
	ngdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=8I+WmDNd9yXWv0L864OULsrvhG7XRCdGW51u5ybAsm0=;
	b=Oya5ASOQzRuZBtXUlCvxKXWFVNnUsavbx92l1DXuQ3GwEO2u8dJ+baWVFOdLTHCmMA
	SbdL+o9ZOPYh/WBl5Hc7bPK1vLLEgyWuEg78Hytcw2+DXHAj68fRa1ujzFWpTsyTo1G3
	FTX8zAw0fTApQIWdutVyz9UWA73Pr8lFCXVfvq99+9I6w7t+N/Y89OdtGnbN2mqZFzAg
	jWB53E6rQ9y1p8By+GDl6dps3leiFEG2JemWvAUo+S7EHT0YW7pKaHPMWLfyni5ZFxqZ
	6JKZ8TJ9ParCHAwC0Y4jF4QT0qAMpXDb7MfrwcBNMPn4B6ilBAz/LN6FlPB3Bh9MpbL2
	uViw==
X-Gm-Message-State: AIkVDXKhJ2gfpdEVzb9P3L+nxkf5KZrz3bx6ej9wBZ8YkgUWCPWSfpf9I6CgiYaILXQ6Gg==
X-Received: by 10.99.178.21 with SMTP id x21mr22733166pge.48.1485765867401;
	Mon, 30 Jan 2017 00:44:27 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	u14sm30220631pfg.18.2017.01.30.00.44.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:44:26 -0800 (PST)
Date: Mon, 30 Jan 2017 18:44:13 +1000
Message-Id: <20170130084413.12033-2-nathan@nathanrossi.com>
In-Reply-To: <20170130084413.12033-0-nathan@nathanrossi.com>
References: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH v2 2/19] libgcc: Relocate and package dll's in bindir
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
X-List-Received-Date: Mon, 30 Jan 2017 08:44:42 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Relocate and package the dll's provided by libgcc in bindir. It is
convention that on mingw/windows dll files are installed into the
bindir, this is done to avoid issues with search paths and allows for
execution of binaries without the need to point at a libdir.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-devtools/gcc/libgcc_%.bbappend | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/recipes-devtools/gcc/libgcc_%.bbappend b/recipes-devtools/gcc/libgcc_%.bbappend
index dd95317618..2a95d02cad 100644
--- a/recipes-devtools/gcc/libgcc_%.bbappend
+++ b/recipes-devtools/gcc/libgcc_%.bbappend
@@ -1,2 +1,8 @@
-FILES_${PN}_append_mingw32 = " ${base_libdir}/libgcc*.dll"
+FILES_${PN}_append_mingw32 = " ${bindir}/libgcc*.dll"
 FILES_${PN}-dev_append_mingw32 = " ${base_libdir}/libgcc*.a"
+
+do_install_append_mingw32 () {
+	# move the .dll files into bindir
+	install -d ${D}${bindir}
+	mv ${D}${base_libdir}/libgcc*.dll ${D}${bindir}/
+}
-- 
2.11.0


