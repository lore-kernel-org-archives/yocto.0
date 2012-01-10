Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B963E0123F
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 07:10:13 -0800 (PST)
Received: from [192.168.0.69] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 127592698F
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 14:37:41 +0000 (GMT)
Message-ID: <4F0C54A3.8010600@communistcode.co.uk>
Date: Tue, 10 Jan 2012 15:09:23 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111224 Thunderbird/9.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4F0C1C26.6030301@communistcode.co.uk>
	<20120110111628.GC3445@jama.jama.net>
	<4F0C1F46.20003@communistcode.co.uk>
	<4F0C3B05.7070908@communistcode.co.uk>
	<CANFv2EnoaW5iptTVo5Trg7d6Rr8y4Jbutaq6gEaw+J59PmBUVg@mail.gmail.com>
	<4F0C3FAC.5040104@communistcode.co.uk>
	<4F0C422D.5090307@mlbassoc.com>
	<4F0C43A3.90601@communistcode.co.uk>
In-Reply-To: <4F0C43A3.90601@communistcode.co.uk>
Subject: Re: Trouble creating new package
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Jan 2012 15:10:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/01/12 13:56, Jack Mitchell wrote:
> On 10/01/12 13:50, Gary Thomas wrote:
>> On 2012-01-10 06:39, Jack Mitchell wrote:
>>> On 10/01/12 13:38, James Abernathy wrote:
>>>>
>>>> On Tue, Jan 10, 2012 at 8:20 AM, Jack Mitchell 
>>>> <ml@communistcode.co.uk <mailto:ml@communistcode.co.uk>> wrote:
>>>>
>>>>     On 10/01/12 11:21, Jack Mitchell wrote:
>>>>
>>>>         On 10/01/12 11:16, Martin Jansa wrote:
>>>>
>>>>             On Tue, Jan 10, 2012 at 11:08:22AM +0000, Jack Mitchell 
>>>> wrote:
>>>>
>>>>                 Good morning everyone,
>>>>
>>>>                 I am currently having issues creating a (very!) 
>>>> simple package. I have
>>>>                 looked at the latest reference manual and studied 
>>>> other .bb files to no
>>>>                 avail.
>>>>
>>>>                 I am trying to build a simple web server called 
>>>> Hiawatha. To install
>>>>                 
>>>> (http://www.hiawatha-webserver.org/howto/compilation_and_installation)
>>>>                 it consists of a simple:
>>>>
>>>>                 ./configure
>>>>
>>>>                 make
>>>>
>>>>                 make install
>>>>
>>>>                 Now, for the life in me I cannot replicate this 
>>>> behaviour in a .bb file.
>>>>                 This is what I have so far:
>>>>
>>>>                 DESCRIPTION = "Lightweight secure web server"
>>>>                 HOMEPAGE = "http://www.hiawatha-webserver.org 
>>>> <http://www.hiawatha-webserver.org/>"
>>>>
>>>>                 LICENSE = "GPLv2"
>>>>                 LIC_FILES_CHKSUM = 
>>>> "file://COPYING;md5=a9b0a0eb7c54c87ec6ac05f5f603df6a"
>>>>
>>>>                 SECTION = "custom"
>>>>
>>>>                 PR = "r0"
>>>>
>>>>                 SRC_URI = 
>>>> "http://www.hiawatha-webserver.org/files/hiawatha-7.8.2.tar.gz"
>>>>
>>>>                 SRC_URI[md5sum] = " 8aff3f8c759871ea1d1ff22e98030332"
>>>>
>>>>                 do_configure () {
>>>>
>>>>                 ./configure --disable-ipv6 \
>>>>                 --disable-ssl \
>>>>                 --disable-toolkit \
>>>>                 --disable-xslt \
>>>>                 --disable-largefile \
>>>>
>>>>                 oe_runmake
>>>>
>>>>                 }
>>>>
>>>>                 do_install () {
>>>>
>>>>                 oe_runmake install DESTDIR=${D} SBINDIR=${sbindir} 
>>>> MANDIR=${mandir} \
>>>>                 INCLUDEDIR=${includedir}
>>>>
>>>>                 }
>>>>
>>>>                 Could someone point me in the right direction, I 
>>>> feel this should be an
>>>>                 extremely easy piece of software to build - I think 
>>>> I'm just not
>>>>                 understanding the build system correctly....
>>>>
>>>>                 The error I receive when trying to build this 
>>>> package is:
>>>>
>>>>                 ERROR: Function 'do_install' failed (see
>>>>                 
>>>> /home/jack/yocto/poky-git/beagleInitial/tmp/work/armv5te-poky-linux-gnueabi/hiawatha-7.8.2-r0/temp/log.do_install.6289
>>>>                 for further information)
>>>>                 | NOTE: make -j 9 -e MAKEFLAGS= -e install
>>>>                 
>>>> DESTDIR=/home/jack/yocto/poky-git/beagleInitial/tmp/work/armv5te-poky-linux-gnueabi/hiawatha-7.8.2-r0/image
>>>>                 SBINDIR=/usr/sbin MANDIR=/usr/share/man 
>>>> INCLUDEDIR=/usr/include
>>>>                 | make: *** No rule to make target `install'. Stop.
>>>>                 | ERROR: oe_runmake failed
>>>>
>>>>             try to start with
>>>>             inherit autotools
>>>>
>>>>             Cheers,,
>>>>
>>>>                 Thanks in advance,
>>>>                 Jack.
>>>>
>>>>                 _______________________________________________
>>>>                 yocto mailing list
>>>>                 yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>>>                 https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>>>         Hi Martin,
>>>>
>>>>         Inheriting autotools makes no difference, I also don't 
>>>> understand why autotools should be inherited if it is only a 
>>>> make/configure combination being used?
>>>>
>>>>         Best Regards
>>>>         _______________________________________________
>>>>         yocto mailing list
>>>>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>>>         https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>>>     Ok, I have managed to get a bit further on this. I didn't 
>>>> realise that I had to do
>>>>
>>>>     bitbake -c clean hiawatha
>>>>
>>>>     Everytime I had changed the package to ensure that it was 
>>>> building with the new configuration. My new .bb looks like this:
>>>>
>>>>
>>>>     DESCRIPTION = "Lightweight secure web server"
>>>>     HOMEPAGE = "http://www.hiawatha-webserver.org 
>>>> <http://www.hiawatha-webserver.org/>"
>>>>     LICENSE = "GPLv2"
>>>>     LIC_FILES_CHKSUM = 
>>>> "file://COPYING;md5=a9b0a0eb7c54c87ec6ac05f5f603df6a"
>>>>     DEPENDS = "openssl libxml2 libxslt"
>>>>
>>>>     SECTION = "custom"
>>>>
>>>>     PR = "r0"
>>>>
>>>>     SRC_URI = 
>>>> "http://www.hiawatha-webserver.org/files/hiawatha-7.8.2.tar.gz"
>>>>     SRC_URI[md5sum] = "8aff3f8c759871ea1d1ff22e98030332"
>>>>
>>>>     inherit autotools
>>>>
>>>>     EXTRA_OEMAKE = "'CC=${CC}' 'CFLAGS=${CFLAGS} -I${S}/include 
>>>> -DWITHOUT_XATTR' \
>>>>     'BUILDDIR=${S}'"
>>>>
>>>>     EXTRA_OECONF = " --disable-ipv6 \
>>>>     --disable-ssl \
>>>>     --disable-toolkit \
>>>>     --disable-xslt \
>>>>     --disable-largefile \
>>>>     --mandir=${mandir}"
>>>>
>>>>     do_configure() {
>>>>
>>>>     oe_runconf
>>>>
>>>>     }
>>>>
>>>>     do_compile() {
>>>>
>>>>     oe_runmake
>>>>
>>>>     }
>>>>
>>>>     do_install() {
>>>>
>>>>     oe_runmake install DESTDIR=${D} SBINDIR=${sbindir} 
>>>> INCLUDEDIR=${includedir}
>>>>
>>>>
>>>>     Now, this is building and installing however the Hiawatha 
>>>> binary doesn't get included in the build. The configuration files 
>>>> make it in so I know it's running the make install
>>>>     phase however I don't know how to find out what is going on 
>>>> during the build and why the binary isn't making it in the rootfs.
>>>>
>>>> Maybe you need an IMAGE_INSTALL += "hiawatha" in you local.conf????
>>>
>>> I already have this in my custom image .bb file. As noted above it 
>>> seems to install everything apart from the binary so all the config 
>>> files go in, just not the especially
>>> important bit!
>>
>> Did you look at the log file created during the install step?
>> It will be in a file named something like this:
>>   tmp/work/arm*/hiawatha*/temp/log.do_install
>> assuming that your target architecture is ARM
>>
>> If you don't see any problems or can't figure out what's going wrong,
>> try putting some print statements in the install step and check the
>> log file.
>>
>>
> Ah hah, thank you Gary, I found a wealth of information in that 
> folder. The do_install log didn't exist but after a quick browse, I 
> found that the binaries are actually present on the system, but 
> pre-fixed with arm-poky-linux-gnueabi-'binary-name'. e.g.
>
> arm-poky-linux-gnueabi-cgi-wrapper  arm-poky-linux-gnueabi-newroot   
> arm-poky-linux-gnueabi-wigwam
> arm-poky-linux-gnueabi-hiawatha     arm-poky-linux-gnueabi-php-fcgi
>
> What could be happening here?
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Right i've gotten further. I added --program-prefix= to the OE_EXTRACONF 
and that ditched the elf prefix. My last hurdle now is that I get errors 
that /var/log/hiawatha/system.log cannot be created, now this is due to 
the /var/log/hiawatha folder not being present. I have tried making it 
during install in the .bb file but it gets deleted when I run qemu, do I 
need some sort of system logging utility?

DESCRIPTION = "Lightweight secure web server"
HOMEPAGE = "http://www.hiawatha-webserver.org"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=a9b0a0eb7c54c87ec6ac05f5f603df6a"
DEPENDS = "openssl libxml2 libxslt"

SECTION = "custom"

PR = "r0"

SRC_URI = "http://www.hiawatha-webserver.org/files/hiawatha-7.8.2.tar.gz \
            file://hiawatha-init"
SRC_URI[md5sum] = "8aff3f8c759871ea1d1ff22e98030332"

inherit autotools update-rc.d

INITSCRIPT_NAME = "hiawatha"
INITSCRIPT_PARAMS = "defaults 70"

EXTRA_OEMAKE = "'CC=${CC}' 'CFLAGS=${CFLAGS} -I${S}/include 
-DWITHOUT_XATTR' \
                     'BUILDDIR=${S}'"

EXTRA_OECONF = " --disable-ipv6 \
              --disable-ssl \
              --disable-toolkit \
              --disable-xslt \
              --disable-largefile \
              --mandir=${mandir} \
              --program-prefix="

do_configure() {

   oe_runconf

}

do_compile() {

   oe_runmake

}

do_install() {

   oe_runmake install DESTDIR=${D} SBINDIR=${sbindir} 
INCLUDEDIR=${includedir}

   #create directories
   install -d ${D}${sysconfdir}/init.d ${D}var/log/hiawatha

   # Copy over init script
   install -m 0755 ${WORKDIR}/hiawatha-init 
${D}${sysconfdir}/init.d/hiawatha

}



