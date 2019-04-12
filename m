Return-Path: <patrick.schneider@bhtronik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03595E00BCE; Sat, 13 Apr 2019 12:26:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.3.77 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 126647 seconds by postgrey-1.32 at yocto-www;
	Sat, 13 Apr 2019 12:26:15 PDT
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
	(mail-eopbgr30077.outbound.protection.outlook.com [40.107.3.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23C37E00BAF
	for <yocto@yoctoproject.org>; Sat, 13 Apr 2019 12:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bhtronik.onmicrosoft.com; s=selector1-bhtronik-de;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=fPrmzE7lfkNm8Onw0f/93eRDNXNmdoSDy6IE3WlCvtc=;
	b=QlVCMZx9d4e9VM1oYi7HqdCzpspyQZA3m2B+90ZJXf/AjhlgL7MG6osyoyHHGQwb5wpbYXCxNqhjbEgfIuecjElXD9gDYGi0PB3N8ZCU/w4wPZ9Hj8m4HcAlUOHji23F2VTuln/qiS8U2kIUkc/vxsKSK8e89iAVUXBcNIjaFnM=
Received: from AM0PR08MB3842.eurprd08.prod.outlook.com (20.178.82.148) by
	AM0PR08MB3762.eurprd08.prod.outlook.com (20.178.22.89) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1792.16; Fri, 12 Apr 2019 07:42:16 +0000
Received: from AM0PR08MB3842.eurprd08.prod.outlook.com
	([fe80::f527:5457:eaef:a905]) by
	AM0PR08MB3842.eurprd08.prod.outlook.com
	([fe80::f527:5457:eaef:a905%2]) with mapi id 15.20.1792.016;
	Fri, 12 Apr 2019 07:42:16 +0000
From: Patrick Schneider <patrick.schneider@bhtronik.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Compiling on target - building buildessentials error
Thread-Index: AdTxArUQOr/O55+IQH6rvnXenVPT6g==
Date: Fri, 12 Apr 2019 07:42:16 +0000
Message-ID: <AM0PR08MB384222BB52BB6A610551BC11EB280@AM0PR08MB3842.eurprd08.prod.outlook.com>
Accept-Language: de-DE, en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=patrick.schneider@bhtronik.de; 
x-originating-ip: [188.195.186.119]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d27aadb9-d08d-4d06-20d2-08d6bf1a628f
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600139)(711020)(4605104)(2017052603328)(7193020);
	SRVR:AM0PR08MB3762; 
X-MS-TrafficTypeDiagnostic: AM0PR08MB3762:|AM0PR08MB3762:|AM0PR08MB3762:|AM0PR08MB3762:
x-microsoft-antispam-prvs: <AM0PR08MB376272DDD3D1824A3980AE1CEB280@AM0PR08MB3762.eurprd08.prod.outlook.com>
x-forefront-prvs: 0005B05917
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(396003)(136003)(366004)(39830400003)(346002)(199004)(189003)(71190400001)(68736007)(9686003)(305945005)(105586002)(102836004)(33656002)(74482002)(99286004)(7696005)(81156014)(14454004)(1730700003)(6436002)(106356001)(6916009)(53936002)(81166006)(74316002)(486006)(44832011)(256004)(7736002)(14444005)(2351001)(5660300002)(8676002)(6506007)(52536014)(2501003)(3846002)(66066001)(5640700003)(186003)(25786009)(97736004)(71200400001)(6116002)(476003)(86362001)(55016002)(26005)(4744005)(316002)(75402003)(2906002)(508600001)(8936002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB3762;
	H:AM0PR08MB3842.eurprd08.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: bhtronik.de does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kWuHz/mEmkV4jrEbqS3QgrjsMq/RsCQDq6Aks0HEZ+siW8nNedIOZuzMoAcLb3wQNsoySACqRm8Ev9cdWQ2838CXnNnlvcLZm318QvZwuwwQl9SphdJjIPCxevZjEn9/BWBEZpv5+00ycjUI6V+xCHwC+iBxTFGWYGz76LSe6gJNews7CHmcbhELGRt9LvX4vr+ASeFJulsvqS8Tb+EM1HgKswRG+s/k8w66EdshFQhALHfdpckNRDYqcSi+plWiaN8ogNXkat77xyQOtPUx62ND/XbKfFAeBtZmhb04ZtDqonEguPCpucK2igDwVunHJn1bfZpCW7eS1aPdkp9owXkfCLx8om1YBaZaG4Q+m6xPj/uJGa3FkZ9QK3882psZFQs6KoEpkzh417M8QWxQP79PE80m5UCznC8GfXUynuo=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d27aadb9-d08d-4d06-20d2-08d6bf1a628f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2019 07:42:16.2165 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f812b2db-ebea-4164-9771-3ee82d61b6fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3762
X-OriginatorOrg: bhtronik.de
Subject: Compiling on target - building buildessentials error
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
X-List-Received-Date: Sat, 13 Apr 2019 19:26:18 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi guys,
I am trying to use gcc on my target board. In order to do that I added pack=
agegroup-core-buildessentials to my image. At least I tried to.
When building I get that error:
packagegroup-core-buildessential : Depends: libstdc++-dev but it is not ins=
tallable
After trying a lot of things and playing around with different packages it =
seems that I am generally not able to add *-dev packages to my image, or at=
 least build them with bitbake to add them manually. Everything I try with =
*-dev involved throws an error. For example if I am adding 'dev-pkgs' to my=
 EXTRA_IMAGE_FEATURES variable I get over 200 errors with all dev-packages =
missing just like that above.
I must have something misconfigured in my local/distro/machine/image conf f=
iles but I can't figure out what.
Any help appreciated.

Best regards,
Patrick Schneider


