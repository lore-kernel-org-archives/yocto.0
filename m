Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id E06EDE0030C
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 05:44:51 -0800 (PST)
Received: from SESTOEX09.enea.se ([fe80::cc12:dcdc:d521:97f8]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%21]) with mapi id
	14.01.0323.003; Wed, 7 Dec 2011 14:44:35 +0100
From: =?iso-8859-1?Q?David_Nystr=F6m?= <David.Nystrom@enea.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Variable locality too restricted.
Thread-Index: Acy05RmAyA7gXNsQSMymZKmerKcaXg==
Date: Wed, 7 Dec 2011 13:44:18 +0000
Message-ID: <88701C38B5D07249817D428430999C910B774261@sestoex09.enea.se>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.140.132]
MIME-Version: 1.0
Subject: Variable locality too restricted.
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
X-List-Received-Date: Wed, 07 Dec 2011 13:44:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi, =0A=
=0A=
I'm trying to create a setup for qemuppc.=0A=
=0A=
Goals:=0A=
core-image-minimal + virtual/kernel. =0A=
core-image-minimal + virtual/kernel with modified .config for debug flavour=
ed kernel.=0A=
=0A=
Problems:=0A=
PREFERRED_PROVIDER seems to be restricted to local.conf, distro and machine=
.=0A=
=0A=
Creating another machine for my debug flavored kernel feel wrong. creating =
a new distro even worse.=0A=
And I don't want 'sed' my local.conf files everytime I want to switch flavo=
rs.=0A=
=0A=
Possible solution:=0A=
The possibility to set PREFERRED_PROVIDER in image.bb would solve my proble=
m.=0A=
=0A=
Whats the right way to get this done ?=0A=
=0A=
Best Regards,=0A=
David=

