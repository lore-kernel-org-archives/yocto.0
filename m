Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE739E00A27; Thu, 27 Nov 2014 02:11:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 1E77FE009FC
	for <yocto@yoctoproject.org>; Thu, 27 Nov 2014 02:10:53 -0800 (PST)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.158.1;
	Thu, 27 Nov 2014 11:10:46 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id 246342800C6;
	Thu, 27 Nov 2014 11:10:46 +0100 (CET)
Date: Thu, 27 Nov 2014 11:10:46 +0100
From: "Maxin B. John" <maxin.john@enea.com>
To: Tran TriTin <tritini@gmail.com>
Message-ID: <20141127101045.GA5425@sestofb10.enea.se>
References: <CAAkv465EVKpnrB3DBGLkxzgBr6z1qpiw66L-ttQ82bo9Lq0c7A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAkv465EVKpnrB3DBGLkxzgBr6z1qpiw66L-ttQ82bo9Lq0c7A@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX03.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: yocto@yoctoproject.org
Subject: Re: Install Java on Core-Image-Sato-Sdk
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
X-List-Received-Date: Thu, 27 Nov 2014 10:11:10 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Hi,

On Thu, Nov 27, 2014 at 09:10:39AM +0100, Tran TriTin wrote:
> Hi,
> 
> i tried to install Java (meta-oracle-java) on Core-image-Sato-sdk, but i always
> received this following error. Please help me
> 
> ERROR: runstrip: ''i586-poky-linux-strip' --remove-section=.comment
> --remove-section=.note '/home/tvtritin/DemoYOCTO/poky1.7/build-core-image-java/
> tmp/work/i586-poky-linux/oracle-jse-ejre-arm-vfp-hflt-client-headless/
> 1.7.0-u71r0/package/usr/ejre1.7.0_71/lib/jexec'' strip command failed
> 
> ERROR: Unable to install packages. Command '/home/tvtritin/DemoYOCTO/poky1.7/
> build-core-image-java/tmp/sysroots/x86_64-linux/usr/bin/smart --quiet
> --data-dir=/home/tvtritin/DemoYOCTO/poky1.7/build-core-image-java/tmp/work/
> qemux86-poky-linux/core-image-sato-sdk/1.0-r0/rootfs/var/lib/smart install -y
> packagegroup-core-x11-sato-games@qemux86
> packagegroup-core-standalone-sdk-target@all packagegroup-core-x11-base@all
> packagegroup-base-extended@qemux86 smartpm@i586
> packagegroup-core-tools-debug@all packagegroup-core-tools-testapps@qemux86
> packagegroup-core-eclipse-debug@all packagegroup-core-qt-demoapps@all
> packagegroup-core-boot@qemux86 packagegroup-core-tools-profile@qemux86
> packagegroup-core-sdk@all psplash@i586
> oracle-jse-ejre-arm-vfp-hflt-client-headless@i586 rpm@i586
> packagegroup-core-ssh-openssh@all packagegroup-core-x11-sato@qemux86
> kernel-dev@qemux86 locale-base-en-us@i586 locale-base-en-gb@i586' returned 1:
> error: Can't install
> oracle-jse-ejre-arm-vfp-hflt-client-headless-1.7.0-u71r0@i586: no package
> provides libdl.so.2(GLIBC_2.4)
> 
> 
> ERROR: Function failed: do_rootfs
> ERROR: Logfile of failure stored in: /home/tvtritin/DemoYOCTO/poky1.7/
> build-core-image-java/tmp/work/qemux86-poky-linux/core-image-sato-sdk/1.0-r0/
> temp/log.do_rootfs.32175
> ERROR: Task 7 (/home/tvtritin/DemoYOCTO/poky1.7/meta/recipes-sato/images/
> core-image-sato-sdk.bb, do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 6174 tasks of which 44 didn't need to be rerun
> and 1 failed.
> No currently running tasks (6174 of 6175)

It is a bit difficult to guess from here whether you are trying to install
"java for arm binary" in an x86 target. Otherwise, please try using DEB 
or IPK packaging as there are some known install problems with RPM packaging 
in meta-oracle-java.

To do that, please set:
PACKAGE_CLASSES = "package_deb"
or
PACKAGE_CLASSES = "package_ipk"
in your 'local.conf' file and build it.

> 
> Best regard,
> Van Tri Tin Tran
Hope this helps,
Maxin

