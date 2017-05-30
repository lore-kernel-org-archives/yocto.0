Return-Path: <jakob.hasse@smart-home-technology.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4091E00953; Tue, 30 May 2017 02:28:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.26.49.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mxout017.mail.hostpoint.ch (mxout017.mail.hostpoint.ch
	[217.26.49.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CA1CE0080F
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 02:28:42 -0700 (PDT)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
	by mxout017.mail.hostpoint.ch with esmtp (Exim 4.89 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1dFdSC-000CeF-C6; Tue, 30 May 2017 11:28:40 +0200
Received: from [2a02:168:68c7:0:6086:587:3a18:e196]
	by asmtp013.mail.hostpoint.ch with esmtpa (Exim 4.89 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1dFdSC-000Mv9-A8; Tue, 30 May 2017 11:28:40 +0200
X-Authenticated-Sender-Id: jakob.hasse@smart-home-technology.ch
To: Belisko Marek <marek.belisko@gmail.com>
References: <275dac4b-2244-aea2-e539-a177855d5169@smart-home-technology.ch>
	<CAAfyv34p4-0DQRzxHY6_Y_zYVRXHthWjUi-yHLnC0+tj=SMr-A@mail.gmail.com>
From: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <cafef6f7-905a-0c03-8d8e-ecaf1d47ef28@smart-home-technology.ch>
Date: Tue, 30 May 2017 11:28:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAAfyv34p4-0DQRzxHY6_Y_zYVRXHthWjUi-yHLnC0+tj=SMr-A@mail.gmail.com>
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
X-List-Received-Date: Tue, 30 May 2017 09:28:46 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: de-DE

Hi Marek,

Thanks for your answer!
I did use a local repo folder since I find it more convenient to make 
quick changes that way, as it is the case right now.

I applied your changes but I still get the same bitbake errors as 
before, as shown below. The CMake Error log says:
...
error: unrecognized command line option '-Wmissing-variable-declarations'
...
error: unrecognized command line option '-Wshorten-64-to-32'
...

I tried to coment out the addition of the corresponding flags (in 
cmake/CFlags.cmake) with no improvement.

Now I compiled with another arm-gcc version (digi embedded version of 
arm-gcc, 6.2.0) and I get a different error -.- :
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function do_configure
| CMake Error: The source directory 
"/home/jakob/workspace/newuvalue/tmp/work/cortexa7hf-neon-dey-linux-gnueabi/stlink/0.1-r0/git" 
does not appear to contain CMakeLists.txt.
| Specify --help for usage, or press the help button on the CMake GUI.
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at 
/home/jakob/workspace/newuvalue/tmp/work/cortexa7hf-neon-dey-linux-gnueabi/stlink/0.1-r0/temp/log.do_configure.3539)

I have no idea why, but in the original source folder the CMakeLists.txt 
is there...

Cheers,
Jakob

On 29.05.2017 21:24, Belisko Marek wrote:
> Hi Jakob,
>
> On Mon, May 29, 2017 at 6:29 PM, Jakob Hasse
> <jakob.hasse@smart-home-technology.ch> wrote:
>> Hello,
>>
>> I have two issues:
>>
>> 1.
>> I innocently tried to include an open source version of the ST Link tools
>> (https://github.com/texane/stlink) into my yocto image.
>> I created a recipe fetching from git and got the error:
>>
>> | CMake Error at CMakeLists.txt:105 (install):
>> |   install TARGETS given unknown argument "/lib".
>> |
>> |
>> | CMake Error at CMakeLists.txt:135 (install):
>> |   install TARGETS given unknown argument "/lib".
>> |
>> |
>> | CMake Error at usr/lib/pkgconfig/CMakeLists.txt:12 (install):
>> |   install FILES given unknown argument "/lib/pkgconfig/".
>> |
>> |
>> | CMake Error at include/CMakeLists.txt:9 (install):
>> |   install FILES given unknown argument "/lib".
>> |
>> |
>> | CMake Error at include/CMakeLists.txt:12 (install):
>> |   install FILES given unknown argument "/lib/stlink".
>>
>> I'm not sure whether it's a CMake problem since the project compiles
>> absolutely fine on my host machine with native target (the binary also works
>> fine in my case).
>> Also, the CMake error log shows me errors about unrecognized CFlags
>> (-Wmissing-variable-declarations, -Wshorten-64-to-32) which confuse me
>> somewhat given the errors above.
>> Then I checked out the source and changed the CMake file to exclude
>> corresponding flags - with no difference, errors still remain.
>> My recipe now looks like this:
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
>> SRC_URI = "file://stlink.tar.gz"
> Why don't use git protocol instead of link to fetched sources?
>> FILES_${PN} += "${bindir}/st-flash"
>>
>> S = "${WORKDIR}/git"
> Here is my updated recipe:
>
> # comment
> SUMMARY = "ST-Link firmware flasher"
> DESCRIPTION = ""
> SECTION = "examples"
> LICENSE = "MIT"
> LIC_FILES_CHKSUM =
> "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
>
> DEPENDS = "libusb pkgconfig"
>
> SRCREV = "55c057296ad15fa6de9909206098bd4eed8f6311"
>
> PV = "1.3.1+git${SRCPV}"
>
> SRC_URI = "git://github.com/texane/stlink.git"
>
> SRC_URI[md5sum] = "99fa2b1de041f62b7285a8f1870c891b"
> SRC_URI[sha256sum] =
> "8545752efe2be13c6dbadec48c93cd72be448147f38f0fe44050c0416827ca37"
>
> S = "${WORKDIR}/git"
>
> inherit cmake
>
> Also it is necessary to patch a stlink before to pass configuration phase like:
> diff --git a/CMakeLists.txt b/CMakeLists.txt
> index afa7fde..4d2db6c 100644
> --- a/CMakeLists.txt
> +++ b/CMakeLists.txt
> @@ -1,9 +1,10 @@
>   cmake_minimum_required(VERSION 2.8.7)
>   project(stlink C)
> +SET(CMAKE_INSTALL_PREFIX /usr/)
>   set(PROJECT_DESCRIPTION "Open source version of the
> STMicroelectronics Stlink Tools")
>   set(STLINK_UDEV_RULES_DIR "/etc/udev/rules.d" CACHE PATH "Udev rules
> directory")
>   set(STLINK_MODPROBED_DIR "/etc/modprobe.d" CACHE PATH "modprobe.d directory")
> -set(STLINK_LIBRARY_PATH "lib/${CMAKE_LIBRARY_PATH}" CACHE PATH
> "Target lib directory")
> +set(STLINK_LIBRARY_PATH "${CMAKE_INSTALL_PREFIX}/lib" CACHE PATH
> "Target lib directory")
>
>   option(STLINK_GENERATE_MANPAGES "Generate manpages with pandoc" OFF)
>
> diff --git a/include/CMakeLists.txt b/include/CMakeLists.txt
> index 0b5a443..e0851e4 100644
> --- a/include/CMakeLists.txt
> +++ b/include/CMakeLists.txt
> @@ -2,13 +2,16 @@ configure_file(
>          "${PROJECT_SOURCE_DIR}/include/stlink/version.h.in"
>          "${CMAKE_BINARY_DIR}/include/stlink/version.h"
>   )
> +
> +SET(CMAKE_INSTALL_PREFIX /usr/)
> +
>   file(GLOB STLINK_HEADERS
>          "stlink/*.h"
>          "${CMAKE_BINARY_DIR}/include/stlink/*.h"
>   )
>   install(FILES ${CMAKE_SOURCE_DIR}/include/stlink.h
> -       DESTINATION include/${CMAKE_LIBRARY_PATH}
> +       DESTINATION
> "${CMAKE_INSTALL_PREFIX}/include/${CMAKE_LIBRARY_PATH}/stlink"
>   )
>   install(FILES ${STLINK_HEADERS}
> -       DESTINATION include/${CMAKE_LIBRARY_PATH}/stlink
> +       DESTINATION
> "${CMAKE_INSTALL_PREFIX}/include/${CMAKE_LIBRARY_PATH}/stlink"
>   )
>
> Then it still fails to compile but I tried to compile it for arm so
> maybe this is the reason. Hope it helps a bit ;).
>
>> inherit cmake
>>
>> 2.
>> For the last step I had to repack a tar.gz out of the checked out source
>> folder, otherwise bitbake complained.
>> Is it possible to base a yocto package on a local source folder using
>> autotools or cmake class?. All the examples I found either use remote git
>> repos + autotools/cmake or a local source folder without autotools/cmake.
>>
>> Cheers and many thanks in advance,
>> Jakob
>>
>> --
>> Jakob Hasse
>> Software Developement
>>
>> E: jakob.hasse@smart-home-technology.ch
>> T: +41 44 552 02 66
>>
>> Smart Home Technology GmbH
>> www.smart-home-technology.ch
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> BR,
>
> marek
>

-- 
Jakob Hasse
Software Developement

E: jakob.hasse@smart-home-technology.ch
T: +41 44 552 02 66

Smart Home Technology GmbH
www.smart-home-technology.ch


