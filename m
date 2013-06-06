Return-Path: <pkonopel@visteon.com>
Received: from db9outboundpool.messaging.microsoft.com
	(mail-db9lp0251.outbound.messaging.microsoft.com [213.199.154.251])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3242BE0156A
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2013 06:32:54 -0700 (PDT)
Received: from mail107-db9-R.bigfish.com (10.174.16.243) by
	DB9EHSOBE002.bigfish.com (10.174.14.65) with Microsoft SMTP Server id
	14.1.225.23; Thu, 6 Jun 2013 13:32:53 +0000
Received: from mail107-db9 (localhost [127.0.0.1])	by
	mail107-db9-R.bigfish.com (Postfix) with ESMTP id 3FEF33E0091;
	Thu,  6 Jun 2013 13:32:53 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:157.56.250.101; KIP:(null); UIP:(null);
	IPV:NLI; H:AMXPRD0611HT002.eurprd06.prod.outlook.com; RD:none;
	EFVD:NLI
X-SpamScore: -1
X-BigFish: PS-1(zzc89bh1432Izz1f42h1ee6h1de0h1fdah1202h1e76h1d1ah1d2ah1fc6hzz8275bh8275dhz2fh2a8h668h839h947hd25hf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h19ceh1ad9h1b0ah1d07h1d0ch1d2eh1d3fh1dc1h1de9h1dfeh1dffh1e1dh1155h)
Received-SPF: pass (mail107-db9: domain of visteon.com designates
	157.56.250.101 as permitted sender) client-ip=157.56.250.101;
	envelope-from=pkonopel@visteon.com;
	helo=AMXPRD0611HT002.eurprd06.prod.outlook.com ; .outlook.com ; 
Received: from mail107-db9 (localhost.localdomain [127.0.0.1]) by mail107-db9
	(MessageSwitch) id 1370525571193471_26982;
	Thu,  6 Jun 2013 13:32:51 +0000 (UTC)
Received: from DB9EHSMHS017.bigfish.com (unknown [10.174.16.236])	by
	mail107-db9.bigfish.com (Postfix) with ESMTP id 2A68D2E004B;
	Thu,  6 Jun 2013 13:32:51 +0000 (UTC)
Received: from AMXPRD0611HT002.eurprd06.prod.outlook.com (157.56.250.101) by
	DB9EHSMHS017.bigfish.com (10.174.14.27) with Microsoft SMTP Server
	(TLS) id 14.16.227.3; Thu, 6 Jun 2013 13:32:50 +0000
Received: from AMXPRD0611MB598.eurprd06.prod.outlook.com ([169.254.3.17]) by
	AMXPRD0611HT002.eurprd06.prod.outlook.com ([10.242.11.163]) with mapi
	id 14.16.0311.000; Thu, 6 Jun 2013 13:32:49 +0000
From: "Konopelko, Pavel (P.)" <pkonopel@visteon.com>
To: "fahad_usman@mentor.com" <fahad_usman@mentor.com>
Thread-Topic: [yocto] [meta-ivi][PATCH] packagegroups: restructure the
	yocto-ivi PGs
Thread-Index: Ac5itaw5/JVDSoIZRumHRkXD3JnlqQ==
Date: Thu, 6 Jun 2013 13:32:48 +0000
Message-ID: <1A73FAC9AA3F824C856F2F0A9589EBDA2DFD6DE0@AMXPRD0611MB598.eurprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [91.212.132.117]
MIME-Version: 1.0
X-OriginatorOrg: visteon.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-ivi][PATCH] packagegroups: restructure the yocto-ivi PGs
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
X-List-Received-Date: Thu, 06 Jun 2013 13:32:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Fahad,

> Date: Thu,  6 Jun 2013 09:54:01 +0500
> From: Fahad Usman <fahad_usman@mentor.com>
> To: yocto@yoctoproject.org
> Subject: [yocto][meta-ivi][PATCH] packagegroups: restructure the
> yocto-ivi PGs
> Message-ID: <1370494441-20953-1-git-send-email-fahad_usman@mentor.com>
>=20
> with the current implementation of packagegroups, it's not clear
> how a particular recipe map to the GENIVI baseline document.
>=20
> this scheme remove confusion about which packagegroup a certain
> recipe belong to. And provide guidance to the customers about
> modifying the image. For instance customers should be careful about
> replacing specific-p1 components if they wish to maintain GENIVI
> compliance.
[...]

It is correct that GENIVI compliance differentiates the components on two p=
roperties (two priorities and three types).  However, I would assert that n=
ot all of the resulting 6 combinations are really relevant for the meta-ivi=
 implementation.

Personally, I would say that from the implementer perspective two things re=
ally matter: (1) the component priority and (2) the possibility to exchange=
 component's implementation.  (1) is already reflected by the existing pack=
agegroups (-core-p1 and -core-p2).  For (2), abstract and placeholder compo=
nents can be treated the same way (since they both allow to freely choose t=
he implementation).  These would leave us with 4 different categories (inst=
ead of 6 as proposed).  For naming purposes I would suggest something like =
'-p1/p2-fixed/variable' (although I must admit that these names do not yet =
feel 100% right).

There is an additional complication to be considered.  In some cases, compo=
nents with different priority/variability (and therefore belonging to diffe=
rent packagegroups) are produced from the same source tree.  For example Au=
dioManager comes with the daemon and default plug-in.  However, while the d=
aemon is P1/specific, the plug-ins are P2/abstract.


Regards,
--Pavel Konopelko

Visteon Innovation & Technology GmbH
Sitz der Gesellschaft/Place of Business: Kerpen
Registergericht: K=F6ln HRB 71036
Gesch=E4ftsf=FChrung/Management Board: Christian Feltgen=20


