Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE001.bigfish.com (tx2ehsobe001.messaging.microsoft.com
	[65.55.88.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B12AE006B0
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 12:01:41 -0800 (PST)
Received: from mail157-tx2-R.bigfish.com (10.9.14.241) by
	TX2EHSOBE001.bigfish.com (10.9.40.21) with Microsoft SMTP Server id
	14.1.225.23; Thu, 8 Dec 2011 20:01:26 +0000
Received: from mail157-tx2 (localhost [127.0.0.1])	by
	mail157-tx2-R.bigfish.com (Postfix) with ESMTP id C00D64C0588	for
	<yocto@yoctoproject.org>; Thu,  8 Dec 2011 20:01:38 +0000 (UTC)
X-SpamScore: -7
X-BigFish: VS-7(zz14ffOzz1202hzz8275dhz2dh2a8h668h839h8e2h8e3h64h)
X-Spam-TCS-SCL: 3:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail157-tx2 (localhost.localdomain [127.0.0.1]) by mail157-tx2
	(MessageSwitch) id 1323374498615736_17674;
	Thu,  8 Dec 2011 20:01:38 +0000 (UTC)
Received: from TX2EHSMHS044.bigfish.com (unknown [10.9.14.242])	by
	mail157-tx2.bigfish.com (Postfix) with ESMTP id 78163320230	for
	<yocto@yoctoproject.org>; Thu,  8 Dec 2011 20:01:38 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS044.bigfish.com
	(10.9.99.144) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 8 Dec 2011 20:01:22 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.83]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0339.002; Thu, 8 Dec 2011 14:01:35 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: meta-oe branch for edison?
Thread-Index: AQHMteQwytOI18ogW0meDZb20Uyq2Q==
Date: Thu, 8 Dec 2011 20:01:35 +0000
Message-ID: <CAEsOVNeYZ4hwvV8dXMadkzchyA_nRHeZ63_s-XgJBzaEymUKdg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: meta-oe branch for edison?
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
X-List-Received-Date: Thu, 08 Dec 2011 20:01:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <FEEA881C77ED5040B96018F5FD0FF00B@freescale.net>
Content-Transfer-Encoding: quoted-printable

Hi all,

Can we create a meta-oe repo in git.yoctoproject.org? I'd like to also
create a branh within the repo that tracks a valid version of the repo
for specific Yocto releases.

(I can add that in my investigation so far -
f78f3f31c06c669006fcb567c8f503d4dbec68da looks like a good starting
commit for edison)

-M=


