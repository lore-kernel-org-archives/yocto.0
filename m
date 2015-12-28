Return-Path: <kaffeesurrogat@posteo.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4ED7E00C31; Mon, 28 Dec 2015 08:56:17 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84E30E008F5
	for <yocto@yoctoproject.org>; Mon, 28 Dec 2015 08:56:14 -0800 (PST)
Received: from dovecot03.posteo.de (dovecot03.posteo.de [172.16.0.13])
	by mout01.posteo.de (Postfix) with ESMTPS id 9616C20845
	for <yocto@yoctoproject.org>; Mon, 28 Dec 2015 17:56:12 +0100 (CET)
Received: from mail.posteo.de (localhost [127.0.0.1])
	by dovecot03.posteo.de (Postfix) with ESMTPSA id 3pTlQ373V6z5vN5
	for <yocto@yoctoproject.org>; Mon, 28 Dec 2015 17:56:11 +0100 (CET)
To: yocto@yoctoproject.org
References: <56640B0C.2000107@posteo.de>
	<CAOsp8o_+Tf4n2a7_TzScRK1=b56F6=ikknXgrrwt4T8CEJYUrg@mail.gmail.com>
	<5664714B.1040909@posteo.de> <5665E926.70305@posteo.de>
	<5680F9A5.7040602@posteo.de> <568107D6.5080406@posteo.de>
From: kaffeesurrogat <kaffeesurrogat@posteo.de>
Message-ID: <568169A6.9050204@posteo.de>
Date: Mon, 28 Dec 2015 17:56:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <568107D6.5080406@posteo.de>
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
X-List-Received-Date: Mon, 28 Dec 2015 16:56:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello again,

well I'm really a noob and guessing what to do. Well I've interrupted 
bitbake cause
nothing was happing and the log.do_compile of attr-native didn't show 
any error message. I've started it all over again an now I do get an 
error message: yes ;-)

it says:

gmake[2]: ../-libtool: Command not found

This looks a little bit weird to me, especially the "minus" in front of 
the "libtool" .....

Where does it come from? A missing or empty variable? Something like 
${MYNAMEIS}-libtool an ${MYNAMEIS} not known?

Greetings,

Kaffeesurrogat


On 28.12.2015 10:58, kaffeesurrogat wrote:
> Sorry for sending the same mail twice. I've mixed up my identities.
>
>
> On 28.12.2015 09:58, kaffeesurrogat@posteo.de wrote:
>> Sorry guys .....
>>
>> I thought I was done. Actually I'm not a bit smarter then before ;-)
>>
>> I'm still trying to build a yocto-image for a beaglebone. I believed, 
>> that the reason why yocto stopped compiling at attr-native-2.4.47-r0 
>> was the missing gcc-multilib support. I've tried the same build on a 
>> gentoo machine at work, which had a multilib environment, and it 
>> finished.
>>
>> I've setup a new gentoo with multilib environment on my laptop but 
>> ...... bitbake stops again at attr-native. So this was not the trick. 
>> The  log.do_compile in
>>
>> /home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/x86_64-linux/attr-native/2.4.47-r0/temp 
>>
>>
>> says nothing special, at least for me.  Here is the quote:
>>
>> ----------------------------------------------------------------------------------------------------- 
>>
>>
>> x86_64-linux-libtool: link: gcc -o .libs/setfattr -Wl,-rpath-link 
>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/usr/lib 
>> -Wl,-rpath-link 
>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/lib 
>> -Wl,-rpath 
>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/usr/lib 
>> -Wl,-rpath 
>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/lib 
>> -Wl,-O1 -Wl,-rpath-link 
>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/usr/lib 
>> -Wl,-rpath-link 
>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/lib 
>> -Wl,-rpath 
>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/usr/lib 
>> -Wl,-rpath 
>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/lib 
>> -Wl,-O1 -Wl,-rpath-link 
>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/usr/lib 
>> -Wl,-rpath-link 
>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/lib 
>> -Wl,-rpath 
>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/usr/lib 
>> -Wl,-rpath 
>> -Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysrootgmake[2]: 
>> Leaving directory 
>> '/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/x86_64-linux/attr-native/2.4.47-r0/attr-2.4.47/setfattr'
>>
>> o fr.mo fr.po
>>
>> ------------------------------------------------------------------------------------------------------- 
>>
>
>
> ADD-ON:
>
> I've had a look in the log.do-compile-file on my machine at work. It
> says .....
>
> ----------------------------------------------------------------------------------------------------------- 
>
>
> o fr.mo fr.po
> gmake[3]: Nothing to be done for 'default'.
> gmake[3]: Leaving directory
> '/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/x86_64-linux/attr-native/2.4.47-r0/attr-2.4.47/man/man1' 
>
> /usr/bin/gmake -C man2
> gmake[2]: o: Command not found
> ../include/buildrules:66: recipe for target 'fr.mo' failed
> gmake[2]: [fr.mo] Error 127 (ignored)
>
> ----------------------------------------------------------------------------------------------------------- 
>
>
> Well ..... ????????????????
>
>>
>> It will stay at this point forever.
>>
>>
>> The last output messages of bitbake:
>>
>>
>> -------------------------------------------------------------------------------------------------------- 
>>
>>
>> + rm -rf 
>> /home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14.4+gitAUTOINC+183622e809_0143c6ebb4-r0/sstate-build-populate_lic/
>>
>> + ret=0
>> + trap '' 0
>> + exit 0
>>
>> [INFO] Pre-processed cfg file beaglebone-standard-config-3.14.4 created.
>> [INFO] processing of raw cfg data completed.
>>
>>
>> ******************************************************************************** 
>>
>>   Configuration stored in 
>> /home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14.4+gitAUTOINC+183622e809_0143c6ebb4-r0/linux-beaglebone-standard-build/.config
>> ******************************************************************************** 
>>
>>
>>   To build with this kernel configuration, ensure a suitable toolchain
>>   is in your path for arm, note its common command prefix, and do:
>>
>>    make 
>> O=/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14.4+gitAUTOINC+183622e809_0143c6ebb4-r0/linux-beaglebone-standard-build 
>> ARCH=arm \
>>         CROSS_COMPILE=<cross-compile-prefix>
>>
>>
>> + '[' 0 -ne 0 ']'
>>
>> + echo '# Global settings from linux recipe'
>> + echo 'CONFIG_LOCALVERSION="-yocto-standard"'
>> + ret=0
>> + trap '' 0
>> + exit 0
>>
>> Currently 1 running tasks (1040 of 1770):
>> 0: attr-native-2.4.47-r0 do_compile (pid 1778)
>>
>> ------------------------------------------------------------------------------------------------- 
>>
>>
>> To be honest, I'm lost ....
>>
>> Would be happy about some help,
>>
>> kaffeesurrogat
>>
>>
>> On 07.12.2015 21:16, kaffeesurrogat@posteo.de wrote:
>>> cd 
>>> /home/nico/yocto_bb/poky/build_bbb/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/gcc-cross-initial/4.8.2-r0/gcc-4.8.2/build.i686-linux.arm-poky-linux-gnueabi
>>
>


