Return-Path: <ramana.gollamudi@huawei.com>
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [119.145.14.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47948E0141C
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2012 07:09:14 -0800 (PST)
Received: from 172.24.2.119 (EHLO szxeml211-edg.china.huawei.com)
	([172.24.2.119])
	by szxrg02-dlp.huawei.com (MOS 4.3.4-GA FastPath queued)
	with ESMTP id ASW07376; Tue, 20 Nov 2012 23:09:13 +0800 (CST)
Received: from SZXEML423-HUB.china.huawei.com (10.82.67.162) by
	szxeml211-edg.china.huawei.com (172.24.2.182) with Microsoft SMTP
	Server (TLS) id 14.1.323.3; Tue, 20 Nov 2012 23:09:13 +0800
Received: from SZXEML534-MBX.china.huawei.com ([169.254.2.19]) by
	szxeml423-hub.china.huawei.com ([10.82.67.162]) with mapi id
	14.01.0323.003; Tue, 20 Nov 2012 23:09:03 +0800
From: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Need for offline binary configuration
Thread-Index: AQHNxzDKyeCK5q4Ul0GcItQcbcDHSg==
Date: Tue, 20 Nov 2012 15:09:02 +0000
Message-ID: <36ED13F3654AE54CA763E6821D93A5711048C834@szxeml534-mbx.china.huawei.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.96.93]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
Cc: Sanil kumar <sanil.kumar@huawei.com>
Subject: Need for offline binary configuration
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
X-List-Received-Date: Tue, 20 Nov 2012 15:09:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Poky allows to build custom Linux for you, but we have cases where the post=
 build customization is required, like user-addition, network configuration=
, service control. Even selecting the required packages can be a post build=
 activity.

The current model requires the image to be rebuilt to support these configu=
ration.
Offline Configuration tool (OCT), which allows a binary image customization=
 before making a final target image. This case will be more evident in larg=
er companies, where platform teams, product teams , application teams are d=
istributed and Linux build from source will be owned and lab tested by a si=
ngle team, like platform team. Other teams just configure to use it for pro=
duct variants from same platform build.

Detailed use cases can be found in enhancement bug:3252

OCT should work on the binary pool of compiled packages generated from poky=
.

The basic operations that can be supported includes
a) Select/deselect required packages from pool of binary packages into fina=
l target image.
b) Provision to select external binary packages like ADT compiled applicati=
ons as input and add them to final target image.
c) Binary level Offline configuration can includes=20
      Configure the users/passwords
      Configure the network=20
      Configure the host name=20
      Select the services to be started by default
      Security related configuration
      Generate initrd in ramfs/ext3/... format
      etc..

Considering the methods to support these in our current yocto model, follow=
ing changes can be done.
1) HOB can be the tool which can be extended to support these
    Poky can generate a binary package pool as one if its output and Hob ca=
n work on this package pool to select packages, configure and generate imag=
e.
So HOB can support opening HOB in Binary(or OCT) mode i.e., without build o=
ptions but only with binary package selection. Configuration GUI needs to b=
e added to HOB.
Note:HOB+OCT is together or separate, needs a bit more thought and overall =
organization as they will be intended for different users.=20
2) Binary package pool can be a minimal/partial sstate-cache, as complete s=
state-cache is quite big and not required for product teams as they are not=
 expected to build but just need to select and configure.
    I think it is sufficient to keep the minimal binaries from sstate-cache=
 which are required to execute image.bbclass, do_rootfs task to generate im=
age.=20
3) Along with specific configuration UI implementation, a generic configura=
tion model similar to kernel kconfig and menuconfig can be considered, in c=
ases where more detailed offline configurations is required like detailed s=
ecurity configuration.

Regards,
Ramana =

