Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBAEDE00348
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 10:05:06 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id qB6I56bE020203
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 6 Dec 2012 10:05:06 -0800 (PST)
Received: from msp-dhcp50.wrs.com (172.25.34.50) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Thu, 6 Dec 2012 10:05:06 -0800
Message-ID: <50C0DE57.2040904@windriver.com>
Date: Thu, 6 Dec 2012 12:05:11 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:16.0) Gecko/20121026 Thunderbird/16.0.2
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CA452391058F6D4E9715FB2C29D9312A0137811C@039-SN2MPN1-021.039d.mgd.msft.net>
In-Reply-To: <CA452391058F6D4E9715FB2C29D9312A0137811C@039-SN2MPN1-021.039d.mgd.msft.net>
Subject: Re: Difference of toolchain recipes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Dec 2012 18:05:07 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/6/12 4:00 AM, Luo Zhenhua-B19537 wrote:
> Can anybody shed some light, please?
>
>
> Best Regards,
>
> Zhenhua
>
>
>> -----Original Message-----
>> From: Luo Zhenhua-B19537
>> Sent: Tuesday, December 04, 2012 11:53 AM
>> To: openembedded-core@lists.openembedded.org; 'yocto@yoctoproject.org'
>> Subject: Difference of toolchain recipes
>>
>> It is a bit confused for the different recipes of toolchian, can somebody
>> help to explain what's the difference for those recipes? E.g. gcc-cross,
>> gcc-cross-canadian, gcc-cross-initial, gcc-cross-intermediate, gcc-
>> crosssdk, gcc-crosssdk-initial, gcc-crosssdk-intermediate, gcc-runtime,
>> etc.

gcc-cross-initial - This is the initial compiler needed to bootstrap the 
toolchain to build software on the host for the target.  (This is a 'native' 
package.)

gcc-cross-intermediate - This is the second stage of the bootstrap process to 
build software on the host for the target. (This is a 'native' package.)

gcc-cross - this is the the final stage of the bootstrap process, and results in 
the cross compiler to build software on the host for the target.  (This is a 
'native' package.)  If you are replacing the cross compiler toolchain with a 
custom version, this is what you must replace.

gcc-runtime - these are the runtime libraries, but from the toolchain 
bootstrapping process.  This results in a 'target' binary.

gcc-crosssdk-initial/intermediate - stage 1 and 2 of the a cross compiler to 
build from the 'host' to the 'sdk'.  Often the SDK is not the same target as the 
host.  (This is a 'native' binary.)

gcc-crosssdk - this the final stage of the SDK compiler.  Again, this is to 
build on the host, for the sdk.  This is a 'native' binary.

gcc-cross-canadian - This is the compiler included with the SDK to build on the 
SDK machine creating software for the target.  This is an 'nativesdk' package.

>> Is there any document for those description?

Not that I know of.. It's one of those things that you kind of need to know in 
order to work with it.  It likely should be documented somewhere officially.

--Mark

>>
>>
>> Best Regards,
>>
>> Zhenhua
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


