Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FB59E009B6; Wed, 13 May 2015 22:37:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.invecas.com (mx1.invecas.com [112.133.222.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD844E009A3
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 22:37:30 -0700 (PDT)
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by mail.invecas.com
	(10.0.30.131) with Microsoft SMTP Server (TLS) id 14.3.123.3;
	Thu, 14 May 2015 11:07:37 +0530
Received: from SOC-EXCH-01.invecas.local (10.0.30.8) by
	SOC-EXCH-02.invecas.local (10.0.30.9) with Microsoft SMTP Server (TLS)
	id 15.0.995.29; Thu, 14 May 2015 11:07:21 +0530
Received: from SOC-EXCH-01.invecas.local ([::1]) by SOC-EXCH-01.invecas.local
	([fe80::e59c:e711:e847:c45f%14]) with mapi id 15.00.0995.028;
	Thu, 14 May 2015 11:07:20 +0530
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: "Minchev, Todor" <todor.minchev@intel.com>
Thread-Topic: [yocto] Compilation error in yocto eclipse
Thread-Index: AQHQjWgNAtIHx4AGqE6jUgUkMEmPHJ157gUAgAEC1KI=
Date: Thu, 14 May 2015 05:37:20 +0000
Message-ID: <1431581841005.60623@inedasystems.com>
References: <1431513252546.36425@inedasystems.com>,
	<1431528906.8290.27.camel@intel.com>
In-Reply-To: <1431528906.8290.27.camel@intel.com>
Accept-Language: en-US, en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.42.55]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Compilation error in yocto eclipse
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
X-List-Received-Date: Thu, 14 May 2015 05:37:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Todor,=0A=
=0A=
I built the toolchain using the following command:=0A=
=0A=
$cd ~/poky=0A=
$source ./oe-init-build-env=0A=
$bitbake meta-ide-support=0A=
=0A=
=0A=
Extract the root file system by using the following commands:=0A=
=0A=
$cd ~=0A=
$source ~/poky/build/tmp/environment-setup-mips32r2el-poky-linux=0A=
$runqemu-extract-sdk \=0A=
        ~/poky/build/tmp/deploy/images/arqlyn/ core-image-minimal-dhruwa_io=
e-20150511102759.rootfs.tar.bz2\=0A=
        $HOME/arqlyn=0A=
=0A=
I followed the command given in the yocto project dev-manual for installing=
 eclipse and adding yocto plugin to eclipse.=0A=
=0A=
I Gave the following data to the eclipse for configuring the cross-compiler=
 options:=0A=
=0A=
1. I select the "Build System Derived Toolchain"=0A=
2.point the toolchain path to "home/testuser/poky/build"=0A=
3.gave sysroot path to /home/testuser/arqlyn=0A=
=0A=
After entered this information I got the my machine-name in the "select the=
 target architecture" filed.=0A=
=0A=
After this I create a autotool support project and tried to build but it gi=
ves the error.=0A=
=0A=
Regards,=0A=
=0A=
Raghavendra.=0A=
________________________________________=0A=
From: Minchev, Todor <todor.minchev@intel.com>=0A=
Sent: Wednesday, May 13, 2015 8:25 PM=0A=
To: Raghavendra Kakarla=0A=
Cc: yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Compilation error in yocto eclipse=0A=
=0A=
Hello Raghavendra,=0A=
=0A=
On Wed, 2015-05-13 at 10:34 +0000, Raghavendra Kakarla wrote:=0A=
> Hi,=0A=
>=0A=
>=0A=
> I have some some issue with compiling the example source code in yocto=0A=
> eclipse environment.=0A=
>=0A=
Which sample did you try to compile?=0A=
>=0A=
> I got following error:=0A=
>=0A=
>=0A=
> 12:48:03 **** Build of configuration Build (GNU) for project example=0A=
> ****=0A=
> make all=0A=
> make: *** No rule to make target `all'.  Stop.=0A=
>=0A=
>=0A=
> I built generated the tool chain and sysroot from my build system=0A=
> using bitbake command.=0A=
=0A=
Could you please provide a bit more details about how you built your=0A=
toolchain. And also how did you configure the Yocto Eclipse plug-in.=0A=
>=0A=
>=0A=
> Could please help me in resolving this issue.=0A=
=0A=
Cheers,=0A=
Todor=0A=
>=0A=
>=0A=
>=0A=
> --=0A=
> _______________________________________________=0A=
> yocto mailing list=0A=
> yocto@yoctoproject.org=0A=
> https://lists.yoctoproject.org/listinfo/yocto=0A=
=0A=

