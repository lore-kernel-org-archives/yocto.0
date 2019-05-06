Return-Path: <Oliver.Westermann@cognex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80721E00D11; Mon,  6 May 2019 00:15:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [148.163.159.122 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1340 seconds by postgrey-1.32 at yocto-www;
	Mon, 06 May 2019 00:15:44 PDT
Received: from mx0a-001ccc01.pphosted.com (mx0b-001ccc01.pphosted.com
	[148.163.159.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DE0EE00BAA
	for <yocto@yoctoproject.org>; Mon,  6 May 2019 00:15:44 -0700 (PDT)
Received: from pps.filterd (m0088347.ppops.net [127.0.0.1])
	by mx0b-001ccc01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x466pwxh027375; Mon, 6 May 2019 02:52:37 -0400
Received: from nam02-sn1-obe.outbound.protection.outlook.com
	(mail-sn1nam02lp2052.outbound.protection.outlook.com [104.47.36.52])
	by mx0b-001ccc01.pphosted.com with ESMTP id 2s960jja1u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Mon, 06 May 2019 02:52:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cognexcorporation.onmicrosoft.com; s=selector1-cognex-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=ZZL+ZDMHs8MrZf8Q9otY4iL+0Fd5AiTjpzcrzIR9fzs=;
	b=IaXBNKzz+YWQt8doOuBW0l5uoHQHpBTCb+gQlQdLzbjwDz2Fo4xiqyoh1MngDR/yeZ/nQMFx/2xafe8AS+lyzthp5eS3+k7atjuXtt71Yvax2diCUOCLqNZWJ8UluxuU/RHKjzw7w9pqCSmYQvw14zGOtmShmzwXzVsV4N3loXI=
Received: from BN6PR06MB3138.namprd06.prod.outlook.com (10.174.95.141) by
	BN6PR06MB2369.namprd06.prod.outlook.com (10.168.255.18) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1856.11; Mon, 6 May 2019 06:52:35 +0000
Received: from BN6PR06MB3138.namprd06.prod.outlook.com
	([fe80::44e0:3aff:af6e:e4d2]) by
	BN6PR06MB3138.namprd06.prod.outlook.com
	([fe80::44e0:3aff:af6e:e4d2%4]) with mapi id 15.20.1856.012;
	Mon, 6 May 2019 06:52:35 +0000
From: "Westermann, Oliver" <Oliver.Westermann@cognex.com>
To: =?utf-8?B?TG/Dr2MgRG9tYWlnbsOp?= <tech@domaigne.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>
Thread-Topic: [yocto] Defining group of machines
Thread-Index: AdUBkYo0qt9t5lh9TkadMEnzXu0KlwAPyMeAAAETrIAAMo6OgABOLFAA
Date: Mon, 6 May 2019 06:52:34 +0000
Message-ID: <BN6PR06MB31384523EF29901779F95C9C86300@BN6PR06MB3138.namprd06.prod.outlook.com>
References: <BN6PR06MB3138577A7F834F2A120297A286350@BN6PR06MB3138.namprd06.prod.outlook.com>
	<alpine.LFD.2.21.1905031250300.4226@localhost.localdomain>
	<alpine.LFD.2.21.1905031321120.7995@localhost.localdomain>
	<1404879235.516464.1556991091636@ox.hosteurope.de>
In-Reply-To: <1404879235.516464.1556991091636@ox.hosteurope.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [212.117.79.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 10fb4320-312d-4b2d-7210-08d6d1ef6b82
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
	SRVR:BN6PR06MB2369; 
x-ms-traffictypediagnostic: BN6PR06MB2369:
x-microsoft-antispam-prvs: <BN6PR06MB2369ACB5B2E3B0E2AFF9A4B286300@BN6PR06MB2369.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39850400004)(396003)(136003)(366004)(346002)(376002)(199004)(189003)(81156014)(71190400001)(316002)(71200400001)(476003)(110136005)(446003)(11346002)(86362001)(99286004)(76176011)(7696005)(7736002)(8676002)(53936002)(81166006)(9686003)(305945005)(186003)(68736007)(26005)(55016002)(102836004)(6506007)(72206003)(558084003)(6436002)(66066001)(6116002)(3846002)(486006)(33656002)(74316002)(66476007)(73956011)(4326008)(52536014)(25786009)(76116006)(256004)(14454004)(478600001)(2906002)(66556008)(8936002)(66446008)(64756008)(66946007)(5660300002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR06MB2369;
	H:BN6PR06MB3138.namprd06.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cognex.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9Y1+0UCMz0H0M8V+J5iiPuqmWCX+G9ABcrhwKG2MjPZbSjdeyew897/OvPsOziY210OZB/siu2sZSeP3TtKNjcVgQQ/8xodaz5kjEGyIgtZOUWYegrMLzuWO005VNjN6Xe0R0wTXaUKJS/R6T0czIu22pClYuWRjMLIPUE+2Rqrdzr2PFaNO5RhiRRQPlQBapBaKh6Qv9NxaDxy1A7SFdXTVc7U66plmG0IAc1D7JanxnezraOUcFspqONtDjVjP181RjwX93USAhm/kRR+w5zT1+Lk38EgFUSH7NKVvYNpe1rCgXmjNe1UubyLNGY/IhuCDMQUEMzm83nGP31bMV6QQ6KaHhvckYybu2Q2Ge6UAcT4T6dS8LM1i0UuAgC07l1w+R+dGn9mH8JNc1s8xrGYoik7cxFCHhimUBvsgL2A=
MIME-Version: 1.0
X-OriginatorOrg: cognex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10fb4320-312d-4b2d-7210-08d6d1ef6b82
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 06:52:34.8145 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c12007a4-882b-4381-b05a-b783431570c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR06MB2369
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-05-06_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=672 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1905060059
X-Mailman-Approved-At: Mon, 06 May 2019 08:58:58 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Defining group of machines
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
X-List-Received-Date: Mon, 06 May 2019 07:15:45 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiA+IGlzIHRoYXQgd2hhdCB5b3Ugd2VyZSBhZnRlcj8NCj4gb3ZlcnJpZGUgaXMgdGhlIGZpcnN0
IHRoaW5nIHRoYXQgY3Jvc3NlZCBteSBtaW5kLi4uICAgDQoNClRoYW5rcyBib3RoIG9mIHlvdSwg
YW4gYWRkaXRpb25hbCBtYWNoaW5lIG92ZXJyaWRlIHdhcyBleGFjdGx5IHdoYXQgd2UgbmVlZGVk
Lg0KDQpCZXN0IHJlZ2FyZHMsIE9sbGkNCg==

