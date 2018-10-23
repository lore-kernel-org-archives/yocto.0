Return-Path: <hitendra.prajapati@slscorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 114A9E00BBF; Tue, 23 Oct 2018 06:00:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,TO_NO_BRKTS_PCNT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 TO_NO_BRKTS_PCNT To: lacks brackets + percentage
X-Greylist: delayed 511 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 Oct 2018 06:00:23 PDT
Received: from ns524875.ip-192-99-5.net (mail.slscorp.com [192.99.5.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BE74E00A10
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2018 06:00:22 -0700 (PDT)
Received: from mail2.slscorp.com (unknown [117.239.215.177])
	by ns524875.ip-192-99-5.net (Postfix) with ESMTPSA id 37E27508016B
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2018 08:51:49 -0400 (EDT)
DomainKey-Signature: a=rsa-sha1;  q=dns; c=nofws; s=default; d=slscorp.com;
	b=XXXPRTxZh+Xd0cqCwqmNmNfsdxIVUnPW7wLwGjXAfdZv/x1jYaDURLOlPQ1kdMQeV4wVpogHL1fBB79fBii8cu2KyDEPm8gwdKh/EeEw/m79dDVO5aSTx1HxuxB/+M1yyJBzEck6972TZNoXpB3hbj57SR2+yB00MOaXcHNrpFA=;
	h=Received:Reply-To:To:From:Subject:Organization:Message-ID:Date:User-Agent:MIME-Version:Content-Type:Content-Language;
Received: from [192.168.11.21] (Unknown [192.168.0.3])
	by mail2.slscorp.com with ESMTPA ; Tue, 23 Oct 2018 18:25:33 +0530
To: yocto@yoctoproject.org
From: Hitendra Prajapati <hitendra.prajapati@slscorp.com>
Organization: System Level Solutions (India) Pvt. Ltd.
Message-ID: <8be59efc-16c2-711d-047b-84fa1c916b09@slscorp.com>
Date: Tue, 23 Oct 2018 18:21:46 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 23 Oct 2018 15:46:46 -0700
Subject: Openjdk-8(Version 162b12) crash during runtime
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: hitendra.prajapati@slscorp.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 23 Oct 2018 13:00:30 -0000
X-Groupsio-MsgNum: 42877
Content-Type: multipart/mixed; boundary="------------10A7CC7D16B66A32DE9E3F7F"
Content-Language: en-US

--------------10A7CC7D16B66A32DE9E3F7F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I want to run latest java (version 162b12) which is given in latest 
meta-java branch (sumo) for the colibri-imx6 module(armv7 architecture) 
from Toradex.

Currently I'm using latest poky version Sumo, and all the latest branch 
for different layers.

I'm able to compile latest java successfully., but when i'm trying to 
run on module its show following error.

GCC version: 7.3.0


#
# A fatal error has been detected by the Java Runtime Environment:
#
#  Internal Error (os_linux_zero.cpp:254), pid=14001, tid=0x7683a460
#  fatal error: caught unhandled signal 11
#
# JRE version:  (8.0_162-b12) (build )
# Java VM: OpenJDK Zero VM (25.162-b12 interpreted mode linux-arm )
# Core dump written. Default location: /home/root/core or core.14001
#
# If you would like to submit a bug report, please visit:
#   http://bugreport.java.com/bugreport/crash.jsp
#

for more information you can check attachment.

please help me on this issue.

Regards,
Hitendra Prajapati


--------------10A7CC7D16B66A32DE9E3F7F
Content-Type: text/x-log;
 name="hs_err_pid1810.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="hs_err_pid1810.log"

#
# A fatal error has been detected by the Java Runtime Environment:
#
#  Internal Error (os_linux_zero.cpp:254), pid=1810, tid=0x767d1460
#  fatal error: caught unhandled signal 11
#
# JRE version:  (8.0_162-b12) (build )
# Java VM: OpenJDK Zero VM (25.162-b12 interpreted mode linux-arm )
# Core dump written. Default location: /home/root/core or core.1810
#
# If you would like to submit a bug report, please visit:
#   http://bugreport.java.com/bugreport/crash.jsp
#

---------------  T H R E A D  ---------------

Current thread (0x76506670):  JavaThread "main" [_thread_in_Java, id=1811, stack(0x76653000,0x767d2000)]

Stack: [0x76653000,0x767d2000],  sp=0x76714184,  free space=772k
Java frames:
 0x767d0730: stack_word[6]         = 0x767d06e8
 0x767d0734: stack_word[5]         = 0x6e407608
 0x767d0738: stack_word[4]         = 0x00000001
 0x767d073c: stack_word[3]         = 0x6e4075b8
 0x767d0740: stack_word[2]         = 0x6e4075b8
 0x767d0744: stack_word[1]         = 0x6e407448
 0x767d0748: stack_word[0]         = 0x6e407590
 0x767d074c: istate->_thread       = 0x76506670
 0x767d0750: istate->_bcp          = 0x6e034e09 (bci 25)
 0x767d0754: istate->_locals       = 0x767d0798
 0x767d0758: istate->_constants    = 0x6e034f90
 0x767d075c: istate->_method       = sun.reflect.Reflection.<clinit>()V
 0x767d0760: istate->_mdx          = 0x00000000
 0x767d0764: istate->_stack        = 0x767d073c
 0x767d0768: istate->_msg          = 0x00000008
 0x767d076c: istate->_result       = 0x6e036100
 0x767d0770: (istate->_result)     = 0x744b5140
 0x767d0774: (istate->_result)     = 0x00000003
 0x767d0778: istate->_prev_link    = 0x00000000
 0x767d077c: istate->_oop_temp     = 0x00000000
 0x767d0780: istate->_stack_base   = 0x767d074c
 0x767d0784: istate->_stack_limit  = 0x767d072c
 0x767d0788: istate->_monitor_base = 0x767d074c
 0x767d078c: istate->_self_link    = 0x767d074c
 0x767d0790: frame_type            = INTERPRETER_FRAME
 0x767d0794: next_frame            = 0x767d07a4

 0x767d0798: local[0]              = 0x6e407590
 0x767d079c: call_wrapper          = 0x767148f0
 0x767d07a0: frame_type            = ENTRY_FRAME
 0x767d07a4: next_frame            = 0x767d0808

 0x767d07a8: local[5]              = 0x767d0774
 0x767d07ac: local[4]              = 0x6e407418
 0x767d07b0: local[3]              = 0x00000000
 0x767d07b4: local[2]              = 0x6e407408
 0x767d07b8: local[1]              = 0x6e407408
 0x767d07bc: local[0]              = 0x6e402b28
 0x767d07c0: istate->_thread       = 0x76506670
 0x767d07c4: istate->_bcp          = 0x6dfee4fe (bci 14)
 0x767d07c8: istate->_locals       = 0x767d0808
 0x767d07cc: istate->_constants    = 0x6e00ce60
 0x767d07d0: istate->_method       = sun.misc.Unsafe.<clinit>()V
 0x767d07d4: istate->_mdx          = 0x00000000
 0x767d07d8: istate->_stack        = 0x767d07b4
 0x767d07dc: istate->_msg          = 0x00000003
 0x767d07e0: istate->_result       = 0x6dfeb648
 0x767d07e4: (istate->_result)     = 0x744b517c
 0x767d07e8: (istate->_result)     = 0x00000003
 0x767d07ec: istate->_prev_link    = 0x00000000
 0x767d07f0: istate->_oop_temp     = 0x00000000
 0x767d07f4: istate->_stack_base   = 0x767d07c0
 0x767d07f8: istate->_stack_limit  = 0x767d07a4
 0x767d07fc: istate->_monitor_base = 0x767d07c0
 0x767d0800: istate->_self_link    = 0x767d07c0
 0x767d0804: frame_type            = INTERPRETER_FRAME
 0x767d0808: next_frame            = 0x767d0814

 0x767d080c: call_wrapper          = 0x76714f98
 0x767d0810: frame_type            = ENTRY_FRAME
 0x767d0814: next_frame            = 0x767d0868

 0x767d0818: local[1]              = 0x00000000
 0x767d081c: local[0]              = 0x767d07e8
 0x767d0820: istate->_thread       = 0x76506670
 0x767d0824: istate->_bcp          = 0x6e033320 (bci 0)
 0x767d0828: istate->_locals       = 0x767d0868
 0x767d082c: istate->_constants    = 0x6e033470
 0x767d0830: istate->_method       = sun.misc.SharedSecrets.<clinit>()V
 0x767d0834: istate->_mdx          = 0x00000000
 0x767d0838: istate->_stack        = 0x767d081c
 0x767d083c: istate->_msg          = 0x00000002
 0x767d0840: istate->_result       = 0x00000000
 0x767d0844: (istate->_result)     = 0x6e0323d8
 0x767d0848: (istate->_result)     = 0x6e0321f8
 0x767d084c: istate->_prev_link    = 0x00000000
 0x767d0850: istate->_oop_temp     = 0x00000000
 0x767d0854: istate->_stack_base   = 0x767d0820
 0x767d0858: istate->_stack_limit  = 0x767d0814
 0x767d085c: istate->_monitor_base = 0x767d0820
 0x767d0860: istate->_self_link    = 0x767d0820
 0x767d0864: frame_type            = INTERPRETER_FRAME
 0x767d0868: next_frame            = 0x767d0874

 0x767d086c: call_wrapper          = 0x76715640
 0x767d0870: frame_type            = ENTRY_FRAME
 0x767d0874: next_frame            = 0x767d08d4

 0x767d0878: local[4]              = 0x767d0838
 0x767d087c: local[3]              = 0x00000002
 0x767d0880: local[2]              = 0x767d08d4
 0x767d0884: local[1]              = 0x6e406c08
 0x767d0888: local[0]              = 0x6e406c08
 0x767d088c: istate->_thread       = 0x76506670
 0x767d0890: istate->_bcp          = 0x6dfb0467 (bci 71)
 0x767d0894: istate->_locals       = 0x767d08dc
 0x767d0898: istate->_constants    = 0x6e00cae8
 0x767d089c: istate->_method       = java.lang.ref.Reference.<clinit>()V
 0x767d08a0: istate->_mdx          = 0x00000000
 0x767d08a4: istate->_stack        = 0x767d0884
 0x767d08a8: istate->_msg          = 0x00000003
 0x767d08ac: istate->_result       = 0x6e0321f8
 0x767d08b0: (istate->_result)     = 0x744b5140
 0x767d08b4: (istate->_result)     = 0x00000003
 0x767d08b8: istate->_prev_link    = 0x00000000
 0x767d08bc: istate->_oop_temp     = 0x00000000
 0x767d08c0: istate->_stack_base   = 0x767d088c
 0x767d08c4: istate->_stack_limit  = 0x767d0874
 0x767d08c8: istate->_monitor_base = 0x767d088c
 0x767d08cc: istate->_self_link    = 0x767d088c
 0x767d08d0: frame_type            = INTERPRETER_FRAME
 0x767d08d4: next_frame            = 0x767d08e8

 0x767d08d8: local[1]              = 0x6e406880
 0x767d08dc: local[0]              = 0x6e404d60
 0x767d08e0: call_wrapper          = 0x767d0960
 0x767d08e4: frame_type            = ENTRY_FRAME
 0x767d08e8: next_frame            = 0x00000000


---------------  P R O C E S S  ---------------

Java Threads: ( => current thread )
  0x76560300 JavaThread "Reference Handler" daemon [_thread_blocked, id=1813, stack(0x6d980000,0x6db00000)]
=>0x76506670 JavaThread "main" [_thread_in_Java, id=1811, stack(0x76653000,0x767d2000)]

Other Threads:
  0x7655b948 VMThread [stack: 0x6dc9c000,0x6dd1b000] [id=1812]

VM state:not at safepoint (normal execution)

VM Mutex/Monitor currently owned by a thread: None

Heap:
 def new generation   total 1856K, used 29K [0x6e400000, 0x6e600000, 0x70400000)
  eden space 1664K,   1% used [0x6e400000, 0x6e407648, 0x6e5a0000)
  from space 192K,   0% used [0x6e5a0000, 0x6e5a0000, 0x6e5d0000)
  to   space 192K,   0% used [0x6e5d0000, 0x6e5d0000, 0x6e600000)
 tenured generation   total 4096K, used 0K [0x70400000, 0x70800000, 0x74400000)
   the space 4096K,   0% used [0x70400000, 0x70400000, 0x70400200, 0x70800000)
 Metaspace       used 661K, capacity 2200K, committed 2200K, reserved 4400K

Card table byte_map: [0x74404000,0x74435000] byte_map_base: 0x74092000

Polling page: 0x76f1d000

CodeCache: size=32768Kb used=67Kb max_used=67Kb free=32700Kb
 bounds [0x744b5000, 0x744dd000, 0x764b5000]
 total_blobs=44 nmethods=0 adapters=37
 compilation: disabled (interpreter mode)

Compilation events (0 events):
No events

GC Heap History (0 events):
No events

Deoptimization events (0 events):
No events

Classes redefined (0 events):
No events

Internal exceptions (2 events):
Event: 0.598 Thread 0x76506670 Exception <a 'java/lang/NoSuchMethodError': Method sun.misc.Unsafe.defineClass(Ljava/lang/String;[BII)Ljava/lang/Class; name or signature does not match> (0x6e406e88) thrown at [/usr/src/debug/openjdk-8/162b12-r0/jdk8u-4be07cb28b21/hotspot/src/share/vm/pr
Event: 0.599 Thread 0x76506670 Exception <a 'java/lang/NoSuchMethodError': Method sun.misc.Unsafe.prefetchRead(Ljava/lang/Object;J)V name or signature does not match> (0x6e407158) thrown at [/usr/src/debug/openjdk-8/162b12-r0/jdk8u-4be07cb28b21/hotspot/src/share/vm/prims/jni.cpp, line 

Events (10 events):
Event: 0.587 loading class sun/misc/SharedSecrets
Event: 0.589 loading class sun/misc/SharedSecrets done
Event: 0.594 loading class java/lang/NoSuchMethodError
Event: 0.594 loading class java/lang/IncompatibleClassChangeError
Event: 0.595 loading class java/lang/IncompatibleClassChangeError done
Event: 0.595 loading class java/lang/NoSuchMethodError done
Event: 0.600 loading class sun/reflect/Reflection
Event: 0.601 loading class sun/reflect/Reflection done
Event: 0.602 loading class java/util/HashMap
Event: 0.605 loading class java/util/HashMap done


Dynamic libraries:
00010000-00011000 r-xp 00000000 00:0e 939        /usr/lib/jvm/openjdk-8/bin/java
00020000-00021000 r--p 00000000 00:0e 939        /usr/lib/jvm/openjdk-8/bin/java
00021000-00022000 rw-p 00001000 00:0e 939        /usr/lib/jvm/openjdk-8/bin/java
01ce1000-01d02000 rw-p 00000000 00:00 0          [heap]
6d980000-6d983000 ---p 00000000 00:00 0 
6d983000-6db00000 rw-p 00000000 00:00 0 
6db00000-6db21000 rw-p 00000000 00:00 0 
6db21000-6dc00000 ---p 00000000 00:00 0 
6dc9a000-6dc9b000 ---p 00000000 00:00 0 
6dc9b000-6dd69000 rw-p 00000000 00:00 0 
6dd69000-6df38000 r--s 03354000 00:0e 1006       /usr/lib/jvm/openjdk-8/jre/lib/rt.jar
6df38000-6e1b9000 rw-p 00000000 00:00 0 
6e1b9000-6e3df000 ---p 00000000 00:00 0 
6e3df000-6e3e2000 rw-p 00000000 00:00 0 
6e3e2000-6e400000 ---p 00000000 00:00 0 
6e400000-6e600000 rw-p 00000000 00:00 0 
6e600000-70400000 ---p 00000000 00:00 0 
70400000-70800000 rw-p 00000000 00:00 0 
70800000-74400000 ---p 00000000 00:00 0 
74404000-74405000 rw-p 00000000 00:00 0 
74405000-74414000 ---p 00000000 00:00 0 
74414000-74416000 rw-p 00000000 00:00 0 
74416000-74434000 ---p 00000000 00:00 0 
74434000-74436000 rw-p 00000000 00:00 0 
74436000-744b5000 ---p 00000000 00:00 0 
744b5000-744dd000 rwxp 00000000 00:00 0 
744dd000-764b5000 ---p 00000000 00:00 0 
764b5000-764bb000 r-xp 00000000 00:0e 1019       /usr/lib/jvm/openjdk-8/jre/lib/arm/libzip.so
764bb000-764ca000 ---p 00006000 00:0e 1019       /usr/lib/jvm/openjdk-8/jre/lib/arm/libzip.so
764ca000-764cb000 r--p 00005000 00:0e 1019       /usr/lib/jvm/openjdk-8/jre/lib/arm/libzip.so
764cb000-764cc000 rw-p 00006000 00:0e 1019       /usr/lib/jvm/openjdk-8/jre/lib/arm/libzip.so
764cc000-764ef000 r-xp 00000000 00:0e 1020       /usr/lib/jvm/openjdk-8/jre/lib/arm/libjava.so
764ef000-764fe000 ---p 00023000 00:0e 1020       /usr/lib/jvm/openjdk-8/jre/lib/arm/libjava.so
764fe000-764ff000 r--p 00022000 00:0e 1020       /usr/lib/jvm/openjdk-8/jre/lib/arm/libjava.so
764ff000-76500000 rw-p 00023000 00:0e 1020       /usr/lib/jvm/openjdk-8/jre/lib/arm/libjava.so
76500000-76563000 rw-p 00000000 00:00 0 
76563000-76600000 ---p 00000000 00:00 0 
76608000-7660e000 r-xp 00000000 00:0e 2220       /lib/libnss_compat-2.27.so
7660e000-7661d000 ---p 00006000 00:0e 2220       /lib/libnss_compat-2.27.so
7661d000-7661e000 r--p 00005000 00:0e 2220       /lib/libnss_compat-2.27.so
7661e000-7661f000 rw-p 00006000 00:0e 2220       /lib/libnss_compat-2.27.so
7661f000-76628000 r-xp 00000000 00:0e 1013       /usr/lib/jvm/openjdk-8/jre/lib/arm/libverify.so
76628000-76638000 ---p 00009000 00:0e 1013       /usr/lib/jvm/openjdk-8/jre/lib/arm/libverify.so
76638000-76639000 r--p 00009000 00:0e 1013       /usr/lib/jvm/openjdk-8/jre/lib/arm/libverify.so
76639000-7663a000 rw-p 0000a000 00:0e 1013       /usr/lib/jvm/openjdk-8/jre/lib/arm/libverify.so
7663a000-76640000 r-xp 00000000 00:0e 2301       /lib/librt-2.27.so
76640000-7664f000 ---p 00006000 00:0e 2301       /lib/librt-2.27.so
7664f000-76650000 r--p 00005000 00:0e 2301       /lib/librt-2.27.so
76650000-76651000 rw-p 00006000 00:0e 2301       /lib/librt-2.27.so
76651000-76652000 ---p 00000000 00:00 0 
76652000-76653000 rw-p 00000000 00:00 0 
76653000-76656000 ---p 00000000 00:00 0 
76656000-767d2000 rw-p 00000000 00:00 0 
767d2000-767ee000 r-xp 00000000 00:0e 2741       /lib/libgcc_s.so.1
767ee000-767fd000 ---p 0001c000 00:0e 2741       /lib/libgcc_s.so.1
767fd000-767fe000 r--p 0001b000 00:0e 2741       /lib/libgcc_s.so.1
767fe000-767ff000 rw-p 0001c000 00:0e 2741       /lib/libgcc_s.so.1
767ff000-76805000 r-xp 00000000 00:0e 416        /usr/lib/libffi.so.6.0.4
76805000-76815000 ---p 00006000 00:0e 416        /usr/lib/libffi.so.6.0.4
76815000-76816000 r--p 00006000 00:0e 416        /usr/lib/libffi.so.6.0.4
76816000-76817000 rw-p 00007000 00:0e 416        /usr/lib/libffi.so.6.0.4
76817000-7688b000 r-xp 00000000 00:0e 2728       /lib/libm-2.27.so
7688b000-7689b000 ---p 00074000 00:0e 2728       /lib/libm-2.27.so
7689b000-7689c000 r--p 00074000 00:0e 2728       /lib/libm-2.27.so
7689c000-7689d000 rw-p 00075000 00:0e 2728       /lib/libm-2.27.so
7689d000-76cef000 r-xp 00000000 00:0e 1017       /usr/lib/jvm/openjdk-8/jre/lib/arm/server/libjvm.so
76cef000-76cff000 ---p 00452000 00:0e 1017       /usr/lib/jvm/openjdk-8/jre/lib/arm/server/libjvm.so
76cff000-76d0b000 r--p 00452000 00:0e 1017       /usr/lib/jvm/openjdk-8/jre/lib/arm/server/libjvm.so
76d0b000-76d1e000 rw-p 0045e000 00:0e 1017       /usr/lib/jvm/openjdk-8/jre/lib/arm/server/libjvm.so
76d1e000-76d2f000 rw-p 00000000 00:00 0 
76d2f000-76d45000 r-xp 00000000 00:0e 2234       /lib/libpthread-2.27.so
76d45000-76d54000 ---p 00016000 00:0e 2234       /lib/libpthread-2.27.so
76d54000-76d55000 r--p 00015000 00:0e 2234       /lib/libpthread-2.27.so
76d55000-76d56000 rw-p 00016000 00:0e 2234       /lib/libpthread-2.27.so
76d56000-76d58000 rw-p 00000000 00:00 0 
76d58000-76d5a000 r-xp 00000000 00:0e 2219       /lib/libdl-2.27.so
76d5a000-76d69000 ---p 00002000 00:0e 2219       /lib/libdl-2.27.so
76d69000-76d6a000 r--p 00001000 00:0e 2219       /lib/libdl-2.27.so
76d6a000-76d6b000 rw-p 00002000 00:0e 2219       /lib/libdl-2.27.so
76d6b000-76d7e000 r-xp 00000000 00:0e 2732       /lib/libz.so.1.2.11
76d7e000-76d8d000 ---p 00013000 00:0e 2732       /lib/libz.so.1.2.11
76d8d000-76d8e000 r--p 00012000 00:0e 2732       /lib/libz.so.1.2.11
76d8e000-76d8f000 rw-p 00013000 00:0e 2732       /lib/libz.so.1.2.11
76d8f000-76ebc000 r-xp 00000000 00:0e 2229       /lib/libc-2.27.so
76ebc000-76ecc000 ---p 0012d000 00:0e 2229       /lib/libc-2.27.so
76ecc000-76ece000 r--p 0012d000 00:0e 2229       /lib/libc-2.27.so
76ece000-76ecf000 rw-p 0012f000 00:0e 2229       /lib/libc-2.27.so
76ecf000-76ed2000 rw-p 00000000 00:00 0 
76ed2000-76edf000 r-xp 00000000 00:0e 895        /usr/lib/jvm/openjdk-8/lib/arm/jli/libjli.so
76edf000-76eee000 ---p 0000d000 00:0e 895        /usr/lib/jvm/openjdk-8/lib/arm/jli/libjli.so
76eee000-76eef000 r--p 0000c000 00:0e 895        /usr/lib/jvm/openjdk-8/lib/arm/jli/libjli.so
76eef000-76ef0000 rw-p 0000d000 00:0e 895        /usr/lib/jvm/openjdk-8/lib/arm/jli/libjli.so
76ef0000-76f10000 r-xp 00000000 00:0e 2743       /lib/ld-2.27.so
76f12000-76f1a000 rw-s 00000000 00:15 8882       /tmp/hsperfdata_root/1810
76f1a000-76f1c000 rw-p 00000000 00:00 0 
76f1d000-76f1e000 r--p 00000000 00:00 0 
76f1e000-76f20000 rw-p 00000000 00:00 0 
76f20000-76f21000 r--p 00020000 00:0e 2743       /lib/ld-2.27.so
76f21000-76f22000 rw-p 00021000 00:0e 2743       /lib/ld-2.27.so
7ed5c000-7ed7d000 rw-p 00000000 00:00 0          [stack]
7ef5d000-7ef5e000 r-xp 00000000 00:00 0          [sigpage]
ffff0000-ffff1000 r-xp 00000000 00:00 0          [vectors]

VM Arguments:
java_command: <unknown>
java_class_path (initial): .
Launcher Type: SUN_STANDARD

Environment Variables:
JAVA_HOME=/usr/lib/jvm/openjdk-8
PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin
SHELL=/bin/sh

Signal Handlers:
SIGSEGV: [libjvm.so+0x3d8000], sa_mask[0]=11111111011111111101111111111110, sa_flags=SA_RESTART|SA_SIGINFO
SIGBUS: [libjvm.so+0x3d8000], sa_mask[0]=11111111011111111101111111111110, sa_flags=SA_RESTART|SA_SIGINFO
SIGFPE: [libjvm.so+0x31481c], sa_mask[0]=11111111011111111101111111111110, sa_flags=SA_RESTART|SA_SIGINFO
SIGPIPE: [libjvm.so+0x31481c], sa_mask[0]=11111111011111111101111111111110, sa_flags=SA_RESTART|SA_SIGINFO
SIGXFSZ: [libjvm.so+0x31481c], sa_mask[0]=11111111011111111101111111111110, sa_flags=SA_RESTART|SA_SIGINFO
SIGILL: [libjvm.so+0x31481c], sa_mask[0]=11111111011111111101111111111110, sa_flags=SA_RESTART|SA_SIGINFO
SIGUSR1: SIG_DFL, sa_mask[0]=00000000000000000000000000000000, sa_flags=none
SIGUSR2: [libjvm.so+0x314be0], sa_mask[0]=00000000000000000000000000000000, sa_flags=SA_RESTART|SA_SIGINFO
SIGHUP: SIG_DFL, sa_mask[0]=00000000000000000000000000000000, sa_flags=none
SIGINT: SIG_DFL, sa_mask[0]=00000000000000000000000000000000, sa_flags=none
SIGTERM: SIG_DFL, sa_mask[0]=00000000000000000000000000000000, sa_flags=none
SIGQUIT: SIG_DFL, sa_mask[0]=00000000000000000000000000000000, sa_flags=none


---------------  S Y S T E M  ---------------

OS:ID="vfxx-ciaztech"
NAME="OpenEmbedded"
VERSION="nodistro.0"
VERSION_ID="nodistro.0"
PRETTY_NAME="OpenEmbedded nodistro.0"

uname:Linux 4.4.88-2.7.4+ge0f2806 #1 Sat Oct 13 07:20:08 UTC 2018 armv7l
libc:glibc 2.27 NPTL 2.27 
rlimit: STACK 8192k, CORE infinity, NPROC 1815, NOFILE 4096, AS infinity
load average:0.44 0.26 0.10

/proc/meminfo:
MemTotal:         248960 kB
MemFree:          191504 kB
MemAvailable:     217888 kB
Buffers:               0 kB
Cached:            38316 kB
SwapCached:            0 kB
Active:            19048 kB
Inactive:          24812 kB
Active(anon):       5624 kB
Inactive(anon):     8396 kB
Active(file):      13424 kB
Inactive(file):    16416 kB
Unevictable:           0 kB
Mlocked:               0 kB
SwapTotal:             0 kB
SwapFree:              0 kB
Dirty:                24 kB
Writeback:             0 kB
AnonPages:          5552 kB
Mapped:            11952 kB
Shmem:              8468 kB
Slab:               8040 kB
SReclaimable:       2720 kB
SUnreclaim:         5320 kB
KernelStack:         472 kB
PageTables:          352 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:      124480 kB
Committed_AS:      37732 kB
VmallocTotal:    1826816 kB
VmallocUsed:           0 kB
VmallocChunk:          0 kB
CmaTotal:          16384 kB
CmaFree:           15416 kB


CPU:total 1 (initial active 1) 

/proc/cpuinfo:
processor	: 0
model name	: ARMv7 Processor rev 1 (v7l)
BogoMIPS	: 331.77
Features	: half thumb fastmult vfp edsp neon vfpv3 tls vfpv4 vfpd32 
CPU implementer	: 0x41
CPU architecture: 7
CPU variant	: 0x0
CPU part	: 0xc05
CPU revision	: 1

Hardware	: Freescale Vybrid VF5xx/VF6xx (Device Tree)
Revision	: 0000
Serial		: 02880386


Memory: 4k page, physical 248960k(191504k free), swap 0k(0k free)

vm_info: OpenJDK Zero VM (25.162-b12) for linux-arm JRE (1.8.0_162-internal-b12), built on Oct 18 2018 08:46:09 by "hitendra.prajapati.483" with gcc 7.3.0

time: Fri Oct 12 08:58:47 2018
elapsed time: 0 seconds (0d 0h 0m 0s)


--------------10A7CC7D16B66A32DE9E3F7F--
