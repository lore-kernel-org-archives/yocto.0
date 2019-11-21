Return-Path: <Yair.Itzhaki@docusign.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3E73E00E04; Thu, 21 Nov 2019 06:54:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_SPF_HELO, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.73.92 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM05-DM3-obe.outbound.protection.outlook.com
	(mail-eopbgr730092.outbound.protection.outlook.com [40.107.73.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D19A7E007AE
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 06:54:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=BRHmqr/ju2ggSM/iTPkrMpSHYCakFMyoYwIht1l6XBau72Whxhp+zpBSe4/FSg2kB2oxYwLJncX3njhfTbJMzg3unlFlmEj0AP53xiqpU9/6WZg0acLM4JMBhgbZvxdFpgayg/QM4j0PeVpPX6XmD5Fq3OtPhd762lGUuVvfCasACk7WlztO2cIvWt+ZQ5VqFGFqQ1MZ0b0M6GNwPIyTDjRI7OaUrHVK0r6dZhAthvMmCD4wB4PJ+SZEIN811aSRnxkerIOBNloEUejwNxQojEU13qhS3ojwkGOyNnQXk0X8rEFYwIzOrYvVMQW6dV48TBU+SDJsu8BowVcce0+B7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Kv3wD+jw20QRb6wr2BRwW2OFBK5cotHcBrLSuZM66tc=;
	b=Yfb2diBL5SXWhi9nL6vggIqP5KEmgVSVlmW+GF4bbI+ia4AL3rl9MAnJUBRszNVrR3pO+8Z+xl4fB3FU94PK8VKdTRJ2J24OfbqxTAhrMZjhQ4ZTp+v7xd3NV90Fod2++MQnil6zW5IwQ+JdUJKl59PA2EPfIMVFzD49UjeyMWjatFb7Tfl4690l6zplkafkMNpJrQ243n6L2RdP6Aw28X8LZmJ/b2kkQgQPk9yQh7QDqy7zUDSk6K9+Y4AwyO48JF/ZvTVkizPaUI/4peoD1sl6A0lHvn7Fv8SE9q+qUOJSt0oHSOJZc0WqWacaypJ7R3TPosWp0iU5i3n4LdhHLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=docusign.com;
	dmarc=pass action=none header.from=docusign.com; 
	dkim=pass header.d=docusign.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=docusign.com;
	s=selector2;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Kv3wD+jw20QRb6wr2BRwW2OFBK5cotHcBrLSuZM66tc=;
	b=blgiMB5jHXkAwg6Z7ZEQtGKHHW3NLE50c11vkNnYg4UNc5oVro4/sc9U6ad+gSz7PFGu1JEcyjJY0EJe0x1TPQZld7K5H8IaFwPXbui5p3lrXviv+J8k6NLPDkNHdx2/878EYbtBe7svaSNycWcFxnm163fu6VmkSE+dQZg36C4=
Received: from MN2PR04MB5487.namprd04.prod.outlook.com (20.178.245.76) by
	MN2PR04MB7103.namprd04.prod.outlook.com (10.186.144.206) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2451.23; Thu, 21 Nov 2019 14:54:33 +0000
Received: from MN2PR04MB5487.namprd04.prod.outlook.com
	([fe80::e9e2:44f6:e894:f884]) by
	MN2PR04MB5487.namprd04.prod.outlook.com
	([fe80::e9e2:44f6:e894:f884%3]) with mapi id 15.20.2474.019;
	Thu, 21 Nov 2019 14:54:33 +0000
From: Yair Itzhaki <Yair.Itzhaki@docusign.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Re: [yocto] busybox + SELinux (warrior) - reboot issue
Thread-Index: AdWge4hBVA1NDpPrS16+83pmG5rSMw==
Date: Thu, 21 Nov 2019 14:54:32 +0000
Message-ID: <MN2PR04MB54872474D62A95704B7AB0B7FA4E0@MN2PR04MB5487.namprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Yair.Itzhaki@docusign.com; 
x-originating-ip: [212.25.66.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 38ccc468-0fed-479d-2ee7-08d76e92b842
x-ms-traffictypediagnostic: MN2PR04MB7103:
x-microsoft-antispam-prvs: <MN2PR04MB710311EC7A169324D1CED381FA4E0@MN2PR04MB7103.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 0228DDDDD7
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(136003)(39860400002)(366004)(346002)(376002)(199004)(189003)(7696005)(81156014)(66556008)(3846002)(7736002)(64756008)(66946007)(99286004)(76116006)(229853002)(790700001)(6116002)(316002)(2351001)(33656002)(52536014)(6436002)(74316002)(5640700003)(14454004)(6246003)(1730700003)(66476007)(66446008)(81166006)(8676002)(86362001)(6916009)(26005)(5660300002)(102836004)(6506007)(71200400001)(186003)(71190400001)(55016002)(9686003)(2501003)(66066001)(256004)(6306002)(25786009)(478600001)(8936002)(558084003)(2906002)(4270600006)(54896002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB7103;
	H:MN2PR04MB5487.namprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: docusign.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6XNA6O1CuiKj24O0v6XZbagTqpRxNdnzAaXvzVHpBBdZwpiwAKQLcv6Vq+32aA3Xk1ozipBjqpGSIX8NldEf3YIk+gnFoOa6l9GPVvkcHJjVQu3nmvmD0ujW/MGvxOFKM7J83CILBGRPQ/AKk/wSccJMpQRcU7ZKzEN/trsm7m2aye5mCiyIp1eTQISNxUBo+/dz6GibcfJ99lGZyy0HCfnOqhc2geYI3C5hVSrkvMBPKMIuXxmXDCpQBXyAk8JrSL5Yp3qDnSHinNzOjPB8Fjw0ferkqIbpoSvd0dMd5AHPih09N14kSvCCLD2UeIAY1ooE5u/rs2an0J5XpEGZWUyg1iVwU6IMpD9yI1GDUEyUAV8EDhbdeKj9NftM48TesEvH2tvhICHYPcoU/V03YgDkLYylwoEkXzuxhVdOlngDs3otYyGTx2E0q6g5Ghpt
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: docusign.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38ccc468-0fed-479d-2ee7-08d76e92b842
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2019 14:54:32.9011 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 237e701c-327f-4cad-a5a1-dda2412d89d9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KQuWV6/hShLkbVeTw6Asr4trH5ECtXb9R1/WcvP/lvTUy/4FkkCVo29bVOpQHHNycnvB6vOGt7RFtjwQnZ9OFbztU6jtxhSHno37qvnlu0Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB7103
Subject: Re: busybox + SELinux (warrior) - reboot issue
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
X-List-Received-Date: Thu, 21 Nov 2019 14:54:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR04MB54872474D62A95704B7AB0B7FA4E0MN2PR04MB5487namp_"

--_000_MN2PR04MB54872474D62A95704B7AB0B7FA4E0MN2PR04MB5487namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW55Ym9keT8NCg0KVGhhbmtzLA0KWWFpcg0KDQoNCg==

--_000_MN2PR04MB54872474D62A95704B7AB0B7FA4E0MN2PR04MB5487namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJ
Zm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQph
OmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xv
cjojMDU2M0MxOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFu
Lk1zb0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjoj
OTU0RjcyOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0Kc3Bhbi5FbWFpbFN0eWxlMTcN
Cgl7bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwtY29tcG9zZTsNCglmb250LWZhbWlseToiQXJpYWwi
LHNhbnMtc2VyaWY7DQoJY29sb3I6d2luZG93dGV4dDt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28t
c3R5bGUtdHlwZTpleHBvcnQtb25seTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJp
Zjt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo4LjVpbiAxMS4waW47DQoJbWFyZ2luOjEu
MGluIDEuMjVpbiAxLjBpbiAxLjI1aW47fQ0KZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRT
ZWN0aW9uMTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVk
ZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAyNiIgLz4NCjwveG1sPjwhW2VuZGlmXS0t
PjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0K
PG86aWRtYXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+
PCFbZW5kaWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJFTi1VUyIgbGluaz0iIzA1NjNDMSIg
dmxpbms9IiM5NTRGNzIiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5z
LXNlcmlmIj5Bbnlib2R5PzxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5zLXNlcmlm
Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBzdHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7QXJpYWwmcXVvdDssc2Fucy1zZXJpZiI+VGhhbmtz
LDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxl
PSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5zLXNlcmlmIj5ZYWlyPG86cD48L286
cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9i
b2R5Pg0KPC9odG1sPg0K

--_000_MN2PR04MB54872474D62A95704B7AB0B7FA4E0MN2PR04MB5487namp_--
