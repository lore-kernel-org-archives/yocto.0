Return-Path: <Edmund.Nadolski@microsoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F4CEE00C71; Thu,  7 Mar 2019 07:26:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.78.132 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 46909 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Mar 2019 07:26:47 PST
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-eopbgr780132.outbound.protection.outlook.com [40.107.78.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B57DE00A0C
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2019 07:26:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=bxw3H41fkzJzFlrldBg7jtNZFwSJ+/TViwbN9gcWbpE=;
	b=B+LQFcX3Lf+X0Z+aqxSxZ+mWIUDCNEW9rcJRItbBrs8RY4AyQ7yqVuApA7rtIu+N0G4gvDNAVEL20dFCpdN7wk9k9EWIV1RtNyURvSOEtw6E2OrYWC0Zaxv9NGPmOmvUEHV2WPGxUer6WCFKiyF3Mr0q2+ztPoqzd6N433R4iEU=
Received: from MWHPR21MB0766.namprd21.prod.outlook.com (10.173.51.20) by
	MWHPR21MB0191.namprd21.prod.outlook.com (10.173.52.137) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1709.3; Wed, 6 Mar 2019 19:51:39 +0000
Received: from MWHPR21MB0766.namprd21.prod.outlook.com
	([fe80::8925:2cdb:9b72:cd95]) by
	MWHPR21MB0766.namprd21.prod.outlook.com
	([fe80::8925:2cdb:9b72:cd95%13]) with mapi id 15.20.1709.005;
	Wed, 6 Mar 2019 19:51:39 +0000
From: Edmund Nadolski <Edmund.Nadolski@microsoft.com>
To: Edmund Nadolski <Edmund.Nadolski@microsoft.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: SRC_URI when there is a local mirror but no remote repo
Thread-Index: AdTO77EJ7mvIhJVfQI6JwZhq3mbTHAFZeCkg
Date: Wed, 6 Mar 2019 19:51:39 +0000
Message-ID: <MWHPR21MB076694812B1F6F66A7805392E5730@MWHPR21MB0766.namprd21.prod.outlook.com>
References: <MWHPR21MB07666F341A64E2B2553E5927E5740@MWHPR21MB0766.namprd21.prod.outlook.com>
In-Reply-To: <MWHPR21MB07666F341A64E2B2553E5927E5740@MWHPR21MB0766.namprd21.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=ednadols@microsoft.com;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-02-27T22:59:56.8028965Z;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft	Azure
	Information Protection;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=fc5bed99-6b9a-48d9-af85-188a98d90330;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
x-originating-ip: [50.35.12.119]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a8136a1f-3164-45c2-5961-08d6a26d2643
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(5600127)(711020)(4605104)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
	SRVR:MWHPR21MB0191; 
X-MS-TrafficTypeDiagnostic: MWHPR21MB0191:|MWHPR21MB0191:|MWHPR21MB0191:|MWHPR21MB0191:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MWHPR21MB0191EE7F4CE53275446DCEFCE5730@MWHPR21MB0191.namprd21.prod.outlook.com>
x-forefront-prvs: 0968D37274
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(376002)(136003)(366004)(346002)(39860400002)(478694002)(13464003)(189003)(199004)(22452003)(316002)(5660300002)(6116002)(3846002)(99286004)(81156014)(86362001)(66066001)(486006)(10290500003)(53546011)(476003)(81166006)(966005)(11346002)(446003)(186003)(8990500004)(110136005)(52536013)(256004)(26005)(76176011)(14454004)(6346003)(7736002)(71200400001)(71190400001)(1511001)(6506007)(305945005)(8676002)(72206003)(478600001)(102836004)(86612001)(8936002)(55016002)(105586002)(6436002)(106356001)(53936002)(7696005)(74316002)(10090500001)(229853002)(9686003)(68736007)(6306002)(6246003)(2501003)(2906002)(33656002)(25786009)(97736004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR21MB0191;
	H:MWHPR21MB0766.namprd21.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Edmund.Nadolski@microsoft.com; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BsKFE8cJqmFAhPtGo5hNBOnCKzre+az3bJfjXStkZA0XsnJoW1v0oNsmvn9L24ygiggb7f2gAL+6lQlzZ2jVF9A7me804DSSbM4o8Hln/DanDnJ25pHVwIdpyxBk7KZi04SwcYUrX1ukdu0KcocDwrsl+s/BytYze5G6FqNqicVPjTL6RWAwALafc70fWfFCQddjVC635xRrD1EvJ9j/lmq49h0qplinA7oqEtssGqIkwimy5dM9hYZRVztNI12hX3TTgLIT+cn16VSdhw5Yl+Vqomwik0JWFmZYnd3ihmM1r35A2N62HH+Zp6claKrinaFt0bQ0nZm4/7/RS4dLjwi58r+OwVqMGkw6JkQtX3YmlY7gitgPf65R06+94kDS6VWUK1GKM6zzOXlPHrc9uaF48CzpsJZuPHnepNHsrvA=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a8136a1f-3164-45c2-5961-08d6a26d2643
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2019 19:51:39.4711 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR21MB0191
X-OriginatorOrg: microsoft.com
Subject: Re: SRC_URI when there is a local mirror but no remote repo
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
X-List-Received-Date: Thu, 07 Mar 2019 15:26:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Friendly ping, any thoughts on this?

One thing I have noted - without the remote url, bitbake will not link the =
file into DL_DIR or create a *.done file for it.

TIA,
Ed

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org>
> On Behalf Of Edmund Nadolski
> Sent: Wednesday, February 27, 2019 3:00 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] SRC_URI when there is a local mirror but no remote repo
>=20
> Hi,
>=20
> Does Yocto/Bitbake support a way to set SRC_URI in a recipe when there is
> no corresponding upstream remote (git://, https://, etc.) for a *.tar.gz =
file?
> IOW, I've configured for own_mirrors and set BB_NO_NETWORK=3D1, and my
> *.tar.gz file only lives in the local_mirror directory.
>=20
> It looks to me like file:// thinks that the file always lives under ${S}.
>=20
> TIA,
> Ed
>=20
> ...
> # functional workaround
> SRC_URI =3D " http://some.example.com/example-1.0.0.src.tar.gz"
> ...
>=20
> do_unpack () {
>         # Unpack straight from the local mirror since there is no remote
>         tar xzf ${TOPDIR}/../local_mirror/example-1.0.0.src.tar.gz -C ${S=
}
>=20
> do_install () {
>         install -d ${D}/${MY_DIR}
>         install -m 0744 ${S}/example/example.sh ${D}/${MY_DIR}
>=20
> --

