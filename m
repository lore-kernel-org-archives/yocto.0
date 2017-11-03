Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62A18E00D36; Fri,  3 Nov 2017 04:48:42 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B95AE00C59
	for <yocto@yoctoproject.org>; Fri,  3 Nov 2017 04:48:41 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id CF83C35CE20;
	Fri,  3 Nov 2017 11:48:39 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 6loGGEEd_1DI; Fri,  3 Nov 2017 11:48:28 +0000 (UTC)
Received: from [127.0.0.1] (cpc111193-live30-2-0-cust656.17-2.cable.virginm.net
	[92.232.58.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id C6B5C35CE1A;
	Fri,  3 Nov 2017 11:48:28 +0000 (UTC)
To: Khem Raj <raj.khem@gmail.com>, Pascal Bach <pascal.bach@siemens.com>
References: <1509101466-32192-1-git-send-email-pascal.bach@siemens.com>
	<CAMKF1sqnUFWx2yXDovoRsyivNneBsmje1_cJ7+2NC99-_pxtYw@mail.gmail.com>
	<449ad5e0-fef6-a9c3-3ba9-4eec46a60b67@siemens.com>
	<CAMKF1spgFtqfNnXWj=NJ=egJ_TS4WpEb0_65pm_ehy6vhH1__w@mail.gmail.com>
From: Alex Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <672ece18-ad55-1198-0753-499fb9cd370f@dynamicdevices.co.uk>
Date: Fri, 3 Nov 2017 11:48:30 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1spgFtqfNnXWj=NJ=egJ_TS4WpEb0_65pm_ehy6vhH1__w@mail.gmail.com>
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
X-List-Received-Date: Fri, 03 Nov 2017 11:48:42 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB



On 02/11/2017 15:59, Khem Raj wrote:
> On Thu, Nov 2, 2017 at 8:46 AM, Pascal Bach <pascal.bach@siemens.com> wrote:
>> On 27.10.2017 23:41, Khem Raj wrote:
>>> On Fri, Oct 27, 2017 at 3:51 AM, Pascal Bach <pascal.bach@siemens.com> wrote:
>>>> This was probably working before pyro and the recipes specific sysroots.
>>>>
>>>> Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
>>>> ---
>>>>   recipes-mono/mono/mono-4.xx.inc | 2 +-
>>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/recipes-mono/mono/mono-4.xx.inc b/recipes-mono/mono/mono-4.xx.inc
>>>> index e06fac7..cf9170b 100644
>>>> --- a/recipes-mono/mono/mono-4.xx.inc
>>>> +++ b/recipes-mono/mono/mono-4.xx.inc
>>>> @@ -4,7 +4,7 @@ HOMEPAGE = "http://mono-project.com"
>>>>   BUGTRACKER = "http://bugzilla.xamarin.com/"
>>>>   SECTION = "devel"
>>>>
>>>> -DEPENDS = "zlib"
>>>> +DEPENDS = "zlib cmake-native"
>>>>
>>> perhaps this should inehrit cmake if its using cmake
>>> or explain how cmake is used where abstactions
>>> are not relevant
>> Using the cmake bbclass doesn't work as it is not really a CMake project.
>>
>> Mono requires cmake to build the bundled BoringSSL library. I didn't look why it works in detail but I currently assume that BoringSSL is standalone enough that no additional
>> CMake toolchain settings are required to make it work.
>>
> yeah that probably is a case of bundling which is on rise at app level
> these days,
>
>> One option would be to disable it with `--disable-btls` but I fear that would disable TLS1.2 support (http://www.mono-project.com/docs/about-mono/releases/4.8.0/#tls-12-support).
>> But I have no way of checking that.
>>
> interesting, do they support any other TLS implementations ?
>

It is disabled in 5.x builds by default as it breaks the build e.g.

http://git.yoctoproject.org/cgit/cgit.cgi/meta-mono/tree/recipes-mono/mono/mono-5.4.0.201.inc

It's probably time to look at a working build with it re-enabled. 
Patches welcomed...

(I did have a quick look at inheriting cmake but that breaks the build too)

Cheers,

Alex


