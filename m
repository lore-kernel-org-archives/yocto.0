Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6A8AC433F5
	for <webhook@archiver.kernel.org>; Fri,  4 Feb 2022 07:20:38 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.78])
 by mx.groups.io with SMTP id smtpd.web11.6401.1643959236425777324
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Feb 2022 23:20:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=Lp8vkZ2T;
 spf=pass (domain: optimeas.de, ip: 40.107.22.78,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TTyzSpkv54Q8pamj0fdplHVKNjq5+YcZGsiKMePn3IFRl1wd8YMkIPNbpDvdsGt4969jB3PKsUDMPN9r2vafrZBePAfJHQ857Su55qM8ODb3lmm/JpcfoXIvZupKcT7ukSalgmLMHSGdyF7dRfZgRw9SXiWk3XPGbDuscSJo7yqSOyPErYEZ8M67acoRRo158iEJPw8CwqoMvb/3XPQkbSunB7ZwpbBZdRs5w3gZ2Ogyw3M8ccIoMt3v6gAWzUR/DGMzOv7Wh/iunY4CCqU9wbFSbNmEPfThL5FHbLGLYO+191c8mS0TR0xLkl/MspZq2ghHkW1VVhWXMlx01QhhVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sNyfa12j0hspiU2UlqJ0tMxGEP5d3qBx/5/Jm8IxcQk=;
 b=Tl4X/aDIY2ZzdjXIoTQntkgzfs8izjbSawYDOi7s3Ug9i1uLIIV1PT70GPw/95yAScdexOcZvvHNB1GUnOA/ucRQSd8xv83msYjUWMaNBcqBLOo9CFAc//9Rzsu1YzAh/ktAm6otu/R+8euGP66H3asITSIDtGPCmTVynq8/SvjUZYfd6gZNEzT9IB4w5128rnxzANIsba6oCZNURbLqUDWKpsw4TYGmAvcjnrVJgrPhcb3qlDrjvz4GLA09oKoze9KEIHcL+SOqgdMOpZMbadnLsCAmAzOaD8t13ThTARriFyuwCZ+9SVKa/PmC/VIG6MXMXs1uNqY1x+hROLt1eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sNyfa12j0hspiU2UlqJ0tMxGEP5d3qBx/5/Jm8IxcQk=;
 b=Lp8vkZ2T6QgvrR0Nhw8NumCQhFTF2oz9TJnaxVyJx/cVS6Psmihpzd/LwJwRXHVTOhD8KdRnAtA1xuIISBrx0dYMXNgs8UufMeLUp2Op4qrWZuY9iuKwzKtvdhXx0zgBVTcvri+iwqGCTet1S/NR3zPhWQ4+ut0r9SnbgGJM0Qk=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by DB9PR10MB4731.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:255::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Fri, 4 Feb
 2022 07:20:33 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5469:dc0c:7012:d085]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5469:dc0c:7012:d085%4]) with mapi id 15.20.4951.014; Fri, 4 Feb 2022
 07:20:33 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "raj.khem@gmail.com" <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: AW: [yocto] wget - The certificate has not yet been activated (does
 also happen in qemuarm "virt" machine)
Thread-Topic: [yocto] wget - The certificate has not yet been activated (does
 also happen in qemuarm "virt" machine)
Thread-Index: AdgY3zrA9A54wWBoS1Kqbp790o9XYwAQZ+wAAAS8CAAAGNm4MA==
Date: Fri, 4 Feb 2022 07:20:33 +0000
Message-ID: 
 <AM0PR10MB31075AB2C513ED78BA3685F299299@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: <16D03C33527B22CF.12815@lists.yoctoproject.org>
 <AM0PR10MB3107D33BAF6FC963800A700E99289@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <CAMKF1sqC=VfzzWMORaFVabXBuR+bcLE+FJfPMpc6ZTfmuvS0bw@mail.gmail.com>
In-Reply-To: 
 <CAMKF1sqC=VfzzWMORaFVabXBuR+bcLE+FJfPMpc6ZTfmuvS0bw@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4ed43fa8-1fb7-4fdb-35e8-08d9e7aed514
x-ms-traffictypediagnostic: DB9PR10MB4731:EE_
x-microsoft-antispam-prvs: 
 <DB9PR10MB473108767751892B2D6D083B99299@DB9PR10MB4731.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 9wJMPSNX+HWX0x8D98/wqiW8qT3AHGgt6dQr66OA+TEFzghNItblefEWwOySPsD0nAjJLiQO3MykMdT7OuusQwXu++WOEJhZKOGJGNhR8IipdKY9ew+Uj/DESa8rzxtddLiGr2FNd/9KRhEnpQ8KkwAs49F4Me2k/lgP21oczVFNrVwhb+Rhj/acYFaXFV9hOQidweMsaKDy+siksIeJ4qlpXE7aOXRtmJl2kzBvWkEjHrnYmk/1PHZSyoSksH2xTG68UGl30FJhr57QRsLb5svsuxV0tVwtLoRRxvn0rE+HfUuE6LcIolAmVRbcjpGujpH2GSTz9yiz1/Hfcqsp+Ifxume4qUM9jLlOttxUaMrDK9VdfjmZtzWDgl+t5SjIOrjyj8vIQlAv/aqsBxW4/r3OVuSRVLBAqxbvFxJK1ZYWA+tHzI16uyCDs/ms9bHyEnKDb4ctxEk979Z6luOFaRN3EhgPy82szbN3UueF4Nf+AKGb1NEzFo4Y5CNPaqnmYpA/a1z/S/A/x85o0jv6IOrWCN/MEwl2tB1rSN4w9fPxjHQQKZ9sQBuyElFG2oxa5A7cFy0Ohq0em3f4vvtnTrEngJAtTsYKVMw/QSGiaiQwqd4PedFzwghm0xEXWPldmwVeqUxq9Fiy6U68dZh9MWG9+tyf8yHylArUiki585eH2zGuqkxdHIByTQntQggrYsu3xH6BKH4JB5Jz473EAg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(136003)(366004)(376002)(39830400003)(396003)(346002)(33656002)(44832011)(186003)(71200400001)(316002)(4326008)(66946007)(122000001)(558084003)(64756008)(66556008)(5660300002)(66446008)(52536014)(76116006)(66476007)(8936002)(8676002)(38100700002)(86362001)(38070700005)(508600001)(6506007)(9686003)(55016003)(7696005)(2906002)(6916009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?MG5RaFVlZWlQWTIxenhaaXYvb09YYWZCRGRTbkdzTTEwNmRadVNTcVhWTklh?=
 =?utf-8?B?dXd1YmY0TXdwNmFVSmVpNEoyV3R0bTdWSnNtS2JjR3A5b3h0QkgzYVhtVHRu?=
 =?utf-8?B?KzBqd0dSQVRPczN6Mm1BY3dQZmJ4TDQ5a3BhM2N6TVRjVlF5MUJ4b3ptSjUw?=
 =?utf-8?B?cXVqaGJ0Q0h2VHM5YWszUVBoSnovUUFXWlhrL0Y4MXJzOG5jVWcrRDRrZTdJ?=
 =?utf-8?B?eDgzOWh0YWRRWEoyakFlOVY2UStyRWRFNy9UYjdHU3NBbC80elhPMlFsSTF2?=
 =?utf-8?B?ODBHSWRDd3FZZ0JBMm5FcHNteXpQYTExVkw3QzFNdFlFeUhRVmxtZS81WGND?=
 =?utf-8?B?aS93d0JFS2t0dTRVaThIeFlUQ2cvS0svOEdVWkJvMzZ6MThnL08vOFVJbktr?=
 =?utf-8?B?bldoa3J1S1d4clJHSU1obG1xbnhnNVI1OEwyY0hhWE85R0lmdDZpYm93dlk4?=
 =?utf-8?B?R1kySnQyL2djei9EeURIZ0FoM0NQb0MvcHZZMFRYV0pIZTlURWFPOXNWZktm?=
 =?utf-8?B?U2didTQ5OU9Mby9SOXZGSnRuZit5RGNaM1RSTFFDM3lOajhLMzhxMjdMcFpo?=
 =?utf-8?B?aG5XTFhxTU5PK1ZWa285UnMwME1Td0FpdkJPaytMb3hyZm5wUVJaOTdpdGpJ?=
 =?utf-8?B?V2RBNE1tYnJwL2hHSFcvb2tZSHZhenJ6eGlrcU4xdkg4Vm5tdmJjWXplWi95?=
 =?utf-8?B?dHBmTkRjbTdvRC94Zzk3b1QyNTBNWFFOZ1ZOQlRiR3pIdlBxTi96OFpOYTdk?=
 =?utf-8?B?eG9CSUluMEM2SFNuN2RodENOL01Ba210dHprZjRuZHpUZ1dlb05mb3llUmhr?=
 =?utf-8?B?RVZ4QXM3RWxsYlNLUVQ2MU43c3ZiZGZiYzlJN0ZYT3REdXgrRTk2dUQwaXYx?=
 =?utf-8?B?ZDA0Y0tyM2tLNFJGSi9YaElONllONjVaNnRNNXRJRzZYNkx2T3duMm5PRXJV?=
 =?utf-8?B?VGZNa2JKcjVpS05VRnlRWW1zT0RFQjhMN3Q0bmJIMU9oNTZZM014ZmRySXE2?=
 =?utf-8?B?U0lYMEZpaG5Zb21VeU14RThDT05OK09XY3hlMXRxejB3eERqMU1PWHhjRktn?=
 =?utf-8?B?K0tpbXJFSWdSVktUWFVEeGNJcVVkUGM1TW16dHVGdkszcWJTLy9SUlAvSHpC?=
 =?utf-8?B?Z2tSWUFQbldzVGRFazRBWHZKbWs1NzZhMkJaWmNoUUZmMy9SRThpbjZyYXp3?=
 =?utf-8?B?dUxoT0oxSlZKbGhUcFdYdDhBTllJVzhWZzQ5djZoYWFQcC9ab2haTnlUOGlI?=
 =?utf-8?B?K0pFNjB6Vkx6QTlIOC9UMHFwd01FYkhnQnpITU9KVXpwWVhpTjg2aTM4dUtL?=
 =?utf-8?B?aWxxSmo5dzhBdG1QRityT0FNR2JISFNiMEtEazdtRDF3S1JiYWwrTFlMRktJ?=
 =?utf-8?B?NkFkeTF3Tm9BMmo2S2pWRExoTUFsTEdGbXZRQ053a2UzN1UycWxaQS9ib2hI?=
 =?utf-8?B?ZEczMktreG9vZ05TUzlVem1VVU9aQmUxcHVMUXMySEMwZ2JTWGk4bUJNdEFY?=
 =?utf-8?B?NE1yUUhEdmsvdHpDU2hEZU5iZUdPVGk4ZUkvM2k3ckhCMTYwQ0VJOE5oRmlL?=
 =?utf-8?B?Vkk2VE8zR0hJR3Y4RDNUMWxiUGRIZzlPcmZrMTVXcjBKb2F2aWpjdFI2SUFE?=
 =?utf-8?B?M2VMakFUNFY5ZGhhQXkwOFlQM1RqYi8rL0krMGJzMTV2RGluU3lBUGJCbVJ1?=
 =?utf-8?B?c0N2elRWRnNsT1lUb29zeHV2bnpvU0hmNTkzNFp4ckNJSUpZcGMxQm5uRk5X?=
 =?utf-8?B?RjdaV2VMNUxta3ZqL2V0bUJ5YUl1SU82SDgySWNaeE12OEVJcmkxR2VMaGhl?=
 =?utf-8?B?WitkZDNrb25DejBlbWRUUlJiS1crbE53YWVKZEI4N1RMK2hzWXhRRUZIZ2RB?=
 =?utf-8?B?Q2wzTEZIRmFIM1BQUVdJVVFieS9sbkZLQWtvTEhzMTl0aHVQdFBBSFdHSUZB?=
 =?utf-8?B?OTF1dm5ubktuZGMvUGlpa2JuU2tlSmU2c3B3aEZEckZLUUNPdmgyRXZ2TzZX?=
 =?utf-8?B?T0ZWbVVXaXVITFIwYVJ1Rm1DTlZkeG1PMys5amFwcHNzeDJRYXNMTk1wbk0z?=
 =?utf-8?B?OExmMDhGbjBqQWZDUmtRKzIwQUFVRUhqN0hsY0M2RktWdXNUVVVwRVlNOHIz?=
 =?utf-8?B?eWFHRkQwNFMrTkRoVHMyUjRJVGRoNjVpaVZnYzlUTGpEeldNUUgycXhYZjhH?=
 =?utf-8?B?ZmxOOFdGRkZLTmJVeVYzdk9HSzJGRU9NaGpjSXUwMzJVbnViYmJmc1V6MzV6?=
 =?utf-8?B?a21kT2V3b3lhNDBlZ1BCTWFCSG5GMlJFS0VHTTl4UmNEWHRVbGNLYVdjZm4w?=
 =?utf-8?B?NGdxRHNSSHpsNDlXQnIrYzlmaUNyeGgzeFJuU0w4cFRkNGF6UlRmdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 4ed43fa8-1fb7-4fdb-35e8-08d9e7aed514
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2022 07:20:33.4208
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 IczToRGcQDghewbL+3Fir/Seavkd2EY5c1vVSxbbQevwA7e4WKKOfGdIZFJVH6Tna0GAWzzQ23bHuv44+quesAv+gj5QdTnRNGyQmu/NZwk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR10MB4731
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Feb 2022 07:20:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56065

SGVsbG8gS2hlbSwNCg0KPiB0aGlzIG1lYW5zIHlvdSBhcmUgY2hvb3Npbmcgb3BlblNTTCB0byBw
cm92aWRlIFRMUyBwcm90b2NvbCBpbXBsZW1lbnRhdGlvbiBpbnN0ZWFkIG9mIGdudVRMUw0KDQpQ
bGVhc2UgZXhjdXNlIHRoYXQgbXkgcXVlc3Rpb24gd2FzIHNvIHVuc3BlY2lmaWMuDQpEb2VzIGl0
IG1ha2UgYSBmdW5jdGlvbmFsIGRpZmZlcmVuY2UgZnJvbSB3aGljaCBsaWJyYXJ5IHRoZSBUTFMg
c3VwcG9ydCBjb21lcyBmcm9tPw0KDQpCZXN0IHJlZ2FyZHMsDQpNYXR0aGlhcw0KDQo=

