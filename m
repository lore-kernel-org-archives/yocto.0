Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD6BDE00444; Fri,  9 Sep 2016 07:46:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A699E00404
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 07:46:36 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u89EkQu1010770
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 9 Sep 2016 07:46:26 -0700
Received: from soho-mhatle-m.local (172.25.36.232) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Fri, 9 Sep 2016 07:46:25 -0700
To: Takashi Matsuzawa <tmatsuzawa@uievolution.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <BLUPR0101MB1586CBD9B1FAC1B7B8AB6EA7D7FA0@BLUPR0101MB1586.prod.exchangelabs.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <d589eaca-a2be-23d2-7533-d99b8e9e0a49@windriver.com>
Date: Fri, 9 Sep 2016 09:46:24 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <BLUPR0101MB1586CBD9B1FAC1B7B8AB6EA7D7FA0@BLUPR0101MB1586.prod.exchangelabs.com>
Subject: Re: ac_cv_sizeof_long size definition by SDK
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
X-List-Received-Date: Fri, 09 Sep 2016 14:46:39 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

On 9/9/16 6:33 AM, Takashi Matsuzawa wrote:
> Hello, Yocto.
> 
> 
> I am now puzzled by this variable ste in $CONFIG_SITE setup file in
> Yocto-generated SDK. 
> 
> 
> I generated x86_64 host, arm (32bit) target SDK.
> 
> And if I invoke $CC (arm-poky-linux-gnueabi-gcc), using this SDK, sizeof (long)
> is 4 (long = int)
> 
> 
> However, if I look into $CONFIG_SITE's definition of ac_cv_sizeof_long, it is
> defined as '8'.
> 
> I feel this is strange since if this cached configure data is for the target
> (and cross-compiling), this value should be 4, to match the above
> (arm-poky-linux-gnueabi-gcc) result.
> 
> (I think this part of the cache is being copied from poky/meta/site/x86_64-linux, )

There should be multiple caches.  There may be one for the host (nativesdk) and
one for each target (arm 32-bit).

Once you load the environment file for the arm system, the CONFIG_SITE setting
should point to the proper settings for the environment file you have loaded.

In a Power (32-bit) SDK I had laying around:

sourcing "environment-setup-powerpc-linux"

results in:

CONFIG_SITE=.../sdk/site-config-powerpc-linux

if I look at that file:

ac_cv_sizeof_long=${ac_cv_sizeof_long=4}

which is the correct value.


If this is NOT what you are seeing in your generated SDKs, and you are loading
the proper environment file, please file a defect with the Yocto Project
version, your configuration information and a way to reproduce the problem.

--Mark

> 
> This is causing break if I build autotool based program using the SDK.
> 
> 
> Am I doing mis-use of SDK here?
> 
> 
> 
> 
> 


