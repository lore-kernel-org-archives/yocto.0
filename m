Return-Path: <bevenson@melinkcorp.com>
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2lp0238.outbound.protection.outlook.com [207.46.163.238])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 156D9E00C32
	for <yocto@yoctoproject.org>; Wed,  2 Apr 2014 14:03:14 -0700 (PDT)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB038.namprd05.prod.outlook.com (10.255.210.147) with Microsoft
	SMTP Server (TLS) id 15.0.908.10; Wed, 2 Apr 2014 21:03:08 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.8]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.238]) with mapi id
	15.00.0908.008; Wed, 2 Apr 2014 21:03:08 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: busybox: ifplugd link not removed on upgrade
Thread-Index: Ac9OtTFe5lHNxu6mRtq6Wr/hT0C8Gw==
Date: Wed, 2 Apr 2014 21:03:07 +0000
Message-ID: <24111711b8924262b11bfc22cf1aae60@BLUPR05MB037.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 0203DB4B006D380203DC98
x-originating-ip: [98.100.91.242]
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009001)(6009001)(428001)(189002)(199002)(164054003)(33646001)(76576001)(93516002)(74662001)(47446002)(76176001)(76796001)(76786001)(74502001)(77096001)(54316002)(85852003)(31966008)(94316002)(83072002)(65816001)(56816005)(98676001)(94946001)(47976001)(92566001)(79102001)(46102001)(56776001)(51856001)(74876001)(4396001)(74706001)(20776003)(49866001)(47736001)(74316001)(95666003)(83322001)(74366001)(93136001)(95416001)(54356001)(76482001)(50986001)(80022001)(90146001)(99286001)(87266001)(77982001)(53806001)(66066001)(59766001)(85306002)(81542001)(86362001)(63696002)(81816001)(69226001)(87936001)(2656002)(81686001)(81342001)(97186001)(97336001)(99396002)(80976001)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR05MB038;
	H:BLUPR05MB037.namprd05.prod.outlook.com;
	FPR:6E8BFC2F.4AF26D29.32C3979E.8465BEC3.2015F; MLV:sfv;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (: melinkcorp.com does not designate permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Subject: busybox: ifplugd link not removed on upgrade
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
X-List-Received-Date: Wed, 02 Apr 2014 21:03:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I'm on poky/dylan, and previously I had BusyBox configured to use ifplugd. =
 I am changing things around and I have removed the ifplugd configuration o=
ption.  When I upgraded Busybox on my target device, the /usr/bin/ifplugd s=
oft link stayed.  I verified that ifplugd is no longer listed in /etc/busyb=
ox.links.nosuid on my target device.  I'm assuming this means it may be an =
issue for any applet that I would remove from Busybox.

Has anyone else been seeing this issue?  Or, has there been a related fix u=
nder the master branch?  I did a quick look and I didn't see any obvious pa=
tches under Busybox.

Thanks,
Bryan Evenson

