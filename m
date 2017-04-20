Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46D92E00AF0; Thu, 20 Apr 2017 00:26:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.172 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31DA4E00AE0
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 00:26:48 -0700 (PDT)
Received: by mail-io0-f172.google.com with SMTP id a103so59321492ioj.1
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 00:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:subject:message-id:mime-version:content-disposition
	:user-agent; bh=Yzry7LeD4tkg80OLJzD2o00wRcHshrQrNNyz+YOY/3s=;
	b=HUAJFoKm75gAnZFDkWUacFSqwYnyp2whINcRgaK8h8UWJaZX9ZEiE6CbyFYjmv8MNU
	CQE624zN97UkxSy6PyVUA0+Q0HogTahPybNeKP1+bYpVKH2DOR13DQDbJM2q/Y/z3EN8
	uvFXOJY2HaiZ1thSTP5Kblnfx2+XaEJB1bed4W0D917lCoiyyX6eMJZLSXGfFO2rejy5
	/nZGQ3VApzQgIVxcIIzoDJ/JsGXGj5wUqhv+Da4X9ctZml1UpvR8tHvlBD9sfb4J+mew
	ZfjYg+Cz22bFh101zPuHo/5gdiJRcH15JW54qCQxKVSvhOjZ+PcG2pU1mRSPOc5813lX
	+6Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version
	:content-disposition:user-agent;
	bh=Yzry7LeD4tkg80OLJzD2o00wRcHshrQrNNyz+YOY/3s=;
	b=eiw6iuSWBFCfhuwKVqk3Pa1er0eVj0zH5tVY8kMvZnzmszCeAAPB3uPQ6vNQcGpswj
	74N5axNZH5YVqiJ8Vq68PSDrW2x/fZdQQ4jv7M5lGhqph76r4e5IELYHbBWndMxiHyXC
	OGpWhz2i5YHkQAJQGUqOCWvQC2MmO8QCy8wfAegXFv/jYQCmy9LUoLXryAVxUmcQoxr6
	CmlXq/P+4+KlvPtv4a/QZVA7K0xanG0SIDz5bhYiQbjT3oAzlO3ms5le1I8Wq2jfHsUZ
	KpDTGf1Y8X106NntDT0qD2ox4B3HJR2QQ0aNrLxOvY0VgNynD8NQM/T2UJuYfXPSxU1o
	AlQA==
X-Gm-Message-State: AN3rC/6LSodgKQF5mDRuGa0gss2Vn2hTbAebvlKrO7TKoDrd8k19JZYn
	xwIZW1MdaAUu0DMv+xI=
X-Received: by 10.36.90.77 with SMTP id v74mr2151324ita.101.1492673172270;
	Thu, 20 Apr 2017 00:26:12 -0700 (PDT)
Received: from linux-uys3 ([108.161.123.115]) by smtp.gmail.com with ESMTPSA id
	d139sm7496672itd.6.2017.04.20.00.26.11 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Apr 2017 00:26:11 -0700 (PDT)
Date: Thu, 20 Apr 2017 03:26:09 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20170420072609.GB25443@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: overzealous packagedata
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
X-List-Received-Date: Thu, 20 Apr 2017 07:26:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

I'm trying to build a certain combination of software for a given SoC. mesa
(meta-gl, specifically) provides a libgbm, but if you don't want to use mesa's
libgbm you can disable it with a PACKAGECONFIG. I.e.

	PACKAGECONFIG_remove_pn-mesa-gl = "gbm"

It works, and looking at the packages-split I can verify that nothing gets
installed for either mesa's libgbm nor libgbm-dev.

This particular SoC's BSP, however, provides an SoC-specific libgbm that
should be used in place of mesa's. This is easy, set the PREFERRED_PROVIDER,
tell mesa you don't want its gbm and everything is good, right?

:-(

The build fails because the *packagedata* from both mesa-gl and this SoC's
specific libgbm collide. The packagedata, I guess, states what *might* be
installed. So since both packages might install /usr/lib/libgbm, the build
freaks out:

	ERROR: mesa-gl-2_17.0.2-r0 do_packagedata_setscene: The recipe mesa-gl is trying to install files into a shared area when those files already exist. Those files and their manifest location are:
	  /z/build-master/bbb/build/tmp-glibc/pkgdata/beaglebone/runtime/libgbm-dev
	    (matched in manifest-beaglebone-libgbm.packagedata)
	  /z/build-master/bbb/build/tmp-glibc/pkgdata/beaglebone/runtime/libgbm
	    (matched in manifest-beaglebone-libgbm.packagedata)
	Please verify which recipe should provide the above files.

This is very annoying because, even if hell froze over and somehow both libgbm
and mesa-gl installed both of their libgbm packages, there would actually only
be one provider since mesa-gl's libgbm package is, in fact, empty.

Is there a way to get this to work? I can't not build mesa-gl, because I need
some of its parts (virtual/mesa, virtual/libgl) and I can't not use the SoC's
libgbm because (I'm guessing) that's what I'm supposed to use.

