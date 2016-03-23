Return-Path: <Rikard.Olsson@se.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B1B5E00931; Wed, 23 Mar 2016 05:46:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [139.15.237.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp6-v.fe.bosch.de (smtp6-v.fe.bosch.de [139.15.237.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DCC9E00920
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 05:46:54 -0700 (PDT)
Received: from vsmta11.fe.internet.bosch.com (unknown [10.4.98.51])
	by imta24.fe.bosch.de (Postfix) with ESMTP id 41801D80219
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 13:46:53 +0100 (CET)
Received: from FE-MBX1021.de.bosch.com (vsgw22.fe.internet.bosch.com
	[10.4.98.11])
	by vsmta11.fe.internet.bosch.com (Postfix) with ESMTP id B5489238031A
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 13:46:52 +0100 (CET)
Received: from SI-MBX1022.de.bosch.com (10.3.230.36) by
	FE-MBX1021.de.bosch.com (10.3.230.79) with Microsoft SMTP Server (TLS)
	id 15.0.1104.5; Wed, 23 Mar 2016 13:46:52 +0100
Received: from SI-MBX1022.de.bosch.com ([fe80::94f3:2c29:36e3:3f88]) by
	SI-MBX1022.de.bosch.com ([fe80::94f3:2c29:36e3:3f88%22]) with mapi id
	15.00.1104.000; Wed, 23 Mar 2016 13:46:52 +0100
From: "Olsson Rikard (RBSN/ESW1)" <Rikard.Olsson@se.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Question about XEN-hypervisor and Yocto build system
Thread-Index: AdGFAa73G7TRDYRtQ7SVEql+GBYrhw==
Date: Wed, 23 Mar 2016 12:46:51 +0000
Message-ID: <d5ba2b9811994d2dbfe58a1e46e7721a@SI-MBX1022.de.bosch.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.112.94.39]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-AS-Product-Ver: IMSS-7.1.0.1679-8.0.0.1202-22210.006
X-TMASE-MatchedRID: hJfIhax4WNO+9Go4BgFPZn57ROP1QhCQtzTC6ljuW68F+gC92p0nl34z
	9jl2IgzvAM+poJ3enb6gbcMzBV6ONZ1VEaBaPUgci/vfAS7Q3HuKbuU19+RNrpMxNpDOG+h6jzr
	oMRry5yJDkr1UAIC67aToh9IW1lUhYlldA0POS1K1PiMh4ZF39SZ0V8tB+VutaWxXbJF842KtEa
	JoVjyWkIq8VLU94rUdgFK2nmPCAnlDq2SVEk72KAtuKBGekqUpI/NGWt0UYPBVUc7nZbngiVSkw
	JHj7Sx6/LW+Qpt80HATqCYxPt8opZBE63rlODpp
Subject: Question about XEN-hypervisor and Yocto build system
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
X-List-Received-Date: Wed, 23 Mar 2016 12:46:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Yocto Members,

I am looking into xen-hypervisor and have downloaded the meta-virtualizatio=
n layer and updated bblayers.conf to pull in the layer. However I am unsure=
 how to proceed:
1) How do I configure the meta-virtualization to use Xen hypervisor
2) What target do I build/bb file do I build.

I usually build either:
bitbake core-image-minimal =3D=3D> Standard Linux for our HW board
bitbake core-image-XXX--XXX =3D=3D> Standard Linux for our HW board + addit=
ional application layers.

I am however unable to understand the connection between the images I curre=
ntly build and the Xen-hypervisor, for example:
recipes-extended/libvirt/libvirt_1.2.19.bb:# xen-minimal config
recipes-extended/images/kvm-image-minimal.bb:DESCRIPTION =3D "A minimal kvm=
 image"
recipes-extended/images/xen-image-minimal.bb:DESCRIPTION =3D "A minimal xen=
 image"
What are above bitbake recipes, should I build xen-image-minimal.bb instead=
 of core-image-minimal or....

I have looked at:
https://wiki.yoctoproject.org/wiki/Virtualization_with_KVM
and the two README files:
./docs/00-README
./README
but there is not much information on Yocto and xen-hypervisor so I am unsur=
e how to setup the build system.

Appreciate any advice or input.

Best regards
Rikard Olsson


