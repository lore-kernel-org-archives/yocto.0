Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CE0CE00752; Mon, 12 Jan 2015 11:11:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82B6EE004F2
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 11:11:04 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t0CJB2Sp027222
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 11:11:03 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.231) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Mon, 12 Jan 2015 11:11:02 -0800
Message-ID: <54B41C45.2010605@windriver.com>
Date: Mon, 12 Jan 2015 13:11:01 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <D0D849B8.8909%csmiley@icontrol.com>
In-Reply-To: <D0D849B8.8909%csmiley@icontrol.com>
Subject: Re: meta-java: Problems creating image inside VM? openjdk-6 build gets killed by host OOM killer.
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
X-List-Received-Date: Mon, 12 Jan 2015 19:11:16 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

On 1/11/15 3:39 PM, Colin Smiley wrote:
> 
> I need help.
> 

... commenting on the one piece I'm aware of ...

> 8) Run `bitbake java-6-test-image`. This runs until compilation failure,
> due to a date bug introduced in meta-java on 12/31/14, with:
> 
> /home/csmiley/yacto/poky/build/tmp/work/i586-poky-linux/openjdk-6-jre/6b24-
> 1.11.9-r22.1/build/bootstrap/jdk1.6.0/bin/java  -client -Xmx896m -Xms128m
> -XX:PermSize=32m -XX:MaxPermSize=160m -jar
> /home/csmiley/yacto/poky/build/tmp/work/i586-poky-linux/openjdk-6-jre/6b24-
> 1.11.9-r22.1/build/openjdk.build-ecj/btjars/generatecurrencydata.jar -o
> /home/csmiley/yacto/poky/build/tmp/work/i586-poky-linux/openjdk-6-jre/6b24-
> 1.11.9-r22.1/build/openjdk.build-ecj/lib/currency.data.temp \
> | 	< ../../../src/share/classes/java/util/CurrencyData.properties
> | Error: time is more than 10 years from present: 1104530400000
> | java.lang.RuntimeException: time is more than 10 years from present:
> 1104530400000
> | 	at 
> build.tools.generatecurrencydata.GenerateCurrencyData.makeSpecialCaseEntry(
> GenerateCurrencyData.java:285)
> | 	at 
> build.tools.generatecurrencydata.GenerateCurrencyData.buildMainAndSpecialCa
> seTables(GenerateCurrencyData.java:225)
> | 	at 
> build.tools.generatecurrencydata.GenerateCurrencyData.main(GenerateCurrency
> Data.java:154)
> 
> 9) Fix above problem by editing all instances of
> build/tmp/work/work/Š/CurrencyData.properties to get rid of Turkish
> Currency Issue.

That is right answer (well kind of).  Really a patch needs to be submitted for
this little bit of insanity.

> 10) Restart by running `bitbake java-6-test-image`. This now fails when
> doing the generation on Sizes.32 with:
> | i586-poky-linux-gcc  -m32 -march=i586
> --sysroot=/home/csmiley/yocto/poky/build/tmp/sysroots/qemux86  -O2 -pipe
> -g -feliminate-unused-debug-types   -fno-strict-aliasing -fPIC -W -Wall
> -Wno-unused -Wno-parentheses -m32 -D_LITTLE_ENDIAN -g   -DARCH='"i586"'
> -Di586 -DLINUX -DRELEASE='"1.6.0_24"' -D_LARGEFILE64_SOURCE -D_GNU_SOURCE
> -D_REENTRANT -I. 
> -I/home/csmiley/yocto/poky/build/tmp/work/i586-poky-linux/openjdk-6-jre/6b2
> 4-1.11.9-r22.1/icedtea6-1.11.9/build/openjdk.build-ecj/tmp/sun/sun.awt.X11/
> xawt/CClassHeaders -I../../../src/solaris/javavm/export
> -I../../../src/share/javavm/export -I../../../src/share/javavm/include
> -I../../../src/solaris/javavm/include -I../../../src/share/native/common
> -I../../../src/solaris/native/common
> -I../../../src/share/native/sun/awt/X11
> -I../../../src/solaris/native/sun/awt/X11
> -I/home/csmiley/yocto/poky/build/tmp/sysroots/qemux86/usr/include -DXAWT
> -DXAWT_HACK 
> -I/home/csmiley/yocto/poky/build/tmp/work/i586-poky-linux/openjdk-6-jre/6b2
> 4-1.11.9-r22.1/icedtea6-1.11.9/build/openjdk.build-ecj/tmp/sun/sun.awt.X11/
> xawt/../../sun.awt/awt/CClassHeaders -I../../../src/solaris/native/sun/awt
> -I../../../src/solaris/native/sun/xawt
> -I../../../src/solaris/native/sun/jdga
> -I../../../src/share/native/sun/awt/debug
> -I../../../src/share/native/sun/awt/image/cvutils
> -I../../../src/share/native/sun/java2d
> -I../../../src/share/native/sun/java2d/loops
> -I../../../src/share/native/sun/awt/image/cvutils
> -I../../../src/share/native/sun/awt/image
> -I../../../src/share/native/sun/font
> -I../../../src/solaris/native/sun/java2d
> -I../../../src/share/native/sun/java2d/pipe
> -I../../../src/share/native/sun/java2d/opengl
> -I../../../src/solaris/native/sun/java2d/opengl
> -I../../../src/solaris/native/sun/java2d/x11
> -I../../../src/share/native/sun/dc/path
> -I../../../src/share/native/sun/dc/doe
> -I../../../src/share/native/sun/awt/alphacomposite
> -I../../../src/share/native/sun/awt/medialib
> -I../../../src/solaris/native/sun/awt/medialib
> -I../../../src/solaris/native/sun/font -I../../../src/share/native/sun/awt
> -I../../../src/solaris/native/sun/awt -o
> /home/csmiley/yocto/poky/build/tmp/work/i586-poky-linux/openjdk-6-jre/6b24-
> 1.11.9-r22.1/icedtea6-1.11.9/build/generated.build/sun/awt/X11/generator/si
> zer.32 
> /home/csmiley/yocto/poky/build/tmp/work/i586-poky-linux/openjdk-6-jre/6b24-
> 1.11.9-r22.1/icedtea6-1.11.9/build/generated.build/sun/awt/X11/generator/si
> zer.32.c
> | GENERATING 
> /home/csmiley/yocto/poky/build/tmp/work/i586-poky-linux/openjdk-6-jre/6b24-
> 1.11.9-r22.1/icedtea6-1.11.9/build/generated.build/sun/awt/X11/generator/si
> zes.32
> | Killed
> | make[5]: *** 
> [/home/csmiley/yocto/poky/build/tmp/work/i586-poky-linux/openjdk-6-jre/6b24
> -1.11.9-r22.1/icedtea6-1.11.9/build/generated.build/sun/awt/X11/generator/s
> izes.32] Error 137
> 
> 
> 
> System console has the message:
> Jan 11 02:00:47 yoctomatic kernel: [59600.572556] Out of memory: Kill
> process 69268 (qemu-i386) score 944 or sacrifice child
> Jan 11 02:00:47 yoctomatic kernel: [59600.573756] Killed process 69268
> (qemu-i386) total-vm:15519392kB, anon-rss:7674264kB, file-rss:32kB

The above seems to indicate you host system ran out of memory or your local
resource space was hit.

Some of the generators can take gigabytes of memory and when a parallel build is
attempted smaller systems just are not enough.  (Yes, 16 GB of actual ram is
starting to be considered "small" for some of these kinds of builds.)

I'd recommend checking you local environment settings (ulimit), verifying that
you have plenty of swamp.. and if you are still having problems limit the number
of parallel jobs.  (Parallel tasks should still be fine.)

(BTW most of my builders have 16-24 cores, 32-64 GB of ram, and 256+ GB of
swap...  I've not run into these myself, but I'm not building java on a regular
basis either.)

--Mark

> 
> 
> I have tried the following while diagnosing:
> 
> * Build core-image-minimal (works)
> * Build java-6-test-image without java/jdk portions (dependencies only)
> (works)
> * Builds varying number of threads/parallel make, memory of VM, OS of VM
> (all break in same place).
> 
> I would like some help diagnosing this. Please help!
> 
> 
> Thanks,
> 
> 
> Colin
> 
> 
> 


