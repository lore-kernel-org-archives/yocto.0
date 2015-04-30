Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7240E009D2; Thu, 30 Apr 2015 05:18:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49CCFE009B6
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 05:18:49 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.9) with ESMTP id t3UCIi9k029260
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 30 Apr 2015 05:18:45 -0700 (PDT)
Received: from server.local (128.224.23.5) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 30 Apr 2015 05:18:44 -0700
Message-ID: <55421DA2.9060909@windriver.com>
Date: Thu, 30 Apr 2015 08:18:42 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: =?windows-1252?Q?=22Schauml=F6ffel=2C_Jan=22?=
	<J.Schaumloeffel@astro-kom.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <ce604c0c1a1d4131a72119dbecb97ab2@ASTRO-EX1.Bensberg.de>	<553F90A3.9070501@windriver.com>	<82ac67a7e46e416dbabdda01c42fc89a@ASTRO-EX1.Bensberg.de>	<553FD83A.6040407@windriver.com>	<4f2d75bf33ac423ab064f754e0b67655@ASTRO-EX1.Bensberg.de>	<5540DB34.6010102@windriver.com>
	<a01714e680f8470cb21bb0b52e66c91e@ASTRO-EX1.Bensberg.de>
In-Reply-To: <a01714e680f8470cb21bb0b52e66c91e@ASTRO-EX1.Bensberg.de>
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
X-List-Received-Date: Thu, 30 Apr 2015 12:18:56 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-04-30 3:14 AM, Schaumlöffel, Jan wrote:
>> That is really odd. I'll be interested to hear how that happened. I just did a
>> test and it points to where I expect:
>>
>>    [/home/bruc...poky/build]> bitbake -e core-image-minimal | grep
>> STAGING_KERNEL_BUILDDIR # $STAGING_KERNEL_BUILDDIR
>> STAGING_KERNEL_BUILDDIR="/home/bruce/poky/build/tmp/work-
>> shared/qemux86-64/kernel-build-artifacts"
>>
>
> So I experimented a bit more and found a minimal set of steps to reproduce the problem. Maybe that might give someone a clue as to what is happening and/or how to resolve it.
>
> Steps to reproduce:
>
> - clone Poky repository, checkout branch 'fido'
> - go to meta-yocto-bsp/conf/machine and copy beaglebone.conf to another file (I used astro.conf)
> - from poky repository do source oe-init-build-env into new build directory
> - edit conf/local.conf to set MACHINE ?= "astro" (use filename from second step) and DL_DIR (if present)
> - run bitbake core-image-minimal
>
> -> kernel-abiversion is missing, build fails
>
> - edit conf/local.conf, set MACHINE ?= "beaglebone"
> - run bitbake core-image-minimal
>
> -> image builds fine
>
> It stays the same if the copied config is in a custom BSP layer, some minor modifications are made, etc., but to eliminate complexity I just put that into the meta-yocto-bsp layer. What strikes me as really odd is that now the only thing changed between working and non-working configuration seems to be the filename of the machine configuration - what am I missing?
>

What kernel recipe is used when your machine is set to 'astro' ?
Something custom ? Or have you added machine compatibility to
another known kernel recipe ?

The big difference that I see would be the kernel recipe, and
some of the tasks not executing (and hence not generating the
abiversion file).

Bruce

> How do I create a working machine configuration for Poky 1.8? (In 1.7.1 I just took some machine configuration from eldk, fiddled around with it a bit, put it into my BSP layer and never had any trouble with that.)
>
> Regards,
> Jan
>


