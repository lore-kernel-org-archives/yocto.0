Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.9425.1579846717443765113
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 22:18:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topicbv.onmicrosoft.com header.s=selector2-topicbv-onmicrosoft-com header.b=ugSvZ7tf;
 spf=fail (domain: topicproducts.com, ip: 140.211.169.56, mailfrom: mike.looijmans@topicproducts.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E23F8E0159E; Thu, 23 Jan 2020 22:18:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_SPF_HELO,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.7.72 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-eopbgr70072.outbound.protection.outlook.com [40.107.7.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 377B0E0159C
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2020 22:18:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NFSLhJcKd/y3RLIbfA+AOwIVaVeytTkcHy/0xEbReUuytmS57881rZKU2cJcGIz4d4GmTqR4ISO1fg9YL4JWGSQCN+5ef8M8GpZ1/UAjGNM0bnspl1gITSysvTDp8AmPzp7M04s5YCSl2XgPUObecXsi8d9WuNA00EF92DYdiToQp/5nyhzwgAS/0D+jHWblIzXiFsQpktkuI3Cb699R6ClsNq5NKpHgmk70gDGMHoSVDdU5CDxlwfIjn4mUvxuv6pQ1B3Sk3RuYhDrR+AoqK59vgFl0r8bj3AWXrKcIARa8S2FW9JfltO93+TNzff/X96EwtEI8ZyFIrvk23NUliw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RRlYRQoDQISI8rReIbjNkcLXo+j9W8sRD2al6HmfiH4=;
 b=ZZyWaMvs0EaqWwLowl0gCKIEveYB09F9CRpWpLDN1P6DZMUyq2ZiNrDWsMzY4H6uAc9O/3yLJ1M+oyRr2QkArvbbRolekjodQrOJzEDRtjsyvDX5sSiB58G/2pSuKxkfBBDLm1IAVGgyPLli6aERkrhw4q5kUm7fNp/EKqNp9E0tmohBulVNbLWv2E/O/0An8IFUXeLn3nYRBlrr6yWP4A6ntk8lF5zKSq7nKBwAU8Nc235+d3BLuF3QJzwsRRNHOpX2ONAtf7aVoCwpuKmNcehbAggArvfnloLTapAitKJlGp2gJ0UINWP5FsKSHfmZy3w6Rd24ijKTTpLwgmfB/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RRlYRQoDQISI8rReIbjNkcLXo+j9W8sRD2al6HmfiH4=;
 b=ugSvZ7tfe4Xwq3q6TBdAJal+9wRwSeKaA4EQ3XhN2WlHU1FK1kJEaUZoIJdqxukPa1KHFrN6HmzPxVgiNv89QeCRZ6JsVWl9a1VofXKgI6K29AFVOkafpCYV8IlNtEOZAnYT1MZqhf5YOEm/DUtSWRJH4UpNtsV6//dbEghsF5Y=
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com (52.134.67.147) by
 DB3PR0402MB3722.eurprd04.prod.outlook.com (52.134.70.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Fri, 24 Jan 2020 06:18:33 +0000
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::2921:6c3f:a653:732a]) by DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::2921:6c3f:a653:732a%6]) with mapi id 15.20.2644.027; Fri, 24 Jan 2020
 06:18:33 +0000
Received: from [192.168.80.121] (81.173.50.109) by AM0PR04CA0022.eurprd04.prod.outlook.com (2603:10a6:208:122::35) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.22 via Frontend Transport; Fri, 24 Jan 2020 06:18:32 +0000
From: "Mike Looijmans" <mike.looijmans@topic.nl>
To: "stephen.k.jolley@intel.com" <stephen.k.jolley@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>
Subject: Invitation: [yocto] Invitation: Yocto Project Technical Team Meeting @ Monthly from 8am to 9am on the third Tuesday (PDT) (yocto@yoctoproject.org)
Thread-Topic: Invitation: [yocto] Invitation: Yocto Project Technical Team
 Meeting @ Monthly from 8am to 9am on the third Tuesday (PDT)
 (yocto@yoctoproject.org)
Thread-Index: AQHV0n4aMCxGji1/kEqCzoy3iNSyHw==
Date: Fri, 24 Jan 2020 06:18:32 +0000
Message-ID: <cd89fe41-f030-bf97-1b56-fd73a771e7df@topic.nl>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-clientproxiedby: AM0PR04CA0022.eurprd04.prod.outlook.com
 (2603:10a6:208:122::35) To DB3PR0402MB3947.eurprd04.prod.outlook.com
 (2603:10a6:8:7::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mike.looijmans@topicproducts.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-calendar-series-instance-id: 
 BAAAAIIA4AB0xbcQGoLgCAAAAAAAAAAAAAAAAAAAAAAAAAAASQAAAHZDYWwtVWlkAQAAAHBWRzk4eU9rVzBpczVxUUVxaGFoeEFBQUFKaEV1ZGhTSjJST09pNUNpYldhZWJ4VnV1QUFBS1VEN09zMQA=
x-originating-ip: [81.173.50.109]
x-ms-office365-filtering-correlation-id: 7b7f7f20-bbb6-4b48-b734-08d7a0953ccd
x-ms-traffictypediagnostic: DB3PR0402MB3722:MeetingMessage
x-microsoft-antispam-prvs: 
 <DB3PR0402MB3722FED78C825D0F0C5A7769960E0@DB3PR0402MB3722.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 02929ECF07
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(376002)(346002)(136003)(396003)(39840400004)(366004)(199004)(189003)(81166006)(508600001)(5660300002)(2906002)(64756008)(2616005)(8676002)(6486002)(71200400001)(66556008)(81156014)(66476007)(558084003)(31696002)(8936002)(66616009)(66446008)(31686004)(36756003)(52116002)(16576012)(16526019)(26005)(42882007)(66946007)(956004)(110136005)(186003)(316002)(44832011)(94303002);DIR:OUT;SFP:1101;SCL:1;SRVR:DB3PR0402MB3722;H:DB3PR0402MB3947.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: topicproducts.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 xJsJbyzgi8Lcomqi8sm1N5KPFzMw3lngQ72VBgTxfiWbQojc21ck63PIDqnEAoWRZM5QvTrwgLfKtlIU9ah5Hk1ez+UjxaYQ1w2kmTVk4Aj4tk6nDsPKouhqdHAFX1ifLLlZxHMeb+9Bn5RvcwrMag99Z9DQSZFTUSB+G/OOQStkA4P142pyX/mzH3rC3ZQiBJ4dKOFiUHTTAh0yoG3ln8YFqi15Jrvwaxw0LkuNjBKzphYU7xxJD5jE42RmyRbY+FCaQ5yxAmory679yNDCfFH26PWQoEMCWUDP+zcNPTw1S1hcgIaCaWZzpFudtSwqS88o+kZkeqEg4+k/p8PfatoJwdguKDMzhLeEMaaDIqqzdOhBjszdXNTf2A48A5aGo91vPTaeC+ijSPgv03Tw+hmhkAZF5bg1gRbXrFvfN5m3qo92mcZi4uWhAT0gvm6dwNUWEqFhx1JXyfyYg2UKeyqMIgceCdBuR558PhnEB4vbxwo553heqe2WqRqACs2V
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b7f7f20-bbb6-4b48-b734-08d7a0953ccd
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2020 06:18:33.0138
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EoqKlrbtRWaJoah5CHd8RETnuRW93/D3WEVbfNER9b1rojGHaJ9vUoEoXEAdxn0Nd7ptODUy9Z8rdrVMKdflLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3722
X-Groupsio-MsgNum: 48132
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_cd89fe41f030bf971b56fd73a771e7dftopicnl_"

--_004_cd89fe41f030bf971b56fd73a771e7dftopicnl_
Content-Type: multipart/alternative;
	boundary="_002_cd89fe41f030bf971b56fd73a771e7dftopicnl_"

--_002_cd89fe41f030bf971b56fd73a771e7dftopicnl_
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <D49BCCE545F23842B3B2A368C18C3DD4@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

theyoctoproject@gmail.com <theyoctoproject@gmail.com> has invited you to [y=
octo] Invitation: Yocto Project Technical Team Meeting @ Monthly from 8am t=
o 9am on the third Tuesday (PDT) (yocto@yoctoproject.org)


--_002_cd89fe41f030bf971b56fd73a771e7dftopicnl_
Content-Type: text/calendar; charset="utf-8"; method=REQUEST
Content-Transfer-Encoding: base64

QkVHSU46VkNBTEVOREFSDQpNRVRIT0Q6UkVRVUVTVA0KUFJPRElEOk1pY3Jvc29mdCBFeGNoYW5n
ZSBTZXJ2ZXIgMjAxMA0KVkVSU0lPTjoyLjANCkJFR0lOOlZUSU1FWk9ORQ0KVFpJRDpBbWVyaWNh
L1doaXRlaG9yc2UNCkJFR0lOOlNUQU5EQVJEDQpEVFNUQVJUOjE2MDEwMTAxVDAyMDAwMA0KVFpP
RkZTRVRGUk9NOi0wNzAwDQpUWk9GRlNFVFRPOi0wODAwDQpSUlVMRTpGUkVRPVlFQVJMWTtJTlRF
UlZBTD0xO0JZREFZPTFTVTtCWU1PTlRIPTExDQpFTkQ6U1RBTkRBUkQNCkJFR0lOOkRBWUxJR0hU
DQpEVFNUQVJUOjE2MDEwMTAxVDAyMDAwMA0KVFpPRkZTRVRGUk9NOi0wODAwDQpUWk9GRlNFVFRP
Oi0wNzAwDQpSUlVMRTpGUkVRPVlFQVJMWTtJTlRFUlZBTD0xO0JZREFZPTJTVTtCWU1PTlRIPTMN
CkVORDpEQVlMSUdIVA0KRU5EOlZUSU1FWk9ORQ0KQkVHSU46VkVWRU5UDQpPUkdBTklaRVI7Q049
TWlrZSBMb29pam1hbnM6bWFpbHRvOm1pa2UubG9vaWptYW5zQHRvcGljcHJvZHVjdHMuY29tDQpB
VFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1G
QUxTRTtDTj1zdGVwaGVuLmsNCiAuam9sbGV5QGludGVsLmNvbTptYWlsdG86c3RlcGhlbi5rLmpv
bGxleUBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5F
RURTLUFDVElPTjtSU1ZQPUZBTFNFO0NOPXlvY3RvQHlvYw0KIHRvcHJvamVjdC5vcmc6bWFpbHRv
OnlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BB
UlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPUZBTFNFO0NOPXNqb2xsZXkueQ0KIHAucG1AZ21haWwu
Y29tOm1haWx0bzpzam9sbGV5LnlwLnBtQGdtYWlsLmNvbQ0KQVRUQUNIOkNJRDo1MUM5OUU1NzA2
NTNEMjQ0QTUwMEI2NTExQ0I3MThFN0BldXJwcmQwNC5wcm9kLm91dGxvb2suY29tDQpERVNDUklQ
VElPTjtMQU5HVUFHRT1lbi1VUzp0aGV5b2N0b3Byb2plY3RAZ21haWwuY29tIDx0aGV5b2N0b3By
b2plY3RAZ21haWwNCiAuY29tPiBoYXMgaW52aXRlZCB5b3UgdG8gW3lvY3RvXSBJbnZpdGF0aW9u
OiBZb2N0byBQcm9qZWN0IFRlY2huaWNhbCBUZWFtIA0KIE1lZXRpbmcgQCBNb250aGx5IGZyb20g
OGFtIHRvIDlhbSBvbiB0aGUgdGhpcmQgVHVlc2RheSAoUERUKSAoeW9jdG9AeW9jdG9wDQogcm9q
ZWN0Lm9yZylcblxuDQpSUlVMRTpGUkVRPU1PTlRITFk7SU5URVJWQUw9MTtCWURBWT0zVFUNClVJ
RDpwVkc5OHlPa1cwaXM1cVFFcWhhaHhBQUFBSmhFdWRoU0oyUk9PaTVDaWJXYWVieFZ1dUFBQUtV
RDdPczENClNVTU1BUlk7TEFOR1VBR0U9ZW4tVVM6SW52aXRhdGlvbjogW3lvY3RvXSBJbnZpdGF0
aW9uOiBZb2N0byBQcm9qZWN0IFRlY2huaQ0KIGNhbCBUZWFtIE1lZXRpbmcgQCBNb250aGx5IGZy
b20gOGFtIHRvIDlhbSBvbiB0aGUgdGhpcmQgVHVlc2RheSAoUERUKSAoeW9jDQogdG9AeW9jdG9w
cm9qZWN0Lm9yZykNCkRUU1RBUlQ7VFpJRD1BbWVyaWNhL1doaXRlaG9yc2U6MjAxOTA0MTZUMDgw
MDAwDQpEVEVORDtUWklEPUFtZXJpY2EvV2hpdGVob3JzZToyMDE5MDQxNlQwOTAwMDANCkNMQVNT
OlBVQkxJQw0KUFJJT1JJVFk6NQ0KRFRTVEFNUDoyMDIwMDEyNFQwNjE4MzFaDQpUUkFOU1A6T1BB
UVVFDQpTVEFUVVM6VEVOVEFUSVZFDQpMT0NBVElPTjtMQU5HVUFHRT1lbi1VUzpab29tIE1lZXRp
bmc6IGh0dHBzOi8vem9vbS51cy9qLzk5MDg5MjcxMg0KWC1NSUNST1NPRlQtQ0RPLUJVU1lTVEFU
VVM6VEVOVEFUSVZFDQpYLU1JQ1JPU09GVC1DRE8tSU5URU5ERURTVEFUVVM6VEVOVEFUSVZFDQpY
LU1JQ1JPU09GVC1DRE8tQUxMREFZRVZFTlQ6RkFMU0UNClgtTUlDUk9TT0ZULUNETy1JTVBPUlRB
TkNFOjENClgtTUlDUk9TT0ZULUNETy1JTlNUVFlQRToxDQpYLU1JQ1JPU09GVC1ET05PVEZPUldB
UkRNRUVUSU5HOkZBTFNFDQpYLU1JQ1JPU09GVC1ESVNBTExPVy1DT1VOVEVSOkZBTFNFDQpYLU1J
Q1JPU09GVC1MT0NBVElPTlM6W3siRGlzcGxheU5hbWUiOiJab29tIE1lZXRpbmc6IGh0dHBzOi8v
em9vbS51cy9qLzk5MDgNCiA5MjcxMiJcLCJMb2NhdGlvbkFubm90YXRpb24iOiIiXCwiTG9jYXRp
b25VcmkiOiIiXCwiTG9jYXRpb25TdHJlZXQiOiIiXCwiTA0KIG9jYXRpb25DaXR5IjoiIlwsIkxv
Y2F0aW9uU3RhdGUiOiIiXCwiTG9jYXRpb25Db3VudHJ5IjoiIlwsIkxvY2F0aW9uUG9zdGFsDQog
Q29kZSI6IiJcLCJMb2NhdGlvbkZ1bGxBZGRyZXNzIjoiIn1dDQpFTkQ6VkVWRU5UDQpFTkQ6VkNB
TEVOREFSDQo=

--_002_cd89fe41f030bf971b56fd73a771e7dftopicnl_--

--_004_cd89fe41f030bf971b56fd73a771e7dftopicnl_
Content-Type: application/ics; name="invite.ics"
Content-Description: invite.ics
Content-Disposition: attachment; filename="invite.ics"; size=5191;
	creation-date="Fri, 24 Jan 2020 06:18:32 GMT";
	modification-date="Fri, 24 Jan 2020 06:18:32 GMT"
Content-ID: <51C99E570653D244A500B6511CB718E7@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

QkVHSU46VkNBTEVOREFSDQpQUk9ESUQ6LS8vTW96aWxsYS5vcmcvTk9OU0dNTCBNb3ppbGxhIENh
bGVuZGFyIFYxLjEvL0VODQpWRVJTSU9OOjIuMA0KTUVUSE9EOlJFUVVFU1QNCkJFR0lOOlZUSU1F
Wk9ORQ0KVFpJRDpBbWVyaWNhL1doaXRlaG9yc2UNCkJFR0lOOkRBWUxJR0hUDQpUWk9GRlNFVEZS
T006LTA4MDANClRaT0ZGU0VUVE86LTA3MDANClRaTkFNRTpQRFQNCkRUU1RBUlQ6MTk3MDAzMDhU
MDIwMDAwDQpSUlVMRTpGUkVRPVlFQVJMWTtCWURBWT0yU1U7QllNT05USD0zDQpFTkQ6REFZTElH
SFQNCkJFR0lOOlNUQU5EQVJEDQpUWk9GRlNFVEZST006LTA3MDANClRaT0ZGU0VUVE86LTA4MDAN
ClRaTkFNRTpQU1QNCkRUU1RBUlQ6MTk3MDExMDFUMDIwMDAwDQpSUlVMRTpGUkVRPVlFQVJMWTtC
WURBWT0xU1U7QllNT05USD0xMQ0KRU5EOlNUQU5EQVJEDQpFTkQ6VlRJTUVaT05FDQpCRUdJTjpW
RVZFTlQNCkNSRUFURUQ6MjAxOTEyMThUMDc0NzE2Wg0KTEFTVC1NT0RJRklFRDoyMDIwMDEyNFQw
NjE4MzFaDQpEVFNUQU1QOjIwMjAwMTI0VDA2MTgzMVoNClVJRDpwVkc5OHlPa1cwaXM1cVFFcWhh
aHhBQUFBSmhFdWRoU0oyUk9PaTVDaWJXYWVieFZ1dUFBQUtVRDdPczENClNVTU1BUlk6W3lvY3Rv
XSBJbnZpdGF0aW9uOiBZb2N0byBQcm9qZWN0IFRlY2huaWNhbCBUZWFtIE1lZXRpbmcgQCBNb250
aGx5DQogIGZyb20gOGFtIHRvIDlhbSBvbiB0aGUgdGhpcmQgVHVlc2RheSAoUERUKSAoeW9jdG9A
eW9jdG9wcm9qZWN0Lm9yZykNClNUQVRVUzpURU5UQVRJVkUNCk9SR0FOSVpFUjtSU1ZQPUZBTFNF
O0NOPXRoZXlvY3RvcHJvamVjdEBnbWFpbC5jb207UEFSVFNUQVQ9QUNDRVBURUQ7Uk9MRT1DDQog
SEFJUjptYWlsdG86dGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbQ0KQVRURU5ERUU7UlNWUD1GQUxT
RTtDTj1zdGVwaGVuLmsuam9sbGV5QGludGVsLmNvbTtQQVJUU1RBVD1ORUVEUy1BQ1RJT047Q1UN
CiBUWVBFPUlORElWSURVQUw7Uk9MRT1SRVEtUEFSVElDSVBBTlQ6bWFpbHRvOnN0ZXBoZW4uay5q
b2xsZXlAaW50ZWwuY29tDQpBVFRFTkRFRTtSU1ZQPUZBTFNFO0NOPXlvY3RvQHlvY3RvcHJvamVj
dC5vcmc7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO0NVVFlQRQ0KID1JTkRJVklEVUFMO1JPTEU9UkVR
LVBBUlRJQ0lQQU5UOm1haWx0bzp5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpBVFRFTkRFRTtSU1ZQ
PUZBTFNFO0NOPXNqb2xsZXkueXAucG1AZ21haWwuY29tO1BBUlRTVEFUPU5FRURTLUFDVElPTjtD
VVRZUA0KIEU9SU5ESVZJRFVBTDtST0xFPVJFUS1QQVJUSUNJUEFOVDptYWlsdG86c2pvbGxleS55
cC5wbUBnbWFpbC5jb20NClJSVUxFOkZSRVE9TU9OVEhMWTtCWURBWT0zVFUNCkRUU1RBUlQ7VFpJ
RD1BbWVyaWNhL1doaXRlaG9yc2U6MjAxOTA0MTZUMDgwMDAwDQpEVEVORDtUWklEPUFtZXJpY2Ev
V2hpdGVob3JzZToyMDE5MDQxNlQwOTAwMDANCkNMQVNTOlBVQkxJQw0KTE9DQVRJT046Wm9vbSBN
ZWV0aW5nOiBodHRwczovL3pvb20udXMvai85OTA4OTI3MTINCkRFU0NSSVBUSU9OOm1vcmUgZGV0
YWlscyDCuzxodHRwczovL3d3dy5nb29nbGUuY29tL2NhbGVuZGFyL2V2ZW50P2FjdGlvbj1WDQog
SUVXJmVpZD1NV1ZqWVdwa2EzUnZNMjloWVdkb1pUQjBOV2QyYm5OcFoyVWdlVzlqZEc5QWVXOWpk
Rzl3Y205cVpXTjBMbTl5WncNCiAmdG9rPU1qVWpkR2hsZVc5amRHOXdjbTlxWldOMFFHZHRZV2xz
TG1OdmJXSTFaREEzTVRjMk5UWXhNVEk0TWpGbFpHSmlPV05sTQ0KIHpreVlqUmlOREkyWmpSa01q
QXdNalUmY3R6PUFtZXJpY2ElMkZMb3NfQW5nZWxlcyZobD1lbiZlcz0wPlxuWW9jdG8gUHJvamVj
DQogdCBUZWNobmljYWwgVGVhbSBNZWV0aW5nXG5XaGVuXG5Nb250aGx5IGZyb20gOGFtIHRvIDlh
bSBvbiB0aGUgdGhpcmQgVHVlc2QNCiBheSBQYWNpZmljIFRpbWUgLSBMb3MgQW5nZWxlc1xuV2hl
cmVcblpvb20gTWVldGluZzogaHR0cHM6Ly96b29tLnVzL2ovOTkwOA0KIDkyNzEyIChtYXA8aHR0
cHM6Ly9tYXBzLmdvb2dsZS5jb20vbWFwcz9xPVpvb20rTWVldGluZzoraHR0cHM6Ly96b29tLnVz
L2ovDQogOTkwODkyNzEyJmhsPWVuPilcbkNhbGVuZGFyXG55b2N0b0B5b2N0b3Byb2plY3Qub3Jn
XG5XaG9cbuKAolxudGhleW9jdG9wcm8NCiBqZWN0QGdtYWlsLmNvbSAtIG9yZ2FuaXplclxu4oCi
XG5zdGVwaGVuLmsuam9sbGV5QGludGVsLmNvbVxu4oCiXG55b2N0b0B5bw0KIGN0b3Byb2plY3Qu
b3JnXG7igKJcbnNqb2xsZXkueXAucG1AZ21haWwuY29tXG5XZSBlbmNvdXJhZ2UgcGVvcGxlIGF0
dGVuZGluDQogZyB0aGUgbWVldGluZyB0byBsb2dvbiBhbmQgYW5ub3VuY2UgdGhlbXNlbHZlcyBv
biB0aGUgWW9jdG8gUHJvamVjdCBJUkMgY2gNCiBhbmNlbCBkdXJpbmcgdGhlIG1lZXRpbmcgKG9w
dGlvbmFsKTpcblxuWW9jdG8gSVJDOiBodHRwOi8vd2ViY2hhdC5mcmVlbm9kZQ0KIC5uZXQvP2No
YW5uZWxzPSN5b2N0bzxodHRwczovL3d3dy5nb29nbGUuY29tL3VybD9xPWh0dHAlM0ElMkYlMkZ3
ZWJjaGF0LmZyDQogZWVub2RlLm5ldCUyRiUzRmNoYW5uZWxzJTNEJTIzeW9jdG8mc2E9RCZ1c3Q9
MTU1NDY1MzAzMDQ5NjAwMCZ1c2c9QUZRakNOR2QNCiBVbk9aeE4zWDk2SmdLQlVpRFBfZERIMzM0
Zz5cblxuV2lraTogaHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9wdWJsaWMtdg0KIGlydHVh
bC1tZWV0aW5ncy88aHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS91cmw/cT1odHRwcyUzQSUyRiUyRnd3
dy55b2N0b3Byb2plDQogY3Qub3JnJTJGcHVibGljLXZpcnR1YWwtbWVldGluZ3MlMkYmc2E9RCZ1
c3Q9MTU1NDY1MzAzMDQ5NjAwMCZ1c2c9QUZRakNOSHUNCiBZdmRYSXhvX3oyODZ5VS16elRDd3N1
bEs3QT5cblxuQnJpZGdlIGlzIHdpdGggWm9vbSBhdDogaHR0cHM6Ly96b29tLnVzL2ovOQ0KIDkw
ODkyNzEyPGh0dHBzOi8vd3d3Lmdvb2dsZS5jb20vdXJsP3E9aHR0cHMlM0ElMkYlMkZ6b29tLnVz
JTJGaiUyRjk5MDg5MjcxDQogMiZzYT1EJnVzdD0xNTU0NjUzMDMwNDk2MDAwJnVzZz1BRlFqQ05G
QmZWRlY4RThjVVRGYjhIb1NHYVFoYTZuTTNBPlxuXG5UZWMNCiBobmljYWwgTWVldGluZyBNaW51
dGVzIGF0OiBodHRwczovL2RyaXZlLmdvb2dsZS5jb20vb3Blbj9pZD0xWTVJSXVFLXowWWtkbA0K
IC1Ed3V6VUpoNTJmbE9adWhOX1RTQWZ3MnRkVTlwZ1xuXG5ZUCAyLjggUGxhbm5pbmcgSWRlYXMg
YXQ6IGh0dHBzOi8vZHJpdmUuDQogZ29vZ2xlLmNvbS9vcGVuP2lkPTFDTkVLQTRkMGVUNi1lMGhu
UzJwd2k3eGRaNV90NnNtcFpPMkhiYUpHWGJVXG5cbkdvaW5nICgNCiB5b2N0b0B5b2N0b3Byb2pl
Y3Qub3JnKT8gICBBbGwgZXZlbnRzIGluIHRoaXMgc2VyaWVzOiAgIFllczxodHRwczovL3d3dy5n
bw0KIG9nbGUuY29tL2NhbGVuZGFyL2V2ZW50P2FjdGlvbj1SRVNQT05EJmVpZD1NV1ZqWVdwa2Ez
UnZNMjloWVdkb1pUQjBOV2QyYm5ODQogcFoyVWdlVzlqZEc5QWVXOWpkRzl3Y205cVpXTjBMbTl5
WncmcnN0PTEmdG9rPU1qVWpkR2hsZVc5amRHOXdjbTlxWldOMFFHZHQNCiBZV2xzTG1OdmJXSTFa
REEzTVRjMk5UWXhNVEk0TWpGbFpHSmlPV05sTXpreVlqUmlOREkyWmpSa01qQXdNalUmY3R6PUFt
ZXJpYw0KIGElMkZMb3NfQW5nZWxlcyZobD1lbiZlcz0wPiAtIE1heWJlPGh0dHBzOi8vd3d3Lmdv
b2dsZS5jb20vY2FsZW5kYXIvZXZlbnQ/DQogYWN0aW9uPVJFU1BPTkQmZWlkPU1XVmpZV3BrYTNS
dk0yOWhZV2RvWlRCME5XZDJibk5wWjJVZ2VXOWpkRzlBZVc5amRHOXdjbTkNCiBxWldOMExtOXla
dyZyc3Q9MyZ0b2s9TWpVamRHaGxlVzlqZEc5d2NtOXFaV04wUUdkdFlXbHNMbU52YldJMVpEQTNN
VGMyTlRZeA0KIE1USTRNakZsWkdKaU9XTmxNemt5WWpSaU5ESTJaalJrTWpBd01qVSZjdHo9QW1l
cmljYSUyRkxvc19BbmdlbGVzJmhsPWVuJmVzDQogPTA+IC0gTm88aHR0cHM6Ly93d3cuZ29vZ2xl
LmNvbS9jYWxlbmRhci9ldmVudD9hY3Rpb249UkVTUE9ORCZlaWQ9TVdWallXcGsNCiBhM1J2TTI5
aFlXZG9aVEIwTldkMmJuTnBaMlVnZVc5amRHOUFlVzlqZEc5d2NtOXFaV04wTG05eVp3JnJzdD0y
JnRvaz1NalVqZA0KIEdobGVXOWpkRzl3Y205cVpXTjBRR2R0WVdsc0xtTnZiV0kxWkRBM01UYzJO
VFl4TVRJNE1qRmxaR0ppT1dObE16a3lZalJpTkRJDQogMlpqUmtNakF3TWpVJmN0ej1BbWVyaWNh
JTJGTG9zX0FuZ2VsZXMmaGw9ZW4mZXM9MD4gICAgbW9yZSBvcHRpb25zIMK7PGh0dHANCiBzOi8v
d3d3Lmdvb2dsZS5jb20vY2FsZW5kYXIvZXZlbnQ/YWN0aW9uPVZJRVcmZWlkPU1XVmpZV3BrYTNS
dk0yOWhZV2RvWlRCMA0KIE5XZDJibk5wWjJVZ2VXOWpkRzlBZVc5amRHOXdjbTlxWldOMExtOXla
dyZ0b2s9TWpVamRHaGxlVzlqZEc5d2NtOXFaV04wUUdkDQogdFlXbHNMbU52YldJMVpEQTNNVGMy
TlRZeE1USTRNakZsWkdKaU9XTmxNemt5WWpSaU5ESTJaalJrTWpBd01qVSZjdHo9QW1lcmkNCiBj
YSUyRkxvc19BbmdlbGVzJmhsPWVuJmVzPTA+XG5cbkludml0YXRpb24gZnJvbSBHb29nbGUgQ2Fs
ZW5kYXI8aHR0cHM6Ly93dw0KIHcuZ29vZ2xlLmNvbS9jYWxlbmRhci8+XG5cbllvdSBhcmUgcmVj
ZWl2aW5nIHRoaXMgY291cnRlc3kgZW1haWwgYXQgdGhlIGFjDQogY291bnQgeW9jdG9AeW9jdG9w
cm9qZWN0Lm9yZyBiZWNhdXNlIHlvdSBhcmUgYW4gYXR0ZW5kZWUgb2YgdGhpcyBldmVudC5cblwN
CiBuVG8gc3RvcCByZWNlaXZpbmcgZnV0dXJlIHVwZGF0ZXMgZm9yIHRoaXMgZXZlbnRcLCBkZWNs
aW5lIHRoaXMgZXZlbnQuIEFsdA0KIGVybmF0aXZlbHkgeW91IGNhbiBzaWduIHVwIGZvciBhIEdv
b2dsZSBhY2NvdW50IGF0IGh0dHBzOi8vd3d3Lmdvb2dsZS5jb20vDQogY2FsZW5kYXIvIGFuZCBj
b250cm9sIHlvdXIgbm90aWZpY2F0aW9uIHNldHRpbmdzIGZvciB5b3VyIGVudGlyZSBjYWxlbmRh
ci4NCiBcblxuRm9yd2FyZGluZyB0aGlzIGludml0YXRpb24gY291bGQgYWxsb3cgYW55IHJlY2lw
aWVudCB0byBtb2RpZnkgeW91ciBSUw0KIFZQIHJlc3BvbnNlLiBMZWFybiBNb3JlPGh0dHBzOi8v
c3VwcG9ydC5nb29nbGUuY29tL2NhbGVuZGFyL2Fuc3dlci8zNzEzNSNmDQogb3J3YXJkaW5nPi5c
bg0KWC1FQVMtQlVTWVNUQVRVUzoxDQpYLUVBUy1TRU5TSVRJVklUWTowDQpYLUVBUy1SRVNQT05T
RVRZUEU6NQ0KWC1FQVMtTUVFVElOR1NUQVRVUzozDQpFTkQ6VkVWRU5UDQpFTkQ6VkNBTEVOREFS
DQoNCg==

--_004_cd89fe41f030bf971b56fd73a771e7dftopicnl_--
