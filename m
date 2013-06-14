Return-Path: <hans.beckerus@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4AB9E013A8
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 05:43:39 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ha12so392329vcb.35
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 05:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=I7DzyYih3If9GvNiQf0ZHJ2yBsypAeTAN5KxtuFTL5Y=;
	b=lDm8N/T+RASDLxF6PhGwHA3/09BmlQ0jRaM9SED8Kjmu+wNMPVd2blLc1nvJ5Rkhk5
	g13pqXFxguU4NmXOY5hMT0SQc2QWWl0SMOXiSzveW23uHRSGNiGJlWyo3kB0F2O35UZ0
	McquG2ziEHC9cF0HVuAMSCeVu/eniCsAyUrwB0wnF87or81KLGHGdbx5j1syoRZW3tVl
	KOhwBBtYI6a7kI60aPCpzMp1uNN3690FOSqiyJKD/PbDwO69aOfjUaHWNcyi+0wIAjzp
	+xaxOqTlL/kdgg/9wQUFkTNkG5andm6sOz5GtrRtqT+eMTFogi1gfyUAzX01lFEl8flo
	vtpw==
MIME-Version: 1.0
X-Received: by 10.220.48.73 with SMTP id q9mr867860vcf.36.1371213819462; Fri,
	14 Jun 2013 05:43:39 -0700 (PDT)
Received: by 10.52.162.105 with HTTP; Fri, 14 Jun 2013 05:43:39 -0700 (PDT)
In-Reply-To: <CAFMfyz+OM4EJwTWda16WNOPtUbX6e2UWuvaHXFEWOf2Wd2qE-A@mail.gmail.com>
References: <CAFMfyz+_j-mWj4C0YJUnOBcCX-oMGc8196pmPcQcD8XbK6r0xA@mail.gmail.com>
	<CA+YB3rYq6_o_Sc50t0TVm5rnEeG2MD2qo=Ya6WKyG=c5vy_vHg@mail.gmail.com>
	<CAFMfyzKzvBDTxPoLN6=fFkP=Rbd_KWVpLk=352F6OxB3e5-iWg@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73C39CA0@ORSMSX103.amr.corp.intel.com>
	<CAFMfyz+km6mQctRO5d52+p4+4hKuE9qzv755EjTOW7Zc3KEb0Q@mail.gmail.com>
	<CAFMfyzJiqRGsU+xjjt+htvHrCok1UyZijz2_0Z+40gXiebAQgQ@mail.gmail.com>
	<CAFMfyz+OM4EJwTWda16WNOPtUbX6e2UWuvaHXFEWOf2Wd2qE-A@mail.gmail.com>
Date: Fri, 14 Jun 2013 14:43:39 +0200
Message-ID: <CAFyqS9pWOTOUZRqesaWRC2s8v-pMgztu+NQ34hVqr9Q_MB_Fkg@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: No crosscompiler in Toolchain
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
X-List-Received-Date: Fri, 14 Jun 2013 12:43:41 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 14, 2013 at 1:20 PM, DAMARLA Satya Swaroop
<satyaswaroop.damarla@gmail.com> wrote:
> Hi Everyone,
>
> I solved the issue, but I don't know if its right or wrong but for the
> moment I am happy... The following didnot work for me
>
> bitbake core-image-skidata -c populate_sdk
>               nor
> bitbake meta-toolchain
>
> but bitbake meta-toolchain-sdk  worked for me and created a toolchain wit=
h
> the crosscompiler... I have no idea why the others didnot create a toolch=
ain
> with cross compiler for me. I think this has to be discussed in more
> detail..
>
> For now have a wonderful weekend
>
> Warm regards from Austria,
> Satya
>
>
But, by doing bitbake meta-toolchain-sdk, do you really get a
toolchain based on the exact same image as you are building with
bitbake core-image-skidata? I though the whole idea of populate_sdk is
that the toolchain is based on the target image to guarantee that it
is 100% binary compatible?

Hans


> On Thu, Jun 13, 2013 at 9:16 AM, DAMARLA Satya Swaroop
> <satyaswaroop.damarla@gmail.com> wrote:
>>
>> Hi,
>>
>> Any updates on this issue why there is no cross compiler in the toolchai=
n
>> we build... I think this is pretty important unfortunately I am not able=
 to
>> find the cause.. Help is deeply appreciated..
>>
>> Greets,
>> Satya
>>
>>
>> On Wed, Jun 12, 2013 at 7:12 AM, DAMARLA Satya Swaroop
>> <satyaswaroop.damarla@gmail.com> wrote:
>>>
>>> Hi Jessica,
>>>
>>> By the sentence "No crosscompiler for my target installed in my
>>> toolchain", I mean I don't find the binaries for crosscompiling which a=
re
>>> usually present in the directory as shown below
>>>
>>>
>>> damarla@linuxbuildsrv:~/yocto/myToolchain/sysroots/x86_64-pokysdk-linux=
/usr/bin$
>>> ls
>>> aclocal        autoreconf        flash2raw.terrier       opkg-key
>>> pseudolog  qemu-mipsel       qemu-system-mipsel  raw2flash.terrier
>>> runqemu-ifup
>>> aclocal-1.12   autoscan          gnu-configize           perl
>>> qemu-arm   qemu-mips.real    qemu-system-ppc     runqemu
>>> runqemu-internal
>>> autoconf       autoupdate        ifnames                 perl5.14.3
>>> qemu-ga    qemu-nbd          qemu-system-x86_64  runqemu-addptable2imag=
e
>>> tunctl
>>> autoheader     dtc               libtoolize              perl.real
>>> qemu-i386  qemu-ppc          qemu-x86_64         runqemu-export-rootfs
>>> update-alternatives
>>> autom4te       flash2raw.akita   m4                      pkg-config
>>> qemu-img   qemu-system-arm   raw2flash.akita     runqemu-extract-sdk
>>> x86_64-pokysdk-linux-libtool
>>> automake       flash2raw.borzoi  oe-find-native-sysroot  pseudo
>>> qemu-io    qemu-system-i386  raw2flash.borzoi    runqemu-gen-tapdevs
>>> automake-1.12  flash2raw.spitz   opkg-cl                 pseudodb
>>> qemu-mips  qemu-system-mips  raw2flash.spitz     runqemu-ifdown
>>>
>>>
>>> I don't have a directory and the list is empty
>>>
>>>
>>> damarla@linuxbuildsrv:~/yocto/myToolchain/sysroots/x86_64-pokysdk-linux=
/usr/bin$
>>> ls -la| egrep '^d'
>>> drwxr-xr-x 2 damarla damarla    4096 Jun 11 14:27 .
>>> drwxr-xr-x 7 damarla damarla    4096 Jun 11 14:15 ..
>>>
>>> I want to know what could be the potential issue that my toolchain has =
no
>>> crosscompiler for my target
>>>
>>> Greets,
>>> Satya
>>>
>>>
>>> On Tue, Jun 11, 2013 at 9:05 PM, Zhang, Jessica <jessica.zhang@intel.co=
m>
>>> wrote:
>>>>
>>>> Hi Satya,
>>>>
>>>>
>>>>
>>>> What is your cross compiler that you said it=92s not installed? For
>>>> example, on my development host e.g. x86, after I install the toolchai=
n,
>>>> there=92s an environment-setup-*** file, inside it specifies what is y=
our
>>>> cross compiler, e.g. arm-poky-linux-gnueabi-gcc for my case, after I s=
ource
>>>> the environment file, and do which arm-poky-linux-gnueabi-gcc, I can s=
ee
>>>> it=92s under
>>>> path_to_toolchain/sysroots/i686_pokysdk_linux/usr/bin/armv5te-poky-lin=
ux-gnueabi/arm-poky-linux-gnueabi-gcc=85
>>>> so you=92re seeing things differently?
>>>>
>>>>
>>>>
>>>> Jessica
>>>>
>>>>
>>>>
>>>> From: yocto-bounces@yoctoproject.org
>>>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of DAMARLA Satya Swa=
roop
>>>> Sent: Tuesday, June 11, 2013 11:55 AM
>>>> To: Jeff Osier-Mixon; yocto@yoctoproject.org
>>>> Subject: Re: [yocto] No crosscompiler in Toolchain
>>>>
>>>>
>>>>
>>>> First I am sorry about the Gentlemen.... Next time it would be Ladies =
&
>>>> Gentlemen... ;-)
>>>>
>>>>
>>>>
>>>> Let me explain the situation better ... core-image-skidata (arm) is
>>>> customized image which I build and I want to build a toolchain for thi=
s
>>>> image on my x86_64 with should consist of cross compiler (which I assu=
me a
>>>> toolchain should contain). The build for the toolchain went successful=
l but
>>>> when I installed the toolchain on my system, I didnot find the crossco=
mpiler
>>>> installed...
>>>>
>>>>
>>>>
>>>> Hope you understood my problem..
>>>>
>>>>
>>>>
>>>> Greets,
>>>>
>>>> Satya
>>>>
>>>>
>>>>
>>>> On Tue, Jun 11, 2013 at 7:48 PM, Jeff Osier-Mixon <jefro@jefro.net>
>>>> wrote:
>>>>
>>>> On Tue, Jun 11, 2013 at 5:59 AM, DAMARLA Satya Swaroop
>>>> <swaroop.damarla@gmail.com> wrote:
>>>> > Gentlemen! We have a problem here...
>>>>
>>>> Not all here are gentlemen :)
>>>>
>>>>
>>>> > I compiled the toolchain using the command bitbake core-image-skidat=
a
>>>> > -c
>>>> > populate_sdk and installed the toolchain but I have to tell you that=
 I
>>>> > dont
>>>> > see any cross-compiler installed with the toolchain...
>>>> >
>>>> > Any guesses what could be the reason.. The image is customized x11
>>>> > image...
>>>>
>>>> I'm not sure I understand. It looks like you are using Host A to build
>>>> a toolchain and install it into an image (core-image-skidata) on
>>>> Target A. Are you then expecting to use Target A as Host B to compile
>>>> for Target B?  Is it possible that the skidata image recipe does not
>>>> contain the cross-compiler recipes?
>>>>
>>>> --
>>>> Jeff Osier-Mixon http://jefro.net/blog
>>>> Yocto Project Community Manager @Intel http://yoctoproject.org
>>>>
>>>>
>>>
>>>
>>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


On Fri, Jun 14, 2013 at 1:20 PM, DAMARLA Satya Swaroop
<satyaswaroop.damarla@gmail.com> wrote:
> Hi Everyone,
>
> I solved the issue, but I don't know if its right or wrong but for the
> moment I am happy... The following didnot work for me
>
> bitbake core-image-skidata -c populate_sdk
>               nor
> bitbake meta-toolchain
>
> but bitbake meta-toolchain-sdk  worked for me and created a toolchain wit=
h
> the crosscompiler... I have no idea why the others didnot create a toolch=
ain
> with cross compiler for me. I think this has to be discussed in more
> detail..
>
> For now have a wonderful weekend
>
> Warm regards from Austria,
> Satya
>
>
> On Thu, Jun 13, 2013 at 9:16 AM, DAMARLA Satya Swaroop
> <satyaswaroop.damarla@gmail.com> wrote:
>>
>> Hi,
>>
>> Any updates on this issue why there is no cross compiler in the toolchai=
n
>> we build... I think this is pretty important unfortunately I am not able=
 to
>> find the cause.. Help is deeply appreciated..
>>
>> Greets,
>> Satya
>>
>>
>> On Wed, Jun 12, 2013 at 7:12 AM, DAMARLA Satya Swaroop
>> <satyaswaroop.damarla@gmail.com> wrote:
>>>
>>> Hi Jessica,
>>>
>>> By the sentence "No crosscompiler for my target installed in my
>>> toolchain", I mean I don't find the binaries for crosscompiling which a=
re
>>> usually present in the directory as shown below
>>>
>>>
>>> damarla@linuxbuildsrv:~/yocto/myToolchain/sysroots/x86_64-pokysdk-linux=
/usr/bin$
>>> ls
>>> aclocal        autoreconf        flash2raw.terrier       opkg-key
>>> pseudolog  qemu-mipsel       qemu-system-mipsel  raw2flash.terrier
>>> runqemu-ifup
>>> aclocal-1.12   autoscan          gnu-configize           perl
>>> qemu-arm   qemu-mips.real    qemu-system-ppc     runqemu
>>> runqemu-internal
>>> autoconf       autoupdate        ifnames                 perl5.14.3
>>> qemu-ga    qemu-nbd          qemu-system-x86_64  runqemu-addptable2imag=
e
>>> tunctl
>>> autoheader     dtc               libtoolize              perl.real
>>> qemu-i386  qemu-ppc          qemu-x86_64         runqemu-export-rootfs
>>> update-alternatives
>>> autom4te       flash2raw.akita   m4                      pkg-config
>>> qemu-img   qemu-system-arm   raw2flash.akita     runqemu-extract-sdk
>>> x86_64-pokysdk-linux-libtool
>>> automake       flash2raw.borzoi  oe-find-native-sysroot  pseudo
>>> qemu-io    qemu-system-i386  raw2flash.borzoi    runqemu-gen-tapdevs
>>> automake-1.12  flash2raw.spitz   opkg-cl                 pseudodb
>>> qemu-mips  qemu-system-mips  raw2flash.spitz     runqemu-ifdown
>>>
>>>
>>> I don't have a directory and the list is empty
>>>
>>>
>>> damarla@linuxbuildsrv:~/yocto/myToolchain/sysroots/x86_64-pokysdk-linux=
/usr/bin$
>>> ls -la| egrep '^d'
>>> drwxr-xr-x 2 damarla damarla    4096 Jun 11 14:27 .
>>> drwxr-xr-x 7 damarla damarla    4096 Jun 11 14:15 ..
>>>
>>> I want to know what could be the potential issue that my toolchain has =
no
>>> crosscompiler for my target
>>>
>>> Greets,
>>> Satya
>>>
>>>
>>> On Tue, Jun 11, 2013 at 9:05 PM, Zhang, Jessica <jessica.zhang@intel.co=
m>
>>> wrote:
>>>>
>>>> Hi Satya,
>>>>
>>>>
>>>>
>>>> What is your cross compiler that you said it=92s not installed? For
>>>> example, on my development host e.g. x86, after I install the toolchai=
n,
>>>> there=92s an environment-setup-*** file, inside it specifies what is y=
our
>>>> cross compiler, e.g. arm-poky-linux-gnueabi-gcc for my case, after I s=
ource
>>>> the environment file, and do which arm-poky-linux-gnueabi-gcc, I can s=
ee
>>>> it=92s under
>>>> path_to_toolchain/sysroots/i686_pokysdk_linux/usr/bin/armv5te-poky-lin=
ux-gnueabi/arm-poky-linux-gnueabi-gcc=85
>>>> so you=92re seeing things differently?
>>>>
>>>>
>>>>
>>>> Jessica
>>>>
>>>>
>>>>
>>>> From: yocto-bounces@yoctoproject.org
>>>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of DAMARLA Satya Swa=
roop
>>>> Sent: Tuesday, June 11, 2013 11:55 AM
>>>> To: Jeff Osier-Mixon; yocto@yoctoproject.org
>>>> Subject: Re: [yocto] No crosscompiler in Toolchain
>>>>
>>>>
>>>>
>>>> First I am sorry about the Gentlemen.... Next time it would be Ladies =
&
>>>> Gentlemen... ;-)
>>>>
>>>>
>>>>
>>>> Let me explain the situation better ... core-image-skidata (arm) is
>>>> customized image which I build and I want to build a toolchain for thi=
s
>>>> image on my x86_64 with should consist of cross compiler (which I assu=
me a
>>>> toolchain should contain). The build for the toolchain went successful=
l but
>>>> when I installed the toolchain on my system, I didnot find the crossco=
mpiler
>>>> installed...
>>>>
>>>>
>>>>
>>>> Hope you understood my problem..
>>>>
>>>>
>>>>
>>>> Greets,
>>>>
>>>> Satya
>>>>
>>>>
>>>>
>>>> On Tue, Jun 11, 2013 at 7:48 PM, Jeff Osier-Mixon <jefro@jefro.net>
>>>> wrote:
>>>>
>>>> On Tue, Jun 11, 2013 at 5:59 AM, DAMARLA Satya Swaroop
>>>> <swaroop.damarla@gmail.com> wrote:
>>>> > Gentlemen! We have a problem here...
>>>>
>>>> Not all here are gentlemen :)
>>>>
>>>>
>>>> > I compiled the toolchain using the command bitbake core-image-skidat=
a
>>>> > -c
>>>> > populate_sdk and installed the toolchain but I have to tell you that=
 I
>>>> > dont
>>>> > see any cross-compiler installed with the toolchain...
>>>> >
>>>> > Any guesses what could be the reason.. The image is customized x11
>>>> > image...
>>>>
>>>> I'm not sure I understand. It looks like you are using Host A to build
>>>> a toolchain and install it into an image (core-image-skidata) on
>>>> Target A. Are you then expecting to use Target A as Host B to compile
>>>> for Target B?  Is it possible that the skidata image recipe does not
>>>> contain the cross-compiler recipes?
>>>>
>>>> --
>>>> Jeff Osier-Mixon http://jefro.net/blog
>>>> Yocto Project Community Manager @Intel http://yoctoproject.org
>>>>
>>>>
>>>
>>>
>>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

