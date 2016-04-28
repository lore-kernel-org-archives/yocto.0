Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9BC1E00D65; Wed, 27 Apr 2016 20:26:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3A73E00D5A
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 20:26:35 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 Apr 2016 20:26:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,545,1455004800"; 
	d="scan'208,223";a="954491220"
Received: from rramirez-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.172.158])
	by fmsmga001.fm.intel.com with ESMTP; 27 Apr 2016 20:26:32 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: S.Jaritz@esa-grimma.de
Date: Thu, 28 Apr 2016 15:26:30 +1200
Message-ID: <13054015.am85I5HgFS@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.7-300.fc23.x86_64; KDE/4.14.18; x86_64; ;
	)
In-Reply-To: <OFF73FCB05.018E1448-ONC1257FA2.002375E8-C1257FA2.00243E20@esa-grimma.de>
References: <OFFCA9FD4C.003E7E4C-ONC1257FA1.002BA274-C1257FA1.002C5AF6@esa-grimma.de>
	<58471203.UVK15pv3J4@peggleto-mobl.ger.corp.intel.com>
	<OFF73FCB05.018E1448-ONC1257FA2.002375E8-C1257FA2.00243E20@esa-grimma.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: problems with cmake finding the c++ includes
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
X-List-Received-Date: Thu, 28 Apr 2016 03:26:38 -0000
X-Groupsio-MsgNum: 29689
Content-Type: multipart/mixed; boundary="nextPart1674661.EZvTcXHtNm"
Content-Transfer-Encoding: 7Bit

--nextPart1674661.EZvTcXHtNm
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Stefan,

On Wed, 27 Apr 2016 08:35:51 S.Jaritz@esa-grimma.de wrote:
> Thank you for taking time to check my problem. I fixed that. Maybe not how
> you will do it.
> My main problem still exists - the compiling problem when the std. c++
> includes needed to be compiled. Maybee you have an idea how to tell the
> cmake class where to search it's header files.

The problem is Build.cmake in the g3log sources is setting CMAKE_CXX_FLAGS 
outright instead of adding to it, with the result that the default arguments 
set by OE (most importantly --sysroot) aren't being supplied to the compiler, 
so it can't find the standard headers. Really that file needs to be patched - 
I've attached a patch to fix it which you can put in a "files" or "g3log" 
directory alongside the recipe and add a file:// pointer to in SRC_URI, see 
other recipes for examples).

Also attached is a patch to fix the fact that the libg3log.so library produced 
wasn't versioned, which our build system expects and if it's not the case you 
will get a QA error. It is possible to disable that check but this is a little 
neater.

(I wouldn't normally go this far, but I was in a curious mood this afternoon.)

Cheers,
Paul

PS if you could please retain the mailing list on replies (unless they need to 
be private) that would be great.

-- 

Paul Eggleton
Intel Open Source Technology Centre

--nextPart1674661.EZvTcXHtNm
Content-Disposition: attachment; filename="0001-Ensure-default-CXX-flags-such-as-sysroot-don-t-get-w.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="0001-Ensure-default-CXX-flags-such-as-sysroot-don-t-get-w.patch"

From d8cd848f5b52c7b494da721e313462fe058e8561 Mon Sep 17 00:00:00 2001
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Thu, 28 Apr 2016 15:15:55 +1200
Subject: [PATCH 1/2] Ensure default CXX flags such as --sysroot don't get
 wiped out

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 Build.cmake | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Build.cmake b/Build.cmake
index 6b583f9..41bfaf5 100644
--- a/Build.cmake
+++ b/Build.cmake
@@ -23,7 +23,7 @@ SET(ACTIVE_CPP0xx_DIR "Release")
 IF ("${CMAKE_CXX_COMPILER_ID}" MATCHES ".*Clang")
    MESSAGE("")
    MESSAGE("cmake for Clang ")
-   SET(CMAKE_CXX_FLAGS "-Wall -std=c++11 -Wunused -D_GLIBCXX_USE_NANOSLEEP")
+   SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -std=c++11 -Wunused -D_GLIBCXX_USE_NANOSLEEP")
    IF (${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
        SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libstdc++ -pthread")
    ELSE()
@@ -47,12 +47,12 @@ IF ("${CMAKE_CXX_COMPILER_ID}" MATCHES ".*Clang")
 ELSEIF("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
    MESSAGE("cmake for GCC ")
    IF (APPLE)
-       set(CMAKE_CXX_FLAGS "-Wall -Wunused -std=c++11  -pthread -D_GLIBCXX_USE_NANOSLEEP")
+       set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wunused -std=c++11  -pthread -D_GLIBCXX_USE_NANOSLEEP")
    ELSEIF (MINGW)
-       set(CMAKE_CXX_FLAGS "-Wall -Wunused -std=c++11  -pthread -D_GLIBCXX_USE_NANOSLEEP -D_GLIBCXX_USE_SCHED_YIELD")
+       set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wunused -std=c++11  -pthread -D_GLIBCXX_USE_NANOSLEEP -D_GLIBCXX_USE_SCHED_YIELD")
    ELSE()
        set(PLATFORM_LINK_LIBRIES rt)
-       set(CMAKE_CXX_FLAGS "-Wall -rdynamic -Wunused -std=c++11 -pthread -D_GLIBCXX_USE_NANOSLEEP -D_GLIBCXX_USE_SCHED_YIELD")
+       set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -rdynamic -Wunused -std=c++11 -pthread -D_GLIBCXX_USE_NANOSLEEP -D_GLIBCXX_USE_SCHED_YIELD")
    ENDIF()
 ENDIF()
 
-- 
2.5.5


--nextPart1674661.EZvTcXHtNm
Content-Disposition: attachment; filename="0002-Use-a-versioned-library.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="0002-Use-a-versioned-library.patch"

From b8090456a448f8623734b857be597b8eb242a869 Mon Sep 17 00:00:00 2001
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Thu, 28 Apr 2016 15:16:52 +1200
Subject: [PATCH 2/2] Use a versioned library

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 Build.cmake | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Build.cmake b/Build.cmake
index 41bfaf5..7ec73f6 100644
--- a/Build.cmake
+++ b/Build.cmake
@@ -107,7 +107,9 @@ if(ADD_BUILD_WIN_SHARED OR NOT(MSVC OR MINGW))
    set_target_properties(g3logger_shared PROPERTIES
       LINKER_LANGUAGE CXX
       OUTPUT_NAME g3logger
-      CLEAN_DIRECT_OUTPUT 1)
+      CLEAN_DIRECT_OUTPUT 1
+      VERSION "0.0.0"
+      SOVERSION 0)
    IF(APPLE)
       set_target_properties(g3logger_shared PROPERTIES MACOSX_RPATH TRUE)
    ENDIF(APPLE)
-- 
2.5.5


--nextPart1674661.EZvTcXHtNm--
