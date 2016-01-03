Return-Path: <kaffeesurrogat@posteo.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54725E00C08; Sun,  3 Jan 2016 03:24:51 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE547E0059A
	for <yocto@yoctoproject.org>; Sun,  3 Jan 2016 03:24:47 -0800 (PST)
Received: from dovecot03.posteo.de (dovecot03.posteo.de [172.16.0.13])
	by mout01.posteo.de (Postfix) with ESMTPS id C23B220963
	for <yocto@yoctoproject.org>; Sun,  3 Jan 2016 12:24:41 +0100 (CET)
Received: from mail.posteo.de (localhost [127.0.0.1])
	by dovecot03.posteo.de (Postfix) with ESMTPSA id 3pYHmn0cnJz5vN9
	for <yocto@yoctoproject.org>; Sun,  3 Jan 2016 12:24:40 +0100 (CET)
To: yocto@yoctoproject.org
References: <56640B0C.2000107@posteo.de>
	<CAOsp8o_+Tf4n2a7_TzScRK1=b56F6=ikknXgrrwt4T8CEJYUrg@mail.gmail.com>
	<5664714B.1040909@posteo.de> <5665E926.70305@posteo.de>
	<5680F9A5.7040602@posteo.de> <568107D6.5080406@posteo.de>
	<568169A6.9050204@posteo.de>
	<330A2687-E1E7-4E30-BAB0-AE9395A4A526@gmail.com>
	<56825EA3.3020603@posteo.de>
From: kaffeesurrogat <kaffeesurrogat@posteo.de>
Message-ID: <568904F2.2060507@posteo.de>
Date: Sun, 3 Jan 2016 12:24:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <56825EA3.3020603@posteo.de>
Subject: [SOLVED] Re: BeagleBone...bitbake -v core-image-sato stops
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
X-List-Received-Date: Sun, 03 Jan 2016 11:24:51 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello to all and a happy new year,

the do_compile of attr-native is finishing now on a gentoo host.

I've copied the source of attr-native over to my gentoo host and run the 
./configure, make .... process.

I've compared the config.log - files of yocto and gentoo. The difference 
was " enable_gettext='yes' " on the gentoo host
and " enable_gettext='no' " in the yocto-build-environment. Disabling 
gettext on the gentoo host led to the same behaviour. The compilation or 
linking stopped wiht the message "o fr.mo fr.po".

I've changed the variable EXTRA_OECONF.... to: 
EXTRA_OECONF_append_class-native = " --enable-gettext=yes" in the file
"ea-acl.inc" of the yocto-project, which resides in 
"meta/recipes-support/attr/". The build finished.

As Khem Raj told me, I've used a virtualmachine with ubuntu to build the 
yocto-project. On ubuntu there was no need to enable gettext via 
ea-acl.inc. The build finished without any extra measures.

Have fun,

kaffessurrogat


On 29.12.2015 11:21, kaffeesurrogat wrote:
>
> On 28.12.2015 23:00, Khem Raj wrote:
>>> On Dec 28, 2015, at 8:56 AM, kaffeesurrogat 
>>> <kaffeesurrogat@posteo.de> wrote:
>>>
>>> Hello again,
>>>
>>> well I'm really a noob and guessing what to do. Well I've 
>>> interrupted bitbake cause
>>> nothing was happing and the log.do_compile of attr-native didn't 
>>> show any error message. I've started it all over again an now I do 
>>> get an error message: yes ;-)
>>>
>>> it says:
>>>
>>> gmake[2]: ../-libtool: Command not found
>>>
>>> This looks a little bit weird to me, especially the "minus" in front 
>>> of the "libtool" .....
>>>
>>> Where does it come from? A missing or empty variable? Something like 
>>> ${MYNAMEIS}-libtool an ${MYNAMEIS} not known?
>>>
>> what is your build host ?.
>> I would suggest to setup a clean build system ( may be a VM ) and try 
>> it out on that
>
> Thanks Khem Raj,
>
> my build host is a gentoo system. I know it is not officially 
> supported, but I'm using it for ages. Thus I know my way around. At 
> least a little bit. Would be nice not to switch.
> I've removed my yocto-dir several times and made a fresh git-clone. 
> I've tried with the daisy  and the jethro branch. I've tried to build 
> core-image-minimal and core-image-sato for qemu and the beaglebone 
> black.  I did that on two different gentoo-machines, on one of them 
> things compiled fine. In the beginning I've had the impression, the 
> faults on the failing-gentoo system could be due to the missing 
> multilib support. Thus I replaced it with a fresh and clean install 
> supporting gcc-multilib stuff.
>
> The error stays  - with small variation - more or less the same:
>
> attr-native does not finish its build-process.
>
> 1) It stops with the message similiar to "o pl.mo pl.poto" after gmake 
> left the directory getfattr or setfattr
>
> or
>
> 2) It fails with "gmake[2]: o: Command not found"
>
> or
>
> 3) It fails with "gmake[2]: ../-libtool: Command not found "
>
>
> This is really weird. I'm not able to figure the small but important 
> differences on my two different gentoo machines.
>
> Any help is really appreciated,
>
> Kaffesurrogat
>
>>>>> Sorry guys .....
>>>>>
>>>>> I thought I was done. Actually I'm not a bit smarter then before ;-)
>>>>>
>>>>> I'm still trying to build a yocto-image for a beaglebone. I 
>>>>> believed, that the reason why yocto stopped compiling at 
>>>>> attr-native-2.4.47-r0 was the missing gcc-multilib support. I've 
>>>>> tried the same build on a gentoo machine at work, which had a 
>>>>> multilib environment, and it finished.
>>>>>
>>>>> I've setup a new gentoo with multilib environment on my laptop but 
>>>>> ...... bitbake stops again at attr-native. So this was not the 
>>>>> trick. The  log.do_compile in
>>>>>
>>>>> /home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/x86_64-linux/attr-native/2.4.47-r0/temp 
>>>>>
>>>>>
>>>>> says nothing special, at least for me.  Here is the quote:
>>>>>
>>>>> ----------------------------------------------------------------------------------------------------- 
>>>>>
>>>>>
>>>>> x86_64-linux-libtool: link: gcc -o .libs/setfattr -Wl,-rpath-link 
>>>>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/usr/lib 
>>>>> -Wl,-rpath-link 
>>>>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/lib 
>>>>> -Wl,-rpath 
>>>>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/usr/lib 
>>>>> -Wl,-rpath 
>>>>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/lib 
>>>>> -Wl,-O1 -Wl,-rpath-link 
>>>>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/usr/lib 
>>>>> -Wl,-rpath-link 
>>>>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/lib 
>>>>> -Wl,-rpath 
>>>>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/usr/lib 
>>>>> -Wl,-rpath 
>>>>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/lib 
>>>>> -Wl,-O1 -Wl,-rpath-link 
>>>>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/usr/lib 
>>>>> -Wl,-rpath-link 
>>>>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/lib
>  -Wl,-rpath 
> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/usr/lib 
> -Wl,-rpath 
> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysrootgmake[2]: 
> Leaving directory 
> '/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/x86_64-linux/attr-native/2.4.47-r0/attr-2.4.47/setfattr'
>>>>>
>>>>> o fr.mo fr.po
>>>>>
>>>>> ------------------------------------------------------------------------------------------------------- 
>>>>>
>>>>
>>>> ADD-ON:
>>>>
>>>> I've had a look in the log.do-compile-file on my machine at work. It
>>>> says .....
>>>>
>>>> ----------------------------------------------------------------------------------------------------------- 
>>>>
>>>>
>>>> o fr.mo fr.po
>>>> gmake[3]: Nothing to be done for 'default'.
>>>> gmake[3]: Leaving directory
>>>> '/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/x86_64-linux/attr-native/2.4.47-r0/attr-2.4.47/man/man1' 
>>>>
>>>> /usr/bin/gmake -C man2
>>>> gmake[2]: o: Command not found
>>>> ../include/buildrules:66: recipe for target 'fr.mo' failed
>>>> gmake[2]: [fr.mo] Error 127 (ignored)
>>>>
>>>> ----------------------------------------------------------------------------------------------------------- 
>>>>
>>>>
>>>> Well ..... ????????????????
>>>>
>>>>> It will stay at this point forever.
>>>>>
>>>>>
>>>>> The last output messages of bitbake:
>>>>>
>>>>>
>>>>> -------------------------------------------------------------------------------------------------------- 
>>>>>
>>>>>
>>>>> + rm -rf 
>>>>> /home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14.4+gitAUTOINC+183622e809_0143c6ebb4-r0/sstate-build-populate_lic/
>>>>>
>>>>> + ret=0
>>>>> + trap '' 0
>>>>> + exit 0
>>>>>
>>>>> [INFO] Pre-processed cfg file beaglebone-standard-config-3.14.4 
>>>>> created.
>>>>> [INFO] processing of raw cfg data completed.
>>>>>
>>>>>
>>>>> ******************************************************************************** 
>>>>>
>>>>>   Configuration stored in 
>>>>> /home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14.4+gitAUTOINC+183622e809_0143c6ebb4-r0/linux-beaglebone-standard-build/.config
>>>>> ******************************************************************************** 
>>>>>
>>>>>
>>>>>   To build with this kernel configuration, ensure a suitable 
>>>>> toolchain
>>>>>   is in your path for arm, note its common command prefix, and do:
>>>>>
>>>>>    make 
>>>>> O=/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14.4+gitAUTOINC+183622e809_0143c6ebb4-r0/linux-beaglebone-standard-build 
>>>>> ARCH=arm \
>>>>>         CROSS_COMPILE=<cross-compile-prefix>
>>>>>
>>>>>
>>>>> + '[' 0 -ne 0 ']'
>>>>>
>>>>> + echo '# Global settings from linux recipe'
>>>>> + echo 'CONFIG_LOCALVERSION="-yocto-standard"'
>>>>> + ret=0
>>>>> + trap '' 0
>>>>> + exit 0
>>>>>
>>>>> Currently 1 running tasks (1040 of 1770):
>>>>> 0: attr-native-2.4.47-r0 do_compile (pid 1778)
>>>>>
>>>>> ------------------------------------------------------------------------------------------------- 
>>>>>
>>>>>
>>>>> To be honest, I'm lost ....
>>>>>
>>>>> Would be happy about some help,
>>>>>
>>>>> kaffeesurrogat
>>>>>
>>>>>
>>>>> On 07.12.2015 21:16, kaffeesurrogat@posteo.de wrote:
>>>>>> cd 
>>>>>> /home/nico/yocto_bb/poky/build_bbb/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/gcc-cross-initial/4.8.2-r0/gcc-4.8.2/build.i686-linux.arm-poky-linux-gnueabi
>>> -- 
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>
>


