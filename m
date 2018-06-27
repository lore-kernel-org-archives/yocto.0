Return-Path: <guy@guy-morand.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE0ACE010FB; Wed, 27 Jun 2018 03:33:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [128.65.195.6 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 113 seconds by postgrey-1.32 at yocto-www;
	Wed, 27 Jun 2018 03:33:57 PDT
Received: from smtp-sh2.infomaniak.ch (smtp-sh2.infomaniak.ch [128.65.195.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C734AE006B4
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2018 03:33:57 -0700 (PDT)
Received: from smtp7.infomaniak.ch (smtp7.infomaniak.ch [83.166.132.30])
	by smtp-sh.infomaniak.ch (8.14.5/8.14.5) with ESMTP id w5RAW3xG014351
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK)
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2018 12:32:03 +0200
Received: from [192.168.0.101] (77-57-72-181.dclient.hispeed.ch [77.57.72.181])
	(authenticated bits=0)
	by smtp7.infomaniak.ch (8.14.5/8.14.5) with ESMTP id w5RAVrW7129500
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO)
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2018 12:32:03 +0200
To: yocto@yoctoproject.org
From: Guy Morand <guy@guy-morand.ch>
Message-ID: <51c1efa9-0654-d65b-a29c-400ccd83eb1f@guy-morand.ch>
Date: Wed, 27 Jun 2018 12:31:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
Subject: cmake toolchain file missing in SDK
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
X-List-Received-Date: Wed, 27 Jun 2018 10:33:58 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: tl

Hallo Yocto developpers!

Since my last SDK release, I cannot cross compile applications with 
cmake. I'm using yocto sumo. I get this error:

build$ cmake ../
CMake Error at 
/opt/comet-linux/0.0.0-2018.06-last-guy/sysroots/x86_64-cometsdk-linux/usr/share/cmake-3.10/Modules/CMakeDetermineSystem.cmake:100 
(message):
   Could not find toolchain file:
/opt/comet-linux/0.0.0-2018.06-last-guy/sysroots/x86_64-cometsdk-linux/usr/share/cmake/OEToolchainConfig.cmake
Call Stack (most recent call first):
   CMakeLists.txt:2 (project)


CMake Error: CMake was unable to find a build program corresponding to 
"Unix Makefiles".  CMAKE_MAKE_PROGRAM is not set.  You probably need to 
select a different build tool.
CMake Error: CMAKE_C_COMPILER not set, after EnableLanguage
CMake Error: CMAKE_CXX_COMPILER not set, after EnableLanguage
-- Configuring incomplete, errors occurred!

It seems that the folder "cmake" is missing:

$ ls 
/opt/comet-linux/0.0.0-2018.06-last-guy/sysroots/x86_64-cometsdk-linux/usr/share/
X11  aclocal  aclocal-1.15  autoconf  automake-1.15 ca-certificates  
cmake-3.10  device_table-minimal.txt  gdb gnu-config  libtool  locale  
mime  opkg  qemu

However, it was working with a previous release ??!! And it seems to be 
installed in the cmake recipe:

https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/cmake/cmake_3.10.3.bb#n38

Has someone already faced this problem? What am I doing wrong?

Kind regards,

Guy


