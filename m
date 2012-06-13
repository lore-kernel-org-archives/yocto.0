Return-Path: <juergen.messerer@bbv.ch>
Received: from owa.outnet.ch (mail.outnet.ch [80.67.146.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5906CE0044A
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 09:19:44 -0700 (PDT)
Received: from TKSSREX01.outnet.ch ([10.10.10.1]) by tkssrexhcu01.outnet.ch
	([172.17.220.45]) with mapi; Wed, 13 Jun 2012 18:19:43 +0200
From: =?iso-8859-1?Q?J=FCrgen_Messerer?= <juergen.messerer@bbv.ch>
To: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 13 Jun 2012 18:19:42 +0200
Thread-Topic: [yocto] qemux86 Image won't boot from CF
Thread-Index: Ac1JfT3WUpSoSBnoSgqWuH/9LQiUkwAAskCA
Message-ID: <A7B59F6D52627C44813C136D437B0832068BC78CAFDC@TKSSREX01.outnet.ch>
References: <A7B59F6D52627C44813C136D437B0832068BC78CACF3@TKSSREX01.outnet.ch>
	<4FD8B81C.2030603@linux.intel.com>
In-Reply-To: <4FD8B81C.2030603@linux.intel.com>
Accept-Language: en-US, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, de-CH
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: qemux86 Image won't boot from CF
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
X-List-Received-Date: Wed, 13 Jun 2012 16:19:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Darren for the tips.

Meanwhile I realized that to that the PCMCIA is missing .
I will follow your suggestion about writing an own machine config file.

Best regards

Juergen
=20

-----Original Message-----
From: Darren Hart [mailto:dvhart@linux.intel.com]=20
Sent: Mittwoch, 13. Juni 2012 17:56
To: J=FCrgen Messerer
Cc: yocto@yoctoproject.org; Andrea Adami
Subject: Re: [yocto] qemux86 Image won't boot from CF



On 06/12/2012 04:07 AM, J=FCrgen Messerer wrote:
> Hi everybody.
>=20
> =20
>=20
> The following problem occurs when I try to start a x86 linux system=20
> from CF-Card.
>=20
> =20
>=20
> I have generate a qemux86 core-image-minimal  image with the latest pokey=
.
>=20

...

> VFS: Unable to mount root fs via NFS, trying floppy.
>=20
> VFS: Cannot open root device "hdb1" or unknown-block(2,0)
>=20
> Please append a correct "root=3D" boot option; here are the available
> partitions:
>=20
> VFS: Unable to mount root fs on unknown-block(2,0)

The kernel should list the known block devices. It isn't finding any. So ei=
ther you don't have the driver for it installed, or it is a removable devic=
e. As Andrea pointed out, rootwait can help with the latter.

However, it should be noted that the qemux86 machine is intended to be boot=
ed under emulation, and has the drivers required for that scenario.
If you want to boot on real hardware, you really should be creating a machi=
ne config and a kernel bbappend with whatever drivers you need for your har=
dware in a config fragment.

--
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



