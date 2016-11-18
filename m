Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67455E004E5; Fri, 18 Nov 2016 08:10:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [67.195.87.180 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [67.195.87.180 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm47-vm2.bullet.mail.gq1.yahoo.com
	(nm47-vm2.bullet.mail.gq1.yahoo.com [67.195.87.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEA02E0049D
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2016 08:10:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1479485400; bh=u4QyWAG5akNK5hsIrSWohNR5D7XnjbY7EMnCXvv6KZ4=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=PHMdxRrKZckJl91T4HLIwIf4zUGCjCHQOigUUscMvvw+TiTlMAqaNgA277r5LPObn8jvyFU9vip5zlBca/NFhqJabyKyoL55UWqcRqTKzxIjHwun5fvp6Wa6+5E/MngZJvNdK0lAxjwYBnw9PI9p4gi86sDu0tYvmyXUfeV8klc8WYYDzg9CGzt6+tumO1f0yvSpQm26yjw8XmiHdGWW/hlQQMtFWilVBdjQFNqkO31rPjgtRyYwvr0k5mEvZcqIBVb/9P0RVG7zT6zBAfU7Ot1me3RGiUr6pzKOK1Ndh6EKSEm1LCHYWBQUcz7+tRhrUTW9us1F4GJFMTsX10AWFA==
Received: from [127.0.0.1] by nm47.bullet.mail.gq1.yahoo.com with NNFMP;
	18 Nov 2016 16:10:00 -0000
Received: from [98.137.12.58] by nm47.bullet.mail.gq1.yahoo.com with NNFMP;
	18 Nov 2016 16:07:02 -0000
Received: from [98.139.170.178] by tm3.bullet.mail.gq1.yahoo.com with NNFMP;
	18 Nov 2016 16:07:01 -0000
Received: from [98.139.212.223] by tm21.bullet.mail.bf1.yahoo.com with NNFMP;
	18 Nov 2016 16:07:01 -0000
Received: from [127.0.0.1] by omp1032.mail.bf1.yahoo.com with NNFMP;
	18 Nov 2016 16:07:01 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 461800.56367.bm@omp1032.mail.bf1.yahoo.com
X-YMail-OSG: 5xp41Y4VM1nNReWWX6408Fld05SLSCpwEfcpDGMii_ZMQlTvYeJRVhEkWR1cNn5
	j657QxtIpKXO34N4qdaO.pbE03nwJnrbTV9IlTCD5Fc2IHOx6OdUFL4gPiZfOg.6HPQAMPsiqLna
	sKTYU4A65PsPvV5kLgKwKsr3p1_UlB52.Y7vc2lz38gb0_.Q9EneFxR0BzlrU0P1MyRXUfxIVAXC
	iLXNaO3bnKBWmfRKEE_eozc7wn6w0E3PzcPf.Ijde66d3KFMkYfVeum.VCcp8kpKXGsaCUVRa6xF
	1DwVowkH8vsJZWM5BvXI5yFi2s_Z20GURbJbY6ntB0FySO191ZlIlXa1WrfzdY0EFLnNRvsFnM44
	e9fvIJwnjgVMZHbljNavq.8rRKrm6Cju6ARewN4i3TD3DHrTPA4G9X0oBMk_Z9Fu0EXjYKiG8.0W
	c_fMYIsAyjs_ximVkHDp_fK6G8GoF034Xt0nhH7pkSWVecdk73AnlbTmIrO0VnXGsXNBuRlq7PgI
	LqfMheJfMzJWqDB7RvcHaCS2WmbDl6Y8VlkJ..7ohF43yKaqAomRfpxNWTOpNqr5GZkTvDOtyDAb
	s69Qoif3brUg-
Received: from jws400174.mail.bf2.yahoo.com by
	sendmailws132.mail.bf1.yahoo.com;
	Fri, 18 Nov 2016 16:07:01 +0000; 1479485221.071
Date: Fri, 18 Nov 2016 16:06:56 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <200347130.2920579.1479485216386@mail.yahoo.com>
In-Reply-To: <mailman.55098.1479481248.15860.yocto@yoctoproject.org>
References: <mailman.55098.1479481248.15860.yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: Re: raspberry pi gtkmm_3.0.bb
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 Nov 2016 16:10:05 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2920578_1228271133.1479485216382"

------=_Part_2920578_1228271133.1479485216382
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,

Thanks to Piotr Lewicki who noticed=20
package version (PV) is "3.0-r0=3D" and not=20
"3.0-r0" ?? Maybe this "=3D" sign causes some problem.
There were 2 occurrences and 7 without the "=3D"
/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtkmm/3.0-r0=
=3D/usr
He recommended that I add PR =3D "r0" to the recipe.
The log indicates=20
arm-poky-linux-gnueabi-libtool: warning: library=20
'/home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/sysroots/raspberrypi2/us=
r/lib/libatkmm-1.6.la' was moved.
arm-poky-linux-gnueabi-libtool:=C2=A0=C2=A0=20
error: cannot find the library '/usr/lib/libatk-1.0.la' or unhandled argume=
nt '=3D/usr/lib/libatk-1.0.la'

Makefile:748: recipe for target 'all-recursive' failed
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory '/home/vidal/wkg/yocto/RaspberryPi2/poky/build/t=
mp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtkmm/3.0-r0/build'
Makefile:534: recipe for target 'all' failed
make: *** [all] Error 2
=C2=A0Thanks in advance.
Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613=20

    On Friday, November 18, 2016 8:04 AM, "yocto-request@yoctoproject.org" =
<yocto-request@yoctoproject.org> wrote:
=20

 Send yocto mailing list submissions to
=C2=A0=C2=A0=C2=A0 yocto@yoctoproject.org

To subscribe or unsubscribe via the World Wide Web, visit
=C2=A0=C2=A0=C2=A0 https://lists.yoctoproject.org/listinfo/yocto
or, via email, send a message with subject or body 'help' to
=C2=A0=C2=A0=C2=A0 yocto-request@yoctoproject.org

You can reach the person managing the list at
=C2=A0=C2=A0=C2=A0 yocto-owner@yoctoproject.org

When replying, please edit your Subject line so it is more specific
than "Re: Contents of yocto digest..."


Today's Topics:

=C2=A0 1. raspberry pi gtkmm_3.0.bb (Edward Vidal)
=C2=A0 2. Re: populate_sdk_ext: Unable to locate package
=C2=A0 =C2=A0 =C2=A0 nativesdk-buildtools-perl-dummy (Paul Eggleton)
=C2=A0 3. uninative vs. BB_NO_NETWORK (Vuille, Martin (Martin))
=C2=A0 4. Re: undefined references to `__dso_handle' (Daniel.)


----------------------------------------------------------------------

Message: 1
Date: Thu, 17 Nov 2016 21:01:33 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [yocto] raspberry pi gtkmm_3.0.bb
Message-ID: <1211982120.2332029.1479416493434@mail.yahoo.com>
Content-Type: text/plain; charset=3D"utf-8"

Hello All,
I working with software that needs gtkmm_3.0.
Poky 2.2 provides gtkmm_2.24.3 in=20
meta-oe/reipes-gnome/gtk+
I used recipetool and created gtkmm_3.0.bb
I modified some lines and was able to get the
recipe to fetch, unpack, and configure.
when it tries to compile I am getting errors.

Makefile:748: recipe for target 'all-recursive' failed
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory '/home/vidal/wkg/yocto/RaspberryPi2/poky/build/t=
mp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtkmm/3.0-r0/build'
Makefile:534: recipe for target 'all' failed
make: *** [all] Error 2
ERROR: Function failed: do_compile (log file is located at /home/vidal/wkg/=
yocto/RaspberryPi2/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnu=
eabi/gtkmm/3.0-r0/temp/log.do_compile.17760)

The recipe that I am trying to create is=20
https://gist.github.com/develone/ffa79327ccd49e9aa9f5c07e4db9ad7d

Any an all help is appreciated.

Thanks in advance ?Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1=
613
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20161117/e6=
82ad6a/attachment-0001.html>

------------------------------

Message: 2
Date: Fri, 18 Nov 2016 14:46:07 +1300
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Michel D'HOOGE <michel.dhooge@free.fr>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] populate_sdk_ext: Unable to locate package
=C2=A0=C2=A0=C2=A0 nativesdk-buildtools-perl-dummy
Message-ID: <4182204.ZX1RAfnfPO@peggleto-mobl.ger.corp.intel.com>
Content-Type: text/plain; charset=3D"us-ascii"

Hi Michel,

On Wed, 16 Nov 2016 11:48:21 Michel D'HOOGE wrote:
> I try to produce an extensible SDK for core-image-sato with the following
> configuration:
>=20
> BB_VERSION =3D "1.32.0"
> BUILD_SYS =3D "x86_64-linux"
> NATIVELSBSTRING =3D "universal"
> TARGET_SYS =3D "x86_64-poky-linux"
> MACHINE =3D "vtc7200"
> DISTRO =3D "poky-systemd"
> DISTRO_VERSION =3D "2.2"
> TUNE_FEATURES =3D "m64 corei7"
>=20
> The machine is based on an intel-corei7, with some features removed. And =
the
> distro is poky-based, with only systemd (as detailed in the ref manual).
> And I get the following error:
>=20
>=20
> ERROR : buildtools-tarball-1.0-r0 do_populate_sdk: Unable to install
> packages. Command '/mnt/Yocto/vedecom-x86/build/tmp/sysroots/x86_
> 64-linux/usr/bin/apt-get install --force-yes --allow-unauthenticated
> nativesdk-locale-base-en-us nativesdk-git nativesdk-make native
> sdk-ca-certificates nativesdk-tar nativesdk-python3-modules
> nativesdk-texinfo nativesdk-python3-git nativesdk-ncurses-terminfo-base n
> ativesdk-chrpath nativesdk-python3-misc nativesdk-git-perltools
> nativesdk-buildtools-perl-dummy nativesdk-pigz nativesdk-wget natives
> dk-python3-core' returned 100:
> Reading package lists...
> Building dependency tree...
> Reading state information...
> E: Unable to locate package nativesdk-buildtools-perl-dummy
>=20
> The package exists and is in:
> tmp/deploy/deb/buildtools-dummy-nativesdk/nativesdk-buildtools-perl-dummy=
_1.
> 0-r2_allarch.deb while the other listed packages are in
> tmp/deploy/deb/x86_64-nativesdk.
>=20
> It seems this package is empty, so maybe I should simply remove it from
> poky/meta/recipes-core/meta/buildtools-tarball.bb.

FYI the purpose of this package is to take precedence over the real natives=
dk-
perl so that it doesn't get into the buildtools, since we prefer to avoid t=
he=20
issues associated with overriding the host perl there. If you remove this=
=20
package then perl will enter buildtools and you will experience other issue=
s.

I think the issue is this hasn't really been tested with deb packaging. You=
=20
have hit a genuine bug though - would you mind filing a bug at=20
http://bugzilla.yoctoproject.org?

Thanks,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre


------------------------------

Message: 3
Date: Fri, 18 Nov 2016 14:58:04 +0000
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [yocto] uninative vs. BB_NO_NETWORK
Message-ID:
=C2=A0=C2=A0=C2=A0 <30C2D590D16A5C46ADFE6521910377987FF82A5C@AZ-US1EXMB02.g=
lobal.avaya.com>
=C2=A0=C2=A0=C2=A0=20
Content-Type: text/plain; charset=3D"us-ascii"

Currently using Yocto 1.8, planning upgrade to 2.2

Per the Reference Manual, "The uninative class is now enabled by default in=
 Poky. [...]
With this class enabled, a tarball containing a pre-built C library is down=
loaded at the start of the build."

We have to build with BB_NO_NETWORK =3D "1"

How will this interact with uninative? Do we have to download the pre-built=
 C library
to our local mirror, like other package tarballs?

MV


------------------------------

Message: 4
Date: Fri, 18 Nov 2016 13:00:45 -0200
From: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] undefined references to `__dso_handle'
Message-ID:
=C2=A0=C2=A0=C2=A0 <CAF3SDA4KAw53kXoU73B3GB+HYLcLqaJ2WPtg3BdEKzwxL5h9rg@mai=
l.gmail.com>
Content-Type: text/plain; charset=3D"utf-8"

Hi,

Did you have multilib installed!?

Regards,

2016-11-17 15:27 GMT-02:00 Elazar Leibovich <elazarl@gmail.com>:

> As far as I=C2=A0 know, no customization, I didn't even switch GCC's vers=
ion. I
> installed clang alongside gcc, but didn't change the default.
>
> Can you refer me to what you have in mind that might be customized, and
> I'll check?
>
> On Thu, Nov 17, 2016 at 7:23 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>>
>>
>> On 11/16/16 2:05 AM, Elazar Leibovich wrote:
>> > Hi,
>> >
>> > I followed the quickstart tutorial, branch morty, to create the most
>> basic
>> > image on local QEMU, and I got compilation errors for __dso_handle
>> missing.
>> > I'm using ubuntu 16.
>> > Here is an example output:
>> > ++ -nostdlib++=C2=A0 -fPIC -DPIC -D_GLIBCXX_SHARED -shared -nostdlib
>> > /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
>> raspberrypi3/usr/lib/crti.o
>> > /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
>> raspberrypi3/usr/lib/arm-poky-linux-gnueabi/6.2.0/crtbeginS.o
>> >=C2=A0 .libs/compatibility.o .libs/compatibility-debug_list.o
>> > .libs/compatibility-debug_list-2.o .libs/compatibility-c++0x.o
>> > .libs/compatibility-atomic-c++0x.o .libs/compatibility-thread-c++0x.o
>> > .libs/compatibility-chrono.o .libs/compatibility-condvar.o
>> >=C2=A0 -Wl,--whole-archive ../libsupc++/.libs/libsupc++convenience.a
>> > ../src/c++98/.libs/libc++98convenience.a
>> > ../src/c++11/.libs/libc++11convenience.a -Wl,--no-whole-archive=C2=A0 =
-lm
>> > -L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
>> x86_64-linux/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-
>> linux-gnueabi/6.2.0
>> > -L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
>> raspberrypi3/lib
>> > -L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
>> raspberrypi3/usr/lib/arm-poky-linux-gnueabi/6.2.0
>> > -L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
>> raspberrypi3/usr/lib
>> > -lc -lgcc_s
>> > /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
>> raspberrypi3/usr/lib/arm-poky-linux-gnueabi/6.2.0/crtendS.o
>> > /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
>> raspberrypi3/usr/lib/crtn.o
>> >=C2=A0 -march=3Darmv7ve -marm -mfpu=3Dneon-vfpv4 -mfloat-abi=3Dhard -mc=
pu=3Dcortex-a7
>> > -Wl,-O1 -Wl,-z -Wl,relro -Wl,--gc-sections -Wl,-O1 -Wl,--hash-style=3D=
gnu
>> > -Wl,--as-needed -Wl,--version-script=3Dlibstdc++-symbols.ver
>>=C2=A0 -Wl,-soname
>> > -Wl,libstdc++.so.6 -o .libs/libstdc++.so.6.0.22
>> > | .libs/compatibility-c++0x.o: In function
>> > `__static_initialization_and_destruction_0':
>> > |
>> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky
>> -linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi
>> /libstdc++-v3/src/../../../../../../../../../work-shared/
>> gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++11/compatibility-c++0x.cc:215=
:
>> > undefined reference to `__dso_handle'
>> > | ../src/c++11/.libs/libc++11convenience.a(system_error.o): In functio=
n
>> > `__static_initialization_and_destruction_0':
>> > |
>> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky
>> -linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi
>> /libstdc++-v3/src/c++11/../../../../../../../../../../work-
>> shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++11/system_error.cc:71:
>> > undefined reference to `__dso_handle'
>> > | ../src/c++98/.libs/libc++98convenience.a(mt_allocator.o): In functio=
n
>> > `get_freelist':
>> > |
>> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky
>> -linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi
>> /libstdc++-v3/src/c++98/../../../../../../../../../../work-
>> shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++98/mt_allocator.cc:64:
>> > undefined reference to `__dso_handle'
>> > | ../src/c++98/.libs/libc++98convenience.a(c++locale.o): In function
>> > `std::get_catalogs()':
>> > |
>> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky
>> -linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi
>> /libstdc++-v3/src/c++98/c++locale.cc:251:
>> > undefined reference to `__dso_handle'
>> > | ../src/c++11/.libs/libc++11convenience.a(condition_variable.o): In
>> function
>> > `key_init':
>> > |
>> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky
>> -linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi
>> /libstdc++-v3/src/c++11/../../../../../../../../../../work-
>> shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++11/
>> condition_variable.cc:133:
>> > undefined reference to `__dso_handle'
>> > |
>> > ../src/c++11/.libs/libc++11convenience.a(future.o):/usr/src/
>> debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux
>> -gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/
>> libstdc++-v3/src/c++11/../../../../../../../../../../work-
>> shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++11/future.cc:64:
>> > more undefined references to `__dso_handle' follow
>> > | collect2: error: ld returned 1 exit status
>> >
>> > I'll be happy for help, haven't found similar error when searching the
>> web
>>
>> is it pristine ubuntu 16.04 or do you have any customization, new
>> packages etc
>> installed on top
>>
>> >
>> >
>>
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
*"Do or do not. There is no try"*
=C2=A0 *Yoda Master*
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20161118/f9=
a3c7ad/attachment.html>

------------------------------

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


End of yocto Digest, Vol 74, Issue 77
*************************************


  =20

------=_Part_2920578_1228271133.1479485216382
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div id=3D"yui_3_16_0_ym19_1_1479471299913_59061=
" dir=3D"ltr"><span id=3D"yui_3_16_0_ym19_1_1479471299913_59122">Hello All,=
<br id=3D"yui_3_16_0_ym19_1_1479471299913_59157"><br id=3D"yui_3_16_0_ym19_=
1_1479471299913_59158">Thanks to Piotr Lewicki who noticed <br id=3D"yui_3_=
16_0_ym19_1_1479471299913_59159">package version (PV) is "3.0-r0=3D" and no=
t <br id=3D"yui_3_16_0_ym19_1_1479471299913_59160">"3.0-r0" ?? Maybe this "=
=3D" sign causes some problem.<br id=3D"yui_3_16_0_ym19_1_1479471299913_591=
61"></span></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1479471299913_612=
26"><span id=3D"yui_3_16_0_ym19_1_1479471299913_59122">There were 2 occurre=
nces and 7 without the "=3D"<br></span></div><div dir=3D"ltr" id=3D"yui_3_1=
6_0_ym19_1_1479471299913_61228"><span id=3D"yui_3_16_0_ym19_1_1479471299913=
_59122">/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtkmm=
/3.0-r0=3D/usr</span></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1479471=
299913_61224"><span id=3D"yui_3_16_0_ym19_1_1479471299913_59122"><br></span=
></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1479471299913_61221"><span =
id=3D"yui_3_16_0_ym19_1_1479471299913_59122">He recommended that I add PR =
=3D "r0" to the recipe.<br id=3D"yui_3_16_0_ym19_1_1479471299913_59163">The=
 log indicates <br id=3D"yui_3_16_0_ym19_1_1479471299913_59164">arm-poky-li=
nux-gnueabi-libtool: warning: library <br id=3D"yui_3_16_0_ym19_1_147947129=
9913_59165">'/home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/sysroots/ras=
pberrypi2/usr/lib/libatkmm-1.6.la' was moved.<br id=3D"yui_3_16_0_ym19_1_14=
79471299913_59166">arm-poky-linux-gnueabi-libtool:&nbsp;&nbsp; <br id=3D"yu=
i_3_16_0_ym19_1_1479471299913_59167">error: cannot find the library '/usr/l=
ib/libatk-1.0.la' or unhandled argument '=3D/usr/lib/libatk-1.0.la'<br id=
=3D"yui_3_16_0_ym19_1_1479471299913_59168"><br id=3D"yui_3_16_0_ym19_1_1479=
471299913_59169">Makefile:748: recipe for target 'all-recursive' failed<br =
id=3D"yui_3_16_0_ym19_1_1479471299913_59170">make[1]: *** [all-recursive] E=
rror 1<br id=3D"yui_3_16_0_ym19_1_1479471299913_59171">make[1]: Leaving dir=
ectory '/home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/work/cortexa7hf-n=
eon-vfpv4-poky-linux-gnueabi/gtkmm/3.0-r0/build'<br id=3D"yui_3_16_0_ym19_1=
_1479471299913_59172">Makefile:534: recipe for target 'all' failed<br id=3D=
"yui_3_16_0_ym19_1_1479471299913_59173">make: *** [all] Error 2</span></div=
><div id=3D"yui_3_16_0_ym19_1_1479471299913_59059"><div id=3D"yui_3_16_0_ym=
19_1_1479471299913_59457"><br></div><div id=3D"yui_3_16_0_ym19_1_1479471299=
913_59504">&nbsp;Thanks in advance.</div><div id=3D"yui_3_16_0_ym19_1_14794=
71299913_59510"><br></div></div><div class=3D"signature" id=3D"yui_3_16_0_y=
m19_1_1479471299913_59063">Edward Vidal Jr. e-mail develone@sbcglobal.net 9=
15-595-1613</div> <div class=3D"qtdSeparateBR"><br><br></div><div class=3D"=
yahoo_quoted" style=3D"display: block;"> <div style=3D"font-family: Helveti=
caNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-s=
ize: 16px;"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helv=
etica, Arial, Lucida Grande, sans-serif; font-size: 16px;"> <div dir=3D"ltr=
"><font size=3D"2" face=3D"Arial"> On Friday, November 18, 2016 8:04 AM, "y=
octo-request@yoctoproject.org" &lt;yocto-request@yoctoproject.org&gt; wrote=
:<br></font></div>  <br><br> <div class=3D"y_msg_container">Send yocto mail=
ing list submissions to<br>&nbsp;&nbsp;&nbsp; <a ymailto=3D"mailto:yocto@yo=
ctoproject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.o=
rg</a><br><br>To subscribe or unsubscribe via the World Wide Web, visit<br>=
&nbsp;&nbsp;&nbsp; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>or=
, via email, send a message with subject or body 'help' to<br>&nbsp;&nbsp;&=
nbsp; <a ymailto=3D"mailto:yocto-request@yoctoproject.org" href=3D"mailto:y=
octo-request@yoctoproject.org">yocto-request@yoctoproject.org</a><br><br>Yo=
u can reach the person managing the list at<br>&nbsp;&nbsp;&nbsp; <a ymailt=
o=3D"mailto:yocto-owner@yoctoproject.org" href=3D"mailto:yocto-owner@yoctop=
roject.org">yocto-owner@yoctoproject.org</a><br><br>When replying, please e=
dit your Subject line so it is more specific<br>than "Re: Contents of yocto=
 digest..."<br><br><br>Today's Topics:<br><br>&nbsp;  1. raspberry pi gtkmm=
_3.0.bb (Edward Vidal)<br>&nbsp;  2. Re: populate_sdk_ext: Unable to locate=
 package<br>&nbsp; &nbsp; &nbsp; nativesdk-buildtools-perl-dummy (Paul Eggl=
eton)<br>&nbsp;  3. uninative vs. BB_NO_NETWORK (Vuille, Martin (Martin))<b=
r>&nbsp;  4. Re: undefined references to `__dso_handle' (Daniel.)<br><br><b=
r>----------------------------------------------------------------------<br=
><br>Message: 1<br>Date: Thu, 17 Nov 2016 21:01:33 +0000 (UTC)<br>From: Edw=
ard Vidal &lt;<a ymailto=3D"mailto:develone@sbcglobal.net" href=3D"mailto:d=
evelone@sbcglobal.net">develone@sbcglobal.net</a>&gt;<br>To: "<a ymailto=3D=
"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">yoct=
o@yoctoproject.org</a>" &lt;<a ymailto=3D"mailto:yocto@yoctoproject.org" hr=
ef=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt;<br>Subj=
ect: [yocto] raspberry pi gtkmm_3.0.bb<br>Message-ID: &lt;<a ymailto=3D"mai=
lto:1211982120.2332029.1479416493434@mail.yahoo.com" href=3D"mailto:1211982=
120.2332029.1479416493434@mail.yahoo.com">1211982120.2332029.1479416493434@=
mail.yahoo.com</a>&gt;<br>Content-Type: text/plain; charset=3D"utf-8"<br><b=
r>Hello All,<br>I working with software that needs gtkmm_3.0.<br>Poky 2.2 p=
rovides gtkmm_2.24.3 in <br>meta-oe/reipes-gnome/gtk+<br>I used recipetool =
and created gtkmm_3.0.bb<br>I modified some lines and was able to get the<b=
r>recipe to fetch, unpack, and configure.<br>when it tries to compile I am =
getting errors.<br><br>Makefile:748: recipe for target 'all-recursive' fail=
ed<br>make[1]: *** [all-recursive] Error 1<br>make[1]: Leaving directory '/=
home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/work/cortexa7hf-neon-vfpv4=
-poky-linux-gnueabi/gtkmm/3.0-r0/build'<br>Makefile:534: recipe for target =
'all' failed<br>make: *** [all] Error 2<br>ERROR: Function failed: do_compi=
le (log file is located at /home/vidal/wkg/yocto/RaspberryPi2/poky/build/tm=
p/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/gtkmm/3.0-r0/temp/log.do_co=
mpile.17760)<br><br>The recipe that I am trying to create is <br><a href=3D=
"https://gist.github.com/develone/ffa79327ccd49e9aa9f5c07e4db9ad7d" target=
=3D"_blank">https://gist.github.com/develone/ffa79327ccd49e9aa9f5c07e4db9ad=
7d</a><br><br>Any an all help is appreciated.<br><br>Thanks in advance ?Edw=
ard Vidal Jr. e-mail <a ymailto=3D"mailto:develone@sbcglobal.net" href=3D"m=
ailto:develone@sbcglobal.net">develone@sbcglobal.net</a> 915-595-1613<br>--=
------------ next part --------------<br>An HTML attachment was scrubbed...=
<br>URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attac=
hments/20161117/e682ad6a/attachment-0001.html" target=3D"_blank">http://lis=
ts.yoctoproject.org/pipermail/yocto/attachments/20161117/e682ad6a/attachmen=
t-0001.html</a>&gt;<br><br>------------------------------<br><br>Message: 2=
<br>Date: Fri, 18 Nov 2016 14:46:07 +1300<br>From: Paul Eggleton &lt;<a yma=
ilto=3D"mailto:paul.eggleton@linux.intel.com" href=3D"mailto:paul.eggleton@=
linux.intel.com">paul.eggleton@linux.intel.com</a>&gt;<br>To: Michel D'HOOG=
E &lt;<a ymailto=3D"mailto:michel.dhooge@free.fr" href=3D"mailto:michel.dho=
oge@free.fr">michel.dhooge@free.fr</a>&gt;<br>Cc: <a ymailto=3D"mailto:yoct=
o@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproje=
ct.org</a><br>Subject: Re: [yocto] populate_sdk_ext: Unable to locate packa=
ge<br>&nbsp;&nbsp;&nbsp; nativesdk-buildtools-perl-dummy<br>Message-ID: &lt=
;<a ymailto=3D"mailto:4182204.ZX1RAfnfPO@peggleto-mobl.ger.corp.intel.com" =
href=3D"mailto:4182204.ZX1RAfnfPO@peggleto-mobl.ger.corp.intel.com">4182204=
.ZX1RAfnfPO@peggleto-mobl.ger.corp.intel.com</a>&gt;<br>Content-Type: text/=
plain; charset=3D"us-ascii"<br><br>Hi Michel,<br><br>On Wed, 16 Nov 2016 11=
:48:21 Michel D'HOOGE wrote:<br>&gt; I try to produce an extensible SDK for=
 core-image-sato with the following<br>&gt; configuration:<br>&gt; <br>&gt;=
 BB_VERSION =3D "1.32.0"<br>&gt; BUILD_SYS =3D "x86_64-linux"<br>&gt; NATIV=
ELSBSTRING =3D "universal"<br>&gt; TARGET_SYS =3D "x86_64-poky-linux"<br>&g=
t; MACHINE =3D "vtc7200"<br>&gt; DISTRO =3D "poky-systemd"<br>&gt; DISTRO_V=
ERSION =3D "2.2"<br>&gt; TUNE_FEATURES =3D "m64 corei7"<br>&gt; <br>&gt; Th=
e machine is based on an intel-corei7, with some features removed. And the<=
br>&gt; distro is poky-based, with only systemd (as detailed in the ref man=
ual).<br>&gt; And I get the following error:<br>&gt; <br>&gt; <br>&gt; ERRO=
R : buildtools-tarball-1.0-r0 do_populate_sdk: Unable to install<br>&gt; pa=
ckages. Command '/mnt/Yocto/vedecom-x86/build/tmp/sysroots/x86_<br>&gt; 64-=
linux/usr/bin/apt-get install --force-yes --allow-unauthenticated<br>&gt; n=
ativesdk-locale-base-en-us nativesdk-git nativesdk-make native<br>&gt; sdk-=
ca-certificates nativesdk-tar nativesdk-python3-modules<br>&gt; nativesdk-t=
exinfo nativesdk-python3-git nativesdk-ncurses-terminfo-base n<br>&gt; ativ=
esdk-chrpath nativesdk-python3-misc nativesdk-git-perltools<br>&gt; natives=
dk-buildtools-perl-dummy nativesdk-pigz nativesdk-wget natives<br>&gt; dk-p=
ython3-core' returned 100:<br>&gt; Reading package lists...<br>&gt; Buildin=
g dependency tree...<br>&gt; Reading state information...<br>&gt; E: Unable=
 to locate package nativesdk-buildtools-perl-dummy<br>&gt; <br>&gt; The pac=
kage exists and is in:<br>&gt; tmp/deploy/deb/buildtools-dummy-nativesdk/na=
tivesdk-buildtools-perl-dummy_1.<br>&gt; 0-r2_allarch.deb while the other l=
isted packages are in<br>&gt; tmp/deploy/deb/x86_64-nativesdk.<br>&gt; <br>=
&gt; It seems this package is empty, so maybe I should simply remove it fro=
m<br>&gt; poky/meta/recipes-core/meta/buildtools-tarball.bb.<br><br>FYI the=
 purpose of this package is to take precedence over the real nativesdk-<br>=
perl so that it doesn't get into the buildtools, since we prefer to avoid t=
he <br>issues associated with overriding the host perl there. If you remove=
 this <br>package then perl will enter buildtools and you will experience o=
ther issues.<br><br>I think the issue is this hasn't really been tested wit=
h deb packaging. You <br>have hit a genuine bug though - would you mind fil=
ing a bug at <br>http://bugzilla.yoctoproject.org?<br><br>Thanks,<br>Paul<b=
r><br>-- <br><br>Paul Eggleton<br>Intel Open Source Technology Centre<br><b=
r><br>------------------------------<br><br>Message: 3<br>Date: Fri, 18 Nov=
 2016 14:58:04 +0000<br>From: "Vuille, Martin (Martin)" &lt;<a ymailto=3D"m=
ailto:vmartin@avaya.com" href=3D"mailto:vmartin@avaya.com">vmartin@avaya.co=
m</a>&gt;<br>To: "<a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mail=
to:yocto@yoctoproject.org">yocto@yoctoproject.org</a>" &lt;<a ymailto=3D"ma=
ilto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@y=
octoproject.org</a>&gt;<br>Subject: [yocto] uninative vs. BB_NO_NETWORK<br>=
Message-ID:<br>&nbsp;&nbsp;&nbsp; &lt;<a ymailto=3D"mailto:30C2D590D16A5C46=
ADFE6521910377987FF82A5C@AZ-US1EXMB02.global.avaya.com" href=3D"mailto:30C2=
D590D16A5C46ADFE6521910377987FF82A5C@AZ-US1EXMB02.global.avaya.com">30C2D59=
0D16A5C46ADFE6521910377987FF82A5C@AZ-US1EXMB02.global.avaya.com</a>&gt;<br>=
&nbsp;&nbsp;&nbsp; <br>Content-Type: text/plain; charset=3D"us-ascii"<br><b=
r>Currently using Yocto 1.8, planning upgrade to 2.2<br><br>Per the Referen=
ce Manual, "The uninative class is now enabled by default in Poky. [...]<br=
>With this class enabled, a tarball containing a pre-built C library is dow=
nloaded at the start of the build."<br><br>We have to build with BB_NO_NETW=
ORK =3D "1"<br><br>How will this interact with uninative? Do we have to dow=
nload the pre-built C library<br>to our local mirror, like other package ta=
rballs?<br><br>MV<br><br><br>------------------------------<br><br>Message:=
 4<br>Date: Fri, 18 Nov 2016 13:00:45 -0200<br>From: "Daniel." &lt;<a ymail=
to=3D"mailto:danielhilst@gmail.com" href=3D"mailto:danielhilst@gmail.com">d=
anielhilst@gmail.com</a>&gt;<br>Cc: "<a ymailto=3D"mailto:yocto@yoctoprojec=
t.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>" &=
lt;<a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctop=
roject.org">yocto@yoctoproject.org</a>&gt;<br>Subject: Re: [yocto] undefine=
d references to `__dso_handle'<br>Message-ID:<br>&nbsp;&nbsp;&nbsp; &lt;CAF=
3SDA4KAw53kXoU73B3GB+<a ymailto=3D"mailto:HYLcLqaJ2WPtg3BdEKzwxL5h9rg@mail.=
gmail.com" href=3D"mailto:HYLcLqaJ2WPtg3BdEKzwxL5h9rg@mail.gmail.com">HYLcL=
qaJ2WPtg3BdEKzwxL5h9rg@mail.gmail.com</a>&gt;<br>Content-Type: text/plain; =
charset=3D"utf-8"<br><br>Hi,<br><br>Did you have multilib installed!?<br><b=
r>Regards,<br><br>2016-11-17 15:27 GMT-02:00 Elazar Leibovich &lt;<a ymailt=
o=3D"mailto:elazarl@gmail.com" href=3D"mailto:elazarl@gmail.com">elazarl@gm=
ail.com</a>&gt;:<br><br>&gt; As far as I&nbsp; know, no customization, I di=
dn't even switch GCC's version. I<br>&gt; installed clang alongside gcc, bu=
t didn't change the default.<br>&gt;<br>&gt; Can you refer me to what you h=
ave in mind that might be customized, and<br>&gt; I'll check?<br>&gt;<br>&g=
t; On Thu, Nov 17, 2016 at 7:23 PM, Khem Raj &lt;<a ymailto=3D"mailto:raj.k=
hem@gmail.com" href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt=
; wrote:<br>&gt;<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt; On 11/16/16 2:05 AM, E=
lazar Leibovich wrote:<br>&gt;&gt; &gt; Hi,<br>&gt;&gt; &gt;<br>&gt;&gt; &g=
t; I followed the quickstart tutorial, branch morty, to create the most<br>=
&gt;&gt; basic<br>&gt;&gt; &gt; image on local QEMU, and I got compilation =
errors for __dso_handle<br>&gt;&gt; missing.<br>&gt;&gt; &gt; I'm using ubu=
ntu 16.<br>&gt;&gt; &gt; Here is an example output:<br>&gt;&gt; &gt; ++ -no=
stdlib++&nbsp; -fPIC -DPIC -D_GLIBCXX_SHARED -shared -nostdlib<br>&gt;&gt; =
&gt; /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/<br>&gt;&gt; ra=
spberrypi3/usr/lib/crti.o<br>&gt;&gt; &gt; /media/elazar/788854CC88548B10/p=
oky/build/tmp/sysroots/<br>&gt;&gt; raspberrypi3/usr/lib/arm-poky-linux-gnu=
eabi/6.2.0/crtbeginS.o<br>&gt;&gt; &gt;&nbsp; .libs/compatibility.o .libs/c=
ompatibility-debug_list.o<br>&gt;&gt; &gt; .libs/compatibility-debug_list-2=
.o .libs/compatibility-c++0x.o<br>&gt;&gt; &gt; .libs/compatibility-atomic-=
c++0x.o .libs/compatibility-thread-c++0x.o<br>&gt;&gt; &gt; .libs/compatibi=
lity-chrono.o .libs/compatibility-condvar.o<br>&gt;&gt; &gt;&nbsp; -Wl,--wh=
ole-archive ../libsupc++/.libs/libsupc++convenience.a<br>&gt;&gt; &gt; ../s=
rc/c++98/.libs/libc++98convenience.a<br>&gt;&gt; &gt; ../src/c++11/.libs/li=
bc++11convenience.a -Wl,--no-whole-archive&nbsp; -lm<br>&gt;&gt; &gt; -L/me=
dia/elazar/788854CC88548B10/poky/build/tmp/sysroots/<br>&gt;&gt; x86_64-lin=
ux/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-<br>&gt;&gt; linux-gnueabi/6=
.2.0<br>&gt;&gt; &gt; -L/media/elazar/788854CC88548B10/poky/build/tmp/sysro=
ots/<br>&gt;&gt; raspberrypi3/lib<br>&gt;&gt; &gt; -L/media/elazar/788854CC=
88548B10/poky/build/tmp/sysroots/<br>&gt;&gt; raspberrypi3/usr/lib/arm-poky=
-linux-gnueabi/6.2.0<br>&gt;&gt; &gt; -L/media/elazar/788854CC88548B10/poky=
/build/tmp/sysroots/<br>&gt;&gt; raspberrypi3/usr/lib<br>&gt;&gt; &gt; -lc =
-lgcc_s<br>&gt;&gt; &gt; /media/elazar/788854CC88548B10/poky/build/tmp/sysr=
oots/<br>&gt;&gt; raspberrypi3/usr/lib/arm-poky-linux-gnueabi/6.2.0/crtendS=
.o<br>&gt;&gt; &gt; /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/=
<br>&gt;&gt; raspberrypi3/usr/lib/crtn.o<br>&gt;&gt; &gt;&nbsp; -march=3Dar=
mv7ve -marm -mfpu=3Dneon-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7<br>&gt;=
&gt; &gt; -Wl,-O1 -Wl,-z -Wl,relro -Wl,--gc-sections -Wl,-O1 -Wl,--hash-sty=
le=3Dgnu<br>&gt;&gt; &gt; -Wl,--as-needed -Wl,--version-script=3Dlibstdc++-=
symbols.ver<br>&gt;&gt;&nbsp; -Wl,-soname<br>&gt;&gt; &gt; -Wl,libstdc++.so=
.6 -o .libs/libstdc++.so.6.0.22<br>&gt;&gt; &gt; | .libs/compatibility-c++0=
x.o: In function<br>&gt;&gt; &gt; `__static_initialization_and_destruction_=
0':<br>&gt;&gt; &gt; |<br>&gt;&gt; &gt; /usr/src/debug/gcc-runtime/6.2.0-r0=
/gcc-6.2.0/build.arm-poky<br>&gt;&gt; -linux-gnueabi.arm-poky-linux-gnueabi=
/arm-poky-linux-gnueabi<br>&gt;&gt; /libstdc++-v3/src/../../../../../../../=
../../work-shared/<br>&gt;&gt; gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++1=
1/compatibility-c++0x.cc:215:<br>&gt;&gt; &gt; undefined reference to `__ds=
o_handle'<br>&gt;&gt; &gt; | ../src/c++11/.libs/libc++11convenience.a(syste=
m_error.o): In function<br>&gt;&gt; &gt; `__static_initialization_and_destr=
uction_0':<br>&gt;&gt; &gt; |<br>&gt;&gt; &gt; /usr/src/debug/gcc-runtime/6=
.2.0-r0/gcc-6.2.0/build.arm-poky<br>&gt;&gt; -linux-gnueabi.arm-poky-linux-=
gnueabi/arm-poky-linux-gnueabi<br>&gt;&gt; /libstdc++-v3/src/c++11/../../..=
/../../../../../../../work-<br>&gt;&gt; shared/gcc-6.2.0-r0/gcc-6.2.0/libst=
dc++-v3/src/c++11/system_error.cc:71:<br>&gt;&gt; &gt; undefined reference =
to `__dso_handle'<br>&gt;&gt; &gt; | ../src/c++98/.libs/libc++98convenience=
.a(mt_allocator.o): In function<br>&gt;&gt; &gt; `get_freelist':<br>&gt;&gt=
; &gt; |<br>&gt;&gt; &gt; /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/bui=
ld.arm-poky<br>&gt;&gt; -linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linu=
x-gnueabi<br>&gt;&gt; /libstdc++-v3/src/c++98/../../../../../../../../../..=
/work-<br>&gt;&gt; shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++98/mt_=
allocator.cc:64:<br>&gt;&gt; &gt; undefined reference to `__dso_handle'<br>=
&gt;&gt; &gt; | ../src/c++98/.libs/libc++98convenience.a(c++locale.o): In f=
unction<br>&gt;&gt; &gt; `std::get_catalogs()':<br>&gt;&gt; &gt; |<br>&gt;&=
gt; &gt; /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky<br>&g=
t;&gt; -linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi<br>&gt;=
&gt; /libstdc++-v3/src/c++98/c++locale.cc:251:<br>&gt;&gt; &gt; undefined r=
eference to `__dso_handle'<br>&gt;&gt; &gt; | ../src/c++11/.libs/libc++11co=
nvenience.a(condition_variable.o): In<br>&gt;&gt; function<br>&gt;&gt; &gt;=
 `key_init':<br>&gt;&gt; &gt; |<br>&gt;&gt; &gt; /usr/src/debug/gcc-runtime=
/6.2.0-r0/gcc-6.2.0/build.arm-poky<br>&gt;&gt; -linux-gnueabi.arm-poky-linu=
x-gnueabi/arm-poky-linux-gnueabi<br>&gt;&gt; /libstdc++-v3/src/c++11/../../=
../../../../../../../../work-<br>&gt;&gt; shared/gcc-6.2.0-r0/gcc-6.2.0/lib=
stdc++-v3/src/c++11/<br>&gt;&gt; condition_variable.cc:133:<br>&gt;&gt; &gt=
; undefined reference to `__dso_handle'<br>&gt;&gt; &gt; |<br>&gt;&gt; &gt;=
 ../src/c++11/.libs/libc++11convenience.a(future.o):/usr/src/<br>&gt;&gt; d=
ebug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux<br>&gt;&gt; -gnuea=
bi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/<br>&gt;&gt; libstdc++-v3/=
src/c++11/../../../../../../../../../../work-<br>&gt;&gt; shared/gcc-6.2.0-=
r0/gcc-6.2.0/libstdc++-v3/src/c++11/future.cc:64:<br>&gt;&gt; &gt; more und=
efined references to `__dso_handle' follow<br>&gt;&gt; &gt; | collect2: err=
or: ld returned 1 exit status<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; I'll be hap=
py for help, haven't found similar error when searching the<br>&gt;&gt; web=
<br>&gt;&gt;<br>&gt;&gt; is it pristine ubuntu 16.04 or do you have any cus=
tomization, new<br>&gt;&gt; packages etc<br>&gt;&gt; installed on top<br>&g=
t;&gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt;<br>&gt;&gt;<br>&gt;<br=
>&gt; --<br>&gt; _______________________________________________<br>&gt; yo=
cto mailing list<br>&gt; <a ymailto=3D"mailto:yocto@yoctoproject.org" href=
=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>&gt; <a hr=
ef=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">http=
s://lists.yoctoproject.org/listinfo/yocto</a><br>&gt;<br>&gt;<br><br><br>--=
 <br>*"Do or do not. There is no try"*<br>&nbsp; *Yoda Master*<br>---------=
----- next part --------------<br>An HTML attachment was scrubbed...<br>URL=
: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachments/=
20161118/f9a3c7ad/attachment.html" target=3D"_blank">http://lists.yoctoproj=
ect.org/pipermail/yocto/attachments/20161118/f9a3c7ad/attachment.html</a>&g=
t;<br><br>------------------------------<br><br>-- <br>____________________=
___________________________<br>yocto mailing list<br><a ymailto=3D"mailto:y=
octo@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctopr=
oject.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br><br>=
<br>End of yocto Digest, Vol 74, Issue 77<br>******************************=
*******<br><br><br></div>  </div> </div>  </div></div></body></html>

------=_Part_2920578_1228271133.1479485216382--
