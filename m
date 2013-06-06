Return-Path: <B19537@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe006.messaging.microsoft.com [216.32.180.189])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84A9BE0155A
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 23:48:46 -0700 (PDT)
Received: from mail42-co1-R.bigfish.com (10.243.78.234) by
	CO1EHSOBE036.bigfish.com (10.243.66.101) with Microsoft SMTP Server id
	14.1.225.23; Thu, 6 Jun 2013 06:48:45 +0000
Received: from mail42-co1 (localhost [127.0.0.1])	by mail42-co1-R.bigfish.com
	(Postfix) with ESMTP id 08AE29000D1	for <yocto@yoctoproject.org>;
	Thu,  6 Jun 2013 06:48:45 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 1
X-BigFish: VS1(zzda00hdc73hzz1f42h1ee6h1de0h1fdah1202h1e76h1d1ah1d2ah1fc6hzzz2dh2a8h668h839h8e2h8e3h944hd25hf0ah1220h1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h1ad9h1b0ah1d0ch1d2eh1d3fh1dc1h1dfeh1dffh1e1dhbe9i1155h)
Received: from mail42-co1 (localhost.localdomain [127.0.0.1]) by mail42-co1
	(MessageSwitch) id 1370501323183800_14560;
	Thu,  6 Jun 2013 06:48:43 +0000 (UTC)
Received: from CO1EHSMHS016.bigfish.com (unknown [10.243.78.251])	by
	mail42-co1.bigfish.com (Postfix) with ESMTP id 20E3848004D	for
	<yocto@yoctoproject.org>; Thu,  6 Jun 2013 06:48:43 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS016.bigfish.com
	(10.243.66.26) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 6 Jun 2013 06:48:42 +0000
Received: from 039-SN2MPN1-021.039d.mgd.msft.net ([169.254.1.137]) by
	039-SN1MMR1-005.039d.mgd.msft.net ([::1]) with mapi id 14.02.0328.011;
	Thu, 6 Jun 2013 06:49:58 +0000
From: Luo Zhenhua-B19537 <B19537@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Can Yocto run on host with other CPU types
Thread-Index: Ac5igd9+xX5mFZ2JT6aEWilowWIgcQ==
Date: Thu, 6 Jun 2013 06:48:15 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A0157EC80@039-SN2MPN1-021.039d.mgd.msft.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: dHg= AaGq AlkH A2Z8 BrSb EJFC FFhG FV5u GVAn Hohk IMIo
	IN76 IYyh JruF J5xR
	K+Vm; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {1FA3F682-DC56-47BA-99EE-A0563690D3F6};
	YgAxADkANQAzADcAQABmAHIAZQBlAHMAYwBhAGwAZQAuAGMAbwBtAA==; Thu,
	06 Jun 2013 06:48:38 GMT;
	QwBhAG4AIABZAG8AYwB0AG8AIAByAHUAbgAgAG8AbgAgAGgAbwBzAHQAIAB3AGkAdABoACAAbwB0AGgAZQByACAAQwBQAFUAIAB0AHkAcABlAHMA
x-cr-puzzleid: {1FA3F682-DC56-47BA-99EE-A0563690D3F6}
x-originating-ip: [10.192.208.134]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: Can Yocto run on host with other CPU types
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
X-List-Received-Date: Thu, 06 Jun 2013 06:48:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,=20

Except x86/x86-64 hosts, can Yocto support to run on hosts with other CPU a=
rch, e.g.  ARM, Powerpc, etc?


Best Regards,

Zhenhua


