Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qa0-f42.google.com (mail-qa0-f42.google.com
	[209.85.216.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07EBFE0164B
	for <yocto@yoctoproject.org>; Wed,  2 Oct 2013 01:21:41 -0700 (PDT)
Received: by mail-qa0-f42.google.com with SMTP id cm18so4155225qab.1
	for <yocto@yoctoproject.org>; Wed, 02 Oct 2013 01:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=55+6/40rrRL7PFenofKe7Ug/uGo+XU2xsao/ztpcu7I=;
	b=lcqfJWEpqCfzL89gJiTk9osverTpRsjYiqlPLLTcJjbGTdOQ7LM/ILJRcIf4eO2L1i
	4DM39OPP6nMC8FE5LS/PYhIKnUToj6ilYrRt0gzLUn6sxk1e8dlfU8SNj/24YCQyngcg
	5v0JyLrw+4gRx1yrY00srsiC4Bf2BemDumPwNx4Gn9VSJk5vebHH4o5dcsmi4IqFx3rs
	BvGlvyaT+FdL37CgXFXSXsbqIyD2siKi1Z+tMREZJx639SX4nOz+FVMpEnF+m/e2IiVW
	KgKYiuVCZMk0Nqu89iqI+wavlNSKwduIeLhUxTPXCcE64QEGHGvrFfKT1zfUbuZkPwUi
	7w9A==
MIME-Version: 1.0
X-Received: by 10.49.47.50 with SMTP id a18mr1140323qen.61.1380702100636; Wed,
	02 Oct 2013 01:21:40 -0700 (PDT)
Received: by 10.49.57.197 with HTTP; Wed, 2 Oct 2013 01:21:40 -0700 (PDT)
In-Reply-To: <EA778B47-2D9F-49C9-8EAB-0BBE93EB12B6@gmail.com>
References: <CAFyqS9qRodbORexXqZNQESh+iiXyhs9Zi+pHBOLdxiipR0_aAQ@mail.gmail.com>
	<DFDCC371-D349-41A8-BE06-CDD2F7996BDF@gmail.com>
	<524B0E56.3040903@gmail.com>
	<EA778B47-2D9F-49C9-8EAB-0BBE93EB12B6@gmail.com>
Date: Wed, 2 Oct 2013 10:21:40 +0200
Message-ID: <CAFyqS9qGX4cB9okhimTwWDx=mYVKtP=syT1eydjzO3KDistfng@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem finding -lgcc when using SDK toolchain
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
X-List-Received-Date: Wed, 02 Oct 2013 08:21:42 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 2, 2013 at 8:13 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
> On Oct 1, 2013, at 11:03 AM, Hans Beckerus <hans.beckerus@gmail.com> wrot=
e:
>
>> On 2013-10-01 7:35, Khem Raj wrote:
>>> On Oct 1, 2013, at 6:16 AM, Hans Beck=E9rus <hans.beckerus@gmail.com> w=
rote:
>>>
>>>> Hello. We have stumbled into a problem when using ld directly instead
>>>> of going through the gcc frontend.
>>>> A simple operation like this fails:
>>>>
>>>>> ${CC} -c hello_world.c
>>>>> ${LD} hello_world.o -lgcc
>>>> arm-poky-linux-gnueabi-ld: cannot find -lgcc
>>>>
>>>> And yes, I know -lgcc is not required in this case to compile this
>>>> one, but this is only a simple reproducer.
>>>> The real issue was discovered when trying to build U-Boot from the SDK=
.
>>>>
>>>> To resolve this problem we are forced to provide
>>>> -L<sysroot>/usr/lib/arm-poky-linux-gnueabi/4.7.2 to LDFLAGS.
>>>> But that should not be needed, should it? Anyone else bumped into this
>>>> problem? Are there any "real" solutions.
>>>> I am starting to think it has to do with the hardcoded installation
>>>> path in the binaries maybe?
>>> I doubt that infact we try hard to keep it relocatable. The problem is =
you are interpreting
>>> --sysroot option to do more than what its supposed to do. when linking =
it only affects INPUT,  GROUP
>>> and SEARCH_DIR linker script variables and if you look at the linker sc=
ript path to libgcc is not
>>> specified in SEARCH_DIR, thats where gcc driver comes handy in figuring=
 out where the right libgcc is installed
>>> and sometimes when you have complex multilib environments thats very ha=
ndy. linker does not know
>>> anything about libgcc its just another library for it.
>> Hi Khem, thanks for your time. I am sure I put too much value into --sys=
root, but what still strikes me a bit odd is why the simple reproducer I sh=
owed before works just fine using the local host gcc and ld? It seems to ha=
ve no issues in finding libgcc.a?
>
> Does it ? what distro are you using on build host. gcc -c hello.c;ld hell=
o.o -lgcc , does that work ?
No, it does not. Whatever I tried before must have been wrong ;)

> on my Ubuntu based system it fails exact same way as OE SDK, and for the =
reasons I described
> if you use bare ld to do linking then you can not assume it to resolve al=
l kind of environment for you
> gcc driver is there for a reason.
>
>> So what you are saying is that it is actually expected that U-Boot build=
 will fail when compiled through the SDK toolchain directly without adding =
additional options to the linker? Is that also what the u-boot recipe is do=
ing? After all, it works fine to bitbake u-boot.
>
> No, the magic is in u-boot itself see in top level Makefile
>
>
> PLATFORM_LIBGCC :=3D -L $(shell dirname `$(CC) $(CFLAGS) -print-libgcc-fi=
le-name`) -lgcc
>
Ok, but here is were it fails! The above call gets resolved to "-L .",
and we do not have USE_PRIVATE_LIBGCC defined.
Doing ${CC} -print-libgcc-file-name shows the proper value. The reason
for this I now realize is that U-Boot does not pickup $CC from our
environment (which is including the --sysroot option). Without this
option -print-libgcc-file-name resolve to a simple file name without a
path. And thus dirname resolve it further to "." :(

So the fix for us is to do:
>make LDFLAGS=3D"" CC=3D"$CC"

Now it works.
I assume that is also what the U-Boot recipe is doing.

Thanks.
Hans


>
>
>>
>>> however you could do  something like
>>>
>>> ${CC} -print-libgcc-file-name or ${CC} -print-file-name=3Dlibgcc.a
>>>
>>> to get to the library
>>>
>>> and specify that in your linker cmdline
>> Ok, guess it will simply give me the same path as we are currently hardc=
oding, but if the toolchain moves your solution is definitely to prefer.
>> Thanks for the tip. Did only not know about the --print-sysroot command =
until now.
>>> -Khem
>>
>

