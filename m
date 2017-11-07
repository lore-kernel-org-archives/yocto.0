Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A1ADE00D24; Tue,  7 Nov 2017 05:26:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.35.17.28 listed in list.dnswl.org]
Received: from goliath.siemens.de (goliath.siemens.de [192.35.17.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44BAAE00CD4
	for <yocto@yoctoproject.org>; Tue,  7 Nov 2017 05:26:09 -0800 (PST)
Received: from mail1.siemens.de (mail1.siemens.de [139.23.33.14])
	by goliath.siemens.de (8.15.2/8.15.2) with ESMTPS id vA7DQ5TX010408
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK); 
	Tue, 7 Nov 2017 14:26:05 +0100
Received: from [139.16.78.236] (MD1FZU9C.ad001.siemens.net [139.16.78.236])
	by mail1.siemens.de (8.15.2/8.15.2) with ESMTP id vA7DQ40Z010182;
	Tue, 7 Nov 2017 14:26:04 +0100
To: Alex Lennon <ajlennon@dynamicdevices.co.uk>, Khem Raj <raj.khem@gmail.com>
References: <1509101466-32192-1-git-send-email-pascal.bach@siemens.com>
	<CAMKF1sqnUFWx2yXDovoRsyivNneBsmje1_cJ7+2NC99-_pxtYw@mail.gmail.com>
	<449ad5e0-fef6-a9c3-3ba9-4eec46a60b67@siemens.com>
	<CAMKF1spgFtqfNnXWj=NJ=egJ_TS4WpEb0_65pm_ehy6vhH1__w@mail.gmail.com>
	<672ece18-ad55-1198-0753-499fb9cd370f@dynamicdevices.co.uk>
From: Pascal Bach <pascal.bach@siemens.com>
Message-ID: <1bd6b35a-c58e-df9c-2855-e2c3657ea360@siemens.com>
Date: Tue, 7 Nov 2017 14:26:04 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <672ece18-ad55-1198-0753-499fb9cd370f@dynamicdevices.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-mono][PATCH] mono-4.xx: compiling mono 4 with btls requires cmake
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
X-List-Received-Date: Tue, 07 Nov 2017 13:26:11 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

 

>>>
>>> Mono requires cmake to build the bundled BoringSSL library. I didn't look why it works in detail but I currently assume that BoringSSL is standalone enough that no additional
>>> CMake toolchain settings are required to make it work.
>>>
>> yeah that probably is a case of bundling which is on rise at app level
>> these days,
>>
>>> One option would be to disable it with `--disable-btls` but I fear that would disable TLS1.2 support (http://www.mono-project.com/docs/about-mono/releases/4.8.0/#tls-12-support).
>>> But I have no way of checking that.
>>>
>> interesting, do they support any other TLS implementations ?
>>
>
> It is disabled in 5.x builds by default as it breaks the build e.g.
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-mono/tree/recipes-mono/mono/mono-5.4.0.201.inc
>
> It's probably time to look at a working build with it re-enabled. Patches welcomed...
>
> (I did have a quick look at inheriting cmake but that breaks the build too)
>
I did some more testing. And adding "cmake-native" still doesn't build btls. I guess it need cmake to figure that out. But this means it was never enabled in the first place.

So my proposal for the moment is to explicitly set "--disable-btls" for Mono 4 too, this way it builds and it is clear that it is disabled.

If somebody figures out how to enable it again. I will send an updated Patch.

Pascal


