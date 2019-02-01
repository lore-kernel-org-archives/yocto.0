Return-Path: <eas@sw-optimization.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A4CEE00D2F; Fri,  1 Feb 2019 01:45:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [81.19.149.120 listed in list.dnswl.org]
X-Greylist: delayed 3236 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Feb 2019 01:45:26 PST
Received: from mx10lb.world4you.com (mx10lb.world4you.com [81.19.149.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BC6CE00C7D
	for <yocto@yoctoproject.org>; Fri,  1 Feb 2019 01:45:26 -0800 (PST)
Received: from [81.19.149.44] (helo=webmail.world4you.com)
	by mx10lb.world4you.com with esmtpa (Exim 4.91)
	(envelope-from <eas@sw-optimization.com>) id 1gpUXo-0006xB-JN
	for yocto@yoctoproject.org; Fri, 01 Feb 2019 09:51:28 +0100
MIME-Version: 1.0
Date: Fri, 01 Feb 2019 09:51:28 +0100
From: Eric Schwarz <eas@sw-optimization.com>
To: yocto@yoctoproject.org
Message-ID: <40b1945719475701252bad02ee39be4d@sw-optimization.com>
X-Sender: eas@sw-optimization.com
User-Agent: World4You Webmail
X-SA-Do-Not-Run: Yes
X-AV-Do-Run: Yes
Subject: SDK install w/ CMake
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
X-List-Received-Date: Fri, 01 Feb 2019 09:45:27 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hello,

we have got the problem that w/ the Yocto recipe and CMake install 
targets as below always everything (headers and library or binary 
respectively) is installed in the SDK.
The binary also goes into the SDK even though we just add it to 
IMAGE_INSTALL based on a XILINX yocto build (rel-v2018.3).

For sure we only want headers to be installed when "<library_name>-dev" 
is added to TOOLCHAIN_TARGET_TASK_append and the binary should not be 
installed at all when it is just added to IMAGE_INSTALL.

For sure we studied Yocto and CMake recipes from other libraries where 
it works like pugixml but weren't able to figure out what's going wrong.


Yocto recipe
============

DESCRIPTION = "C++ reflection library"
SECTION = "libs"
LICENSE = "CLOSED"

SRCREV = "${AUTOREV}"
SRCBRANCH = "next"
SRC_URI = 
"git://gitlab.company.de/psg/${PN}.git;branch=${SRCBRANCH};protocol=ssh"

DEPENDS = "catch2"

inherit cmake
S = "${WORKDIR}/git"
FILES_${PN}-dev += "${libdir}/cmake"

# The following are needed because the library is unversioned.
# See 
https://wiki.yoctoproject.org/wiki/TipsAndTricks/Packaging_Prebuilt_Libraries#Non-versioned_Libraries
SOLIBS = ".so"
FILES_SOLIBSDEV = ""


CMake library install part
==========================

# Shared client library target.
add_library(shared SHARED $<TARGET_OBJECTS:objects>)
target_include_directories(shared PUBLIC
                 $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
                 $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
)

set_target_properties(shared
                 PROPERTIES
                 ARCHIVE_OUTPUT_DIRECTORY lib/shared
                 LIBRARY_OUTPUT_DIRECTORY lib/shared
                 RUNTIME_OUTPUT_DIRECTORY lib/shared
                 OUTPUT_NAME ${LIBRARY_NAME}
)

# Install target.
install(TARGETS shared static
         EXPORT ${LIBRARY_NAME}-config
         DESTINATION ${CMAKE_INSTALL_LIBDIR})
install(DIRECTORY include/reflect DESTINATION 
${CMAKE_INSTALL_INCLUDEDIR})
install(EXPORT ${LIBRARY_NAME}-config
         NAMESPACE ${LIBRARY_NAME}-
         DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${LIBRARY_NAME})


CMake binary install part
=========================

install(TARGETS ${EXECUTABLE_NAME} DESTINATION ${CMAKE_INSTALL_BINDIR})


Many thanks for any hints
Eric

