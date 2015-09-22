Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCAD5E00DDE; Mon, 21 Sep 2015 19:48:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27F4DE009C5
	for <yocto@yoctoproject.org>; Mon, 21 Sep 2015 19:48:00 -0700 (PDT)
Received: by igbkq10 with SMTP id kq10so91735764igb.0
	for <yocto@yoctoproject.org>; Mon, 21 Sep 2015 19:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-type:content-transfer-encoding;
	bh=wTcd/nQxOHt7VvcOIHDhcEcraEGaGSO3nkhkRg6NV3E=;
	b=Nq3Yl+K6D/gwaI4UWt2Cr1UFwAE7deFXuZ6fwUGT1eQU0Y1XJfuEUZjybcSavHWl/x
	oQW+Mt+/MA+Q4bANTh2lCoK1ZH4pWYLfvCl60zU9jiU0O8gIfJr+JEjkMOivUq28J5zP
	PUhTv/bbfiQqcsNni0qtQhCPEA7odvFNlOTqP0dm9/aQ45Fqy7SGviQGDwLnWW3hTXq7
	l61iI+pOXQ1EGOUfC6m2wBC0Job+YG7GogttTaaEkjNgf7n5LETpPpgeFVdU2HEmMQL7
	bIrYlJITM0An7SZLd4YEwuG9WmDnuR99UCJ0ykZmMDesGh4QqtitwUg59Nn6Y8YyKDDs
	Zh7w==
X-Received: by 10.50.143.4 with SMTP id sa4mr13778151igb.33.1442890080251;
	Mon, 21 Sep 2015 19:48:00 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	gb7sm292898igd.20.2015.09.21.19.47.59 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 21 Sep 2015 19:47:59 -0700 (PDT)
To: yocto@yoctoproject.org
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <5600C15B.2020908@gmail.com>
Date: Mon, 21 Sep 2015 22:47:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
Subject: specify compiler version in recipe
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
X-List-Received-Date: Tue, 22 Sep 2015 02:48:01 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

It looks like I already know the answer to this one... ;-)

I'm guessing it isn't possible to specify the compiler version in a
recipe? That's probably way too late in the parse stage?

There are some vendor Linux kernels for some BSPs that are old enough to
pre-date the:

    fatal error: linux/compiler-gcc5.h: No such file or directory

issue. Which means we have to rely on users reading the README and
updating their conf/local.conf files to include

    GCCVERSION = "4.9%"

Unfortunately that process is error-prone. It would be great to have
that occur automatically. In other words: if you want to use the
community/default/upstream kernel then use the latest compiler (but you
won't have accelerated graphics). If you want accelerated graphics then
you have to PREFER an older kernel *and* specify which version of gcc to
use in your conf/local.conf.

Can anyone think of a clever trick for this one?

Are BSP maintainers patching their old kernels to support post-gcc-5.0
versions?

Best regards,
    Trevor

