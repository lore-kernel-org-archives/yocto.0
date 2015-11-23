Return-Path: <alexandre.osorio@eldorado.org.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 578FFE00ADD; Mon, 23 Nov 2015 04:40:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0036]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Mon, 23 Nov 2015 04:40:51 PST
Received: from smtp1.eldorado.org.br (smtp1.eldorado.org.br [200.148.226.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A18DCE0059B
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 04:40:51 -0800 (PST)
Received: from serv030.corp.eldorado.org.br (200.148.226.2) by
	smtp1.eldorado.org.br (200.148.226.10) with Microsoft SMTP Server (TLS)
	id 14.3.123.3; Mon, 23 Nov 2015 10:39:40 -0200
Received: from serv030.corp.eldorado.org.br (192.168.4.30) by
	serv030.corp.eldorado.org.br (192.168.4.30) with Microsoft SMTP Server
	(TLS) id 15.0.775.38; Mon, 23 Nov 2015 10:39:42 -0200
Received: from serv030.corp.eldorado.org.br ([fe80::493e:4247:53f3:53b7]) by
	serv030.corp.eldorado.org.br ([fe80::493e:4247:53f3:53b7%14]) with mapi
	id 15.00.0775.031; Mon, 23 Nov 2015 10:39:42 -0200
From: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: %pre scriptlet failed in Guestfish
Thread-Index: AdEl6yCnu3gHwL2VSFiuO77wRy9xmQ==
Date: Mon, 23 Nov 2015 12:39:41 +0000
Message-ID: <eb78389061c241f79b2c9e2807bc8be9@serv030.corp.eldorado.org.br>
Accept-Language: pt-BR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [177.220.10.3]
MIME-Version: 1.0
X-Brightmail-Tracker: AAAAAQAAAUA=
Subject: %pre scriptlet failed in Guestfish
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
X-List-Received-Date: Mon, 23 Nov 2015 12:40:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

Running an image built with Yocto 1.8 in Guestfish I get the following erro=
r when trying to install a RPM package:

sh "cd /home/root; rpm -ivh --nodeps package.rpm"
libguestfs: trace: sh "cd /home/root; rpm -ivh --nodeps package.rpm"
guestfsd: error: error:   install: %pre scriptlet failed (2), skipping pack=
age.x86_64
libguestfs: trace: sh =3D NULL (error)
libguestfs: error: sh: error:   install: %pre scriptlet failed (2), skippin=
g package.x86_64

This error doesn't occur ehqne running the same image in QEMU. Please could=
 anyone give me a help?

Thanks in advance.

Regards,
Alexandre

