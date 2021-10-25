Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B177C433F5
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 14:21:30 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.50])
 by mx.groups.io with SMTP id smtpd.web10.32683.1635171688717220561
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 07:21:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=AyoVKJk4;
 spf=pass (domain: optimeas.de, ip: 40.107.15.50,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j7/qA0VTrCOqNiohW5lrVS1izLMPmOoylmEaTbRwBIG3N7yWbp4cmT3WbqQ8JqI4ppPzpmmPe3CW+pkGIzKAbOW+W+s2uNXvnKnKAe/5akslYCOUcnoAtheluHSy9xOpXD6Ai5ciQEkogK6qEI5WJcDCBuFb600weNhViFAlyrD+Z5JtcCj+FuMUxqjHHQ/cIrZjJkU/FTuXz1nomOxHd3dFhLLrJbHXYbdjx/YwI1WMw5exUtUP2OJtdDq3kPJgezu3R1LQDopTDlsR6z7/CPiYFa+6x0Pj7kZAEbYb+N9w48KcP7xUXgU7zy7lVeYwoP74I33Fv2JMnDi7wuma0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LedZQ4ccu72fUDNhA+Iblx+sIDG5nG2AoG97OIYbyAA=;
 b=k+E98wnfAoSxDBJfj5aRNPi9NgJXspeDFgpTfng5sGP6E86byrQeeVVUJfElnOP41EfITzv/l5XdRAIRQPEe0j3mC91arG7C27EIJVBdjw8afM0E41eNQMUWts6EYSgE/F5TAZHo2ewkgxjj6bGouDqZYvaprbHhJDXL+r0ZZmvtYovvew2u2bR/F1XoGPt8E6joGMVof7QvYrWQKtVOzG23ixyX0MS6i0f6VrIetuovjWVlzoC/kIQUgrlQKHo10q00AzpULRB6v7TYl9uXq89B/vF0BOICsJN7zVwJnYfm39zVLBqQvMHWdUMyQx912HAEtibMCPE3UXQZViKfTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LedZQ4ccu72fUDNhA+Iblx+sIDG5nG2AoG97OIYbyAA=;
 b=AyoVKJk42mQgghKrGgvWtRV8xDIs8PGRCYFuIqnCzPBuU8RYH1NSkn17HZD/rpGUXRI3zJcMRCBjRXrYAZ/nTFhSA4wLRuiUMa8stUkenysnujptj2JenLKQc6yPoaLoSx4g8pOXfdzFz0ykc6uu23mfCa/3ktpfl2K/+mR3+Wg=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM9PR10MB4183.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:1fd::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Mon, 25 Oct
 2021 14:21:25 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::ac42:ccb3:50a5:6754]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::ac42:ccb3:50a5:6754%3]) with mapi id 15.20.4628.020; Mon, 25 Oct 2021
 14:21:25 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: AW: [yocto] dunfell: pkgconfig-native build fails in existing Yocto
 BSP
Thread-Topic: [yocto] dunfell: pkgconfig-native build fails in existing Yocto
 BSP
Thread-Index: AdfJbBnE+NnvoeajQOedRbHeST7ytQAHev+AAAhc68A=
Date: Mon, 25 Oct 2021 14:21:25 +0000
Message-ID: 
 <AM0PR10MB310704CD585826E131542A2A99839@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AM0PR10MB31073A9D434C38BC2EF8A48B99839@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <31bc3d89241386e397e8d90dd35a6fdb71f938e1.camel@linuxfoundation.org>
In-Reply-To: 
 <31bc3d89241386e397e8d90dd35a6fdb71f938e1.camel@linuxfoundation.org>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 37036eb2-abec-413e-8c77-08d997c2ba60
x-ms-traffictypediagnostic: AM9PR10MB4183:
x-microsoft-antispam-prvs: 
 <AM9PR10MB4183EC1B80F71F0B2787C25699839@AM9PR10MB4183.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 7NMtJq6akEjRb+lNCPhaPgdz8zwx/ZZDaCO1xEwGtaDBDML4jg8SEmuB0MSU4YCdBcFUGUD+jACPVCtV0x6pJMjlTXRnq/zB3jaeUkYRPaxjR4eBZdAwydo07ZuoxsWw3PmcJ2u3Mk9dt2yP3DojA3Ipv8dMqowLWJjw5WPOQ9h735Urci5pk43idwiEk/hNUiHY/7sfuaiK6oIGin+fUtCCqD4DraHh0XyGE3a6eAl9vmQU3/k12+BBRzcyJwHW5Bs03FsZkrF1gq2Cnyk4di/ZEkmL4TsRW4hePLmUuLq+/CBuNSlAbXznIImgKQ+M9emUIqrXqYDYld2vFW55VbMTpnWSjunt/OxNsbHXTCnO09k6O5UL6mGBsAvFaFrrk3tzBilvCWo9oYMednsTVRC1pv0SejZA65Ejmyg/uUwIrQQhbclwvacrdy9roREK7XVPQjaSXRzmZITkJDFcDIpLu9SSzIy31Izk1pEChP5NyLfiNH84662+SBbuFE0W4B4Bhw6jUgDccBKgQrPQVNA1G1owoqTszNksqxdGpOjNFyG9XimVWZKS4CD4jk6nTNUaQQG8ZCK9qEA4wUyttvL51Ca6sZZKD0UBWOyJp3ivvH7vy0nksjmjyFuB6+Xnx2m2OzhupEMajdyqWqdVrfyx/3IeCJCYS9DQhdtszg7RhCK43Agk0sujQxiJ9pF2y/6e3F+u+jRUshkmVJ6PUA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(346002)(39830400003)(376002)(136003)(396003)(366004)(558084003)(66476007)(66446008)(64756008)(316002)(66556008)(7696005)(52536014)(66946007)(76116006)(38100700002)(6506007)(86362001)(38070700005)(8936002)(110136005)(19618925003)(2906002)(4270600006)(122000001)(508600001)(5660300002)(44832011)(8676002)(33656002)(186003)(71200400001)(55016002)(9686003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?ZHpETFlHeG5USG1sT3YyeEVPMlJ2OUU5MXhsK2JFd3VhZXAwbUU1eTJxeEdP?=
 =?utf-8?B?bGpXNGRBUFk3MU92Q29MWFZGTU5IYTlldVZ1TzFTckw5R0dZK2tNbEVhRDNa?=
 =?utf-8?B?VmxvUjMwY3l0dkFzaGpjeDNXRWdMZ1Z1cmhlNlN2ZXlGNm5tcGY2M0hkZDJU?=
 =?utf-8?B?NDZRN1RPb1ZjWktYcTF3UkJ4cUtkcWQzV2tFbVBhamNmUGtQbWNocEdITHN5?=
 =?utf-8?B?Z29zU0hkcXFlemplbkxHZTcxZ1hBelQ1cDVjdk1SWi9mdkdqZDM4djQwRmhX?=
 =?utf-8?B?SDRxK0VsUG9lYnVSWEJxc3UyM0RlV201S0pkMUlsVlNJOCtEMHZHMGErTlFx?=
 =?utf-8?B?VEZiMWs0akdoOXplOUd6M2VTS05hcVVSVzlBM091UWpoLzRKazFWelZJZHp6?=
 =?utf-8?B?OGFrRkhqUjhWaVBXam9RbTdZZ1JJR2ZHMTJQWW9vdWI1RFRQTlR2N2gxeFhz?=
 =?utf-8?B?bXJCT09iZHowZS9Bd2Fhck05MG9GamgveEtLM1Z3Vi83RnZydlBrTU5xbzJx?=
 =?utf-8?B?dnR1R0xKa05Qd0c0N2VsWkU0ZDlEbDVvVGY0akR5Zk9CUXFPaXFuSmpDSmZF?=
 =?utf-8?B?TzIyT2ZBQ2J3WjJVbmNmQ2xwaEhpS3hIbEk5eUhsYk5MRFBIa1Jkck9lZEsx?=
 =?utf-8?B?eGNONkhDaGRDc3VGeENDa0JRb1BiS0dGMmcxMmhSNThZT0NQR1MxeTlEZ3V1?=
 =?utf-8?B?TnlmZm1BQVp6UDNYby82KzVuVjM1dDlXT01UdWNWSFBxVHlRWU1sTlZtcm12?=
 =?utf-8?B?R0l6d3dRclo1ckZRSEkycmZzb3VOc1NEZUVtTkZQSHBEbnVZR0RNY3BqSDhZ?=
 =?utf-8?B?bUdWR0xVMUhORGFoQlF6SkV5UEJzcW8wcmtWY2lza3RBQ09TcEJkZ09Sb04x?=
 =?utf-8?B?bG13S3A5UVBIM1plYVUwZ3REdDltdU1VdEkvKytrZXAxSTZ5N3BjWXZBRHZi?=
 =?utf-8?B?M0dhT2pKVTJmQk5RN0VlWHR0dUdTU2piTHNlVS8yUkl5ZnV1Mzc0Q0htOHE3?=
 =?utf-8?B?eGdJZ3pjbXE5WXo2MG44cDByZFlMT3ZGY1VYMnUvK1JaMmViQWM5bENCYTB1?=
 =?utf-8?B?WVkvcDYyR3NsR3JMeUR6STJubEpFVDlnNFlacVgraUlFcHBBWDhaSXQrakV6?=
 =?utf-8?B?cXJUSFNXcmhxSWRlbVNBVVB0NWNoZFcvMDUxdHRKT3d5SkZZUnUydGhaWUdD?=
 =?utf-8?B?TmlaNUdaNjViMSsvbGoxa2FHOTI1QS85MGtoOCtXY3N0VlZFTWZuSWFuREQr?=
 =?utf-8?B?UTNwNDdrREl4aFR5VHZtZTI2SUlHQXFJSnNlQUJuQXg1Z0tHQ2pla1lkcDQ0?=
 =?utf-8?B?NVVnVDJwZU9yZW5aOHNEdzVXSW8xTWt4d2FEYkZsR0lENUtZWGFUQk1ESS9i?=
 =?utf-8?B?K043M0pRRGZmeTVNVXhSenF1WnNrblF6N25EbXorc3BaeVRYOVlTcDJwWTI4?=
 =?utf-8?B?UlZtVk8zT2xnWjJ6RlRBVGM2Q3p2UTV0UDBibGdoTWQrWFZnNXVkMHlxMGkx?=
 =?utf-8?B?Z0dtZVhURTFhRGFHQTM0MDR5WDZHcUxXbzJjVGhucE8xenpDdURIazJQbmhU?=
 =?utf-8?B?dzdBeVdtODVTNVltRjlDL2JaN09wRjRlQ211Tm9XaTl4VjVoSXlFV1Q3VmZp?=
 =?utf-8?B?b1NueExSeEFCZERSVWtxL2NmMEZrRE9Mb0hqVSt6Z1dhMGJiczBleE1PaUky?=
 =?utf-8?B?eDJEK2hyYkRkRlFjZzM1Q3pIVmlSYmFkR04rbFUreG1makMycEgvVlVSQlJ6?=
 =?utf-8?B?SFpSTVlFYVJiZCsyb3ZvQmZIaldKcE1pSlVIZUFQUU9pemdqa29EZzNBOVZn?=
 =?utf-8?B?NzBDTE84aUlNcjJmc3FyUDloa0pRY0NUOWFLSVNwaVozZ3kvVFJmck9sd1J1?=
 =?utf-8?B?V3lMRHVxNlpDL0xBaTFIejlBU2pJeEl1ZUlBeGtaSUZjRlZtbHRlTjJZYUJ5?=
 =?utf-8?B?c1V4ZHcwWEpYTmg5RGpob053VWZjdk8wenFGYzlTUVB4d0JWUUh1NGJ2UnZ6?=
 =?utf-8?B?YUkzbGdoOUFxYVZPVnNSNXQwV21YRDdHYnl4VFJuMWlhTWpGdS9tQ1JhRENE?=
 =?utf-8?B?Sy9uaHZPcVgzdER1NTBPclQwSnhVeUUxY1hPeVg4aTIvbW9qZkZqWlZscnNV?=
 =?utf-8?B?WTRmMkJvekdxNFZlWEFDdVQ3aVhmZTBURDIwdEZnUzdLMGY4dE82VnVmaWtL?=
 =?utf-8?B?ZWhrWTcrb014d1pOM0dmTWNoV0V3OFRKR2k1dmtud1p6UXNYWDNGcld0MUZ1?=
 =?utf-8?B?L0YvZGxkSkNXZjUyTE1qY2pVRHBFaFc2Sll5bjV4c1pXeU1veXcxS2JUVzlx?=
 =?utf-8?B?TkxuTmJTWkFjV3ExbWtaZVZrMlFnTUdxSzlTbzl0UW1qRjM2aVAxdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 37036eb2-abec-413e-8c77-08d997c2ba60
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2021 14:21:25.4405
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 oYs04ddoFhk28iyxgiQ6N7cl4vCbpYscms6+ktFKazPUOFnf/c5eXRLzj/NZkfkD1EJbJ2O8Z7Ozp/A6UVKdxqMW6lDfoVbCYtasQBHSRWM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR10MB4183
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 14:21:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55145

SGVsbG8gUmljaGFyZCwNCg0KVGhhbmtzIGZvciB0aGUgcXVpY2sgaGVscCENCg0KQmVzdCByZWdh
cmRzLA0KTWF0dGhpYXMNCg0K

