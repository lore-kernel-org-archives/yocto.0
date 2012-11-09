Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D00DE01275
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2012 13:31:29 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Nov 2012 13:30:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,747,1344236400"; d="scan'208";a="239702433"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga002.jf.intel.com with ESMTP; 09 Nov 2012 13:31:27 -0800
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.16]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.158]) with mapi id
	14.01.0355.002; Fri, 9 Nov 2012 21:31:26 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: Sean Liming <sean.liming@annabooks.com>
Thread-Topic: [yocto] Cannot Compile Application in Eclipse IDE Juno
Thread-Index: Ac2+Q7NY4AZWZUVETMqSgwaAq2v0mgAUCl3gAAEpnYAAAIxFMAACLKgAAAUjB4AAAmYQsA==
Date: Fri, 9 Nov 2012 21:31:13 +0000
Message-ID: <6B7FBC8F-5763-4CFD-916C-090FEBAD0D3B@intel.com>
References: <000301cdbe44$ace11c60$06a35520$@annabooks.com>
	<1FFB62CE8AEB0D4298B51122D8903E961672353D@IRSMSX104.ger.corp.intel.com>
	<000801cdbe98$853b87f0$8fb297d0$@annabooks.com>
	<1FFB62CE8AEB0D4298B51122D8903E96167235DC@IRSMSX104.ger.corp.intel.com>
	<000001cdbea3$68797770$396c6650$@annabooks.com>,
	<000a01cdbeb7$f4fdaa90$def8ffb0$@annabooks.com>
In-Reply-To: <000a01cdbeb7$f4fdaa90$def8ffb0$@annabooks.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cannot Compile Application in Eclipse IDE Juno
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 09 Nov 2012 21:31:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,
ADT works with all the architectures, but not all are installed by default.=
 Your changes to the config file are okay.

One more suggestion would be to reconfigure the project after it is created=
, and after that try to build it.

Can you send the link from where you have downloaded the ADT tarball?

Thanks,
--
Alexandru Georgescu

On Nov 9, 2012, at 22:22, "Sean Liming" <sean.liming@annabooks.com<mailto:s=
ean.liming@annabooks.com>> wrote:

Is there a step I missed? Or is the ADT only for ARM at the moment?

Regards,

Sean Liming
Owner
Annabooks
Tel: 714-970-7523 / Cell: 858-774-3176

From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Sean Liming
Sent: Friday, November 09, 2012 9:55 AM
To: 'Georgescu, Alexandru C'; yocto@yoctoproject.org<mailto:yocto@yoctoproj=
ect.org>
Subject: Re: [yocto] Cannot Compile Application in Eclipse IDE Juno

I am using Intel Atom n450, not ARM. I have built three images using atom-p=
c for the BSP and core-image-sato-dev, core-image-sato, and core-image-sato=
-sdk for the base images. All the images are in the build directory. Using =
Hob, I set the Build Toolchain for each build to be x86_64 in the Advanced =
configuration. The images build and run.

To setup the application development environment


1.       Used Bitbake adt-installer =96 the ADT installer was in the tmp/de=
ploy/sdk folder. (I also downloaded the ADT and extracted the tarball with =
the same result.)

2.       Extracted the ADT tarball.

3.       Change the adt_intstaller.conf file to

YOCTOADT_TARGETS=3D=94x86_64=94
QEMU and NFS are set to Y
YOCTOADT_ROOTFS_x86_64=3D=94sato-sdk=94
YOCTOADT_TARGET_SYSROOT_IMAGE_ x86_64=3D=94sato-sdk=94
YOCTOADT_TARGET_SYSROOT_LOC_ x86_64=3D=94$HOME/Yocto1.3/test-yocto/x86_64=
=94

I commented out the other settings for the ARM.


4.       Ran the ADT installer. It looks like the QEMU rootfs gets installe=
d in the $HOME/Yocto1.3/test-yocto/x86_64. As a test I changed this out wit=
h the rootfs built from one of the images. In either case the issue was the=
 same

5.       Installed Eclipse JUNO

6.       Setup the Eclipse plugins per instructions

7.       Setup the ADT parameters to point to the Toolchain Root Location a=
nd Sysroot location. An error would occur if I don=92t get these right.

8.       Created the applications and tried to compile with the errors.


Am I supposed to bitbake meta-ide-support?

Regards,

Sean Liming
Owner
Annabooks
Tel: 714-970-7523 / Cell: 858-774-3176

From: Georgescu, Alexandru C [mailto:alexandru.c.georgescu@intel.com]
Sent: Friday, November 09, 2012 9:24 AM
To: Sean Liming; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: RE: [yocto] Cannot Compile Application in Eclipse IDE Juno

ADT installs by default not only the toolchain, but also the sysroot (ADT h=
ave to be configured and installed by matching your target architecture). I=
t asks you where to install the tooclhain, but the sysroot is installed by =
default in this location: YOCTOADT_TARGET_SYSROOT_LOC_arm=3D"$HOME/test-yoc=
to/arm".
That parameter can be found in adt-installer/adt_installer.conf.

Basically, to deploy an app to your target using Eclipse, you have to speci=
fy 3 parameters:
 =93Toolchain Root Location=94, =93Sysroot location=94 and configure the Ta=
rget options.

Use the =93Toolchain Root Location=94 as location where you have installed =
the ADT, and the Sysroot Location as specified in the adt_installer.conf. A=
DT needs the first two params in order to build you app locally.

=93runqemu-extract-sdk=94 is used to extract the qemu tarball that can be u=
sed as sysroot location. More details about the ADT tools are found at the =
same location: http://www.yoctoproject.org/docs/current/adt-manual/adt-manu=
al.html.

Regards,
--
Alexandru Georgescu

From: Sean Liming [mailto:sean.liming@annabooks.com]
Sent: Friday, November 09, 2012 18:38
To: Georgescu, Alexandru C; yocto@yoctoproject.org<mailto:yocto@yoctoprojec=
t.org>
Subject: RE: [yocto] Cannot Compile Application in Eclipse IDE Juno


Do I have to use Qemu? Can I use my target=92s rootfs?

If I can use my target=92s rootfs, how do I extract the SDK? runqemu-extrac=
t-sdk?

Regards,

Sean Liming
Owner
Annabooks
Tel: 714-970-7523 / Cell: 858-774-3176

From: Georgescu, Alexandru C [mailto:alexandru.c.georgescu@intel.com]<mailt=
o:[mailto:alexandru.c.georgescu@intel.com]>
Sent: Friday, November 09, 2012 8:21 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Cc: Sean Liming
Subject: RE: [yocto] Cannot Compile Application in Eclipse IDE Juno

Hi Sean,
There may be a problem with your sysroot setup. Please make sure you have s=
et it correctly by following the tutorial from here: http://www.yoctoprojec=
t.org/docs/current/adt-manual/adt-manual.html#extracting-the-root-filesyste=
m

Regards,
--
Alexandru Georgescu

From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Sean Liming
Sent: Friday, November 09, 2012 08:37
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] Cannot Compile Application in Eclipse IDE Juno


Yocto 1.3 Danny
Target: n450 Black Sand
Eclipse: Juno C/C++ Developers

After going through the steps to setup the ADT and Eclipse plugin, I am try=
ing to compile the Hello World application based on the Hello World ANSI C =
Autotools Project type. I think I have the ADT Preference set correctly. It=
 is not complaining about a missing tool chain.

Compiling results in errors:

Compiler cannot create executable in /home/sean/workspace/HelloADT =96 Conf=
iguration problem
Make *** No rules to make target =91all=92 =96 C/C++ problem

What am I missing?

Regards,

Sean


