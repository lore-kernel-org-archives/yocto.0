Return-Path: <jonathan.austin@arm.com>
Received: from service87.mimecast.com (service87.mimecast.com [91.220.42.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 628AFE00CEE
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 08:23:54 -0700 (PDT)
Received: from cam-owa2.Emea.Arm.com (fw-tnat.cambridge.arm.com
	[217.140.96.21]) by service87.mimecast.com;
	Fri, 11 Apr 2014 16:23:51 +0100
Received: from [10.2.202.23] ([10.1.255.212]) by cam-owa2.Emea.Arm.com with
	Microsoft SMTPSVC(6.0.3790.3959); Fri, 11 Apr 2014 16:24:03 +0100
Message-ID: <534808E0.6070900@arm.com>
Date: Fri, 11 Apr 2014 16:23:12 +0100
From: Jonathan Austin <jonathan.austin@arm.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Philip Balister <philip@balister.org>
References: <533AE7CE.6070708@arm.com> <533B5EB4.2000703@balister.org>
In-Reply-To: <533B5EB4.2000703@balister.org>
X-OriginalArrivalTime: 11 Apr 2014 15:24:03.0889 (UTC)
	FILETIME=[1263D210:01CF559A]
X-MC-Unique: 114041116235101401
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: ADT/SDK and cmake - generating the toolchain/cmake config
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
X-List-Received-Date: Fri, 11 Apr 2014 15:24:03 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Philip,

On 02/04/14 01:49, Philip Balister wrote:
> On 04/01/2014 09:22 AM, Jonathan Austin wrote:
>> Hi all,
>>
>> The ADT documentation walks you through building an 'app' using
>> autoconf/make, and the environment setup script that is created as part
>> of the SDK build contains all the necessary autofoo/environment
>> variables. This is great, and I've worked through the autotools example
>> happily. Thanks :)
>>
>> What I can't find, though, is anything that does the equivalent for
>> cmake. I'm new to cmake so could be missing something obvious, but after
>> seeing the 'environment-setup-TARGET' files (the ones at
>> /opt/poky/1.5.1/) I thought there might also be a cmake toolchain file
>> (toolchain-TARGET.cmake, for example) or some other cmake-foo.
>>
>> I can see that cmake support was merged for Eclipse/ADT, so it seems
>> like cmake could be supported 'outside the IDE', but I can't quite see
>> how what I ought to twiddle to do this. I found the tantalizingly named
>> 'cmake_do_generate_toolchain_file()' and all the other relevant stuff in
>> meta/classes/cmake.bbclass, but I don't know what the 'right' way to
>> propagate all that stuff into the SDK/ADT would be.
>>
>> Any help with getting started would be greatly appreciated.
>
> This toolchain file builds gnuradio from an SDK:
>
> https://github.com/gnuradio/gnuradio/blob/master/cmake/Toolchains/oe-sdk_=
cross.cmake
>

That looks great, thanks.

I did run into problems with the CC and CXX strings, as for me those=20
include lots of flags (ie spaces, confusing the CMake foo). I ended up=20
adding new environment variables just for CMAKE to the environment setup=20
file - what did you do for those? I basically used the same approach as=20
is used in cmake.bbclass.

Jonny

> Does this help?
>
> Philip
>
>>
>> Thanks
>> Jonny
>>
>



