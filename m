Return-Path: <kaffeesurrogat@posteo.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D84D0E00B5A; Tue, 29 Dec 2015 02:21:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.67.36.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5656CE008B5
	for <yocto@yoctoproject.org>; Tue, 29 Dec 2015 02:21:37 -0800 (PST)
Received: from dovecot03.posteo.de (dovecot03.posteo.de [172.16.0.13])
	by mout01.posteo.de (Postfix) with ESMTPS id 9B1C2208A1
	for <yocto@yoctoproject.org>; Tue, 29 Dec 2015 11:21:32 +0100 (CET)
Received: from mail.posteo.de (localhost [127.0.0.1])
	by dovecot03.posteo.de (Postfix) with ESMTPSA id 3pVBcC6VyHz5vN8;
	Tue, 29 Dec 2015 11:21:31 +0100 (CET)
References: <56640B0C.2000107@posteo.de>
	<CAOsp8o_+Tf4n2a7_TzScRK1=b56F6=ikknXgrrwt4T8CEJYUrg@mail.gmail.com>
	<5664714B.1040909@posteo.de> <5665E926.70305@posteo.de>
	<5680F9A5.7040602@posteo.de> <568107D6.5080406@posteo.de>
	<568169A6.9050204@posteo.de>
	<330A2687-E1E7-4E30-BAB0-AE9395A4A526@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
From: kaffeesurrogat <kaffeesurrogat@posteo.de>
Message-ID: <56825EA3.3020603@posteo.de>
Date: Tue, 29 Dec 2015 11:21:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <330A2687-E1E7-4E30-BAB0-AE9395A4A526@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: BeagleBone...bitbake -v core-image-sato stops
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: kaffeesurrogat@posteo.de
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 29 Dec 2015 10:21:42 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 28.12.2015 23:00, Khem Raj wrote:
>> On Dec 28, 2015, at 8:56 AM, kaffeesurrogat <kaffeesurrogat@posteo.de>=
 wrote:
>>
>> Hello again,
>>
>> well I'm really a noob and guessing what to do. Well I've interrupted =
bitbake cause
>> nothing was happing and the log.do_compile of attr-native didn't show =
any error message. I've started it all over again an now I do get an erro=
r message: yes ;-)
>>
>> it says:
>>
>> gmake[2]: ../-libtool: Command not found
>>
>> This looks a little bit weird to me, especially the "minus" in front o=
f the "libtool" .....
>>
>> Where does it come from? A missing or empty variable? Something like $=
{MYNAMEIS}-libtool an ${MYNAMEIS} not known?
>>
> what is your build host ?.
> I would suggest to setup a clean build system ( may be a VM ) and try i=
t out on that

Thanks Khem Raj,

my build host is a gentoo system. I know it is not officially supported, =

but I'm using it for ages. Thus I know my way around. At least a little=20
bit. Would be nice not to switch.
I've removed my yocto-dir several times and made a fresh git-clone. I've =

tried with the daisy  and the jethro branch. I've tried to build=20
core-image-minimal and core-image-sato for qemu and the beaglebone=20
black.  I did that on two different gentoo-machines, on one of them=20
things compiled fine. In the beginning I've had the impression, the=20
faults on the failing-gentoo system could be due to the missing multilib =

support. Thus I replaced it with a fresh and clean install supporting=20
gcc-multilib stuff.

The error stays  - with small variation - more or less the same:

attr-native does not finish its build-process.

1) It stops with the message similiar to "o pl.mo pl.poto" after gmake=20
left the directory getfattr or setfattr

or

2) It fails with "gmake[2]: o: Command not found"

or

3) It fails with "gmake[2]: ../-libtool: Command not found "


This is really weird. I'm not able to figure the small but important=20
differences on my two different gentoo machines.

Any help is really appreciated,

Kaffesurrogat

>>>> Sorry guys .....
>>>>
>>>> I thought I was done. Actually I'm not a bit smarter then before ;-)=

>>>>
>>>> I'm still trying to build a yocto-image for a beaglebone. I believed=
, that the reason why yocto stopped compiling at attr-native-2.4.47-r0 wa=
s the missing gcc-multilib support. I've tried the same build on a gentoo=
 machine at work, which had a multilib environment, and it finished.
>>>>
>>>> I've setup a new gentoo with multilib environment on my laptop but .=
=2E.... bitbake stops again at attr-native. So this was not the trick. Th=
e  log.do_compile in
>>>>
>>>> /home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/x86_64-linux/attr=
-native/2.4.47-r0/temp
>>>>
>>>> says nothing special, at least for me.  Here is the quote:
>>>>
>>>> --------------------------------------------------------------------=
---------------------------------
>>>>
>>>> x86_64-linux-libtool: link: gcc -o .libs/setfattr -Wl,-rpath-link -W=
l,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/usr=
/lib -Wl,-rpath-link -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sy=
sroots/x86_64-linux/lib -Wl,-rpath -Wl,/home/nico/yocto_bbb_daisy/poky/bu=
ild_bbb/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath -Wl,/home/nico/yocto=
_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/lib -Wl,-O1 -Wl,-rpat=
h-link -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-=
linux/usr/lib -Wl,-rpath-link -Wl,/home/nico/yocto_bbb_daisy/poky/build_b=
bb/tmp/sysroots/x86_64-linux/lib -Wl,-rpath -Wl,/home/nico/yocto_bbb_dais=
y/poky/build_bbb/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath -Wl,/home/n=
ico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/lib -Wl,-O1 =
-Wl,-rpath-link -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroot=
s/x86_64-linux/usr/lib -Wl,-rpath-link -Wl,/home/nico/yocto_bbb_daisy/pok=
y/build_bbb/tmp/sysroots/x86_64-linux/lib -Wl,-rpath -Wl,/home/nico/yocto=
_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath -W=
l,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysrootgmake[2]: Leaving =
directory '/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/x86_64-linu=
x/attr-native/2.4.47-r0/attr-2.4.47/setfattr'
>>>>
>>>> o fr.mo fr.po
>>>>
>>>> --------------------------------------------------------------------=
-----------------------------------
>>>
>>> ADD-ON:
>>>
>>> I've had a look in the log.do-compile-file on my machine at work. It
>>> says .....
>>>
>>> ---------------------------------------------------------------------=
--------------------------------------
>>>
>>> o fr.mo fr.po
>>> gmake[3]: Nothing to be done for 'default'.
>>> gmake[3]: Leaving directory
>>> '/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/x86_64-linux/attr=
-native/2.4.47-r0/attr-2.4.47/man/man1'
>>> /usr/bin/gmake -C man2
>>> gmake[2]: o: Command not found
>>> ../include/buildrules:66: recipe for target 'fr.mo' failed
>>> gmake[2]: [fr.mo] Error 127 (ignored)
>>>
>>> ---------------------------------------------------------------------=
--------------------------------------
>>>
>>> Well ..... ????????????????
>>>
>>>> It will stay at this point forever.
>>>>
>>>>
>>>> The last output messages of bitbake:
>>>>
>>>>
>>>> --------------------------------------------------------------------=
------------------------------------
>>>>
>>>> + rm -rf /home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/beaglebo=
ne-poky-linux-gnueabi/linux-yocto/3.14.4+gitAUTOINC+183622e809_0143c6ebb4=
-r0/sstate-build-populate_lic/
>>>>
>>>> + ret=3D0
>>>> + trap '' 0
>>>> + exit 0
>>>>
>>>> [INFO] Pre-processed cfg file beaglebone-standard-config-3.14.4 crea=
ted.
>>>> [INFO] processing of raw cfg data completed.
>>>>
>>>>
>>>> ********************************************************************=
************
>>>>   Configuration stored in /home/nico/yocto_bbb_daisy/poky/build_bbb/=
tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14.4+gitAUTOINC+1836=
22e809_0143c6ebb4-r0/linux-beaglebone-standard-build/.config
>>>> ********************************************************************=
************
>>>>
>>>>   To build with this kernel configuration, ensure a suitable toolcha=
in
>>>>   is in your path for arm, note its common command prefix, and do:
>>>>
>>>>    make O=3D/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/beagl=
ebone-poky-linux-gnueabi/linux-yocto/3.14.4+gitAUTOINC+183622e809_0143c6e=
bb4-r0/linux-beaglebone-standard-build ARCH=3Darm \
>>>>         CROSS_COMPILE=3D<cross-compile-prefix>
>>>>
>>>>
>>>> + '[' 0 -ne 0 ']'
>>>>
>>>> + echo '# Global settings from linux recipe'
>>>> + echo 'CONFIG_LOCALVERSION=3D"-yocto-standard"'
>>>> + ret=3D0
>>>> + trap '' 0
>>>> + exit 0
>>>>
>>>> Currently 1 running tasks (1040 of 1770):
>>>> 0: attr-native-2.4.47-r0 do_compile (pid 1778)
>>>>
>>>> --------------------------------------------------------------------=
-----------------------------
>>>>
>>>> To be honest, I'm lost ....
>>>>
>>>> Would be happy about some help,
>>>>
>>>> kaffeesurrogat
>>>>
>>>>
>>>> On 07.12.2015 21:16, kaffeesurrogat@posteo.de wrote:
>>>>> cd /home/nico/yocto_bb/poky/build_bbb/tmp/work/cortexa8hf-vfp-neon-=
poky-linux-gnueabi/gcc-cross-initial/4.8.2-r0/gcc-4.8.2/build.i686-linux.=
arm-poky-linux-gnueabi
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto



