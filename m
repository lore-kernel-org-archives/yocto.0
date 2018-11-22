Return-Path: <stephen.lawrence@renesas.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E257DE00C31; Fri, 23 Nov 2018 00:15:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.141.91 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 10780 seconds by postgrey-1.32 at yocto-www;
	Fri, 23 Nov 2018 00:15:36 PST
Received: from JPN01-OS2-obe.outbound.protection.outlook.com
	(mail-eopbgr1410091.outbound.protection.outlook.com [40.107.141.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96E2BE00566
	for <yocto@yoctoproject.org>; Fri, 23 Nov 2018 00:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=renesasgroup.onmicrosoft.com; s=selector1-renesas-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=ZZ4v0euJ5aDatSIRSWV24cRiuZuJXa5AKu6s1A3qeqM=;
	b=EqH9SW9Xdmo9CPSNbLCCR9fkRnAw0i79kl0WC1sGsStr3jd406qvuNhwOPoE/UWwNQ6hX7P6y8BdV0Xtz/bBzXHdsrHSk78PCJ9lDUI5aObTTTSu8pGdROjcMtUhgOJmCzoPblyaH3FxuCJiUTYre3DQGeATlPQH2wtx1Xe5r/0=
Received: from TYAPR01MB2031.jpnprd01.prod.outlook.com (52.133.179.12) by
	TYAPR01MB1917.jpnprd01.prod.outlook.com (52.133.176.142) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1339.21; Thu, 22 Nov 2018 16:42:07 +0000
Received: from TYAPR01MB2031.jpnprd01.prod.outlook.com
	([fe80::e0e3:d0dd:e5fc:5260]) by
	TYAPR01MB2031.jpnprd01.prod.outlook.com
	([fe80::e0e3:d0dd:e5fc:5260%2]) with mapi id 15.20.1361.016;
	Thu, 22 Nov 2018 16:42:07 +0000
From: Stephen Lawrence <stephen.lawrence@renesas.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Yocto layers missing thud branches
Thread-Index: AQHUftBlO5g4maX9YU20EnLPtKTV5aVcBeUQ
Date: Thu, 22 Nov 2018 16:42:07 +0000
Message-ID: <TYAPR01MB2031734C4638E9CC702BA98192DB0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
References: <545a7e8a-5ccd-c8b8-6b88-0b6f1723f794@gmail.com>
In-Reply-To: <545a7e8a-5ccd-c8b8-6b88-0b6f1723f794@gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=stephen.lawrence@renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TYAPR01MB1917;
	20:TmziDMTHWOgv/RuZEnWzcctsle5QrwZ2Lb1VIXu7IynbDT2kiQTtSEyzV9JnrDIXZ2LrErpnoqZyZJ3aw0elaNhrIjrf6jssrU2wF/CJ9Uxzg8SRUagChze0A00QgMyNsoho72XryVlSDJAfHZHq2U7O7iYpSu9LId5wUh0LCSQ=
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 668507cd-bc80-4916-f2f3-08d650997101
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390098)(7020095)(4652040)(8989299)(5600074)(711020)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:TYAPR01MB1917; 
x-ms-traffictypediagnostic: TYAPR01MB1917:
x-microsoft-antispam-prvs: <TYAPR01MB1917BCD7CAC1DAD0FD027C4492DB0@TYAPR01MB1917.jpnprd01.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3231442)(944501410)(52105112)(93006095)(93001095)(3002001)(10201501046)(6055026)(148016)(149066)(150057)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123562045)(20161123558120)(20161123564045)(201708071742011)(7699051)(76991095);
	SRVR:TYAPR01MB1917; BCL:0; PCL:0; RULEID:; SRVR:TYAPR01MB1917; 
x-forefront-prvs: 0864A36BBF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(136003)(366004)(396003)(346002)(39840400004)(376002)(13464003)(189003)(199004)(486006)(25786009)(99286004)(5660300001)(8936002)(86362001)(2906002)(476003)(2900100001)(44832011)(7696005)(71190400001)(71200400001)(97736004)(106356001)(478600001)(66066001)(76176011)(2351001)(105586002)(33656002)(26005)(6916009)(74316002)(14454004)(6506007)(6306002)(81166006)(1730700003)(81156014)(53936002)(186003)(2501003)(6116002)(316002)(55016002)(9686003)(6246003)(8676002)(68736007)(6436002)(3846002)(53546011)(11346002)(7736002)(446003)(5640700003)(229853002)(102836004)(256004)(305945005)(966005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB1917;
	H:TYAPR01MB2031.jpnprd01.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: ZPfdkuC2mwwIw5nf9+J+7teOGGPe1LSVt6UJAFzDhjrIUyXTn811OzpUaeUbjtUmYP1f8tGpQubuG6gPE9LN25j23mRIZJDhszn51UtR9tET8cpg1i83GPteBynilv+obBP8cJUI/kaKdyJATlX5ELUnBH/rfdOjwyiK7slYjcnCMWlhVhqcQ01Aw8sTf/NeNpTUBzbsR8xLiCqjmNS/bDNnP/K9b8wdjfOR0lDFWjRd5rMRF7cETgGupfy/Y3a/6jixBSg+O5xQ2KbsVPpVXa3Du2fW1iCzIyoxK32wEv5LCIcM2iISZ+OU+2yOP241rBVYgTVxfwBKUguunaOrwf9L9sfXyWLoEDNkzX3c5Fk=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 668507cd-bc80-4916-f2f3-08d650997101
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2018 16:42:07.1612 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB1917
Subject: Re: Yocto layers missing thud branches
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
X-List-Received-Date: Fri, 23 Nov 2018 08:15:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> On =
Behalf
> Of akuster808
> Sent: 17 November 2018 23:50
> To: yocto@yoctoproject.org
> Subject: [yocto] Yocto layers missing thud branches
>=20
> Can the maintainers of meta-qt3, meta-qt4, meta-selinux, and meta-cgl
> please add a "Thud" branch
>=20
> kind regards,
> Armin

Anyone looking for Thud support for the automotive IVI layer meta-ivi [1]
can find it on the master branch. That is the working branch ahead of the n=
ext
major meta-ivi release early next year, which will be based on Thud.

[1] https://git.yoctoproject.org/cgit/cgit.cgi/meta-ivi/

Regards

Steve

