Return-Path: <jakob.hasse@smart-home-technology.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06C1CE00812; Mon, 29 May 2017 10:05:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [217.26.49.172 listed in list.dnswl.org]
X-Greylist: delayed 2168 seconds by postgrey-1.32 at yocto-www;
	Mon, 29 May 2017 10:05:56 PDT
Received: from mxout012.mail.hostpoint.ch (mxout012.mail.hostpoint.ch
	[217.26.49.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96A10E007AA
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 10:05:56 -0700 (PDT)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
	by mxout012.mail.hostpoint.ch with esmtp (Exim 4.89 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1dFNYA-000POh-QZ
	for yocto@yoctoproject.org; Mon, 29 May 2017 18:29:46 +0200
Received: from [2a02:168:6917:0:d8c3:f3be:41e3:f254]
	by asmtp013.mail.hostpoint.ch with esmtpa (Exim 4.89 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1dFNYA-0000Ow-Om
	for yocto@yoctoproject.org; Mon, 29 May 2017 18:29:46 +0200
X-Authenticated-Sender-Id: jakob.hasse@smart-home-technology.ch
To: Yocto List <yocto@yoctoproject.org>
From: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <275dac4b-2244-aea2-e539-a177855d5169@smart-home-technology.ch>
Date: Mon, 29 May 2017 18:29:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: CMake project not building; building from local git repo possible
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
X-List-Received-Date: Mon, 29 May 2017 17:05:59 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: de-DE

Hello,

I have two issues:

1.
I innocently tried to include an open source version of the ST Link 
tools (https://github.com/texane/stlink) into my yocto image.
I created a recipe fetching from git and got the error:

| CMake Error at CMakeLists.txt:105 (install):
|   install TARGETS given unknown argument "/lib".
|
|
| CMake Error at CMakeLists.txt:135 (install):
|   install TARGETS given unknown argument "/lib".
|
|
| CMake Error at usr/lib/pkgconfig/CMakeLists.txt:12 (install):
|   install FILES given unknown argument "/lib/pkgconfig/".
|
|
| CMake Error at include/CMakeLists.txt:9 (install):
|   install FILES given unknown argument "/lib".
|
|
| CMake Error at include/CMakeLists.txt:12 (install):
|   install FILES given unknown argument "/lib/stlink".

I'm not sure whether it's a CMake problem since the project compiles 
absolutely fine on my host machine with native target (the binary also 
works fine in my case).
Also, the CMake error log shows me errors about unrecognized CFlags 
(-Wmissing-variable-declarations, -Wshorten-64-to-32) which confuse me 
somewhat given the errors above.
Then I checked out the source and changed the CMake file to exclude 
corresponding flags - with no difference, errors still remain.
My recipe now looks like this:

# comment
SUMMARY = "ST-Link firmware flasher"
DESCRIPTION = ""
SECTION = "examples"
LICENSE = "MIT"
LIC_FILES_CHKSUM = 
"file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

DEPENDS = "libusb pkgconfig"

SRC_URI = "file://stlink.tar.gz"

FILES_${PN} += "${bindir}/st-flash"

S = "${WORKDIR}/git"

inherit cmake

2.
For the last step I had to repack a tar.gz out of the checked out source 
folder, otherwise bitbake complained.
Is it possible to base a yocto package on a local source folder using 
autotools or cmake class?. All the examples I found either use remote 
git repos + autotools/cmake or a local source folder without 
autotools/cmake.

Cheers and many thanks in advance,
Jakob

-- 
Jakob Hasse
Software Developement

E: jakob.hasse@smart-home-technology.ch
T: +41 44 552 02 66

Smart Home Technology GmbH
www.smart-home-technology.ch


