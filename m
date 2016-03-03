Return-Path: <alexandre.osorio@eldorado.org.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1E9AE00B66; Thu,  3 Mar 2016 06:36:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1.eldorado.org.br (smtp1.eldorado.org.br [200.148.226.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 022E3E00B30
	for <yocto@yoctoproject.org>; Thu,  3 Mar 2016 06:36:22 -0800 (PST)
Received: from serv030.corp.eldorado.org.br (200.148.226.2) by
	smtp1.eldorado.org.br (200.148.226.10) with Microsoft SMTP Server (TLS)
	id 14.3.123.3; Thu, 3 Mar 2016 11:36:03 -0300
Received: from serv031.corp.eldorado.org.br (192.168.4.31) by
	serv030.corp.eldorado.org.br (192.168.4.30) with Microsoft SMTP Server
	(TLS) id 15.0.775.38; Thu, 3 Mar 2016 11:36:07 -0300
Received: from serv031.corp.eldorado.org.br ([fe80::c032:7018:83d3:b1e3]) by
	serv031.corp.eldorado.org.br ([fe80::c032:7018:83d3:b1e3%14]) with mapi
	id 15.00.0775.031; Thu, 3 Mar 2016 11:36:07 -0300
From: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] exception using rpm 4.11.2
Thread-Index: AdF1UDeIDtGBaKs1R9C/NrDJitVhxAACV1BQ
Date: Thu, 3 Mar 2016 14:36:07 +0000
Message-ID: <0774d5ed3403475586fcafce6b0a7055@serv031.corp.eldorado.org.br>
References: <898ae2730efb41d8befe307151fa29e5@serv031.corp.eldorado.org.br>
In-Reply-To: <898ae2730efb41d8befe307151fa29e5@serv031.corp.eldorado.org.br>
Accept-Language: pt-BR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [177.220.10.3]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAC+NgFjrNIsWRWlGSWpSXmKPExsVyYsojJt3L3jfCDKbuv32U1WLSyzVsDowe7Sf62AIYo1gz85LyKxJYM75PPcVYsIKzYvXsU0wNjE/Zuxi5OIQEdjBKrDy8nBXC2cso8fHMAjYI5xSjxIb/64EcTg42AU+J62/bmEFsEQFTiRfHvoDFhQX0JVZ3P2OBiBtIPDm3lxHCNpJ4+LCbHcRmEVCRaPv8DCzOK+At0fO6H8wWArJfHZkPZnMK+EhsPngCbCajgKzE3D97wXqZBcQlbj2ZzwRiSwhoS2x/tY8VwtaR2HRtFQuE7Szx8/1bZghbQGLJnvNQtpJE7+13UL2iEi8f/4Pq1ZXYemcy0HwOIDtQYs5EE4iwqcSbJZegRtpKnFj7lxlm/I+tN6Ba5SX+37sPVeMgcePQe6gaBYkDz75CrQqQ+LHgF1R9sMT/x4vYIOxyieOrdjPDxK9Pesw4gdFkFpIvIWw9iRtTp7BB2NoSyxa+Zp4FDjlBiZMzn7AsYGRZxShVnFtSYKiXnF9UoJeak5JflJiSr5dflK6XVLSJEZIguHYwXljtfoiRiYPzFqM0xwEmIY60xOKSgsTiYiGWvPy8VClowpFqYExY2CM25z2fkI7lZLMdzQkik/e7fuss7Dn06p7CLi+13lvvffzvddpV/hT2m/PSxvb6wYOc/BVKPu4bLcPjvcuDN8ZN3XhBQt76C5eT26l3q1se8a68nWjF23mZK/Of6LTYQ/eznN4X6J5vNPgwP8CC5+WSo5OvXw63v/t8Qe6bmg1PI25KfFJiKc5INNRiLipOBAD1k3T93gIAAA==
Subject: Re: exception using rpm 4.11.2
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
X-List-Received-Date: Thu, 03 Mar 2016 14:36:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

If I delete and rebuild the rpm DB (rpm --rebuilddb), the error doesn't occ=
ur, but this must not be the default behavior.


-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Alexandre Freire da Silva Osorio
Sent: quinta-feira, 3 de mar=E7o de 2016 10:28
To: yocto@yoctoproject.org
Subject: [yocto] exception using rpm 4.11.2

Hi,

When trying to install a rpm inside a qemux86-64 machine (core-image-lsb), =
I got this error:

root@qemux86-64:~# rpm -ivh apacheds-2.0.0-M20-x86_64.rpm
warning: apacheds-2.0.0-M20-x86_64.rpm: Header V4 DSA/SHA1 Signature, key I=
D 99aede43: NOKEY
traps: rpm[1059] trap divide error ip:7fa07488caae sp:7fff5f7c6af0 error:0 =
in librpm.so.3.2.1[7fa074871000+5d000]
Floating point exception

root@qemux86-64:~# rpm --version
RPM version 4.11.2

The rpm recipe used is the Jethro one.

This error doesn't happen if I choose rpm 5.4 (from rpm5.org).


Please any help on this?

Thanks in advance.


Alexandre
--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

