Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90356E00E6D; Tue, 16 Aug 2016 07:44:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2B69E00E3D
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 07:44:18 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id 4so101624669oih.2
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 07:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=dKC3xipXMfVL5EUGOT40BHadCIrYDwV1QqgC5Xn3zRw=;
	b=ct6jtQNDFp05ZyTgnEF0XBT49eF+0XgQgjVi0Rhmq8swBNGAd9PHVmHgOTVnWrCA9J
	LJ597lJ0WdIo1OrknBampqlaIQrz3BGerZBh6lQj1japT0QbFzka0Zgdzy8iekzfvCJ0
	5BtYIAd9QxRy4sTJPjH6a+MHwOzE0FQtOJl6s9ayLY7PsXrRci84BvK4x/3L2EcaRndY
	JVP9OqCJRiDzf/hk3X9eDS0d8zQZX+XY3Um+yGP+MQv14Zuw+vVZ9pXVb7NiMen83Wgs
	jg9kzRn2mcvI6kaLal1K1nKadm0BGbE0EJBrSaPMeczOi4K7AHqVX4ul6X5yH6/La/Rx
	yEOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=dKC3xipXMfVL5EUGOT40BHadCIrYDwV1QqgC5Xn3zRw=;
	b=ijfLCvuTWoxIrTvZSPdnfJicPxnuyWTXX2oSqkX01bTuhzqPnbZH4/NEalHC/6aAXK
	CXPF3xuBD3NR8SIi81zzE2tF+OTdii0NEwCWru5E+fKS26zOYMpVec26rrAZz74JlCqb
	hJll4lq+5ue3vFXwlE6gdrk8Lr52JEURWiNkrUQX/L22UR416Rp8RnMqPp4skewxdmfZ
	KAtL2N18QhuKVTMIhxqCLw+wuGlJ8ADZ5tN2aEfi32lGYfReiK81umiiZX2soLpQ5cBz
	TMiQJm0/Wt/iCZBlqaFrbV3yOHOp1/NQNHdxz9P9uUv0B/U7luiWYBp8EN0A7I5713nB
	qu9A==
X-Gm-Message-State: AEkoouumYzxoN13mjUmibDOMot1zmJzHZ52uuI92qlxQLNU3XCmRFII929gGVu7az/Nfi0g6J3tcUnkKl68lFg==
X-Received: by 10.202.253.207 with SMTP id b198mr1139285oii.89.1471358657900; 
	Tue, 16 Aug 2016 07:44:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.13.137 with HTTP; Tue, 16 Aug 2016 07:43:47 -0700 (PDT)
From: Patrick Doyle <wpdster@gmail.com>
Date: Tue, 16 Aug 2016 10:43:47 -0400
Message-ID: <CAF_dkJD9wqM7rg7U1VeiDs+adEREcoNna58dghfN2BvbxVLWqA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to maintain a global DL_DIR?
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
X-List-Received-Date: Tue, 16 Aug 2016 14:44:19 -0000
Content-Type: text/plain; charset=UTF-8

As I am playing with several different Yocto/OE projects, I thought it
would be nice to set up a global downloads directory.

Also, being a somewhat forgetful sort, I thought it would be nice if I
could set DL_DIR in my .bashrc and not have to remember to edit
conf/local.conf each time I follow the directions from a third party
site to set up their Yocto based distribution.

Can I do this?  If so, how?

Do I add DL_DIR to BB_ENV_WHITELIST?  Do I add it to
BB_ENV_EXTRAWHITE?  But I note that poky/scripts/oe-buildenv-internal
arbitrarily blasts its own values into BB_ENV_EXTRAWHITE, so setting
BB_ENV_EXTRAWHITE in my .bashrc won't work.

Perhaps I am misunderstanding the concept of the whitelist.  Perhaps I
should just ask for some help.

Help.

Can I maintain a single global download directory specified solely
through environment variables?  If so, how?

Thanks.

--wpd

