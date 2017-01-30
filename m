Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 826EAE009A5; Mon, 30 Jan 2017 00:44:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C37CCE00998
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:32 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 75so31003643pgf.3
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=m5bwGXDmlxR6Eb4ar8ek5pZaz9XHcVzsPXJC8Ke2c50=;
	b=TTG8+isErM9gLT67KpN3HyMluDp0YJlTazANMQrD+/JREmCCG/yfVRirE3aunORF55
	MEhHn/TsXS9XOiUC6sMLpoxUpNP6f4HS5tP0GHwtjHmCoTIUciYR2F3sQvd0Cbx4dxqX
	18J6RvPIypUb5avS0KplJffPE3/nGJAI2aCWCBTbvu9LMMzOTqJGbw58ouZblTZnYXxq
	EVjtG/d0PIJ6gEkA8f7ctS5Xo2UrH5QeFBuOmaIqQKGR4igoHh73OskAuPE1mxS5kpGN
	a2zbTCI1dA26kGv8wPLvyugiWJl3KlKXxVlGywTU/vXJNvHPNvoD5WuZGyBs77xGcAEt
	kW+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=m5bwGXDmlxR6Eb4ar8ek5pZaz9XHcVzsPXJC8Ke2c50=;
	b=l7iE/PydYXLnqETrh5S+f2a041LuN3OdBbZjlT+j/eDhSzU9/ki4Ge9IYSZivhlB2l
	8s6VLKHNVpiozIpK+fzMinIJCyi3RNV6UJ2JFLBB4rzvvx04th8GixXgZwfUggIAphC5
	JKhoRBvgOsQEaW+RqfTj1R3XQJkEHrNUO14AEfYAP8pvJwYgmwANirUgNMpB2EKCBPx6
	elQrTRLHFEqy1cUfKU9AfX4IOkjnhda2C4b5JcX8URAlkbqZ6+6pMTcrD8Q70Czsz3VO
	phKqZyE7jsABvwNPUO6UqCEGr/YmCaTMkfXhpvvl0YxItovcHzodbJucf+FirhOmPivS
	0pPA==
X-Gm-Message-State: AIkVDXKcQWYUw3JgALI7KURLJ2c1n7qg+l1fL8HerEpUOEz2Ejs6vrBNZRn0xpUvkueyVg==
X-Received: by 10.98.56.196 with SMTP id f187mr22163002pfa.131.1485765872058; 
	Mon, 30 Jan 2017 00:44:32 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	k78sm30176580pfb.93.2017.01.30.00.44.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:44:31 -0800 (PST)
Date: Mon, 30 Jan 2017 18:44:13 +1000
Message-Id: <20170130084413.12033-3-nathan@nathanrossi.com>
In-Reply-To: <20170130084413.12033-0-nathan@nathanrossi.com>
References: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH v2 3/19] expat: Fix ${PN}-bin handling for .exe files
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
X-List-Received-Date: Mon, 30 Jan 2017 08:44:49 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

For mingw it is convention to have DLLs in bindir. To avoid grouping
anything other that .exe files into the ${PN}-bin package, override it
so that only '*.exe' files are shipped.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-core/expat/expat_%.bbappend | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 recipes-core/expat/expat_%.bbappend

diff --git a/recipes-core/expat/expat_%.bbappend b/recipes-core/expat/expat_%.bbappend
new file mode 100644
index 0000000000..626ea5b938
--- /dev/null
+++ b/recipes-core/expat/expat_%.bbappend
@@ -0,0 +1,3 @@
+
+FILES_${PN}-bin_mingw32 = "${bindir}/*.exe ${sbindir}/*.exe"
+
-- 
2.11.0


