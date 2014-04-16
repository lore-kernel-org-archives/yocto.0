Return-Path: <wmills@ti.com>
Received: from arroyo.ext.ti.com (arroyo.ext.ti.com [192.94.94.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 097A0E00C02
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 08:57:32 -0700 (PDT)
Received: from dflxv15.itg.ti.com ([128.247.5.124])
	by arroyo.ext.ti.com (8.13.7/8.13.7) with ESMTP id s3GFvT5X029471;
	Wed, 16 Apr 2014 10:57:29 -0500
Received: from DLEE71.ent.ti.com (dlee71.ent.ti.com [157.170.170.114])
	by dflxv15.itg.ti.com (8.14.3/8.13.8) with ESMTP id s3GFvTEN008685;
	Wed, 16 Apr 2014 10:57:29 -0500
Received: from dflp33.itg.ti.com (10.64.6.16) by DLEE71.ent.ti.com
	(157.170.170.114) with Microsoft SMTP Server id 14.3.174.1;
	Wed, 16 Apr 2014 10:57:29 -0500
Received: from gtwmills.gt.design.ti.com (ileax41-snat.itg.ti.com
	[10.172.224.153])	by dflp33.itg.ti.com (8.14.3/8.13.8) with ESMTP id
	s3GFvSLx019805;	Wed, 16 Apr 2014 10:57:28 -0500
Message-ID: <534EA868.6090207@ti.com>
Date: Wed, 16 Apr 2014 11:57:28 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <534C0415.20701@mlbassoc.com>
	<3130526.9zUpmp9SKQ@peggleto-mobl5.ger.corp.intel.com>
	<20140415162639.GC11339@denix.org>
	<16254891.OyPbf7clBT@peggleto-mobl5.ger.corp.intel.com>
	<20140415171601.GD11339@denix.org>
	<20140415174112.GE11339@denix.org>
	<20140415194307.GG11339@denix.org> <1397605018.15843.119.camel@ted>
	<20140416011230.GH11339@denix.org>
	<20140416012043.GI11339@denix.org>
	<CAMKF1sqK1K2tS86aRMR-n1jANS5jaYN_6Nv0nGn8hbuJ58P19A@mail.gmail.com>
In-Reply-To: <CAMKF1sqK1K2tS86aRMR-n1jANS5jaYN_6Nv0nGn8hbuJ58P19A@mail.gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: BBB doesn't boot
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
X-List-Received-Date: Wed, 16 Apr 2014 15:57:34 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit


On 04/15/2014 11:31 PM, Khem Raj wrote:
> On Tue, Apr 15, 2014 at 6:20 PM, Denys Dmytriyenko <denis@denix.org> wrote:
>> On Tue, Apr 15, 2014 at 09:12:30PM -0400, Denys Dmytriyenko wrote:
>>> On Wed, Apr 16, 2014 at 12:36:58AM +0100, Richard Purdie wrote:
>>>> On Tue, 2014-04-15 at 15:43 -0400, Denys Dmytriyenko wrote:
>>>>> I don't yet know what is going on, but building in the same directory with
>>>>> sources (B = S) makes it work regarless of the path length:
>>>>>
>>>>> /OE/RAM/poky-111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111/22222222222222222222222222222222222222222222222222222222222222222222/3333333333333333333333333333333333333333333333333333/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14+gitAUTOINC+928d7b2dda_0143c6ebb4-r0/linux
>>>>>
>>>>> So, I just commented out setting kernel-specific B in linux-yocto.inc and any
>>>>> kernel now boots with long path:
>>>>>
>>>>> #B = "${WORKDIR}/linux-${PACKAGE_ARCH}-${LINUX_KERNEL_TYPE}-build"
>>>>>
>>>>> I'm copying Richard and Bruce directly to see if they may have a quick insight
>>>>> and/or accept it as a workaround for the release. I'll keep digging further,
>>>>> but if anyone cares to verify the above workaround works for them, I would
>>>>> appreciate. Thanks!
>>>>
>>>> I'm travelling and don't have hardware so I'm limited in what I can look
>>>> at right now. I suspect this workaround "works" because it makes the
>>>> "beaglebone-standard-build" extra characters on the path. I have a
>>>> feeling your -1111111 test above may have reused sstate or something
>>>> like that and given misleading results. I'd be interested in the vmlinux
>>>> file from the build above to see if the poky-111111 pathnames are in
>>>> there (they get stripped out when you create the zImage).
>>>
>>> Nope, I was fooled by sstate once, so this time I tested with cleansstate and
>>> compared timestamps of the kernel when it boots - it is definitely the new
>>> one. And to make sure 'beaglebone-standard-build' extra suffix doesn't affect
>>> it, I increased the path length even further - that extra level with 333 is
>>> there to over-compensate, as it was failing before even with just 111 and 222
>>> levels only... Looks like Gary was also able to verify it.
>>>
>>> But, you are right about vmlinux - it doesn't have those paths in there any
>>> more! I've seen them there when building with B != S, but they are gone when
>>> building with B = S. Wondering why. You can check it for yourself:
>>>
>>> http://arago-project.org/files/short-term/misc/vmlinux-3.14.0-yocto-standard
>>
>> And, as a follow up, all those long paths in vmlinux when built with B != S
>> point to sources. Here are few examples:
>>
>> B != S strings:
>>
>> /OE/RAM/poky/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14+gitAUTOINC+928d7b2dda_0143c6ebb4-r0/linux/init/main.c
>> earlycon
>> 4Malformed early option '%s'
>> 3Starting init: %s exists but couldn't execute it (error %d)
>> ...
>> 6Trying to unpack rootfs image as initramfs...
>> /OE/RAM/poky/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14+gitAUTOINC+928d7b2dda_0143c6ebb4-r0/linux/init/initramfs.c
>> 6rootfs image is not initramfs (%s); looks like an initrd
>> TRAILER!!!
>> ...
>> %lu.%02lu BogoMIPS (lpj=%lu)
>> /OE/RAM/poky/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14+gitAUTOINC+928d7b2dda_0143c6ebb4-r0/linux/arch/arm/vfp/vfpmodule.c
>> 6VFP support v0.3:
>>
>>
>> B = S same strings:
>>
>> init/main.c
>> earlycon
>> 4Malformed early option '%s'
>> 3Starting init: %s exists but couldn't execute it (error %d)
>> ...
>> 6Trying to unpack rootfs image as initramfs...
>> init/initramfs.c
>> 6rootfs image is not initramfs (%s); looks like an initrd
>> TRAILER!!!
>> ...
>> %lu.%02lu BogoMIPS (lpj=%lu)
>> arch/arm/vfp/vfpmodule.c
>> 6VFP support v0.3:
>>
>>
>> So, that explains why B = S works regardless of the location, as it doesn't
>> embed full path to source files...
>>
>
> seemingly there could be rodata segment overflow issue. Can you do the
> kernel build with say linker from dora build
> and see if it still fails.
>

It would be interesting to see if the rodata segment (or segment it 
contributes to) between working and non-working versions were crossing
some magic power of 2 value.

Are there two images published from the same build machines with just
the path difference?  I would like to see one that was just under the
wire and one just a bit too long.  Denys, you have that?

