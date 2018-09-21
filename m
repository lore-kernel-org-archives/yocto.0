Return-Path: <evan.oloughlin@vitalograph.ie>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD3D1E00754; Fri, 21 Sep 2018 05:34:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,URIBL_DBL_ABUSE_MALW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 2.5 URIBL_DBL_ABUSE_MALW Contains an abused malware URL
	listed in the *      Spamhaus DBL blocklist
	*      [URIs: linaro.org]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [192.162.216.182 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-out4.electric.net (smtp-out4.electric.net
	[192.162.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B40AAE00519
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 05:34:16 -0700 (PDT)
Received: from 1g3KdR-0007fz-VT by out4c.electric.net with emc1-ok (Exim
	4.90_1) (envelope-from <evan.oloughlin@vitalograph.ie>)
	id 1g3KdS-0007lx-UT; Fri, 21 Sep 2018 05:34:14 -0700
Received: by emcmailer; Fri, 21 Sep 2018 05:34:14 -0700
Received: from [176.58.6.8] (helo=VitalExchange.vitalograph.local)
	by out4c.electric.net with esmtps (TLSv1.2:AES256-GCM-SHA384:256)
	(Exim 4.90_1) (envelope-from <evan.oloughlin@vitalograph.ie>)
	id 1g3KdR-0007fz-VT; Fri, 21 Sep 2018 05:34:13 -0700
Received: from VITALEXCHANGE.vitalograph.local ([fe80::93c:7e0f:858e:c090]) by
	VitalExchange.vitalograph.local ([fe80::93c:7e0f:858e:c090%12]) with
	mapi id 14.03.0399.000; Fri, 21 Sep 2018 13:34:13 +0100
From: Evan O'Loughlin <evan.oloughlin@vitalograph.ie>
To: Bas Mevissen <abuse@basmevissen.nl>
Thread-Topic: [yocto] Yocto SDK generated - unable to compile application
Thread-Index: AQHUULkrB+PsRV1tME++SjwtRDDgE6T40b4AgAAXwvD///LzgIAAGSuvgAARigCAAB/e9oAAhzeAgADzISU=
Date: Fri, 21 Sep 2018 12:34:12 +0000
Message-ID: <2EE3E45FEAD8944697CC29BFE83DD70F289BA593@VitalExchange.vitalograph.local>
References: <2EE3E45FEAD8944697CC29BFE83DD70F289B91F2@VitalExchange.vitalograph.local>
	<af1c99f79f52abe4c72b0b20b8ddc02a@basmevissen.nl>
	<2EE3E45FEAD8944697CC29BFE83DD70F289B92E6@VitalExchange.vitalograph.local>
	<b332d979acdc58ec0977ac2c43f37d45@basmevissen.nl>
	<2EE3E45FEAD8944697CC29BFE83DD70F289B931C@VitalExchange.vitalograph.local>
	<47ce2f8e897e9f02943c4f9884e85488@basmevissen.nl>
	<2EE3E45FEAD8944697CC29BFE83DD70F289B93D6@VitalExchange.vitalograph.local>,
	<e1d342f5-7184-17e3-6c22-ac6a53cee430@basmevissen.nl>
In-Reply-To: <e1d342f5-7184-17e3-6c22-ac6a53cee430@basmevissen.nl>
Accept-Language: en-IE, en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.245.60]
MIME-Version: 1.0
X-Outbound-IP: 176.58.6.8
X-Env-From: evan.oloughlin@vitalograph.ie
X-Proto: esmtps
X-Revdns: 
X-HELO: VitalExchange.vitalograph.local
X-TLS: TLSv1.2:AES256-GCM-SHA384:256
X-Authenticated_ID: 
X-PolicySMART: 14033467
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto SDK generated - unable to compile application
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
X-List-Received-Date: Fri, 21 Sep 2018 12:34:18 -0000
Content-Language: en-IE
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable


________________________________________
From: Bas Mevissen [abuse@basmevissen.nl]
Sent: 20 September 2018 23:21
To: Evan O'Loughlin
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Yocto SDK generated - unable to compile application

On 9/20/18 3:32 PM, Evan O'Loughlin wrote:
>
> ________________________________________
> From: Bas Mevissen [abuse@basmevissen.nl]
> Sent: 20 September 2018 13:23
> To: Evan O'Loughlin
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Yocto SDK generated - unable to compile application
>
> On 2018-09-20 12:28, Evan O'Loughlin wrote:
>> ________________________________________
>> From: Bas Mevissen [abuse@basmevissen.nl]
>> Sent: 20 September 2018 10:50
>> To: Evan O'Loughlin
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] Yocto SDK generated - unable to compile
>> application
>>
>> On 2018-09-20 11:40, Evan O'Loughlin wrote:
>>> -----Original Message-----
>>> From: Bas Mevissen [mailto:abuse@basmevissen.nl]
>>> Sent: 20 September 2018 10:12
>>> To: Evan O'Loughlin <evan.oloughlin@vitalograph.ie>
>>> Cc: yocto@yoctoproject.org
>>> Subject: Re: [yocto] Yocto SDK generated - unable to compile
>>> application
>>>
>>> On 2018-09-20 10:08, Evan O'Loughlin wrote:
>>>> Hello,
>>>>
>>>> I=92m having an issue when I try to use the SDK generated by my yocto
>>>> instance.
>>>> Currently I have yocto set-up to correctly build my image =96 this all
>>>> works well.
>>>>
>>>> I've built the SDK in the following ways:
>>>>    * bitbake {image} =96c populate_sdk
>>>>    * bitbake meta-toolchain-qt5
>>>>    * bitbake {image-sdk} using a separate recipe with the options:
>>>>        - require {image}.bb
>>>>        - IMAGE_FEATURES +=3D " dev-pkgs tools-sdk tools-debug
>>>> eclipse-debug debug-tweaks"
>>>>        - IMAGE_INSTALL +=3D "kernel-devsrc"
>>>>        - inherit populate_sdk populate_sdk_qt5
>>>>
>>>>
>>>> When I try to use the generated SDKs I get the error below:
>>>> Simple helloworld app:
>>>>    #include <stdio.h>
>>>>    #include <stdlib.h>
>>>>    #include <stddef.h>
>>>>    #include <cstddef>
>>>>
>>>>    int main (int argc, char** argv)
>>>>    {
>>>>       printf("Hello World\n");
>>>>       return 0;
>>>>    }
>>>>
>>>> Compile error:
>>>>    ${CC} helloworld.c
>>>>    helloworld.c:4:19: fatal error: cstddef: No such file or directory
>>>>    #include <cstddef>
>>>>                     ^
>>>>    compilation terminated
>>>>
>>>>
>>>> Have I missed a step in generating the SDK?
>>>>
>>>>
>>>
>>> No, your SDK looks fine. The solution is to just remove the line
>>>
>>> #include <cstddef>
>>>
>>> from your c sources or use the g++ compiler (called ${CXX) in
>>> Makefile) to compile the source.
>>>
>>>> Regards,
>>>> vitalEol
>>
>>> Hi Bas,
>>>
>>> I'm using the offending line in helloworld.c to highlight the issue
>>> I'm
>>> seeing.
>>>
>>> My main program is a Qt application where I see the same issue when
>>> trying to build in QtCreator.
>>>
>>> My issue relates to the fact that several include files are not
>>> readily available after 'sourcing' the environment setup.
>>>
>>> Do I need to adjust/include other recipes when building the SDK?
>>>
>>
>> I might be wrong, but this looks like you are using the gcc compiler
>> instead of the g++ one. See the second part of my answer.
>>
>> To check your environment, check in your sdk that the file cstddef
>> exists somewhere in /usr/include. Example from a Fedora Linux system:
>>
>> $ find /usr/include -name cstddef
>> /usr/include/c++/8/cstddef
>>
>> If I compile your example with "gcc" on that system, I get the same
>> error. With "g++", is is fine. It automatically find the cstddef header
>> file in the /usr/include/c++/8 directory.
>>
>> Hope this helps,
>>
>> (and please do not top post as that makes a mail thread unreadable)
>>
>> -- Bas.
>>
>>
>>> Regards,
>>> Evan
>>>
>>
>> Hi Bas,
>>
>> Apologies for top-posting previously.
>>
>> using ${CC}, ${CPP} or ${CXX} all show the same error relating to not
>> finding the required include
>>
>> cstddef is available in the cross-compiler toolchain:
>> $ find . -name cstddef
>> ./sysroots/armv7ahf-neon-linux-gnueabi/usr/include/c++/6.2.1/cstddef
>> ./sysroots/armv7ahf-neon-linux-gnueabi/usr/include/boost/compatibility/c=
pp_c_headers/cstddef
>>
>
> That looks fine.
>
>> and is also available on my system:
>> $ find /usr/include -name cstddef
>> /usr/include/c++/5/cstddef
>> /usr/include/c++/4.7/cstddef
>> /usr/include/c++/4.8/cstddef
>>
>>
>> ${CC} --version && ${CPP} --version && ${CXX} --version
>> arm-linux-gnueabihf-gcc (Linaro GCC 6.2-2016.11) 6.2.1 20161016
>> Copyright (C) 2016 Free Software Foundation, Inc.
>> This is free software; see the source for copying conditions.  There is
>> NO
>> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR
>> PURPOSE.
>>
>> arm-linux-gnueabihf-gcc (Linaro GCC 6.2-2016.11) 6.2.1 20161016
>> Copyright (C) 2016 Free Software Foundation, Inc.
>> This is free software; see the source for copying conditions.  There is
>> NO
>> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR
>> PURPOSE.
>>
>> arm-linux-gnueabihf-g++ (Linaro GCC 6.2-2016.11) 6.2.1 20161016
>> Copyright (C) 2016 Free Software Foundation, Inc.
>> This is free software; see the source for copying conditions.  There is
>> NO
>> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR
>> PURPOSE.
>>
>
> I tried with an Freescale i.MX6 SDK for Sumo and that compiled fine with
> ${CXX}.
>
> It is a bit of guessing now. Maybe somewhat more information might help:
>
> What version of Yocto are you using? What layers are included? What
> machine?
>
> Are you sure this is the cross compiler belonging to the SDK?
>
> Did you maybe move the SDK install location and not adapt the
> environment file?
> Please check this with "echo ${SDKTARGETSYSROOT}" and "echo ${CXX}"
>
>
>>
>> Regards,
>> Evan
>
>
> I'm using the yocto setup from Ti related to their processor-sdk v04.03.0=
0.05 (http://software-dl.ti.com/processor-sdk-linux/esd/AM335X/04_03_00_05/=
index_FDS.html & http://software-dl.ti.com/processor-sdk-linux/esd/docs/04_=
03_00_05/linux/Overview.html#processor-sdk-linux-building-the-sdk)
> Build Configuration:
> BB_VERSION        =3D "1.32.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "Ubuntu-16.04"
> TARGET_SYS        =3D "arm-linux-gnueabi"
> MACHINE           =3D "XYZ-PROD"
> DISTRO            =3D "arago"
> DISTRO_VERSION    =3D "2017.12"
> TUNE_FEATURES     =3D "arm armv7a vfp thumb neon       callconvention-har=
d"
> TARGET_FPU        =3D "hard"
> meta-processor-sdk =3D "HEAD:92db4d8023d88ab59fab2953e7447ec0bd5a6db1"
> meta-ros          =3D "HEAD:e2566402ab108a19634354a934788109422cf409"
> meta-arago-distro
> meta-arago-extras =3D "HEAD:5b2a44b0c4d989133bc13d59398fd10375d351bb"
> meta-browser      =3D "HEAD:26d50665e2f7223c5f4ad7481a8d2431e7cb55fb"
> meta-openamp      =3D "HEAD:8a214032bfb7e8124bc1485c70c69f7d60abb819"
> meta-qt5          =3D "HEAD:2c9f0e4eb0e9097f6f872ec1e1d81768a8ab5f1b"
> meta-networking
> meta-ruby
> meta-python
> meta-oe
> meta-gnome
> meta-multimedia   =3D "HEAD:b40116cf457b88a2db14b86fda9627fb34d56ae6"
> meta-ti           =3D "HEAD:3dc08477529b31ce887bb22a08201a843ded48f0"
> meta-linaro-toolchain
> meta-optee        =3D "HEAD:d73e794c7e7ebb1cc5bf495a52a72b26fb118250"
> meta              =3D "HEAD:39fd8c129e2bff7f2f1649b7f6e036ccc50fd5d8"
> meta-XYZ  =3D "sdk_04.03.00.05_dev:61ec90da8c798b357a343b92d1e41c403e0365=
d9"
> workspace         =3D "<unknown>:<unknown>"
>
> I'm using the same machine to build the image for my device & to generate=
 the SDK.
> bitbake {image} -c populate_sdk results in arago-2017.12-toolchain-2017.1=
2.sh installer which i use to install to ~/tiToolchain_SDKv4
>
> The environment file is as follows - all paths are correct & accessible :
> export SDKTARGETSYSROOT=3D/home/micheal/tiToolchain_SDKv4/sysroots/armv7a=
hf-neon-linux-gnueabi
> export PATH=3D/home/micheal/tiToolchain_SDKv4/sysroots/x86_64-arago-linux=
/usr/bin:/home/micheal/tiToolchain_SDKv4/sysroots/x86_64-arago-linux/usr/sb=
in:/home/micheal/tiToolchain_SDKv4/sysroots/x86_64-arago-linux/bin:/home/mi=
cheal/tiToolchain_SDKv4/sysroots/x86_64-arago-linux/sbin:/home/micheal/tiTo=
olchain_SDKv4/sysroots/x86_64-arago-linux/usr/bin/../x86_64-arago-linux/bin=
:/home/micheal/tiToolchain_SDKv4/sysroots/x86_64-arago-linux/usr/bin/arm-li=
nux-gnueabi:/home/micheal/tiToolchain_SDKv4/sysroots/x86_64-arago-linux/usr=
/bin/arm-linux-uclibc:/home/micheal/tiToolchain_SDKv4/sysroots/x86_64-arago=
-linux/usr/bin/arm-linux-musl:$PATH
> export CCACHE_PATH=3D/home/micheal/tiToolchain_SDKv4/sysroots/x86_64-arag=
o-linux/usr/bin:/home/micheal/tiToolchain_SDKv4/sysroots/x86_64-arago-linux=
/usr/bin/../x86_64-arago-linux/bin:/home/micheal/tiToolchain_SDKv4/sysroots=
/x86_64-arago-linux/usr/bin/arm-linux-gnueabi:/home/micheal/tiToolchain_SDK=
v4/sysroots/x86_64-arago-linux/usr/bin/arm-linux-uclibc:/home/micheal/tiToo=
lchain_SDKv4/sysroots/x86_64-arago-linux/usr/bin/arm-linux-musl:$CCACHE_PAT=
H
> export PKG_CONFIG_SYSROOT_DIR=3D$SDKTARGETSYSROOT
> export PKG_CONFIG_PATH=3D$SDKTARGETSYSROOT/usr/lib/pkgconfig:$SDKTARGETSY=
SROOT/usr/share/pkgconfig
> export CONFIG_SITE=3D/home/micheal/tiToolchain_SDKv4/site-config-armv7ahf=
-neon-linux-gnueabi
> export OECORE_NATIVE_SYSROOT=3D"/home/micheal/tiToolchain_SDKv4/sysroots/=
x86_64-arago-linux"
> export OECORE_TARGET_SYSROOT=3D"$SDKTARGETSYSROOT"
> export OECORE_ACLOCAL_OPTS=3D"-I /home/micheal/tiToolchain_SDKv4/sysroots=
/x86_64-arago-linux/usr/share/aclocal"
> unset command_not_found_handle
> export CC=3D"arm-linux-gnueabihf-gcc  -march=3Darmv7-a -marm -mfpu=3Dneon=
  -mfloat-abi=3Dhard --sysroot=3D$SDKTARGETSYSROOT"
> export CXX=3D"arm-linux-gnueabihf-g++  -march=3Darmv7-a -marm -mfpu=3Dneo=
n  -mfloat-abi=3Dhard --sysroot=3D$SDKTARGETSYSROOT"
> export CPP=3D"arm-linux-gnueabihf-gcc -E  -march=3Darmv7-a -marm -mfpu=3D=
neon  -mfloat-abi=3Dhard --sysroot=3D$SDKTARGETSYSROOT"
> export AS=3D"arm-linux-gnueabihf-as "
> export LD=3D"arm-linux-gnueabihf-ld  --sysroot=3D$SDKTARGETSYSROOT"
> export GDB=3Darm-linux-gnueabihf-gdb
> export STRIP=3Darm-linux-gnueabihf-strip
> export RANLIB=3Darm-linux-gnueabihf-ranlib
> export OBJCOPY=3Darm-linux-gnueabihf-objcopy
> export OBJDUMP=3Darm-linux-gnueabihf-objdump
> export AR=3Darm-linux-gnueabihf-ar
> export NM=3Darm-linux-gnueabihf-nm
> export M4=3Dm4
> export TARGET_PREFIX=3Darm-linux-gnueabihf-
> export CONFIGURE_FLAGS=3D"--target=3Darm-linux-gnueabi --host=3Darm-linux=
-gnueabi --build=3Dx86_64-linux --with-libtool-sysroot=3D$SDKTARGETSYSROOT"
> export CFLAGS=3D" -isystem/home/micheal/gcc-linaro-6.2.1-2016.11-x86_64_a=
rm-linux-gnueabihf/arm-linux-gnueabihf/include  -O2 -pipe -g -feliminate-un=
used-debug-types "
> export CXXFLAGS=3D" -isystem/home/micheal/gcc-linaro-6.2.1-2016.11-x86_64=
_arm-linux-gnueabihf/arm-linux-gnueabihf/include  -O2 -pipe -g -feliminate-=
unused-debug-types "
> export LDFLAGS=3D" -L/home/micheal/gcc-linaro-6.2.1-2016.11-x86_64_arm-li=
nux-gnueabihf/arm-linux-gnueabihf/lib -Wl,-rpath-link,/home/micheal/gcc-lin=
aro-6.2.1-2016.11-x86_64_arm-linux-gnueabihf/arm-linux-gnueabihf/lib -Wl,-O=
1 -Wl,--hash-style=3Dgnu"
> export CPPFLAGS=3D" -isystem/home/micheal/gcc-linaro-6.2.1-2016.11-x86_64=
_arm-linux-gnueabihf/arm-linux-gnueabihf/include "
> export KCFLAGS=3D"--sysroot=3D$SDKTARGETSYSROOT"
> export OECORE_DISTRO_VERSION=3D"2017.12"
> export OECORE_SDK_VERSION=3D"2017.12"
> export ARCH=3Darm
> export CROSS_COMPILE=3Darm-linux-gnueabihf-
>
> # Append environment subscripts
> if [ -d "$OECORE_TARGET_SYSROOT/environment-setup.d" ]; then
>     for envfile in $OECORE_TARGET_SYSROOT/environment-setup.d/*.sh; do
>           . $envfile
>     done
> fi
> if [ -d "$OECORE_NATIVE_SYSROOT/environment-setup.d" ]; then
>     for envfile in $OECORE_NATIVE_SYSROOT/environment-setup.d/*.sh; do
>           . $envfile
>     done
> fi
>
>
>
> echo ${SDKTARGETSYSROOT} && echo ${CXX}
> /home/micheal/tiToolchain_SDKv4/sysroots/armv7ahf-neon-linux-gnueabi
> arm-linux-gnueabihf-g++ -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=
=3Dhard --sysroot=3D/home/micheal/tiToolchain_SDKv4/sysroots/armv7ahf-neon-=
linux-gnueabi
>
>
> Thanks for your help so far with this; I'm stumped as to why the headers =
are not found.
>

I downloaded their toolchain from
https://releases.linaro.org/components/toolchain/binaries/6.2-2016.11/arm-l=
inux-gnueabihf/gcc-linaro-6.2.1-2016.11-x86_64_arm-linux-gnueabihf.tar.xz

This one seems fine:

$ echo "#include <cstddef>" | ./bin/arm-linux-gnueabihf-cpp -E -x c++ -o
/dev/null -

(also works with -cpp replaced by -gcc and -g++)

To see how a failure looks like, replace -x c++ with -x c:

$ echo "#include <cstddef>" | ./bin/arm-linux-gnueabihf-cpp -E -x c -o
/dev/null -
<stdin>:1:19: fatal error: cstddef: No such file or directory
compilation terminated.


So maybe simply overwrite the toolchain in your SDK with the one from
the link above. That will get you started at least.

Otherwise, use strace to see where it looks for the cstddef file:

echo "#include <cstddef>" | strace -f ${CXX} -E -x c++ -o /dev/null -
2>&1 | grep cstddef

Cheers,

Bas.


>
> Regards,
> Evan
>
>
>



$echo "#include <cstddef>" | strace -f ${CXX} -E -x c++ -o /dev/null - 2>&1=
 | grep cstddef
[pid 24705] read(0, "#include <cstddef>\n", 8192) =3D 19
[pid 24705] lstat("/home/micheal/tiToolchain_SDKv4/sysroots/x86_64-arago-li=
nux/usr/arm-linux-gnueabihf/include/c++/6.2.1/cstddef", {st_mode=3DS_IFREG|=
0644, st_size=3D1931, ...}) =3D 0
[pid 24705] open("/home/micheal/tiToolchain_SDKv4/sysroots/x86_64-arago-lin=
ux/usr/arm-linux-gnueabihf/include/c++/6.2.1/cstddef", O_RDONLY|O_NOCTTY) =
=3D 0

/home/micheal/tiToolchain_SDKv4/sysroots/x86_64-arago-linux/usr/arm-linux-g=
nueabihf/include/c++/6.2.1/cstddef: C source, ASCII text

$echo "#include <cstddef>" | strace -f ${CXX} -E -x c -o /dev/null - 2>&1 |=
 grep cstddef
[pid 23570] read(0, "#include <cstddef>\n", 8192) =3D 19
[pid 23570] lstat("/home/micheal/tiToolchain_SDKv4/sysroots/x86_64-arago-li=
nux/usr/lib/gcc/arm-linux-gnueabihf/6.2.1/include/cstddef", 0x7ffcd905d490)=
 =3D -1 ENOENT (No such file or directory)
[pid 23570] open("/home/micheal/tiToolchain_SDKv4/sysroots/x86_64-arago-lin=
ux/usr/bin/../lib/gcc/arm-linux-gnueabihf/6.2.1/include/cstddef", O_RDONLY|=
O_NOCTTY) =3D -1 ENOENT (No such file or directory)
[pid 23570] lstat("/home/micheal/tiToolchain_SDKv4/sysroots/x86_64-arago-li=
nux/usr/lib/gcc/arm-linux-gnueabihf/6.2.1/include-fixed/cstddef", 0x7ffcd90=
5d490) =3D -1 ENOENT (No such file or directory)
[pid 23570] open("/home/micheal/tiToolchain_SDKv4/sysroots/x86_64-arago-lin=
ux/usr/bin/../lib/gcc/arm-linux-gnueabihf/6.2.1/include-fixed/cstddef", O_R=
DONLY|O_NOCTTY) =3D -1 ENOENT (No such file or directory)
[pid 23570] lstat("/home/micheal/tiToolchain_SDKv4/sysroots/x86_64-arago-li=
nux/usr/arm-linux-gnueabihf/include/cstddef", 0x7ffcd905d490) =3D -1 ENOENT=
 (No such file or directory)
[pid 23570] open("/home/micheal/tiToolchain_SDKv4/sysroots/x86_64-arago-lin=
ux/usr/bin/../lib/gcc/arm-linux-gnueabihf/6.2.1/../../../../arm-linux-gnuea=
bihf/include/cstddef", O_RDONLY|O_NOCTTY) =3D -1 ENOENT (No such file or di=
rectory)
[pid 23570] lstat("/home/micheal/tiToolchain_SDKv4/sysroots/armv7ahf-neon-l=
inux-gnueabi/usr/include/cstddef", 0x7ffcd905d490) =3D -1 ENOENT (No such f=
ile or directory)
[pid 23570] open("/home/micheal/tiToolchain_SDKv4/sysroots/armv7ahf-neon-li=
nux-gnueabi/usr/include/cstddef", O_RDONLY|O_NOCTTY) =3D -1 ENOENT (No such=
 file or directory)
[pid 23570] write(2, "<stdin>:1:19: fatal error: cstdd"..., 62<stdin>:1:19:=
 fatal error: cstddef: No such file or directory


I've changed my paths in QtCreator to use 'arm-linux-gnueabihf-g++' by defa=
ult which seems to find the correct headers.

Thanks for your help Bas.

Regards,
Evan=

