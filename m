Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F5EBE006E9
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 05:50:55 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 1B3F7F8123B; Tue, 10 Jan 2012 06:50:52 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 621E4F8123A;
	Tue, 10 Jan 2012 06:50:37 -0700 (MST)
Message-ID: <4F0C422D.5090307@mlbassoc.com>
Date: Tue, 10 Jan 2012 06:50:37 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Jack Mitchell <ml@communistcode.co.uk>
References: <4F0C1C26.6030301@communistcode.co.uk>
	<20120110111628.GC3445@jama.jama.net>
	<4F0C1F46.20003@communistcode.co.uk>
	<4F0C3B05.7070908@communistcode.co.uk>
	<CANFv2EnoaW5iptTVo5Trg7d6Rr8y4Jbutaq6gEaw+J59PmBUVg@mail.gmail.com>
	<4F0C3FAC.5040104@communistcode.co.uk>
In-Reply-To: <4F0C3FAC.5040104@communistcode.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 10 Jan 2012 13:50:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-10 06:39, Jack Mitchell wrote:
> On 10/01/12 13:38, James Abernathy wrote:
>>
>> On Tue, Jan 10, 2012 at 8:20 AM, Jack Mitchell <ml@communistcode.co.uk <mailto:ml@communistcode.co.uk>> wrote:
>>
>>     On 10/01/12 11:21, Jack Mitchell wrote:
>>
>>         On 10/01/12 11:16, Martin Jansa wrote:
>>
>>             On Tue, Jan 10, 2012 at 11:08:22AM +0000, Jack Mitchell wrote:
>>
>>                 Good morning everyone,
>>
>>                 I am currently having issues creating a (very!) simple package. I have
>>                 looked at the latest reference manual and studied other .bb files to no
>>                 avail.
>>
>>                 I am trying to build a simple web server called Hiawatha. To install
>>                 (http://www.hiawatha-webserver.org/howto/compilation_and_installation)
>>                 it consists of a simple:
>>
>>                 ./configure
>>
>>                 make
>>
>>                 make install
>>
>>                 Now, for the life in me I cannot replicate this behaviour in a .bb file.
>>                 This is what I have so far:
>>
>>                 DESCRIPTION = "Lightweight secure web server"
>>                 HOMEPAGE = "http://www.hiawatha-webserver.org <http://www.hiawatha-webserver.org/>"
>>
>>                 LICENSE = "GPLv2"
>>                 LIC_FILES_CHKSUM = "file://COPYING;md5=a9b0a0eb7c54c87ec6ac05f5f603df6a"
>>
>>                 SECTION = "custom"
>>
>>                 PR = "r0"
>>
>>                 SRC_URI = "http://www.hiawatha-webserver.org/files/hiawatha-7.8.2.tar.gz"
>>
>>                 SRC_URI[md5sum] = " 8aff3f8c759871ea1d1ff22e98030332"
>>
>>                 do_configure () {
>>
>>                 ./configure --disable-ipv6 \
>>                 --disable-ssl \
>>                 --disable-toolkit \
>>                 --disable-xslt \
>>                 --disable-largefile \
>>
>>                 oe_runmake
>>
>>                 }
>>
>>                 do_install () {
>>
>>                 oe_runmake install DESTDIR=${D} SBINDIR=${sbindir} MANDIR=${mandir} \
>>                 INCLUDEDIR=${includedir}
>>
>>                 }
>>
>>                 Could someone point me in the right direction, I feel this should be an
>>                 extremely easy piece of software to build - I think I'm just not
>>                 understanding the build system correctly....
>>
>>                 The error I receive when trying to build this package is:
>>
>>                 ERROR: Function 'do_install' failed (see
>>                 /home/jack/yocto/poky-git/beagleInitial/tmp/work/armv5te-poky-linux-gnueabi/hiawatha-7.8.2-r0/temp/log.do_install.6289
>>                 for further information)
>>                 | NOTE: make -j 9 -e MAKEFLAGS= -e install
>>                 DESTDIR=/home/jack/yocto/poky-git/beagleInitial/tmp/work/armv5te-poky-linux-gnueabi/hiawatha-7.8.2-r0/image
>>                 SBINDIR=/usr/sbin MANDIR=/usr/share/man INCLUDEDIR=/usr/include
>>                 | make: *** No rule to make target `install'. Stop.
>>                 | ERROR: oe_runmake failed
>>
>>             try to start with
>>             inherit autotools
>>
>>             Cheers,,
>>
>>                 Thanks in advance,
>>                 Jack.
>>
>>                 _______________________________________________
>>                 yocto mailing list
>>                 yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>                 https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>         Hi Martin,
>>
>>         Inheriting autotools makes no difference, I also don't understand why autotools should be inherited if it is only a make/configure combination being used?
>>
>>         Best Regards
>>         _______________________________________________
>>         yocto mailing list
>>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>         https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>     Ok, I have managed to get a bit further on this. I didn't realise that I had to do
>>
>>     bitbake -c clean hiawatha
>>
>>     Everytime I had changed the package to ensure that it was building with the new configuration. My new .bb looks like this:
>>
>>
>>     DESCRIPTION = "Lightweight secure web server"
>>     HOMEPAGE = "http://www.hiawatha-webserver.org <http://www.hiawatha-webserver.org/>"
>>     LICENSE = "GPLv2"
>>     LIC_FILES_CHKSUM = "file://COPYING;md5=a9b0a0eb7c54c87ec6ac05f5f603df6a"
>>     DEPENDS = "openssl libxml2 libxslt"
>>
>>     SECTION = "custom"
>>
>>     PR = "r0"
>>
>>     SRC_URI = "http://www.hiawatha-webserver.org/files/hiawatha-7.8.2.tar.gz"
>>     SRC_URI[md5sum] = "8aff3f8c759871ea1d1ff22e98030332"
>>
>>     inherit autotools
>>
>>     EXTRA_OEMAKE = "'CC=${CC}' 'CFLAGS=${CFLAGS} -I${S}/include -DWITHOUT_XATTR' \
>>     'BUILDDIR=${S}'"
>>
>>     EXTRA_OECONF = " --disable-ipv6 \
>>     --disable-ssl \
>>     --disable-toolkit \
>>     --disable-xslt \
>>     --disable-largefile \
>>     --mandir=${mandir}"
>>
>>     do_configure() {
>>
>>     oe_runconf
>>
>>     }
>>
>>     do_compile() {
>>
>>     oe_runmake
>>
>>     }
>>
>>     do_install() {
>>
>>     oe_runmake install DESTDIR=${D} SBINDIR=${sbindir} INCLUDEDIR=${includedir}
>>
>>
>>     Now, this is building and installing however the Hiawatha binary doesn't get included in the build. The configuration files make it in so I know it's running the make install
>>     phase however I don't know how to find out what is going on during the build and why the binary isn't making it in the rootfs.
>>
>> Maybe you need an IMAGE_INSTALL += "hiawatha" in you local.conf????
>
> I already have this in my custom image .bb file. As noted above it seems to install everything apart from the binary so all the config files go in, just not the especially
> important bit!

Did you look at the log file created during the install step?
It will be in a file named something like this:
   tmp/work/arm*/hiawatha*/temp/log.do_install
assuming that your target architecture is ARM

If you don't see any problems or can't figure out what's going wrong,
try putting some print statements in the install step and check the
log file.


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

