Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80297E00AAF; Thu,  2 Nov 2017 08:46:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.35.17.14 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from david.siemens.de (david.siemens.de [192.35.17.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E35B6E00928
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 08:46:13 -0700 (PDT)
Received: from mail3.siemens.de (mail3.siemens.de [139.25.208.14])
	by david.siemens.de (8.15.2/8.15.2) with ESMTPS id vA2Fk9j7021277
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK); 
	Thu, 2 Nov 2017 16:46:09 +0100
Received: from [139.16.78.191] (MD1FZU9C.ad001.siemens.net [139.16.78.191])
	by mail3.siemens.de (8.15.2/8.15.2) with ESMTP id vA2Fk99n017420;
	Thu, 2 Nov 2017 16:46:09 +0100
To: Khem Raj <raj.khem@gmail.com>
References: <1509101466-32192-1-git-send-email-pascal.bach@siemens.com>
	<CAMKF1sqnUFWx2yXDovoRsyivNneBsmje1_cJ7+2NC99-_pxtYw@mail.gmail.com>
From: Pascal Bach <pascal.bach@siemens.com>
Message-ID: <449ad5e0-fef6-a9c3-3ba9-4eec46a60b67@siemens.com>
Date: Thu, 2 Nov 2017 16:46:09 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqnUFWx2yXDovoRsyivNneBsmje1_cJ7+2NC99-_pxtYw@mail.gmail.com>
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
X-List-Received-Date: Thu, 02 Nov 2017 15:46:15 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 27.10.2017 23:41, Khem Raj wrote:
> On Fri, Oct 27, 2017 at 3:51 AM, Pascal Bach <pascal.bach@siemens.com> wrote:
>> This was probably working before pyro and the recipes specific sysroots.
>>
>> Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
>> ---
>>  recipes-mono/mono/mono-4.xx.inc | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/recipes-mono/mono/mono-4.xx.inc b/recipes-mono/mono/mono-4.xx.inc
>> index e06fac7..cf9170b 100644
>> --- a/recipes-mono/mono/mono-4.xx.inc
>> +++ b/recipes-mono/mono/mono-4.xx.inc
>> @@ -4,7 +4,7 @@ HOMEPAGE = "http://mono-project.com"
>>  BUGTRACKER = "http://bugzilla.xamarin.com/"
>>  SECTION = "devel"
>>
>> -DEPENDS = "zlib"
>> +DEPENDS = "zlib cmake-native"
>>
> perhaps this should inehrit cmake if its using cmake
> or explain how cmake is used where abstactions
> are not relevant
Using the cmake bbclass doesn't work as it is not really a CMake project.

Mono requires cmake to build the bundled BoringSSL library. I didn't look why it works in detail but I currently assume that BoringSSL is standalone enough that no additional
CMake toolchain settings are required to make it work.

One option would be to disable it with `--disable-btls` but I fear that would disable TLS1.2 support (http://www.mono-project.com/docs/about-mono/releases/4.8.0/#tls-12-support).
But I have no way of checking that.

Pascal


>
>>  SRC_URI = "http://download.mono-project.com/sources/mono/mono-${PV}.tar.bz2 \
>>             file://dllmap-config.in.diff \
>> --
>> 2.1.4
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


