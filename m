Return-Path: <B29882@freescale.com>
Received: from AM1EHSOBE005.bigfish.com (am1ehsobe005.messaging.microsoft.com
	[213.199.154.208])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1C8A04C800A3
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 16:23:50 -0500 (CDT)
Received: from mail18-am1-R.bigfish.com (10.3.201.249) by
	AM1EHSOBE005.bigfish.com (10.3.204.25) with Microsoft SMTP Server id
	14.1.225.22; Fri, 15 Jul 2011 21:23:49 +0000
Received: from mail18-am1 (localhost.localdomain [127.0.0.1])	by
	mail18-am1-R.bigfish.com (Postfix) with ESMTP id 14F19D080A4	for
	<yocto@yoctoproject.org>; Fri, 15 Jul 2011 21:23:50 +0000 (UTC)
X-SpamScore: 0
X-BigFish: VS0(zzzz1202hzz8275dhz2dh2a8h668h839h8e2h8e3h64h)
X-Spam-TCS-SCL: 3:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail18-am1 (localhost.localdomain [127.0.0.1]) by mail18-am1
	(MessageSwitch) id 1310765029856150_29709;
	Fri, 15 Jul 2011 21:23:49 +0000 (UTC)
Received: from AM1EHSMHS008.bigfish.com (unknown [10.3.201.250])	by
	mail18-am1.bigfish.com (Postfix) with ESMTP id CD4C125804B	for
	<yocto@yoctoproject.org>; Fri, 15 Jul 2011 21:23:49 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS008.bigfish.com
	(10.3.207.108) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Fri, 15 Jul 2011 21:23:49 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.218]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0289.008; Fri, 15 Jul 2011 16:23:48 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: pseudo issue on CentOS5
Thread-Index: AQHMQzV7PVcKPn8YX02CK8aui+9v7Q==
Date: Fri, 15 Jul 2011 21:23:47 +0000
Message-ID: <CAEsOVNdmyZSK2rv2+2zAQXpf8Txz_3=v62NZ85pO-D7esChwCQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-Mailman-Approved-At: Tue, 19 Jul 2011 09:20:39 -0500
Subject: pseudo issue on CentOS5
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 Jul 2011 21:23:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <360B1D132F0F2C4E8DFCD536B220DAFE@freescale.net>
Content-Transfer-Encoding: quoted-printable

This bug: http://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1177 only
occurs on my CentOS 5 boxes (not on my Fedora 13 box). I have
determined that this git patch
4b66ce472871618cfe4761861392b7f9c3c265b0 is causing the problem.
Reverting the patch fixes this.

Still looking at this more but I thought I would share this with
everyone and see if anyone has a more specific reason why this is
happening.

-M=


