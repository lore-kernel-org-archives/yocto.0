Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C30F8E01366
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 07:47:57 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 Jan 2012 07:47:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="94329294"
Received: from unknown (HELO [10.255.13.28]) ([10.255.13.28])
	by azsmga001.ch.intel.com with ESMTP; 10 Jan 2012 07:47:56 -0800
Message-ID: <4F0C5DAC.1060800@linux.intel.com>
Date: Tue, 10 Jan 2012 07:47:56 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Jack Mitchell <ml@communistcode.co.uk>
References: <4F0C1C26.6030301@communistcode.co.uk>
	<20120110111628.GC3445@jama.jama.net>
	<4F0C1F46.20003@communistcode.co.uk>
In-Reply-To: <4F0C1F46.20003@communistcode.co.uk>
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
X-List-Received-Date: Tue, 10 Jan 2012 15:47:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/10/2012 03:21 AM, Jack Mitchell wrote:
> On 10/01/12 11:16, Martin Jansa wrote:
>> On Tue, Jan 10, 2012 at 11:08:22AM +0000, Jack Mitchell wrote:
>>> Good morning everyone,
>>>
>>> I am currently having issues creating a (very!) simple package. I have
>>> looked at the latest reference manual and studied other .bb files to no
>>> avail.
>>>
>>> I am trying to build a simple web server called Hiawatha. To install
>>> (http://www.hiawatha-webserver.org/howto/compilation_and_installation)
>>> it consists of a simple:
>>>
>>> ./configure
>>>
>>> make
>>>
>>> make install
>>>
>>> Now, for the life in me I cannot replicate this behaviour in a .bb file.
>>> This is what I have so far:
>>>
>>> DESCRIPTION = "Lightweight secure web server"
>>> HOMEPAGE = "http://www.hiawatha-webserver.org"
>>>
>>> LICENSE = "GPLv2"
>>> LIC_FILES_CHKSUM = "file://COPYING;md5=a9b0a0eb7c54c87ec6ac05f5f603df6a"
>>>
>>> SECTION = "custom"
>>>
>>> PR = "r0"
>>>
>>> SRC_URI =
>>> "http://www.hiawatha-webserver.org/files/hiawatha-7.8.2.tar.gz"
>>>
>>> SRC_URI[md5sum] = "8aff3f8c759871ea1d1ff22e98030332"
>>>
>>> do_configure () {
>>>
>>> ./configure --disable-ipv6 \
>>> --disable-ssl \
>>> --disable-toolkit \
>>> --disable-xslt \
>>> --disable-largefile \
>>>
>>> oe_runmake
>>>
>>> }
>>>
By using inherit autotools, you can remove this step and let bitbake 
handle the configure and compile / make steps.

You can reduce the above to
EXTRA_OECONF = "--disable-ipv6 --disable-ssl --disable-toolkit 
--disable-xslt --disable-largefile"

>>> do_install () {
>>>
>>> oe_runmake install DESTDIR=${D} SBINDIR=${sbindir} MANDIR=${mandir} \
>>> INCLUDEDIR=${includedir}
>>>
>>> }
>>>
This generally looks correct, but I would move the install to the end, 
not sure why but it might make a difference.

Another test you can do since it gets to the install point is to use 
devshell (bitbake hiawatha -c devshell)

The will give you a shell with all the variables set and you can run the 
make install directly on the command line and verify if there is a 
problem there.  You can also review the run scripts in the 
temp/run.do_install.<pid> file for the hiawatha package.

Hope that helps you.

Sau!

>>> Could someone point me in the right direction, I feel this should be an
>>> extremely easy piece of software to build - I think I'm just not
>>> understanding the build system correctly....
>>>
>>> The error I receive when trying to build this package is:
>>>
>>> ERROR: Function 'do_install' failed (see
>>> /home/jack/yocto/poky-git/beagleInitial/tmp/work/armv5te-poky-linux-gnueabi/hiawatha-7.8.2-r0/temp/log.do_install.6289
>>>
>>> for further information)
>>> | NOTE: make -j 9 -e MAKEFLAGS= -e install
>>> DESTDIR=/home/jack/yocto/poky-git/beagleInitial/tmp/work/armv5te-poky-linux-gnueabi/hiawatha-7.8.2-r0/image
>>>
>>> SBINDIR=/usr/sbin MANDIR=/usr/share/man INCLUDEDIR=/usr/include
>>> | make: *** No rule to make target `install'. Stop.
>>> | ERROR: oe_runmake failed
>> try to start with
>> inherit autotools
>>
>> Cheers,,
>>
>>> Thanks in advance,
>>> Jack.
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>
> Hi Martin,
>
> Inheriting autotools makes no difference, I also don't understand why
> autotools should be inherited if it is only a make/configure combination
> being used?
>
> Best Regards
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

