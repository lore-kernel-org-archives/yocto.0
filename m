Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E36BDE00970; Thu, 27 Nov 2014 04:27:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 477D0E008EC
	for <yocto@yoctoproject.org>; Thu, 27 Nov 2014 04:26:54 -0800 (PST)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0158.001; Thu, 27 Nov 2014 13:26:49 +0100
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: disables SSLv3 in Python 2.7.3
Thread-Index: AdAKPVEuPd4c6geZSF+uV3iDLvholg==
Date: Thu, 27 Nov 2014 12:26:49 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E48257A9B0C@SESTOEX04.enea.se>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.142.231]
MIME-Version: 1.0
Subject: disables SSLv3 in Python 2.7.3
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
X-List-Received-Date: Thu, 27 Nov 2014 12:27:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

 I have applied the patch " python2.7-nossl3.patch" to the python recipes i=
n daisy, taken from:
 https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D768611=20

This patch makes SSLV3 support conditional: " ifndef OPENSSL_NO_SSL3". Does=
 anyone know where should I define "OPENSSL_NO_SSL3" symbol in order to dis=
ables SSLv3 in Python?=20

Thanks=20
-- Sona

