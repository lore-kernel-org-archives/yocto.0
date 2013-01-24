Return-Path: <lukas.bulwahn@bmw-carit.de>
Received: from mail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9EDBE0147F
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 05:47:12 -0800 (PST)
Received: from exchange2010.bmw-carit.intra ([192.168.100.28]:52042
	helo=dc01.bmw-carit.de)
	by mail.bmw-carit.de with esmtps (TLSv1:AES128-SHA:128) (Exim 4.76)
	(envelope-from <Lukas.Bulwahn@bmw-carit.de>) id 1TyN90-0000ax-13
	for yocto@yoctoproject.org; Thu, 24 Jan 2013 14:47:06 +0100
Received: from EXCHANGE2010.bmw-carit.intra ([fe80::f196:9f8b:c87f:e44]) by
	Exchange2010.bmw-carit.intra ([fe80::f196:9f8b:c87f:e44%14]) with mapi
	id 14.01.0218.012; Thu, 24 Jan 2013 14:47:06 +0100
X-CTCH-RefID: str=0001.0A0C0203.51013B5A.012B,ss=1,re=0.000,fgs=0
From: Lukas Bulwahn <Lukas.Bulwahn@bmw-carit.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: An initial publication for an openembedded layer for ROS
	(meta-ros)
Thread-Index: Ac36OUcGHHGnzYjbT+KL0TfMh8butA==
Date: Thu, 24 Jan 2013 13:47:05 +0000
Message-ID: <F672537F6568FE49AF3065326904F7441017CAB0@Exchange2010.bmw-carit.intra>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.101.3]
MIME-Version: 1.0
Subject: An initial publication for an openembedded layer for ROS (meta-ros)
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
X-List-Received-Date: Thu, 24 Jan 2013 13:47:13 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

We are happy to announce that our first iteration towards creating an OpenE=
mbedded layer for ROS (www.ros.org) is now publicly available at

https://github.com/bmwcarit/meta-ros

Our current work sets up an OpenEmbedded Linux system with the system requi=
rements for ROS-base. In this OpenEmbedded Linux system, one can download t=
he ROS fuerte or groovy sources, compile and install them, and then run the=
 ROS system.

This project is still under heavy active development. In the close future, =
this work should allow you to cross-compile ROS and set up a Linux & ROS in=
frastructure for various embedded systems.

Feedback and contributions of any kind are welcome.


Lukas Bulwahn
BMW Car IT GmbH
Petuelring 116
D-80809 Muenchen
Germany
Mail: lukas.bulwahn@bmw-carit.de
Web: http://www.bmw-carit.de
-------------------------------------------------------------
BMW Car IT GmbH
Gesch=E4ftsf=FChrer: Harald Heinecke und Reinhard Stolle

Sitz und Registergericht: M=FCnchen HRB134810
-------------------------------------------------------------



