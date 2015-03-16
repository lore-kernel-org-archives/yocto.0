Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F01DBE00757; Sun, 15 Mar 2015 22:15:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8657BE006B5
	for <yocto@yoctoproject.org>; Sun, 15 Mar 2015 22:15:50 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AncFAO5lBlXGmAcV/2dsb2JhbABbgmQiUloEwhKCEh0KhXQCgR1MAQEBAQEBfYQPAQEBAQIBAQIPKDQLBQ0BCA0EBAEBAQoUOAodCQEEDgUIGogFCAEMnnqlDAEBAQEBAQEDAQEBAQEBAQEaixeEQDECgxyBFgWQOoNrgiQFgS+DPjmCcoJJjQUjggIcFIE8bwGBQ38BAQE
X-IronPort-AV: E=Sophos;i="5.11,407,1422939600"; d="scan'208";a="94865598"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by de307622-de-outbound.net.avaya.com with ESMTP;
	16 Mar 2015 01:15:48 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC01.global.avaya.com) ([135.64.58.11])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	16 Mar 2015 01:15:48 -0400
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC01.global.avaya.com ([135.64.58.11]) with mapi id
	14.03.0174.001; Mon, 16 Mar 2015 06:15:46 +0100
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Bitbake recipe Post install script not executed once
	the package is installed
Thread-Index: AdBfqD6VZ8gWmxP3T5SUXgmnBI6bnw==
Date: Mon, 16 Mar 2015 05:15:45 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A36DDB7@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.47]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bitbake recipe Post install script not executed once the package is installed
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
X-List-Received-Date: Mon, 16 Mar 2015 05:15:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


________________________________________
From: Paul Eggleton [paul.eggleton@linux.intel.com]
Sent: Saturday, March 14, 2015 5:55 PM
To: Bipnesh, Abhinav (Abhinav)
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Bitbake recipe Post install script not executed once t=
he package is installed

On Saturday 14 March 2015 11:37:51 Bipnesh, Abhinav wrote:
> Paul Eggleton wrote:
> > On Saturday 14 March 2015 10:39:59 Bipnesh, Abhinav wrote:
> > > I was trying to perform a post install activity as part of the recipe
> > > using pkg_postinst_PACKAGENAME() but seems it's not working. Below is
> > > the sample function we have written as part of the recipe
> > >
> > > pkg_postinst_test (){
> > >
> > >     #!/bin/sh -xe
> > >     echo " we are calling post install for test"
> > >     mkdir -p /test/logs/1
> > >     touch /test/test1/test2/test3/sample.txt
> > >
> > > }
> > > testX directory exists as they are created as part of the install
> > > activity.
> > > When we verify the post install we did find the file being created as
> > > below is the output
> > >
> > > ls /test/test1/test2/test3/.txt ls: cannot access
> > > /test/test1/test2/test3/.txt: No such file or directory
> >
> > I assume you meant *.txt as .txt wouldn't exist even if the postinstall
> > script had run.
> >
> > > Also didn't see the echo output on the console when the package is be=
ing
> > > installed or post installation activity is being performed.
> >
> > Is the output package that you are installing actually called "test"?
>
> Yes, Basically I did install manually using below command
> rpm -i test.rpm

I meant at the build system end. Is there a "test" directory under packages=
-
split under the workdir for the recipe? You can find the workdir by running=
:

 bitbake -e recipename | grep ^WORKDIR=3D

$ bitbake -e test| grep ^WORKDIR=3D
WORKDIR=3D"/<home dir>/QorIQ-SDK-yocto/build_t1040rdb_release/tmp/work/ppce=
5500-fsl-linux/test/1.0"
Above is the output of the command. Also  I do see the same directory path =
being created as part of the packages-split directory
$pwd
/<home directory>/QorIQ-SDK-yocto/build_t1040rdb_release/tmp/work/ppce5500-=
fsl-linux/test/1.0/packages-split/<package name i.e. test>/test/test1/test2=
/test3

Along with that we see  rpm in deploy-rpm directory and also in tmp/deploy/=
rpms/ directory. When I do a rpm -qp test.rpm I can see the directory struc=
ture being created and all the files present in respective directory.

Just checking, is DISTRO or MACHINE set to "test"? Does "test" appear anywh=
ere
in the value of OVERRIDES? You can check by running:

 bitbake -e | grep ^OVERRIDES=3D
$ bitbake -e | grep ^OVERRIDES=3D
OVERRIDES=3D"linux:powerpc:build-linux:pn-defaultpkgname:t1:t1040:t1040rdb:=
qoriq-ppc:e5500:fsl-networking:class-target:forcevariable:libc-glibc"

The machine type is set to t1040rdb (as we are using Freescale processors) =
in local.conf file. The package test.rpm is included as part of the IMAGE_I=
NSTAL_APPEND or in the image definition file. As we need to install it sepa=
rately and not as part of rootfs.=20
But still I will get the output of above command

> One thing to add here is we are running Busybox on which I am trying to
> perform the installation.

That shouldn't matter.
The reason for asking this is due to this answer on stackoverflow (http://s=
tackoverflow.com/a/11316251/570200) and also the mailing list of busybox sa=
ys this
"The busybox rpm command is more "rpm2cpio --install" than anything else.  =
It=20
doesn't support pre or post scripts, doesn't maintain a repository...

(http://lists.busybox.net/pipermail/busybox/2006-November/059507.html)"

Also the rpm command didn't list -e or other such option which I can see on=
 other distribution. Below is sample output
# rpm
BusyBox v1.22.1 (2015-03-03 14:40:56 IST) multi-call binary.

Usage: rpm -i PACKAGE.rpm; rpm -qp[ildc] PACKAGE.rpm

Please note that simple echo command is also not working for which I expect=
 to echo the output on the console during the installation process.

Cheers,
Abhinav

--

Paul Eggleton
Intel Open Source Technology Centre

