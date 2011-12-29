Return-Path: <B19537@freescale.com>
Received: from TX2EHSOBE007.bigfish.com (tx2ehsobe004.messaging.microsoft.com
	[65.55.88.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EB5BE006B5
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2011 02:09:34 -0800 (PST)
Received: from mail142-tx2-R.bigfish.com (10.9.14.251) by
	TX2EHSOBE007.bigfish.com (10.9.40.27) with Microsoft SMTP Server id
	14.1.225.23; Thu, 29 Dec 2011 10:09:10 +0000
Received: from mail142-tx2 (localhost [127.0.0.1])	by
	mail142-tx2-R.bigfish.com (Postfix) with ESMTP id CCAE65202CA;
	Thu, 29 Dec 2011 10:09:18 +0000 (UTC)
X-SpamScore: -9
X-BigFish: VS-9(zz9371I542M1432Nzz1202hzzz2dh2a8h668h839h8e2h8e3h944hbe9k61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail142-tx2 (localhost.localdomain [127.0.0.1]) by mail142-tx2
	(MessageSwitch) id 1325153358669402_11126;
	Thu, 29 Dec 2011 10:09:18 +0000 (UTC)
Received: from TX2EHSMHS006.bigfish.com (unknown [10.9.14.246])	by
	mail142-tx2.bigfish.com (Postfix) with ESMTP id 9C73680042;
	Thu, 29 Dec 2011 10:09:18 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS006.bigfish.com
	(10.9.99.106) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Thu, 29 Dec 2011 10:09:10 +0000
Received: from 039-SN2MPN1-023.039d.mgd.msft.net ([169.254.3.213]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0355.003; Thu, 29 Dec 2011 04:09:32 -0600
From: Luo Zhenhua-B19537 <B19537@freescale.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Query about how Yocto handles the bbclass file when it
	exists in multi-layers
Thread-Index: AczGDW1PnQCcx81dSr+NTU+jS+Lh0QAMueCAAAyIzJA=
Date: Thu, 29 Dec 2011 10:09:32 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A010BDDDC@039-SN2MPN1-023.039d.mgd.msft.net>
References: <CA452391058F6D4E9715FB2C29D9312A010BDDB3@039-SN2MPN1-023.039d.mgd.msft.net>
	<2207858.zQEpL41i6n@helios>
In-Reply-To: <2207858.zQEpL41i6n@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.208.114]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Query about how Yocto handles the bbclass file when it exists in multi-layers
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
X-List-Received-Date: Thu, 29 Dec 2011 10:09:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Thursday, December 29, 2011 5:41 PM
>
> > If one bbclass exists in multi-layers, which one will Yocto pick up?
> > It seems BBFILE_PRIORITY doesn't impact bbclass file.
>=20
> I believe for bbclass files it's the order in which the layers are listed=
 in
> your bblayers.conf.
>=20
> We could fix this,=20
[Luo Zhenhua-B19537] Thanks. the function is useful

> however I'm not sure we should be encouraging duplication of
> class files - people should ideally be getting their functionality into t=
he OE-
> Core classes and not just overlaying their own version of the class.
[Luo Zhenhua-B19537] Agree.=20


Best Regards,

Zhenhua


