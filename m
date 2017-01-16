Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CBC2E0097C; Mon, 16 Jan 2017 06:24:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87F67E009AD
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 06:24:26 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id 19so3507552pfo.3
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 06:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=vWQ9EjJ1mN1aN3YKkTod9hzfMKB2K8mPes+2FTwcOCQ=;
	b=Gmb/gw4r0FWVid5Qr5MR4s6Jb4T/KPDAMIwzCvJ2OU83bEB0gcTitkN96CjG07hyho
	5wfxdYbEa+Zcg5rx6OoPRyNRa+/FSW/wXurUDIjxHVEqazYrxP9FCJR2zL8g2kAQ9agx
	hR/zBr+OEumwXYZ23obSGCkyq7V84en+UwP+1a6fQGf9Yqv63aqQT0bx8AwMLEov8MCb
	H8fBo2DTGvrFQok0f5xEnYskr0Uw9i2vcOPfdr5zZMdyQv2oM0VeSzqk8AeVNGNL3+gE
	sZ7lG7v7fVnzyp+k3TlpXQs2KmLUyE9kDOsQPdtvsmddti1oa+LCYIjPS7/2B0vZHlwG
	hZZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=vWQ9EjJ1mN1aN3YKkTod9hzfMKB2K8mPes+2FTwcOCQ=;
	b=GFlbZ6oTlSZAPdokXEMtMLo9oE/99ccZp+qGWBVpxZc6l1lzQ1SXEDKeJ9xslcoBTB
	GB15yyvmSLm8ujL8py6RBy8DuwAzoKwsn6Xkxe3LQj2rBycaUEaXs7xdrxYNmTi/vQfW
	Bi7cCxAVHt/dzDAfjLR+WisxuHxxcGVocD/95y4+1GE2SlR38ZjidzRuGlHE4dRpHbFw
	2xlz1s9qqpnUSUwY4NrkltfEqlB6j86O8A/EPsmUZhDRfnYZiBPgGrPK5Qs4iCjKeOK2
	vFoSMB5qe1P/4kdeOaqfwqfN5BlXAJRLTY1fetabbxiOSwvB15rpeYlLgsVvqDz8lUdc
	zeJw==
X-Gm-Message-State: AIkVDXJe+WBUMEMJhACHMpTBMtFB0hOPLUNsNHPnQnxS/zSacDri10+IkUvAHxFT/BpqtA==
X-Received: by 10.98.157.83 with SMTP id i80mr37816239pfd.177.1484576666147;
	Mon, 16 Jan 2017 06:24:26 -0800 (PST)
Received: from [127.0.1.1] (CPE-58-165-45-185.lns1.lon.bigpond.net.au.
	[58.165.45.185]) by smtp.gmail.com with ESMTPSA id
	z70sm31952348pff.26.2017.01.16.06.24.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 16 Jan 2017 06:24:25 -0800 (PST)
Date: Tue, 17 Jan 2017 00:23:41 +1000
Message-Id: <20170116142341.5400-5-nathan@nathanrossi.com>
In-Reply-To: <20170116142341.5400-0-nathan@nathanrossi.com>
References: <20170116142341.5400-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH 5/7] glib-2.0: Clean up unnecessary appends that are resolved in oe-core
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
X-List-Received-Date: Mon, 16 Jan 2017 14:24:44 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

The changes that are appended for '--enable-include=printf=yes' and
packaging of charset.alias and gthread-2.0.def are handled in oe-core.
Clean up these appends.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-core/glib-2.0/glib-2.0_%.bbappend | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/recipes-core/glib-2.0/glib-2.0_%.bbappend b/recipes-core/glib-2.0/glib-2.0_%.bbappend
index 2b9ec53182..398af88d8b 100644
--- a/recipes-core/glib-2.0/glib-2.0_%.bbappend
+++ b/recipes-core/glib-2.0/glib-2.0_%.bbappend
@@ -1,6 +1,3 @@
-EXTRA_OECONF_mingw32 = "--enable-included-printf=yes ${CORECONF}"
-FILES_${PN}_append_mingw32 = " ${libdir}/charset.alias ${libdir}/gthread-2.0.def"
-
 # glib always provides bash-completion output, package the output but prevent
 # the dependency chain on bash (via bash-completion) for mingw32 targets only.
 RDEPENDS_${PN}-bash-completion_remove_mingw32 = "bash-completion"
-- 
2.11.0


