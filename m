Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59EA4E00828; Wed, 18 Mar 2015 17:00:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
X-Greylist: delayed 66 seconds by postgrey-1.32 at yocto-www;
	Wed, 18 Mar 2015 17:00:23 PDT
Received: from remote.innerrange.com (122-143-146.dsl.connexus.net.au
	[203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C30ADE0034E
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2015 17:00:23 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::758b:a6c:a61b:18f4]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::758b:a6c:a61b:18f4%14]) with
	mapi; Thu, 19 Mar 2015 10:59:14 +1100
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 19 Mar 2015 10:59:12 +1100
Thread-Topic: Installing Linux kernel headers including custom UAPI header file
Thread-Index: AdBh13EcHQZ95AYdQ2uVK2MQ/Hsuaw==
Message-ID: <5500469A22567C4BAF673A6E86AFA3A402227720820E@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1239-7.500.1018-21406.006
x-tm-as-result: No--35.155800-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Installing Linux kernel headers including custom UAPI header file
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
X-List-Received-Date: Thu, 19 Mar 2015 00:00:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm using Yocto (dizzy) with meta-ti and the linux-ti-staging kernel 3.14.x=
 to build for BeagleBone Black.

I've written a custom char driver with several ioctl() calls, and I'm patch=
ing that into the linux-ti-staging kernel. The driver adds a new UAPI heade=
r file that goes in the kernel tree under include/uapi/linux/mydriver.h, to=
 define the ioctl commands.

I've got a test application to use that custom char driver. I've also writt=
en a library libmydriver, to provide a more user-friendly interface to the =
ioctl calls. Both want to include the mydriver.h from the Linux headers. Th=
e application and library are using autotools to build. I've written a Yoct=
o recipe to build them via autotools.

My problem is this: my application and library fail to build under Yocto, d=
ue to missing the Linux kernel header file mydriver.h (/usr/include/linux/m=
ydriver.h is where I'd expect it to appear in the build environment root fi=
lesystem).

What do I need to change to cause the custom Linux kernel build to install =
the kernel header files, including mydriver.h into the Yocto build for othe=
r packages to use during build?

(I don't want it installed on the target, only in the build sysroot, althou=
gh I'm not familiar enough with Yocto to understand how it installs include=
 files to the build sysroot, but not the target sysroot.) I can see that Li=
nux kernel headers are being installed to tmp/sysroots/beaglebone/usr/inclu=
de/linux/... but not including mydriver.h; I'm not sure what package is ins=
talling these headers. (I can also see that my header is installed at tmp/s=
ysroots/beaglebone/usr/src/kernel/include/uapi/linux/mydriver.h, but that's=
 not the same.)

--=20
Craig McQueen


