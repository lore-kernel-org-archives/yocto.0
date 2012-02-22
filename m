Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 71EA5E0123C
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2012 01:23:45 -0800 (PST)
Received: from [172.16.140.132] (172.16.140.132) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.2.247.3;
	Wed, 22 Feb 2012 10:23:42 +0100
Message-ID: <4F44B433.6070002@enea.com>
Date: Wed, 22 Feb 2012 10:24:03 +0100
From: =?UTF-8?B?RGF2aWQgTnlzdHLDtm0=?= <david.nystrom@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <4F4380AA.2010401@linux.intel.com> <3649674.1xRD95lOgH@helios>
In-Reply-To: <3649674.1xRD95lOgH@helios>
X-Originating-IP: [172.16.140.132]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Issue building meta-toolchain
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
X-List-Received-Date: Wed, 22 Feb 2012 09:23:45 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 02/21/2012 06:37 PM, Paul Eggleton wrote:
> On Tuesday 21 February 2012 11:31:54 John Toomey wrote:
>> I am getting the following error when trying to build meta-toolchain:
>>
>>      NOTE: Resolving any missing task queue dependencies
>>      ERROR: Nothing PROVIDES 'libx11-nativesdk' (but
>>
>> virtual:nativesdk:[path]/jtoomey/poky/meta/recipes-graphics/libsdl/libsdl_1
>> .2.14.bb DEPENDS on or otherwise requires it)
>>      ERROR: libx11-nativesdk was skipped: X11 not enabled for this DISTRO
>>      NOTE: Runtime target 'qemu-nativesdk' is unbuildable, removing...
>>      Missing or unbuildable dependency chain was: ['qemu-nativesdk',
>>      'libsdl-nativesdk', 'libx11-nativesdk']
>>      NOTE: Runtime target 'task-sdk-host-nativesdk' is unbuildable,
>>      removing...
>>      Missing or unbuildable dependency chain was:
>>      ['task-sdk-host-nativesdk', 'qemu-nativesdk', 'libsdl-nativesdk',
>>      'libx11-nativesdk']
>>      ERROR: Required build target 'meta-toolchain' has no buildable
>>      providers.
>>      Missing or unbuildable dependency chain was: ['meta-toolchain',
>>      'task-sdk-host-nativesdk', 'qemu-nativesdk', 'libsdl-nativesdk',
>>      'libx11-nativesdk']
>>
>> I dont really need or want X11 but the toolchain seems to depend on
>> parts of it.
> I'm guessing this is because we haven't tested building meta-toolchain when
> x11 has been removed from DISTRO_FEATURES; at minimum it seems we would need
> to fix the libsdl recipe to be able to build without libx11 when x11 is not in
> DISTRO_FEATURES.
>
> Would you mind filing a bug for this in the Yocto Project bugzilla
> (http://bugzilla.yoctoproject.org)?
>
> Thanks,
> Paul
Added Bug 2020, since we also need this fixed.
http://bugzilla.pokylinux.org/show_bug.cgi?id=2020

Best Regards,
David


