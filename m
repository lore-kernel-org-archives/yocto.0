Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28070E0086F; Thu, 25 Sep 2014 03:00:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
Received: from mail-qc0-f182.google.com (mail-qc0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9706CE0086B
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 03:00:01 -0700 (PDT)
Received: by mail-qc0-f182.google.com with SMTP id x3so1842437qcv.27
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 03:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=fqXL8hEWA2d0RQMSlyl1EO035Sgv0gzvi7qaoD3+KLI=;
	b=IbdYB7ruvgmb/GwM2BzqgZSL8ak1QFdpNCniV0lpt9L+Ad2NB7d+3/s0aBNrXXa7h7
	FVW+iwmIcpjawVIYVYmWHO96P0g70TgGLMTOx907t35HWhoXocUnQGgHhDS4LH5TQ7gS
	kFYFPmu5nmQbTvZb1DrAKvoketH5Kr/aHUNs3xED8atOKA8KKupxF474bBmib4Ad/ztk
	O2wNQMPnc0uXo6EGmp7PaxFFQoTDz4mCZR2TidxcB9IyPTbgTHKBf1KRU06cGafBzoQS
	rRAC0VmB4Xm+LEpJny1+gtrsVoSyeNH72Yf4AT/exIXUEK4+LDtsvRqKvqGk4T901WrA
	lCJA==
MIME-Version: 1.0
X-Received: by 10.224.92.83 with SMTP id q19mr15890542qam.29.1411639200806;
	Thu, 25 Sep 2014 03:00:00 -0700 (PDT)
Received: by 10.140.44.68 with HTTP; Thu, 25 Sep 2014 03:00:00 -0700 (PDT)
Date: Thu, 25 Sep 2014 18:00:00 +0800
Message-ID: <CACjDgAMYTpdLF5YSJNVkceaYMXCVT1n-th1nJuTc=nYFu7EPDg@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: yocto@yoctoproject.org
Subject: Adding OpenEmbedded layer
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
X-List-Received-Date: Thu, 25 Sep 2014 10:00:08 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I am getting the following error during the build  after adding the
OpenEmbedded layer what is wrong here?.   I have installed poky daisy
1.6.1 and the basic install can compile without error.   I wanted to
add luajit recipe and that was found in the meta-oe of
meta-OpenEmbedded and have clone the git.

 I tried both manually editing the build/conf/bblayers.conf as well as
adding the layer in hob both throws the same error below.

How do I resolve the issue?  Thanks for helping.

ExpansionError during parsing
/yocto/poky/meta-openembedded/meta-oe/recipes-support/lzip/lzip_1.15.bb:
Failure expanding variable do_fetch[file-checksums], expression was
${@bb.fetch.get_checksum_file_list(d)} which triggered exception
MalformedUrl: The URL: '${SAVANNAH_GNU_MIRROR}/lzip/lzip-1.15.tar.gz'
is invalid and cannot be interpreted

