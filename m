Return-Path: <tocallaghan@meyn.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe003.messaging.microsoft.com [216.32.180.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C78A8E01300
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 01:39:41 -0700 (PDT)
Received: from mail41-va3-R.bigfish.com (10.7.14.239) by
	VA3EHSOBE004.bigfish.com (10.7.40.24) with Microsoft SMTP Server id
	14.1.225.23; Wed, 17 Oct 2012 08:39:40 +0000
Received: from mail41-va3 (localhost [127.0.0.1])	by mail41-va3-R.bigfish.com
	(Postfix) with ESMTP id 74F043C0173	for <yocto@yoctoproject.org>;
	Wed, 17 Oct 2012 08:39:40 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:157.56.252.37; KIP:(null); UIP:(null); IPV:NLI;
	H:DB3PRD0510HT002.eurprd05.prod.outlook.com; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: PS0(zzzz1202h1d1ah1d2ahzz8275bhz2fh2a8h668h839h944hd25hf0ah107ah1220h1288h12a5h12a9h12bdh137ah13b6h1441h1155h)
Received-SPF: pass (mail41-va3: domain of meyn.com designates 157.56.252.37 as
	permitted sender) client-ip=157.56.252.37;
	envelope-from=tocallaghan@meyn.com;
	helo=DB3PRD0510HT002.eurprd05.prod.outlook.com ; .outlook.com ; 
Received: from mail41-va3 (localhost.localdomain [127.0.0.1]) by mail41-va3
	(MessageSwitch) id 1350463178659722_28961;
	Wed, 17 Oct 2012 08:39:38 +0000 (UTC)
Received: from VA3EHSMHS036.bigfish.com (unknown [10.7.14.244])	by
	mail41-va3.bigfish.com (Postfix) with ESMTP id 8BF6E6008F	for
	<yocto@yoctoproject.org>; Wed, 17 Oct 2012 08:39:38 +0000 (UTC)
Received: from DB3PRD0510HT002.eurprd05.prod.outlook.com (157.56.252.37) by
	VA3EHSMHS036.bigfish.com (10.7.99.46) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Wed, 17 Oct 2012 08:39:37 +0000
Received: from DB3PRD0510MB368.eurprd05.prod.outlook.com ([169.254.4.215]) by
	DB3PRD0510HT002.eurprd05.prod.outlook.com ([10.255.46.37]) with mapi
	id 14.16.0224.004; Wed, 17 Oct 2012 08:39:37 +0000
From: Tim O'Callaghan <tocallaghan@meyn.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to avoid re-creating a recipe  (+my meta-bucket approach)
Thread-Index: Ac2sQxG4JD5ZnH3qRQmZP5rGaI+kXQ==
Date: Wed, 17 Oct 2012 08:39:36 +0000
Message-ID: <12F9B0C37BAC49429468AA27112A5F5B37B94DF4@DB3PRD0510MB368.eurprd05.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [93.154.102.135]
MIME-Version: 1.0
X-OriginatorOrg: meyn.com
Subject: How to avoid re-creating a recipe (+my meta-bucket approach)
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
X-List-Received-Date: Wed, 17 Oct 2012 08:39:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

After seeing the lmsensors thread float by I thought it about time I starte=
d the discussion on how people manage to avoid re-inventing recipes, and to=
 get the ball rolling, I thought I would describe mine.

As I do not have the any idea what recipes may be kicking about, I devised =
what I call the meta-bucket approach. It is pretty simple, I have a script =
that clones every existing OE/Yocto repository I know about into one easily=
 grep-able place[1].=20

The to the main question, how are others managing this?

Best regards,

Tim.
[1] https://github.com/timoc/meta-bucket


