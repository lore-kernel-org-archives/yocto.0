Return-Path: <B11780@freescale.com>
Received: from DB3EHSOBE003.bigfish.com (db3ehsobe003.messaging.microsoft.com
	[213.199.154.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8177EE011B8
	for <yocto@yoctoproject.org>; Fri,  5 Aug 2011 05:50:21 -0700 (PDT)
Received: from mail64-db3-R.bigfish.com (10.3.81.247) by
	DB3EHSOBE003.bigfish.com (10.3.84.23) with Microsoft SMTP Server id
	14.1.225.22; Fri, 5 Aug 2011 12:50:27 +0000
Received: from mail64-db3 (localhost.localdomain [127.0.0.1])	by
	mail64-db3-R.bigfish.com (Postfix) with ESMTP id A6EA06B0206;
	Fri,  5 Aug 2011 12:50:27 +0000 (UTC)
X-SpamScore: 0
X-BigFish: VS0(zzzz1202hzz8275dhz2dh2a8h668h839h944h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 13,
Received: from mail64-db3 (localhost.localdomain [127.0.0.1]) by mail64-db3
	(MessageSwitch) id 1312548627609908_32519;
	Fri,  5 Aug 2011 12:50:27 +0000 (UTC)
Received: from DB3EHSMHS018.bigfish.com (unknown [10.3.81.241])	by
	mail64-db3.bigfish.com (Postfix) with ESMTP id 86BD87C8050;
	Fri,  5 Aug 2011 12:50:27 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS018.bigfish.com
	(10.3.87.118) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Fri, 5 Aug 2011 12:50:25 +0000
Received: from az33smr02.freescale.net (10.64.34.200) by
	039-SN1MMR1-003.039d.mgd.msft.net (10.84.1.16) with Microsoft SMTP
	Server id 14.1.289.8; Fri, 5 Aug 2011 07:50:24 -0500
Received: from [10.214.82.184] ([10.214.82.184])	by az33smr02.freescale.net
	(8.13.1/8.13.0) with ESMTP id p75CoMYZ022658;
	Fri, 5 Aug 2011 07:50:23 -0500 (CDT)
From: Kumar Gala <kumar.gala@freescale.com>
Date: Fri, 5 Aug 2011 07:50:24 -0500
Message-ID: <5EF017EC-CCFD-4040-9455-D022611ACD0E@freescale.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
MIME-Version: 1.0 (Apple Message framework v1084)
X-Mailer: Apple Mail (2.1084)
X-OriginatorOrg: freescale.com
X-Mailman-Approved-At: Wed, 10 Aug 2011 11:14:25 -0700
Cc: "yocto@yoctoproject.org list" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Use of git.pokylinux.org vs git.yoctoproject.org in kernel recipe.
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
X-List-Received-Date: Fri, 05 Aug 2011 12:50:22 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

In the linux-yocto_3.0.bb recipe we have:

meta/recipes-kernel/linux/linux-yocto_3.0.bb:SRC_URI =3D =
"git://git.pokylinux.org/linux-yocto-3.0;protocol=3Dgit;nocheckout=3D1;bra=
nch=3D${KBRANCH},meta;name=3Dmachine,meta"

Should this really be git.yoctoproject.org?

[ I think the sites might be interchangeable, but seems like being =
consistent is good.  With the name of the recipe being yocto, and with =
the 2.6.34. and 2.6.37 kernel recipes ]

---

There is a more general question if yoctoproject.org should be preferred =
over pokylinux.org

- k=


