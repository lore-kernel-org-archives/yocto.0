Return-Path: <smart@smartpal.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5B81E00D39; Sat, 30 Dec 2017 17:11:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.26.49.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mxout012.mail.hostpoint.ch (mxout012.mail.hostpoint.ch
	[217.26.49.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD438E006D3
	for <yocto@yoctoproject.org>; Sat, 30 Dec 2017 17:11:33 -0800 (PST)
Received: from [10.0.2.45] (helo=asmtp012.mail.hostpoint.ch)
	by mxout012.mail.hostpoint.ch with esmtp (Exim 4.89 (FreeBSD))
	(envelope-from <smart@smartpal.de>) id 1eVS9z-0005EF-MV
	for yocto@yoctoproject.org; Sun, 31 Dec 2017 02:11:31 +0100
Received: from gw.ptr-80-238-209-140.customer.ch.netstream.com
	([80.238.209.140] helo=[172.16.11.152])
	by asmtp012.mail.hostpoint.ch with esmtpa (Exim 4.89_1 (FreeBSD))
	(envelope-from <smart@smartpal.de>) id 1eVS9z-0003S3-Dl
	for yocto@yoctoproject.org; Sun, 31 Dec 2017 02:11:31 +0100
X-Authenticated-Sender-Id: michael@siebecker.ch
To: yocto@yoctoproject.org
From: cc_Smart <smart@smartpal.de>
Message-ID: <ab571079-b4fe-7ae0-8c36-9dea76d5cb2b@smartpal.de>
Date: Sun, 31 Dec 2017 02:11:39 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
Subject: /usr/lib/x86_64-linux-gnu/libdl.so: file not recognized: File format not recognized
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
X-List-Received-Date: Sun, 31 Dec 2017 01:11:34 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Greetings all.

Beating my own expectations it seems i got past the compile step for 
pylonGPS.

However, now i get an error that seems to indicate linking to reach for 
host files instead of cross compiled. My understanding was that bitbake 
handles that... what do i have to look for ?

Thanks for your support...


| [ 90%] Linking CXX shared library lib/libpylongps.so
| 
/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/recipe-sysroot-native/usr/bin/cmake 
-E cmake_link_script CMakeFiles/pylongps.dir/link.txt --verbose=1
| 
/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++ 
-fPIC  -march=armv7ve -marm -mfpu=neon-vfpv4 -mfloat-abi=hard 
-mcpu=cortex-a7 
--sysroot=/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/recipe-sysroot 
-O2 -pipe -g -feliminate-unused-debug-types 
-fdebug-prefix-map=/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0=/usr/src/debug/pylongps/0.1.0-r0 
-fdebug-prefix-map=/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/recipe-sysroot-native= 
-fdebug-prefix-map=/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/recipe-sysroot= 
-fvisibility-inlines-hidden  -march=armv7ve -marm -mfpu=neon-vfpv4 
-mfloat-abi=hard -mcpu=cortex-a7 
--sysroot=/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/recipe-sysroot 
-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -shared 
-Wl,-soname,libpylongps.so -o lib/libpylongps.so 
CMakeFiles/pylongps.dir/src/library/NMEAGGASentence.cpp.o 
CMakeFiles/pylongps.dir/src/library/SOMException.cpp.o 
CMakeFiles/pylongps.dir/src/library/SOMScopeGuard.cpp.o 
CMakeFiles/pylongps.dir/src/library/caster.cpp.o 
CMakeFiles/pylongps.dir/src/library/casterDataSender.cpp.o 
CMakeFiles/pylongps.dir/src/library/commandLineArgumentParser.cpp.o 
CMakeFiles/pylongps.dir/src/library/connectionStatus.cpp.o 
CMakeFiles/pylongps.dir/src/library/event.cpp.o 
CMakeFiles/pylongps.dir/src/library/fileDataReceiver.cpp.o 
CMakeFiles/pylongps.dir/src/library/fileDataSender.cpp.o 
CMakeFiles/pylongps.dir/src/library/messageDatabaseDefinition.cpp.o 
CMakeFiles/pylongps.dir/src/library/randomStringGenerator.cpp.o 
CMakeFiles/pylongps.dir/src/library/subMessageDatabaseDefinition.cpp.o 
CMakeFiles/pylongps.dir/src/library/tcpDataReceiver.cpp.o 
CMakeFiles/pylongps.dir/src/library/tcpDataSender.cpp.o 
CMakeFiles/pylongps.dir/src/library/tranceiver.cpp.o 
CMakeFiles/pylongps.dir/src/library/utilityFunctions.cpp.o 
CMakeFiles/pylongps.dir/src/library/zmqDataReceiver.cpp.o 
CMakeFiles/pylongps.dir/src/library/zmqDataSender.cpp.o 
CMakeFiles/pylongps.dir/jsoncpp/jsoncpp.cpp.o 
-L/usr/lib/x86_64-linux-gnu 
-L/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/git/lib 
-L/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/git/./messages 
-Wl,-rpath,/usr/lib/x86_64-linux-gnu:/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/git/lib:/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/git/./messages 
-ldl -lPocoFoundation -lPocoNet -lPocoUtil -lsqlite3 
lib/libpylonGPSMessages.a -lzmq -lprotobuf -lpthread -lsodium
| 
/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/7.2.0/ld: 
warning: library search path "/usr/lib/x86_64-linux-gnu" is unsafe for 
cross-compilation
| /usr/lib/x86_64-linux-gnu/libdl.so: file not recognized: File format 
not recognized
| collect2: error: ld returned 1 exit status


