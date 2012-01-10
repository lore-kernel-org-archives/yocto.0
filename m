Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 329B5E006E9
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 03:09:11 -0800 (PST)
Received: from [192.168.0.69] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 6870C2684A
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 10:36:51 +0000 (GMT)
Message-ID: <4F0C1C26.6030301@communistcode.co.uk>
Date: Tue, 10 Jan 2012 11:08:22 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111224 Thunderbird/9.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Trouble creating new package
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
X-List-Received-Date: Tue, 10 Jan 2012 11:09:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Good morning everyone,

I am currently having issues creating a (very!) simple package. I have 
looked at the latest reference manual and studied other .bb files to no 
avail.

I am trying to build a simple web server called Hiawatha. To install 
(http://www.hiawatha-webserver.org/howto/compilation_and_installation) 
it consists of a simple:

./configure

make

make install

Now, for the life in me I cannot replicate this behaviour in a .bb file. 
This is what I have so far:

DESCRIPTION = "Lightweight secure web server"
HOMEPAGE = "http://www.hiawatha-webserver.org"

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=a9b0a0eb7c54c87ec6ac05f5f603df6a"

SECTION = "custom"

PR = "r0"

SRC_URI = "http://www.hiawatha-webserver.org/files/hiawatha-7.8.2.tar.gz"

SRC_URI[md5sum] = "8aff3f8c759871ea1d1ff22e98030332"

do_configure () {

   ./configure --disable-ipv6 \
              --disable-ssl \
              --disable-toolkit \
              --disable-xslt \
              --disable-largefile \

   oe_runmake

}

do_install () {

   oe_runmake install DESTDIR=${D} SBINDIR=${sbindir} MANDIR=${mandir} \
     INCLUDEDIR=${includedir}

}

Could someone point me in the right direction, I feel this should be an 
extremely easy piece of software to build - I think I'm just not 
understanding the build system correctly....

The error I receive when trying to build this package is:

ERROR: Function 'do_install' failed (see 
/home/jack/yocto/poky-git/beagleInitial/tmp/work/armv5te-poky-linux-gnueabi/hiawatha-7.8.2-r0/temp/log.do_install.6289 
for further information)
| NOTE: make -j 9 -e MAKEFLAGS= -e install 
DESTDIR=/home/jack/yocto/poky-git/beagleInitial/tmp/work/armv5te-poky-linux-gnueabi/hiawatha-7.8.2-r0/image 
SBINDIR=/usr/sbin MANDIR=/usr/share/man INCLUDEDIR=/usr/include
| make: *** No rule to make target `install'.  Stop.
| ERROR: oe_runmake failed

Thanks in advance,
Jack.


