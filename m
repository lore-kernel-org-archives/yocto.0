Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE789E00953; Mon, 29 May 2017 12:24:39 -0700 (PDT)
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
	*      [209.85.215.41 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.41 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f41.google.com (mail-lf0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02623E0080F
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 12:24:36 -0700 (PDT)
Received: by mail-lf0-f41.google.com with SMTP id a5so38807562lfh.2
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 12:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cYQUgcOSa3L016r9XL6GN9x/Y9vcdynfZPLV/6kYP5I=;
	b=fzVQI7kNTjdAOl/hTUjU9F5snNYr8JJu6HUe3v8NiO1LIEvFiwVI8h7rG8JvnpyqUB
	t6w/k/n5PlHgTLD8gacYiDkN5V3FgOpAH+c07FFZzVugb1/B+dzIGlpErhMU/AgM7AWp
	uMm+88hQgzb7UtDsPpQMiqRKqSrCQQdvuVBqMrU9YY/8uAWEjis6FrcEBdTMViKOVcFE
	r/Qs5TVWiL9ujQejEJ2ru5ONmrDK3zhoy9BltlV8u0b/yrHqtkfmdG8w0FZgpcmgmYzl
	1s8WOobBeNNR9eTBNLICVR2jHZ0TjfNxhx0FAA/RnijicfA5ikV3qlmO35FKLn1PAeEM
	wnsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cYQUgcOSa3L016r9XL6GN9x/Y9vcdynfZPLV/6kYP5I=;
	b=PNZPHDrRPwWXug7BX/qYMpb1eVl4DBxsuL57Y+Rba5SGDaFzpDMEizBjkKdn5q0M7V
	C47fZ383G68/PKsnyIr1fTZnQ99/SJ9ulrcEPGAyUnHq8LQKSnYo09OW9HpebSnXIe6F
	lJc/lU70yXB/86WJUOdefnV+c0oNwUno7F5hbgGkWAdS0VAu73Mi7rp+oi1RisjpQkvJ
	Kya5J8tIUKY0ekCb6qq8Q3fiqea5kSdm15EdEn97DGMR+CwjV6HqOhVh5M2jR24WjmFt
	ITPN8dy+HvdNun+p5B5zuBWDR6hnSojGSgE/8M0belwkwxxphNLankiLQMneYmSRY7tc
	Z2tQ==
X-Gm-Message-State: AODbwcCE1yTotBGR9duTTfTO9RXpmfO/0Urq45GOIzzxaEm8uAazqNT8
	zYjRxUfH1GiMwDmSuJWGSJGVIfISLfuM
X-Received: by 10.46.14.2 with SMTP id 2mr5002930ljo.75.1496085875507; Mon, 29
	May 2017 12:24:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.141.202 with HTTP; Mon, 29 May 2017 12:24:34 -0700 (PDT)
In-Reply-To: <275dac4b-2244-aea2-e539-a177855d5169@smart-home-technology.ch>
References: <275dac4b-2244-aea2-e539-a177855d5169@smart-home-technology.ch>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 29 May 2017 21:24:34 +0200
Message-ID: <CAAfyv34p4-0DQRzxHY6_Y_zYVRXHthWjUi-yHLnC0+tj=SMr-A@mail.gmail.com>
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
X-List-Received-Date: Mon, 29 May 2017 19:24:40 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Jakob,

On Mon, May 29, 2017 at 6:29 PM, Jakob Hasse
<jakob.hasse@smart-home-technology.ch> wrote:
> Hello,
>
> I have two issues:
>
> 1.
> I innocently tried to include an open source version of the ST Link tools
> (https://github.com/texane/stlink) into my yocto image.
> I created a recipe fetching from git and got the error:
>
> | CMake Error at CMakeLists.txt:105 (install):
> |   install TARGETS given unknown argument "/lib".
> |
> |
> | CMake Error at CMakeLists.txt:135 (install):
> |   install TARGETS given unknown argument "/lib".
> |
> |
> | CMake Error at usr/lib/pkgconfig/CMakeLists.txt:12 (install):
> |   install FILES given unknown argument "/lib/pkgconfig/".
> |
> |
> | CMake Error at include/CMakeLists.txt:9 (install):
> |   install FILES given unknown argument "/lib".
> |
> |
> | CMake Error at include/CMakeLists.txt:12 (install):
> |   install FILES given unknown argument "/lib/stlink".
>
> I'm not sure whether it's a CMake problem since the project compiles
> absolutely fine on my host machine with native target (the binary also works
> fine in my case).
> Also, the CMake error log shows me errors about unrecognized CFlags
> (-Wmissing-variable-declarations, -Wshorten-64-to-32) which confuse me
> somewhat given the errors above.
> Then I checked out the source and changed the CMake file to exclude
> corresponding flags - with no difference, errors still remain.
> My recipe now looks like this:
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
> SRC_URI = "file://stlink.tar.gz"
Why don't use git protocol instead of link to fetched sources?
>
> FILES_${PN} += "${bindir}/st-flash"
>
> S = "${WORKDIR}/git"
Here is my updated recipe:

# comment
SUMMARY = "ST-Link firmware flasher"
DESCRIPTION = ""
SECTION = "examples"
LICENSE = "MIT"
LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

DEPENDS = "libusb pkgconfig"

SRCREV = "55c057296ad15fa6de9909206098bd4eed8f6311"

PV = "1.3.1+git${SRCPV}"

SRC_URI = "git://github.com/texane/stlink.git"

SRC_URI[md5sum] = "99fa2b1de041f62b7285a8f1870c891b"
SRC_URI[sha256sum] =
"8545752efe2be13c6dbadec48c93cd72be448147f38f0fe44050c0416827ca37"

S = "${WORKDIR}/git"

inherit cmake

Also it is necessary to patch a stlink before to pass configuration phase like:
diff --git a/CMakeLists.txt b/CMakeLists.txt
index afa7fde..4d2db6c 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -1,9 +1,10 @@
 cmake_minimum_required(VERSION 2.8.7)
 project(stlink C)
+SET(CMAKE_INSTALL_PREFIX /usr/)
 set(PROJECT_DESCRIPTION "Open source version of the
STMicroelectronics Stlink Tools")
 set(STLINK_UDEV_RULES_DIR "/etc/udev/rules.d" CACHE PATH "Udev rules
directory")
 set(STLINK_MODPROBED_DIR "/etc/modprobe.d" CACHE PATH "modprobe.d directory")
-set(STLINK_LIBRARY_PATH "lib/${CMAKE_LIBRARY_PATH}" CACHE PATH
"Target lib directory")
+set(STLINK_LIBRARY_PATH "${CMAKE_INSTALL_PREFIX}/lib" CACHE PATH
"Target lib directory")

 option(STLINK_GENERATE_MANPAGES "Generate manpages with pandoc" OFF)

diff --git a/include/CMakeLists.txt b/include/CMakeLists.txt
index 0b5a443..e0851e4 100644
--- a/include/CMakeLists.txt
+++ b/include/CMakeLists.txt
@@ -2,13 +2,16 @@ configure_file(
        "${PROJECT_SOURCE_DIR}/include/stlink/version.h.in"
        "${CMAKE_BINARY_DIR}/include/stlink/version.h"
 )
+
+SET(CMAKE_INSTALL_PREFIX /usr/)
+
 file(GLOB STLINK_HEADERS
        "stlink/*.h"
        "${CMAKE_BINARY_DIR}/include/stlink/*.h"
 )
 install(FILES ${CMAKE_SOURCE_DIR}/include/stlink.h
-       DESTINATION include/${CMAKE_LIBRARY_PATH}
+       DESTINATION
"${CMAKE_INSTALL_PREFIX}/include/${CMAKE_LIBRARY_PATH}/stlink"
 )
 install(FILES ${STLINK_HEADERS}
-       DESTINATION include/${CMAKE_LIBRARY_PATH}/stlink
+       DESTINATION
"${CMAKE_INSTALL_PREFIX}/include/${CMAKE_LIBRARY_PATH}/stlink"
 )

Then it still fails to compile but I tried to compile it for arm so
maybe this is the reason. Hope it helps a bit ;).

>
> inherit cmake
>
> 2.
> For the last step I had to repack a tar.gz out of the checked out source
> folder, otherwise bitbake complained.
> Is it possible to base a yocto package on a local source folder using
> autotools or cmake class?. All the examples I found either use remote git
> repos + autotools/cmake or a local source folder without autotools/cmake.
>
> Cheers and many thanks in advance,
> Jakob
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
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

BR,

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

