Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86E75E009F0; Mon, 30 Jan 2017 00:44:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D480EE00961
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:46 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id 3so13248163pgj.1
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=Nvd6I8/vSS6cjv7w2WsJiPkhIxwy7OTlNrrtgAwrEBw=;
	b=PG/lHg86LhO2Mc5cxeBuKAaImg+9gSUSaa47FUbcKdaa3WrMZALEkF5008aPzKjZAf
	0F2VL01Jb/09sy0dE5Oy3p6PXKijbNkHCDfdzEE/kQObJ7ftD+l0y8qa6kYfxF3bzOwT
	SIEfBh6qsGnPNajpuP6Fj/PMopJzCcBNu3KIl9D54gwA004jybDKI9hFuTcQz2kz93AN
	2W85kVRKIiTppQLgoaxqHIg5B7OFBgNzrUGTBJZtA/ecPDRzjTOn5ZyOonN3VRRnWC3U
	T69VqORDaWthOURCDRgdolphhF/AGNH2Ja00X7Q4g/ndnvQBJrCz2/XCHaRIjYqVnXWX
	HLnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=Nvd6I8/vSS6cjv7w2WsJiPkhIxwy7OTlNrrtgAwrEBw=;
	b=aV96bjOrJPofU1SpSRkuHLeQehELFW7T5l+LAm2d1rLzDT5YmsJi/GIfELRXHI2mfg
	Bsba12rQRvUHki1pMjlRf1qek9M8Ppd+AxNdZNrrMFXUUxhGsFO5OTTHFhbv7Ky8kgqK
	+ZJVyIptkRimo85NWnV2P6PbWYpuDUHplq+mZZyJJSJheRuwN3tp95l03QBVjndQhFmC
	VLVAJi1dCaDP8qB7VMsZBIZ847syCxJt86l9r41TE4CXkDIZ2guCS38igQMBjFgLcCp0
	It7j3CELhLpMyFtTY4UGhVTbM3S7Eprxqxlts4W3XQIQg2duAskFc9ZQjTX4J1fE4xj6
	eCsQ==
X-Gm-Message-State: AIkVDXKkl1QPScsdfHcgPVHRBEHQLMP6sPLcl7TdDH7i/tJJjOFYhXWDrT/OrgC2EnyxBg==
X-Received: by 10.98.207.193 with SMTP id b184mr22388160pfg.12.1485765886427; 
	Mon, 30 Jan 2017 00:44:46 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	k78sm30178986pfb.93.2017.01.30.00.44.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:44:45 -0800 (PST)
Date: Mon, 30 Jan 2017 18:44:13 +1000
Message-Id: <20170130084413.12033-6-nathan@nathanrossi.com>
In-Reply-To: <20170130084413.12033-0-nathan@nathanrossi.com>
References: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH v2 6/19] gettext_0.19.%.bbappend: Handle packaging .dll's for mingw32
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
X-List-Received-Date: Mon, 30 Jan 2017 08:44:55 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Package the libgettext*.dll files in their respective packages.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-core/gettext/gettext_0.19.%.bbappend | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-core/gettext/gettext_0.19.%.bbappend b/recipes-core/gettext/gettext_0.19.%.bbappend
index 1cf0188ea5..d485cdc70e 100644
--- a/recipes-core/gettext/gettext_0.19.%.bbappend
+++ b/recipes-core/gettext/gettext_0.19.%.bbappend
@@ -9,3 +9,6 @@ SRC_URI_append = " \
 		file://fix-gl_cv_prog_as_underscore-test.patch \
 		"
 
+FILES_libgettextlib_mingw32 = "${bindir}/libgettextlib-*.dll"
+FILES_libgettextsrc_mingw32 = "${bindir}/libgettextsrc-*.dll"
+
-- 
2.11.0


