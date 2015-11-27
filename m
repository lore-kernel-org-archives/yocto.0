Return-Path: <alexandre.osorio@eldorado.org.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0A6CE00BFF; Fri, 27 Nov 2015 03:56:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1.eldorado.org.br (smtp1.eldorado.org.br [200.148.226.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF2D0E00BF4
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 03:56:30 -0800 (PST)
Received: from serv030.corp.eldorado.org.br (200.148.226.2) by
	smtp1.eldorado.org.br (200.148.226.10) with Microsoft SMTP Server (TLS)
	id 14.3.123.3; Fri, 27 Nov 2015 09:56:22 -0200
Received: from serv030.corp.eldorado.org.br (192.168.4.30) by
	serv030.corp.eldorado.org.br (192.168.4.30) with Microsoft SMTP Server
	(TLS) id 15.0.775.38; Fri, 27 Nov 2015 09:56:25 -0200
Received: from serv030.corp.eldorado.org.br ([fe80::493e:4247:53f3:53b7]) by
	serv030.corp.eldorado.org.br ([fe80::493e:4247:53f3:53b7%14]) with mapi
	id 15.00.0775.031; Fri, 27 Nov 2015 09:56:25 -0200
From: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] %pre scriptlet failed in Guestfish
Thread-Index: AdEl6yCnu3gHwL2VSFiuO77wRy9xmQAINbiAAL99fyA=
Date: Fri, 27 Nov 2015 11:56:25 +0000
Message-ID: <06676a3c24d841b9a129c013852a77bf@serv030.corp.eldorado.org.br>
References: <eb78389061c241f79b2c9e2807bc8be9@serv030.corp.eldorado.org.br>
	<56532285.409@windriver.com>
In-Reply-To: <56532285.409@windriver.com>
Accept-Language: pt-BR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [177.220.10.3]
MIME-Version: 1.0
X-Brightmail-Tracker: AAAAAQAAAUA=
Subject: Re: %pre scriptlet failed in Guestfish
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
X-List-Received-Date: Fri, 27 Nov 2015 11:56:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Mark,

Thanks for your attention.=20

In fact there's nothing in PRE script of the rpm that could cause the error=
, it just executes a 'exit 0'. I really don't know what can be the cause. M=
ore than this, why the error doesn't occur when running on a QEMU VM, just =
inside guestfish.

Regards,
Alexandre

-----Original Message-----
From: Mark Hatle [mailto:mark.hatle@windriver.com]=20
Sent: segunda-feira, 23 de novembro de 2015 12:28
To: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>; yo=
cto@yoctoproject.org
Subject: Re: [yocto] %pre scriptlet failed in Guestfish

On 11/23/15 6:39 AM, Alexandre Freire da Silva Osorio wrote:
> Hello,
>=20
> Running an image built with Yocto 1.8 in Guestfish I get the following er=
ror when trying to install a RPM package:

I don't know what Guestfish is.  But in these cases, the best way to handle=
 it is to us 'rpm -q --scriptlets <package>'

And then run the commands manually, in the same environment as RPM would ru=
n in, to verify failure modes.

> sh "cd /home/root; rpm -ivh --nodeps package.rpm"
> libguestfs: trace: sh "cd /home/root; rpm -ivh --nodeps package.rpm"
> guestfsd: error: error:   install: %pre scriptlet failed (2), skipping pa=
ckage.x86_64
> libguestfs: trace: sh =3D NULL (error)
> libguestfs: error: sh: error:   install: %pre scriptlet failed (2), skipp=
ing package.x86_64
>=20
> This error doesn't occur ehqne running the same image in QEMU. Please cou=
ld anyone give me a help?

The error above -appears- to indicate it tried to the 'sh', but there was n=
o 'sh' in your environment.

--Mark

> Thanks in advance.
>=20
> Regards,
> Alexandre
>=20


