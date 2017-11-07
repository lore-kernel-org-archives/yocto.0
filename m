Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53BE1E00D24; Tue,  7 Nov 2017 05:57:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC672E00CD4
	for <yocto@yoctoproject.org>; Tue,  7 Nov 2017 05:57:18 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 0B25A35CE23;
	Tue,  7 Nov 2017 13:57:17 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id wr-2htp0enTv; Tue,  7 Nov 2017 13:57:08 +0000 (UTC)
Received: from [127.0.0.1] (cpc111193-live30-2-0-cust656.17-2.cable.virginm.net
	[92.232.58.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 81FB035C15C;
	Tue,  7 Nov 2017 13:57:08 +0000 (UTC)
To: Pascal Bach <pascal.bach@siemens.com>, Khem Raj <raj.khem@gmail.com>
References: <1509101466-32192-1-git-send-email-pascal.bach@siemens.com>
	<CAMKF1sqnUFWx2yXDovoRsyivNneBsmje1_cJ7+2NC99-_pxtYw@mail.gmail.com>
	<449ad5e0-fef6-a9c3-3ba9-4eec46a60b67@siemens.com>
	<CAMKF1spgFtqfNnXWj=NJ=egJ_TS4WpEb0_65pm_ehy6vhH1__w@mail.gmail.com>
	<672ece18-ad55-1198-0753-499fb9cd370f@dynamicdevices.co.uk>
	<1bd6b35a-c58e-df9c-2855-e2c3657ea360@siemens.com>
From: Alex Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <a5f3d58a-c0d2-6c26-81a5-c544679b2f5f@dynamicdevices.co.uk>
Date: Tue, 7 Nov 2017 13:57:09 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <1bd6b35a-c58e-df9c-2855-e2c3657ea360@siemens.com>
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
X-List-Received-Date: Tue, 07 Nov 2017 13:57:20 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB



On 07/11/2017 13:26, Pascal Bach wrote:
>   
>
>>>> Mono requires cmake to build the bundled BoringSSL library. I didn't look why it works in detail but I currently assume that BoringSSL is standalone enough that no additional
>>>> CMake toolchain settings are required to make it work.
>>>>
>>> yeah that probably is a case of bundling which is on rise at app level
>>> these days,
>>>
>>>> One option would be to disable it with `--disable-btls` but I fear that would disable TLS1.2 support (http://www.mono-project.com/docs/about-mono/releases/4.8.0/#tls-12-support).
>>>> But I have no way of checking that.
>>>>
>>> interesting, do they support any other TLS implementations ?
>>>
>> It is disabled in 5.x builds by default as it breaks the build e.g.
>>
>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-mono/tree/recipes-mono/mono/mono-5.4.0.201.inc
>>
>> It's probably time to look at a working build with it re-enabled. Patches welcomed...
>>
>> (I did have a quick look at inheriting cmake but that breaks the build too)
>>
> I did some more testing. And adding "cmake-native" still doesn't build btls. I guess it need cmake to figure that out. But this means it was never enabled in the first place.
>
> So my proposal for the moment is to explicitly set "--disable-btls" for Mono 4 too, this way it builds and it is clear that it is disabled.
>
> If somebody figures out how to enable it again. I will send an updated Patch.
>
> Pascal
>
>

Pascal,

For now I've put a couple of commits into master which re-enable BTLS 
for 5.8.022 and 5.4.0.201. Both of these seem to build with your cmake 
dependency added.

After listening to the team at #OEDEM I've been working to add basic 
Image Test support to core-image-mono and to get the Yocto Auto Builder 
going so I can automate some testing of the yocto release vs mono 
version vs mono features matrix

That's finally coming together at which point I'm hoping to genericise a 
bit more.

There are currently just three basic run time tests which previous to 
the image test support I've been performing manually

ref: 
http://git.yoctoproject.org/cgit/cgit.cgi/meta-mono/tree/lib/oeqa/runtime/cases/mono.py

If you have suggestions/patches for an image test for TLS (or indeed any 
other tests) they'll be gratefully received.

At some point I want to extend this with ptest support for running the 
Mono test suite on the target { qemu / real hardware etc }

ref: http://www.mono-project.com/community/contributing/test-suite/

Cheers,

Alex


