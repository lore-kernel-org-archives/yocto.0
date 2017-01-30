Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0C30E009CF; Mon, 30 Jan 2017 00:44:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D474E009AD
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:37 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id f144so22885691pfa.2
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=K/lqEXCSyIraWTXqWsrmH7YX1e03mXR5Wryr50bWK6Y=;
	b=PZqp95y/mkCZmFVNSVUjIXCVmR/xiGIiBpgQ5hK90eC3aben6OKeLKgOZ8GY7nnh+n
	tNhVG3bipnMLoHCBfkUpvP8YEfDlp8ngyuv4NnVpw0J9JPanPioHvv3tNYg0DVYZSpS9
	wHdBQnMr+PAJo9XhxAmxEVAHhg926wTgGCrQgGXpsODQ4gRRX2ZBeliAAcgqZzvay6Cx
	9dzln6wYUoP5PTI8/vkxM07ZDqKpMMs/h+B5TBMna+LQX/tKb2STWqzRXo+izDafvoG4
	4WRf8o/a7H1qj+9cozWABWi5tVxXgI4SVWLX3BGKZD/U0ToQzgyy1LkYgYMDotIF8xrt
	jKkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=K/lqEXCSyIraWTXqWsrmH7YX1e03mXR5Wryr50bWK6Y=;
	b=b9MdQqL29PiFkRFFw77ZUsytv0dzsf6SDc0VSAzBDRtBefSRx2z2CGu6ulYGuRbPVI
	E1psesaq7RxYQBtWTgavlSLb2OmYE6rdVqkfpVPxm+6h4Tl2/oNvXI/agWTQAMcH7uk/
	GCCE5dUr/M9OCwQLuFIadsHsVB+Mt12y3W3AsQ5qsZ0K66PWC3mtFS86qpHXOqSS1fhv
	PI5JUhjnBe3btwHC3azQNAHLLvkQvha1vOyDuCbF4RrBfxTMcI5pKUyGAtmiYEPyIKvm
	T/3Aj96Vdc2ds/2rYdMLLpls/l22ei95IWv/z1/wmHd43HRwx3J9ZEwo098P3taTZwVT
	JyRg==
X-Gm-Message-State: AIkVDXLQMfHG02E/m7liwDM4Q7/+p6Mphw+8T9O6OHf7BB1SXRcDj68P44TzP2Zgd8vMOg==
X-Received: by 10.99.103.133 with SMTP id b127mr22595527pgc.168.1485765877027; 
	Mon, 30 Jan 2017 00:44:37 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	q19sm30232207pfl.21.2017.01.30.00.44.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:44:36 -0800 (PST)
Date: Mon, 30 Jan 2017 18:44:13 +1000
Message-Id: <20170130084413.12033-4-nathan@nathanrossi.com>
In-Reply-To: <20170130084413.12033-0-nathan@nathanrossi.com>
References: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH v2 4/19] libpcre: Handle shipping .exe and .dll files for mingw32
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
X-List-Received-Date: Mon, 30 Jan 2017 08:44:50 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Package the .dll and .exe files into their expected packages.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-support/libpcre/libpcre_%.bbappend | 6 ++++++
 1 file changed, 6 insertions(+)
 create mode 100644 recipes-support/libpcre/libpcre_%.bbappend

diff --git a/recipes-support/libpcre/libpcre_%.bbappend b/recipes-support/libpcre/libpcre_%.bbappend
new file mode 100644
index 0000000000..b154f8d3b6
--- /dev/null
+++ b/recipes-support/libpcre/libpcre_%.bbappend
@@ -0,0 +1,6 @@
+
+FILES_libpcrecpp_mingw32 = "${bindir}/libpcrecpp*.dll"
+FILES_libpcreposix_mingw32 = "${bindir}/libpcreposix*.dll"
+FILES_pcregrep_mingw32 = "${bindir}/pcregrep.exe"
+FILES_pcretest_mingw32 = "${bindir}/pcretest.exe"
+
-- 
2.11.0


