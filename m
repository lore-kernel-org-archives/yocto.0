Return-Path: <jags.gediya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 154C8E003FA; Sat, 12 Jul 2014 05:57:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jags.gediya[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.42 listed in list.dnswl.org]
Received: from mail-qa0-f42.google.com (mail-qa0-f42.google.com
	[209.85.216.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7681E00342;
	Sat, 12 Jul 2014 05:56:51 -0700 (PDT)
Received: by mail-qa0-f42.google.com with SMTP id j15so1804649qaq.15
	for <multiple recipients>; Sat, 12 Jul 2014 05:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=nVYPjCK76pZyyk2A7kDPfSd0KbjK04NPBK6TwBj734U=;
	b=H2hNGMaBYkELRrgPjs0bs7HbAXS3lY94rk/p3uN8482dYGWWOGzKjWcqCw1rfIhj0k
	sFF2ArVZYA/jYBCaS43tDRESKZ58MHU2KjTGZWkxW29FdLVNLV6Z2dke4XfqhXl9geCI
	3mJ31Hcrgs3+DeVwA9xAxdn4SFPX9sAxU+4FyZejRSNQT0JoBWVICYMeLc6tslNQ7G/8
	+tt2dnwzP3AqpuOG8StDQKPqocWhcdIOtS85b/IiaAiNG/lTaaZEC76y1Nm6XiVXlRuW
	hKg7TfCyYczZMnKKL1CuSSSY9DBHyrUMHiQCZsb0n4aDNQhnwac/u2yz7COyBNBKoxrU
	SjdQ==
MIME-Version: 1.0
X-Received: by 10.140.82.113 with SMTP id g104mr7484858qgd.55.1405169810706;
	Sat, 12 Jul 2014 05:56:50 -0700 (PDT)
Received: by 10.224.37.133 with HTTP; Sat, 12 Jul 2014 05:56:50 -0700 (PDT)
Date: Sat, 12 Jul 2014 18:26:50 +0530
Message-ID: <CAP3RZojBxGbedn=dCOthj=08A73xMtF1Wceq+-TA=vtxMDLPrQ@mail.gmail.com>
From: jags gediya <jags.gediya@gmail.com>
To: yocto@yoctoproject.org, meta-freescale@yoctoproject.org
Subject: pack kernel modules in file system
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
X-List-Received-Date: Sat, 12 Jul 2014 12:57:02 -0000
Content-Type: text/plain; charset=UTF-8

I am building yocto for imx6sl evolution kit. After built, all the
images are available in tmp/deploy/images/imx6slevk

but kernel modules are not available in /lib/modules/... directory of
the file system.
some other files are available in /lib/modules/.. like modules.dep
etc. but kernel modules are not there. Instead modules-imx6slevk.tgz
file is made with images.
Is there any way to put these modules in the file system while built?

Thanks,
Jags

