Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCD6AE01650
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 23:13:57 -0700 (PDT)
Received: by mail-pd0-f172.google.com with SMTP id z10so433976pdj.17
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2013 23:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=lVLDvmvOn70eUckvxA5kgG/zXEcWmQ862GGHOJOCN3U=;
	b=z1rNBwNOcStWlQtMevU/2f38K5cV8IOZZW6ChyWc96sWB0VCcK//SBuU2hBUBGVm+b
	bpw9mdY46et8T049TfOZtQv0C71TTyKCVYJhRV1EX7g/DGV5PyIfKJKDwOGtypIQwLKv
	Bw90GmGwsnRhaQ7Nk1Dpc4K9dNsRlxHd2+fA5IFKItVfIqLnS9fvdmdam7TSb7VM1601
	WWyzQhkExSybU0k1F+xObjN5pAgyK5UggSyZNSfYQ+O+3ZRKiqhjo4dyc6TCUqxpodLf
	a9LvLxwA/ne/kKiKxaVqshnwAsVi7eFXDCNfc2aiyAo0afxzyd9/IMO0CkICD2jbCXNu
	dO0w==
X-Received: by 10.66.164.8 with SMTP id ym8mr1366395pab.170.1380694437068;
	Tue, 01 Oct 2013 23:13:57 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPSA id
	hz10sm10692268pbc.36.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 01 Oct 2013 23:13:56 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <524B0E56.3040903@gmail.com>
Date: Tue, 1 Oct 2013 23:13:57 -0700
Message-Id: <EA778B47-2D9F-49C9-8EAB-0BBE93EB12B6@gmail.com>
References: <CAFyqS9qRodbORexXqZNQESh+iiXyhs9Zi+pHBOLdxiipR0_aAQ@mail.gmail.com>
	<DFDCC371-D349-41A8-BE06-CDD2F7996BDF@gmail.com>
	<524B0E56.3040903@gmail.com>
To: Hans Beckerus <hans.beckerus@gmail.com>
X-Mailer: Apple Mail (2.1510)
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
X-List-Received-Date: Wed, 02 Oct 2013 06:14:00 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Oct 1, 2013, at 11:03 AM, Hans Beckerus <hans.beckerus@gmail.com> =
wrote:

> On 2013-10-01 7:35, Khem Raj wrote:
>> On Oct 1, 2013, at 6:16 AM, Hans Beck=E9rus <hans.beckerus@gmail.com> =
wrote:
>>=20
>>> Hello. We have stumbled into a problem when using ld directly =
instead
>>> of going through the gcc frontend.
>>> A simple operation like this fails:
>>>=20
>>>> ${CC} -c hello_world.c
>>>> ${LD} hello_world.o -lgcc
>>> arm-poky-linux-gnueabi-ld: cannot find -lgcc
>>>=20
>>> And yes, I know -lgcc is not required in this case to compile this
>>> one, but this is only a simple reproducer.
>>> The real issue was discovered when trying to build U-Boot from the =
SDK.
>>>=20
>>> To resolve this problem we are forced to provide
>>> -L<sysroot>/usr/lib/arm-poky-linux-gnueabi/4.7.2 to LDFLAGS.
>>> But that should not be needed, should it? Anyone else bumped into =
this
>>> problem? Are there any "real" solutions.
>>> I am starting to think it has to do with the hardcoded installation
>>> path in the binaries maybe?
>> I doubt that infact we try hard to keep it relocatable. The problem =
is you are interpreting
>> --sysroot option to do more than what its supposed to do. when =
linking it only affects INPUT,  GROUP
>> and SEARCH_DIR linker script variables and if you look at the linker =
script path to libgcc is not
>> specified in SEARCH_DIR, thats where gcc driver comes handy in =
figuring out where the right libgcc is installed
>> and sometimes when you have complex multilib environments thats very =
handy. linker does not know
>> anything about libgcc its just another library for it.
> Hi Khem, thanks for your time. I am sure I put too much value into =
--sysroot, but what still strikes me a bit odd is why the simple =
reproducer I showed before works just fine using the local host gcc and =
ld? It seems to have no issues in finding libgcc.a?

Does it ? what distro are you using on build host. gcc -c hello.c;ld =
hello.o -lgcc , does that work ?
on my Ubuntu based system it fails exact same way as OE SDK, and for the =
reasons I described
if you use bare ld to do linking then you can not assume it to resolve =
all kind of environment for you
gcc driver is there for a reason.

> So what you are saying is that it is actually expected that U-Boot =
build will fail when compiled through the SDK toolchain directly without =
adding additional options to the linker? Is that also what the u-boot =
recipe is doing? After all, it works fine to bitbake u-boot.

No, the magic is in u-boot itself see in top level Makefile


PLATFORM_LIBGCC :=3D -L $(shell dirname `$(CC) $(CFLAGS) =
-print-libgcc-file-name`) -lgcc



>=20
>> however you could do  something like
>>=20
>> ${CC} -print-libgcc-file-name or ${CC} -print-file-name=3Dlibgcc.a
>>=20
>> to get to the library
>>=20
>> and specify that in your linker cmdline
> Ok, guess it will simply give me the same path as we are currently =
hardcoding, but if the toolchain moves your solution is definitely to =
prefer.
> Thanks for the tip. Did only not know about the --print-sysroot =
command until now.
>> -Khem
>=20


