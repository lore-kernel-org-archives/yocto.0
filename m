Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6B22E0107B; Thu, 25 Aug 2016 02:33:10 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81E71E01073
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 02:33:08 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 439A327EB1C;
	Thu, 25 Aug 2016 09:33:06 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 5G9mS7YW_kQ9; Thu, 25 Aug 2016 09:32:43 +0000 (UTC)
Received: from [172.20.10.2] (unknown [46.188.223.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 7010127EB10;
	Thu, 25 Aug 2016 09:32:43 +0000 (UTC)
To: Craig McQueen <craig.mcqueen@innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A4022D2BE1F204@IR-CENTRAL.corp.innerrange.com>
	<5500469A22567C4BAF673A6E86AFA3A4022D2BE1F2C2@IR-CENTRAL.corp.innerrange.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <1a26c8a1-45c1-1a78-7813-7e797729a434@dynamicdevices.co.uk>
Date: Thu, 25 Aug 2016 11:32:42 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A4022D2BE1F2C2@IR-CENTRAL.corp.innerrange.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package mono-libs-4.5 size increase in Mono version 4.4.x
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
X-List-Received-Date: Thu, 25 Aug 2016 09:33:10 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 18/08/2016 03:19, Craig McQueen wrote:
> I wrote:
>> I've just had to upgrade from Mono 4.2.x to Mono 4.4.x, to get a fix for SMTP
>> SSL/TLS.
>>
>> I'm using the mono-libs-4.5 package. I see that the size of it has increased
>> quite a lot (several MB) due to the upgrade. It looks as though it's now
>> putting a bunch of files in /usr/lib/mono/4.5-api in addition to the old
>> /usr/lib/mono/4.5.
>>
>> I can see this mentioned in the Mono 4.4.0 release notes:
>> http://www.mono-project.com/docs/about-mono/releases/4.4.0/
>>
>> But the rationale is not entirely clear to me. Is it possible to cut down the
>> Yocto image size by removing one of /usr/lib/mono/4.5-api and
>> /usr/lib/mono/4.5, or some other refactoring?
> It looks as though, in my image for the device, I only need /usr/lib/mono/4.5.
>
> In my custom layer, I've made a mono_4.4.%.bbappend file which contains:
>
>     # Split /usr/lib/mono/4.5-api off into a separate package.
>     PACKAGES += "${PN}-libs-4.5-api"
>     
>     FILES_${PN}-libs-4.5-api                = "${libdir}/mono/4.5-api/*"
>     FILES_${PN}-libs-4.5                    = "${libdir}/mono/4.5/*"
>
> My image includes the package mono-libs-4.5 (as it did before when I was using Mono 4.2.x). Now the image size is back to near what it was for Mono 4.2.x, and everything on the target device seems to be running fine.
>

Thanks Craig. I'll take a look at adding this in

Cheers, Alex


