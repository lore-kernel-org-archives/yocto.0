Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4006DE00D68; Tue,  5 Dec 2017 22:46:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 856 seconds by postgrey-1.32 at yocto-www;
	Tue, 05 Dec 2017 22:46:03 PST
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94338E00D00
	for <yocto@yoctoproject.org>; Tue,  5 Dec 2017 22:46:02 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id vB66ViZM004626
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO)
	for <yocto@yoctoproject.org>; Wed, 6 Dec 2017 08:31:44 +0200
From: Mircea Gliga <mircea.gliga@vitheia.com>
To: yocto@yoctoproject.org
Message-ID: <24c7418f-b077-f224-2cc8-ce399a2967db@vitheia.com>
Date: Wed, 6 Dec 2017 08:31:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
Subject: bitbake menuconfig fails
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
X-List-Received-Date: Wed, 06 Dec 2017 06:46:05 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hello

We are using in our layer a kernel 4.8 recipe (linux-stable_4.8.bb)- 
everything ok.
I'm trying to upgrade to 4.14, I created a new recipe 
linux-stable_4.14.bb. They live side by side, for now.
But with the 4.14 kernel when running `bitbake -c menuconfig 
linux-stable`, the new terminal comes up and I get the following error:

   HOSTCC  scripts/basic/fixdep
   GEN     ./Makefile
   HOSTCC  scripts/kconfig/mconf.o
   HOSTCC  scripts/kconfig/zconf.tab.o
   HOSTCC  scripts/kconfig/lxdialog/checklist.o
   HOSTCC  scripts/kconfig/lxdialog/util.o
   HOSTCC  scripts/kconfig/lxdialog/inputbox.o
   HOSTCC  scripts/kconfig/lxdialog/textbox.o
   HOSTCC  scripts/kconfig/lxdialog/yesno.o
   HOSTCC  scripts/kconfig/lxdialog/menubox.o
   HOSTLD  scripts/kconfig/mconf
/usr/bin/ld: cannot find -lncursesw
collect2: error: ld returned 1 exit status
scripts/Makefile.host:111: recipe for target 'scripts/kconfig/mconf' failed
make[3]: *** [scripts/kconfig/mconf] Error 1
/media/mircea/ExtLinux/Adventure/testBuildServer/product-sama5-kernel/yocto/build/tmp/work-shared/cuxe/kernel-source/Makefile:548: 
recipe for target 'menuconfig' failed
make[2]: *** [menuconfig] Error 2
Makefile:146: recipe for target 'sub-make' failed
make[1]: *** [sub-make] Error 2
Makefile:24: recipe for target '__sub-make' failed
make: *** [__sub-make] Error 2
Command failed.


If I rename linux-stable_4.14.bb to linux-stable_4.14.bb___, then run 
bitbake again (now the build system is working with the 4.8 kernel 
again) => menuconfig starts and works as expected.

I'm using krogoth, 2.1.2, Debian 8 (jessie)

I also tried to config the kernel outside of yocto, downloaded 
https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.14.4.tar.xz, 
extracted and run make menuconfig => works as expected

Any hints are appreciated.

Thanks

