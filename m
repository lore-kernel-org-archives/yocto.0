Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B2CDE007B6; Thu, 30 Apr 2015 07:06:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F375AE0049A
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 07:06:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.9) with ESMTP id t3UE63IV029703
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 30 Apr 2015 07:06:04 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 30 Apr 2015 07:06:03 -0700
Message-ID: <554236CB.6000604@windriver.com>
Date: Thu, 30 Apr 2015 10:06:03 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: =?windows-1252?Q?=22Schauml=F6ffel=2C_Jan=22?=
	<J.Schaumloeffel@astro-kom.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <ce604c0c1a1d4131a72119dbecb97ab2@ASTRO-EX1.Bensberg.de>	<553F90A3.9070501@windriver.com>	<82ac67a7e46e416dbabdda01c42fc89a@ASTRO-EX1.Bensberg.de>	<553FD83A.6040407@windriver.com>	<4f2d75bf33ac423ab064f754e0b67655@ASTRO-EX1.Bensberg.de>	<5540DB34.6010102@windriver.com>	<a01714e680f8470cb21bb0b52e66c91e@ASTRO-EX1.Bensberg.de>	<55421DA2.9060909@windriver.com>
	<e134e69a27bd460a9da71929a7f78d9a@ASTRO-EX1.Bensberg.de>
In-Reply-To: <e134e69a27bd460a9da71929a7f78d9a@ASTRO-EX1.Bensberg.de>
Subject: Re: Migration from 1.7.1 to 1.8 - kernel-abiversion missing
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
X-List-Received-Date: Thu, 30 Apr 2015 14:06:13 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-04-30 08:27 AM, Schaumlöffel, Jan wrote:
>> What kernel recipe is used when your machine is set to 'astro' ?
>> Something custom ? Or have you added machine compatibility to another
>> known kernel recipe ?
>
> How would I see which kernel recipe is used?

This is where my brute force techniques probably break down. I just
do a 'bitbake virtual/kernel' and you'll see it display which
recipe is being built.

If you haven't added compatibility for your new machine to any
recipe, I'm betting that linux-dummy is used.

>
> I did not customize anything except for aforementioned steps, simply copied beaglebone.conf to astro.conf in the same directory. Also I did not touch any kernel recipes (kernel is built externally), maybe that's what's missing?

It is plausible. But in theory, linux-dummy should still provide
what you need (but since it doesn't build anything, there is
no abi .. and no modules can be built against it) .. so the
error isn't graceful.

Bruce

>
> Jan
>


