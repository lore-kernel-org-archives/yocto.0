Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F931E00BED
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 20:31:48 -0700 (PDT)
Received: by mail-ie0-f177.google.com with SMTP id rl12so9534240iec.8
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 20:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=pLnQrUJ2RkZJ7hmpnedkil6eaiorRsuA4kI0jZJLpG4=;
	b=j0Roul4uVjJlY2lPBg4vEBXbJ5G5yj+0HB30s5+iUQjQIhZxDi83a5qua23HfRYWyI
	+8EC9KoQtBF/GB4L+e3AyDfOrS2ixJQq8zQrLviTluvMvdpWrWu+GZNkKBLjEAoqkFCi
	okLTF2BEe7Nr8q7kTXKYeOBgnbqsmc104Vr8ytBM9q8mfOKuvvlaiq8RXkdHnTj5Gxg4
	T84bwSm/B+hvdXtUTNFj75gh5KpSF408bDRi4+ug9QDGZ6CkdzC94la6mBCxmJb5Hqi6
	uyv/336vlvd9P1sZ9BHKyIPB06g6AgAEf+yk4+Tdiiy0nsTinn9G2DELTRThwdgLrwHW
	Oe7w==
X-Received: by 10.42.67.130 with SMTP id t2mr1728212ici.17.1397619107951; Tue,
	15 Apr 2014 20:31:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.229.14 with HTTP; Tue, 15 Apr 2014 20:31:17 -0700 (PDT)
In-Reply-To: <20140416012043.GI11339@denix.org>
References: <534C0415.20701@mlbassoc.com>
	<3130526.9zUpmp9SKQ@peggleto-mobl5.ger.corp.intel.com>
	<20140415162639.GC11339@denix.org>
	<16254891.OyPbf7clBT@peggleto-mobl5.ger.corp.intel.com>
	<20140415171601.GD11339@denix.org> <20140415174112.GE11339@denix.org>
	<20140415194307.GG11339@denix.org> <1397605018.15843.119.camel@ted>
	<20140416011230.GH11339@denix.org> <20140416012043.GI11339@denix.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 15 Apr 2014 20:31:17 -0700
Message-ID: <CAMKF1sqK1K2tS86aRMR-n1jANS5jaYN_6Nv0nGn8hbuJ58P19A@mail.gmail.com>
To: Denys Dmytriyenko <denis@denix.org>
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
X-List-Received-Date: Wed, 16 Apr 2014 03:31:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 15, 2014 at 6:20 PM, Denys Dmytriyenko <denis@denix.org> wrote:
> On Tue, Apr 15, 2014 at 09:12:30PM -0400, Denys Dmytriyenko wrote:
>> On Wed, Apr 16, 2014 at 12:36:58AM +0100, Richard Purdie wrote:
>> > On Tue, 2014-04-15 at 15:43 -0400, Denys Dmytriyenko wrote:
>> > > I don't yet know what is going on, but building in the same director=
y with
>> > > sources (B =3D S) makes it work regarless of the path length:
>> > >
>> > > /OE/RAM/poky-1111111111111111111111111111111111111111111111111111111=
11111111111111111111111111111111111111111111111111/222222222222222222222222=
22222222222222222222222222222222222222222222/333333333333333333333333333333=
3333333333333333333333/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3=
.14+gitAUTOINC+928d7b2dda_0143c6ebb4-r0/linux
>> > >
>> > > So, I just commented out setting kernel-specific B in linux-yocto.in=
c and any
>> > > kernel now boots with long path:
>> > >
>> > > #B =3D "${WORKDIR}/linux-${PACKAGE_ARCH}-${LINUX_KERNEL_TYPE}-build"
>> > >
>> > > I'm copying Richard and Bruce directly to see if they may have a qui=
ck insight
>> > > and/or accept it as a workaround for the release. I'll keep digging =
further,
>> > > but if anyone cares to verify the above workaround works for them, I=
 would
>> > > appreciate. Thanks!
>> >
>> > I'm travelling and don't have hardware so I'm limited in what I can lo=
ok
>> > at right now. I suspect this workaround "works" because it makes the
>> > "beaglebone-standard-build" extra characters on the path. I have a
>> > feeling your -1111111 test above may have reused sstate or something
>> > like that and given misleading results. I'd be interested in the vmlin=
ux
>> > file from the build above to see if the poky-111111 pathnames are in
>> > there (they get stripped out when you create the zImage).
>>
>> Nope, I was fooled by sstate once, so this time I tested with cleansstat=
e and
>> compared timestamps of the kernel when it boots - it is definitely the n=
ew
>> one. And to make sure 'beaglebone-standard-build' extra suffix doesn't a=
ffect
>> it, I increased the path length even further - that extra level with 333=
 is
>> there to over-compensate, as it was failing before even with just 111 an=
d 222
>> levels only... Looks like Gary was also able to verify it.
>>
>> But, you are right about vmlinux - it doesn't have those paths in there =
any
>> more! I've seen them there when building with B !=3D S, but they are gon=
e when
>> building with B =3D S. Wondering why. You can check it for yourself:
>>
>> http://arago-project.org/files/short-term/misc/vmlinux-3.14.0-yocto-stan=
dard
>
> And, as a follow up, all those long paths in vmlinux when built with B !=
=3D S
> point to sources. Here are few examples:
>
> B !=3D S strings:
>
> /OE/RAM/poky/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14+gitA=
UTOINC+928d7b2dda_0143c6ebb4-r0/linux/init/main.c
> earlycon
> 4Malformed early option '%s'
> 3Starting init: %s exists but couldn't execute it (error %d)
> ...
> 6Trying to unpack rootfs image as initramfs...
> /OE/RAM/poky/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14+gitA=
UTOINC+928d7b2dda_0143c6ebb4-r0/linux/init/initramfs.c
> 6rootfs image is not initramfs (%s); looks like an initrd
> TRAILER!!!
> ...
> %lu.%02lu BogoMIPS (lpj=3D%lu)
> /OE/RAM/poky/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14+gitA=
UTOINC+928d7b2dda_0143c6ebb4-r0/linux/arch/arm/vfp/vfpmodule.c
> 6VFP support v0.3:
>
>
> B =3D S same strings:
>
> init/main.c
> earlycon
> 4Malformed early option '%s'
> 3Starting init: %s exists but couldn't execute it (error %d)
> ...
> 6Trying to unpack rootfs image as initramfs...
> init/initramfs.c
> 6rootfs image is not initramfs (%s); looks like an initrd
> TRAILER!!!
> ...
> %lu.%02lu BogoMIPS (lpj=3D%lu)
> arch/arm/vfp/vfpmodule.c
> 6VFP support v0.3:
>
>
> So, that explains why B =3D S works regardless of the location, as it doe=
sn't
> embed full path to source files...
>

seemingly there could be rodata segment overflow issue. Can you do the
kernel build with say linker from dora build
and see if it still fails.

> --
> Denys
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

