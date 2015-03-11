Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A290EE00777; Wed, 11 Mar 2015 01:06:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 04936E00754;
	Wed, 11 Mar 2015 01:06:21 -0700 (PDT)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0224.002; Wed, 11 Mar 2015 09:06:16 +0100
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: "yocto-security@yoctoproject.org" <yocto-security@yoctoproject.org>
Thread-Topic: bind: issue in trust anchor management can cause named to
	crash  (CVE-2015-1349)
Thread-Index: AdBb0d/BmvBynuR+R2eatMXoCPv4/w==
Date: Wed, 11 Mar 2015 08:06:15 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E48258AD7F4@SESTOEX04.enea.se>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.142.231]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: bind: issue in trust anchor management can cause named to crash (CVE-2015-1349)
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
X-List-Received-Date: Wed, 11 Mar 2015 08:06:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Affects version 9.7.0 - 9.10.1-P1. In master we use bind 9.9.5.


// Sona=20

