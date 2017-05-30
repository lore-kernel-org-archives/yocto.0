Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5FA6E00B1B; Tue, 30 May 2017 02:37:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.46 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00A1CE00812
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 02:37:47 -0700 (PDT)
Received: by mail-lf0-f46.google.com with SMTP id 99so45921235lfu.1
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 02:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Pes8NeaOZIxVGS86SZncqgsdS4pY9Emr975zhXtO+C4=;
	b=qN59HLNaUSVbxa4KUFgpC/7I/Y7t2G4uo5tqbS2jMrzM53+6PGkg376il8ckPtH0Jw
	NHuYfiEhqi/zNPmnCAiEhPAM95whM9k5cTBlFVOGVoSXosqIb4Nzr0Qcv6otZv8MZSff
	bwUCyBlnMdHx0mt8JHKuvien6ZDm7aG/49A2EWGRWwDOAVJXf20Jr2/d5AwzIaSxTsxz
	Nr+6l9rQSAFqrbUSEwQGfPQ0jKQdKRLQ/DjmbM1modJxl0aKTOxGyUrtl6bt05imoi2z
	43D5Y/Fwz7cDmghpClnM/052+446Jr2rjLs3oAj0SZE8n9gvnbsOTaC/GdnySt08a2MA
	9Ieg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Pes8NeaOZIxVGS86SZncqgsdS4pY9Emr975zhXtO+C4=;
	b=iBimlr8Xc+Ub1fC8uaEwOgnIZ4FOCu4YHEgvLy9mXT8+KLtdFbvMAgdQ/rwTJ8UgYj
	hzZ11D5GxlfqMSMevi7HONqKqI50Gqcz2wx1kfXKXZg6aha8b3CPqNIXjHSPWYdQUDne
	CVPNHVf5s2QT4L3sL+R5LsPl2RvH6UAv4y0obBgARl1ENnXZXiozW80VY725DoE/aK9V
	Roa4fn7QNkixxXAANmS2Kpqz67COYl2GghA9h6+0/jU0Q0TRb4SsxfylYk/y3OYU3+V+
	NzJoKVdo3uhcXHWmPU71GvxSSvsvRNvnjkLY5sF17ZMZT3e0ZAMHrViictlfu75B44XG
	ipkQ==
X-Gm-Message-State: AODbwcCpgOuA25bJOqmvuenf85uWCzLFTtk0vSBZM1Y8sF4qlF2O62/f
	ZI1MV7C8oUE84g3vpzqZaKqbqh7qQFfB
X-Received: by 10.25.56.19 with SMTP id f19mr5468583lfa.173.1496137066062;
	Tue, 30 May 2017 02:37:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.141.202 with HTTP; Tue, 30 May 2017 02:37:45 -0700 (PDT)
In-Reply-To: <cafef6f7-905a-0c03-8d8e-ecaf1d47ef28@smart-home-technology.ch>
References: <275dac4b-2244-aea2-e539-a177855d5169@smart-home-technology.ch>
	<CAAfyv34p4-0DQRzxHY6_Y_zYVRXHthWjUi-yHLnC0+tj=SMr-A@mail.gmail.com>
	<cafef6f7-905a-0c03-8d8e-ecaf1d47ef28@smart-home-technology.ch>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 30 May 2017 11:37:45 +0200
Message-ID: <CAAfyv36WmwS7=x71p50SGEQ6umxjuB9x5f5nPkbZdDW5q_a4Xw@mail.gmail.com>
To: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: CMake project not building; building from local git repo possible
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
X-List-Received-Date: Tue, 30 May 2017 09:37:52 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Jakob,

On Tue, May 30, 2017 at 11:28 AM, Jakob Hasse
<jakob.hasse@smart-home-technology.ch> wrote:
> Hi Marek,
please don't top post http://www.idallen.com/topposting.html :)
>
> Thanks for your answer!
> I did use a local repo folder since I find it more convenient to make quick
> changes that way, as it is the case right now.
Source is fetched only once then it's keep in downloads directory so
better use then local repo.
>
> I applied your changes but I still get the same bitbake errors as before, as
> shown below. The CMake Error log says:
> ...
> error: unrecognized command line option '-Wmissing-variable-declarations'
> ...
> error: unrecognized command line option '-Wshorten-64-to-32'
Can you give me some more info about poky version, target you're building ...
> ...
>
> I tried to coment out the addition of the corresponding flags (in
> cmake/CFlags.cmake) with no improvement.
>
> Now I compiled with another arm-gcc version (digi embedded version of
> arm-gcc, 6.2.0) and I get a different error -.- :
> | DEBUG: Executing python function sysroot_cleansstate
> | DEBUG: Python function sysroot_cleansstate finished
> | DEBUG: Executing shell function do_configure
> | CMake Error: The source directory
> "/home/jakob/workspace/newuvalue/tmp/work/cortexa7hf-neon-dey-linux-gnueabi/stlink/0.1-r0/git"
> does not appear to contain CMakeLists.txt.
> | Specify --help for usage, or press the help button on the CMake GUI.
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_configure (log file is located at
> /home/jakob/workspace/newuvalue/tmp/work/cortexa7hf-neon-dey-linux-gnueabi/stlink/0.1-r0/temp/log.do_configure.3539)
>
> I have no idea why, but in the original source folder the CMakeLists.txt is
> there...
>
> Cheers,
> Jakob
>
>
> On 29.05.2017 21:24, Belisko Marek wrote:
>>
>> Hi Jakob,
>>
>> On Mon, May 29, 2017 at 6:29 PM, Jakob Hasse
>> <jakob.hasse@smart-home-technology.ch> wrote:
>>>
>>> Hello,
>>>
>>> I have two issues:
>>>
>>> 1.
>>> I innocently tried to include an open source version of the ST Link tools
>>> (https://github.com/texane/stlink) into my yocto image.
>>> I created a recipe fetching from git and got the error:
>>>
>>> | CMake Error at CMakeLists.txt:105 (install):
>>> |   install TARGETS given unknown argument "/lib".
>>> |
>>> |
>>> | CMake Error at CMakeLists.txt:135 (install):
>>> |   install TARGETS given unknown argument "/lib".
>>> |
>>> |
>>> | CMake Error at usr/lib/pkgconfig/CMakeLists.txt:12 (install):
>>> |   install FILES given unknown argument "/lib/pkgconfig/".
>>> |
>>> |
>>> | CMake Error at include/CMakeLists.txt:9 (install):
>>> |   install FILES given unknown argument "/lib".
>>> |
>>> |
>>> | CMake Error at include/CMakeLists.txt:12 (install):
>>> |   install FILES given unknown argument "/lib/stlink".
>>>
>>> I'm not sure whether it's a CMake problem since the project compiles
>>> absolutely fine on my host machine with native target (the binary also
>>> works
>>> fine in my case).
>>> Also, the CMake error log shows me errors about unrecognized CFlags
>>> (-Wmissing-variable-declarations, -Wshorten-64-to-32) which confuse me
>>> somewhat given the errors above.
>>> Then I checked out the source and changed the CMake file to exclude
>>> corresponding flags - with no difference, errors still remain.
>>> My recipe now looks like this:
>>>
>>> # comment
>>> SUMMARY = "ST-Link firmware flasher"
>>> DESCRIPTION = ""
>>> SECTION = "examples"
>>> LICENSE = "MIT"
>>> LIC_FILES_CHKSUM =
>>> "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
>>>
>>> DEPENDS = "libusb pkgconfig"
>>>
>>> SRC_URI = "file://stlink.tar.gz"
>>
>> Why don't use git protocol instead of link to fetched sources?
>>>
>>> FILES_${PN} += "${bindir}/st-flash"
>>>
>>> S = "${WORKDIR}/git"
>>
>> Here is my updated recipe:
>>
>> # comment
>> SUMMARY = "ST-Link firmware flasher"
>> DESCRIPTION = ""
>> SECTION = "examples"
>> LICENSE = "MIT"
>> LIC_FILES_CHKSUM =
>> "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
>>
>> DEPENDS = "libusb pkgconfig"
>>
>> SRCREV = "55c057296ad15fa6de9909206098bd4eed8f6311"
>>
>> PV = "1.3.1+git${SRCPV}"
>>
>> SRC_URI = "git://github.com/texane/stlink.git"
>>
>> SRC_URI[md5sum] = "99fa2b1de041f62b7285a8f1870c891b"
>> SRC_URI[sha256sum] =
>> "8545752efe2be13c6dbadec48c93cd72be448147f38f0fe44050c0416827ca37"
>>
>> S = "${WORKDIR}/git"
>>
>> inherit cmake
>>
>> Also it is necessary to patch a stlink before to pass configuration phase
>> like:
>> diff --git a/CMakeLists.txt b/CMakeLists.txt
>> index afa7fde..4d2db6c 100644
>> --- a/CMakeLists.txt
>> +++ b/CMakeLists.txt
>> @@ -1,9 +1,10 @@
>>   cmake_minimum_required(VERSION 2.8.7)
>>   project(stlink C)
>> +SET(CMAKE_INSTALL_PREFIX /usr/)
>>   set(PROJECT_DESCRIPTION "Open source version of the
>> STMicroelectronics Stlink Tools")
>>   set(STLINK_UDEV_RULES_DIR "/etc/udev/rules.d" CACHE PATH "Udev rules
>> directory")
>>   set(STLINK_MODPROBED_DIR "/etc/modprobe.d" CACHE PATH "modprobe.d
>> directory")
>> -set(STLINK_LIBRARY_PATH "lib/${CMAKE_LIBRARY_PATH}" CACHE PATH
>> "Target lib directory")
>> +set(STLINK_LIBRARY_PATH "${CMAKE_INSTALL_PREFIX}/lib" CACHE PATH
>> "Target lib directory")
>>
>>   option(STLINK_GENERATE_MANPAGES "Generate manpages with pandoc" OFF)
>>
>> diff --git a/include/CMakeLists.txt b/include/CMakeLists.txt
>> index 0b5a443..e0851e4 100644
>> --- a/include/CMakeLists.txt
>> +++ b/include/CMakeLists.txt
>> @@ -2,13 +2,16 @@ configure_file(
>>          "${PROJECT_SOURCE_DIR}/include/stlink/version.h.in"
>>          "${CMAKE_BINARY_DIR}/include/stlink/version.h"
>>   )
>> +
>> +SET(CMAKE_INSTALL_PREFIX /usr/)
>> +
>>   file(GLOB STLINK_HEADERS
>>          "stlink/*.h"
>>          "${CMAKE_BINARY_DIR}/include/stlink/*.h"
>>   )
>>   install(FILES ${CMAKE_SOURCE_DIR}/include/stlink.h
>> -       DESTINATION include/${CMAKE_LIBRARY_PATH}
>> +       DESTINATION
>> "${CMAKE_INSTALL_PREFIX}/include/${CMAKE_LIBRARY_PATH}/stlink"
>>   )
>>   install(FILES ${STLINK_HEADERS}
>> -       DESTINATION include/${CMAKE_LIBRARY_PATH}/stlink
>> +       DESTINATION
>> "${CMAKE_INSTALL_PREFIX}/include/${CMAKE_LIBRARY_PATH}/stlink"
>>   )
>>
>> Then it still fails to compile but I tried to compile it for arm so
>> maybe this is the reason. Hope it helps a bit ;).
>>
>>> inherit cmake
>>>
>>> 2.
>>> For the last step I had to repack a tar.gz out of the checked out source
>>> folder, otherwise bitbake complained.
>>> Is it possible to base a yocto package on a local source folder using
>>> autotools or cmake class?. All the examples I found either use remote git
>>> repos + autotools/cmake or a local source folder without autotools/cmake.
>>>
>>> Cheers and many thanks in advance,
>>> Jakob
>>>
>>> --
>>> Jakob Hasse
>>> Software Developement
>>>
>>> E: jakob.hasse@smart-home-technology.ch
>>> T: +41 44 552 02 66
>>>
>>> Smart Home Technology GmbH
>>> www.smart-home-technology.ch
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> BR,
>>
>> marek
>>
>
> --
> Jakob Hasse
> Software Developement
>
> E: jakob.hasse@smart-home-technology.ch
> T: +41 44 552 02 66
>
> Smart Home Technology GmbH
> www.smart-home-technology.ch
>

Thanks,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

