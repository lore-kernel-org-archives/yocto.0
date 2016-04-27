Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1AA1E00849; Wed, 27 Apr 2016 10:54:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92B18E00756
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 10:54:22 -0700 (PDT)
Received: by mail-qg0-f43.google.com with SMTP id 90so4727971qgz.1
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 10:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+jNA+LRoe0Nxx17goc6Ti6hHoiVf2VPBrMmA1bQdUFs=;
	b=lhaNm3FLlXXVYZqDSbIMffg6m/W7ScqmPZeZr+bo6FJOXhMw019DwJJMyeYZkrsU6U
	qYZ/TPjceietcJuMK83zOG+spAgiCpP2RpKGONnEuoVWNc4aWLtJCIQPFYvEgR58EGo0
	JCyGu1DouZ/ZDavJF422mA1KeQFQXIUXcyxTiHgT27DjOUFx7thTCDcK2tefptlUHg71
	mX+naP6nGZHloVz8kUhpzqlS2YoX54T+oE+RB1UMfCUXPXGjLrio/ZYforZI/b/Sbvye
	VLxe+kiY7RFm/79j5ioDNTy69kGA660gc+8D3P0qOcm2KBl8E+I9uxAcxSYvh35xEdcy
	oOvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+jNA+LRoe0Nxx17goc6Ti6hHoiVf2VPBrMmA1bQdUFs=;
	b=LMMF4geiTZjpE7vF8+AVjnOmVRyPrZX4NJ+DMNvhJViCFPAR8ufV4//UGvyxY1ZLMH
	czM/ykqxHfsa9z/s6ViDW3yiG6R+h09maJHYWtSxhdyW8l70uQ0uzJEq7FYNsicqO9Uw
	uc3fBvRX1dxyeFrL6cFUFSqpB2EDsjPHWvvRkC2Sf5wzGd1s/tOLwDO4FU97GqJmob4v
	LiG3CAVvlC2ARUZDxfyl+Xfjmq9m5zh3HtitJN4aVZg/I04wIXEicEYBEKBoDpSofx1z
	F+ZqDcaQ09OcP27UcdMQ/P24p18rA3IYKVqZzsjzCoFmI0y2ZtjLvKLX2saFtZ9h97vk
	AyhQ==
X-Gm-Message-State: AOPr4FX9TJOGzXlVN9lM7yX06qBL5LQsbeYmHErGNMJXGQA0usjDiRLbvBlWzMFTPwDtzCQLb7gjAjrFCXhRGg==
X-Received: by 10.140.19.174 with SMTP id 43mr9749124qgh.44.1461779661721;
	Wed, 27 Apr 2016 10:54:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Wed, 27 Apr 2016 10:53:52 -0700 (PDT)
In-Reply-To: <CAJTo0LZZ3Hs_yrm5ceik4j8Orv-UQ9T72Wu=R_PCRKw4Y9-WCw@mail.gmail.com>
References: <B1D22563-F31B-4EF1-90D6-16EB391134D5@gmail.com>
	<CACS+7ZSpWgziO+GF++25dM7kgP4SZ_GDV+-DcEMQ_YUGyEEnfQ@mail.gmail.com>
	<CAMKF1spQn114r9dCAk9z7c3hw-NJp3pVoVP+f3gao2mhLTBHYg@mail.gmail.com>
	<CAMKF1spwimpQwSE38B5jWmyZXwMKy6znMEF9p-NmTM4mGGr+4g@mail.gmail.com>
	<CAJTo0Lb25x1H44nGn05d6qBVLDpyiaZ3XW40fdrAWcP_D+qYwg@mail.gmail.com>
	<CAJTo0LZZ3Hs_yrm5ceik4j8Orv-UQ9T72Wu=R_PCRKw4Y9-WCw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 27 Apr 2016 10:53:52 -0700
Message-ID: <CAMKF1sozR3_Mhy5PKSaKCo7S2yHrtLzTNrUURFhN38gV0AbkYQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>,
	OE Core mailing list <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 6 Recipes
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
X-List-Received-Date: Wed, 27 Apr 2016 17:54:27 -0000
Content-Type: text/plain; charset=UTF-8

thanks I think most of them come to these categories. So any help in
fixing them is welcome.

1. kernel older than 4.4, backport needed fixed into these branches or
move to newer kernels.
2. uboot dont have gcc6 compiler header files, backport the needed fixes
2. meta-qt4 needs to use gnu++98
3. gcc6 providing its own stdlib.h in libstdc++
4. gcc6 swtiching to gnu++14 for C++ as default.
5. GPLv2-only versions of recipes are simply old will need fixing

I will take a stab at fixing the nativesdk recipes which is mostly due
to stdlib.h issue.


On Wed, Apr 27, 2016 at 1:53 AM, Burton, Ross <ross.burton@intel.com> wrote:
> Finally made errors.yp do the right thing:
> http://errors.yoctoproject.org/Errors/Latest/?filter=91ef7bf5ad13304827e2ef06738f7fc28ed650f6&type=commit
> is a list of all the failures.
>
> Ross
>
> On 27 April 2016 at 09:02, Burton, Ross <ross.burton@intel.com> wrote:
>>
>>
>> On 21 April 2016 at 04:06, Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>> I have updated
>>>
>>> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/gcc-6
>>>
>>> With few more patches added now. Most of packages in OE-Core are
>>> building fine except linux-yocto on mips and ppc
>>
>>
>> I threw this at the autobuilder.  Lots of c++ failures on various
>> architectures.
>>
>> https://autobuilder.yoctoproject.org/main/tgrid, the row for SHA 91ef.
>>
>> Ross
>
>

