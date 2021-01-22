Received: from NAM12-MW2-obe.outbound.protection.outlook.com (NAM12-MW2-obe.outbound.protection.outlook.com [40.107.244.120])
 by mx.groups.io with SMTP id smtpd.web12.6548.1611305998181790988
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jan 2021 00:59:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cognex.com header.s=selector1 header.b=XvCRJW2k;
 spf=pass (domain: cognex.com, ip: 40.107.244.120, mailfrom: oliver.westermann@cognex.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LAvMRnkS3HNjn5ZZX3CK9FdtuTFjA0wbfcMPh9zuXN+2n+9aqO7JJH4ZIvwb3RDejYNcK0P9AiGuQIHt0Lx1KHHW8KsRZrMxJfdHrlkVjN5JGLtv1lYLQSDFq1u2YozEpMuJuBl9axvCGR4lGykLmFxI/EBHSiddlV7Q+gyPVs8PQB4G+UhnEsCT5ODzEcNqKBQjYOBNn/Z4p83xJtbO4UQJhxBFKz6GM1YIDULPzNEcUxIIAI8MLKLqTy50BOECQUp+phFVvmqFKlRfygOdYnacw00D9gmRYBNw8/r1rw1DCsHbbDKDTmgmxmw/Sq2ZS4TEIFN8E96YQ4f11FbV4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5QMROWf7A8O2fKq7fw/+ZeAKmxtm7Y+7sYrsr//tTrg=;
 b=LpZA956qE0TAh93YT5uPVFfXJ6lBB2ooJn3ebYLupIDFRMvP+lmohcv6u0LludjmZNDEbLWu6jvSzFl1fPrSasFWYfa2XeQytZYEQ/npRsIUrkUk825HfG66etiRJSaFaJ48ve0TVY99u6+QYVSINlPpdzZtA2iRLkdUL2EHZpanvck+T9ClOdhLxhrjKvsqCV2AsSe4VI82UAk9f42n2BZKRdjHrk3MlK9YEy6i6OEmpFD3jtZl83YdgV8d08yOQr+rzIUqvdztmJMYLM2wB0CT64/oduPZM9Uc9zDTkI4EKTqrZhl+LDL5NkZqFyM/BI9lQIDfIg4B8lyi+bPyVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cognex.com; dmarc=pass action=none header.from=cognex.com;
 dkim=pass header.d=cognex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cognex.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5QMROWf7A8O2fKq7fw/+ZeAKmxtm7Y+7sYrsr//tTrg=;
 b=XvCRJW2k8ub3u9BEcO5QBsKw4FqoGNJlEEsmBkNQpNYyRv2jqKFeZCGxaRpakLK1p1bO9fnW65EyBn3tn6iOOOZ5b0+EBzIMJZGrLBMGaVR/G8KfUJCLxhtgBM6jcYlgmYdmu4BIIQq+nj4K4YBNzLYo2Xox949HeGvphSHvy+c=
Received: from MN2PR06MB6573.namprd06.prod.outlook.com (2603:10b6:208:206::20)
 by BL0PR06MB4563.namprd06.prod.outlook.com (2603:10b6:208:57::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.12; Fri, 22 Jan
 2021 08:59:55 +0000
Received: from MN2PR06MB6573.namprd06.prod.outlook.com
 ([fe80::d1ac:9794:5638:4e3d]) by MN2PR06MB6573.namprd06.prod.outlook.com
 ([fe80::d1ac:9794:5638:4e3d%8]) with mapi id 15.20.3784.012; Fri, 22 Jan 2021
 08:59:54 +0000
From: "Oliver Westermann" <oliver.westermann@cognex.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: NPM Fetcher & License collection in Yocto Zeus
Thread-Topic: NPM Fetcher & License collection in Yocto Zeus
Thread-Index: Adbwm/l+beC9zE6aRCSM8C9wPKNzmQ==
Date: Fri, 22 Jan 2021 08:59:54 +0000
Message-ID: 
 <MN2PR06MB6573437B09D8AD3427DB2E5086A09@MN2PR06MB6573.namprd06.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=cognex.com;
x-originating-ip: [165.225.28.56]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 75542dff-8c8b-433e-e48c-08d8beb41639
x-ms-traffictypediagnostic: BL0PR06MB4563:
x-microsoft-antispam-prvs: 
 <BL0PR06MB4563C11BCFE8E16D24B827AC86A09@BL0PR06MB4563.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 UM7Uz13yquXMallWgdxCjCvV4WiiFbh2zzX1FmuBrN3lfBYxt//nRYluJNgoQLMyEREgtfProM9Lzg3+ZWUulJ7bGdTmZpG6Ufvb9pWPFsobfpae5ljVBScG8d6rbiRIIIV9bNFBn0y5huhS9Yjc6/RgjFHJf3tC+VcIdlh8cPF5jZqnDBrZ05G4A8HdNYOC4DTyeRB7GHm2vgt3Wt3aER2VKwq1D2wM0gBnKPIaelfrOtKPqOysM6NO4rLsD7ZkYR7X6NKUDovpsgNZiNtvyKYFPLf2L5QtUkN2Nv7MDqwSdtcSPzj4jJcL/2Gk/F5dX31C+KYv72CNmA3NnHSZPzmvqAZgCo98W1EsL+gJOAx1uKGm1Wwx1LAKAYcL2oi4VUwLZ1awcz1LQReA3EhMgT8Cc+6WifE0S209tPWuFunTVdHAZ73P9B+B1Wx/f/5bZasI2tt5X6cwCMKbyus4F1ygzUee9HB8t5vHHkJ2S/wFy8+homK3kz3B8qi9cDCbj7y3MQMWqcZE2WZdJTIKsw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR06MB6573.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(366004)(39860400002)(396003)(376002)(71200400001)(8676002)(55236004)(7696005)(9686003)(55016002)(478600001)(5660300002)(26005)(33656002)(8936002)(52536014)(83380400001)(186003)(6506007)(64756008)(6916009)(316002)(66556008)(86362001)(76116006)(66446008)(66946007)(2906002)(66476007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?UHEzT3Z2OUloMzFZZ0ZjOEgrMTFNZEx0WDhDZVQydVNWdTRvcktUYjJmazNk?=
 =?utf-8?B?c3BEckJFWTk2SVU3eDJDdklLNjl4cnFOaHJFQjBVYnp4c3AzdEwxZHFqaHBZ?=
 =?utf-8?B?cCtEbnBraHhRYUdRamVoT2hjbFVydXc4UG9adnRVeGdWUUlpbVZ6YlhSS1g4?=
 =?utf-8?B?eGpYczArSUZha2VvUTZJTFdBRnNGcURUdWYyZGJaNHB6d2xvQ1JMa0FXN1Ay?=
 =?utf-8?B?M21rNVVWKzhyRE50WGc5S1JjVStYT1ZGdVA5YWlYWDM4Ykp6SWNmYm5lOTF3?=
 =?utf-8?B?enl2WUlyRkJEQ05UYzJIbFZrYUV6anFDTThiMU1za0cyL1B5MzJHZ3k0VTlx?=
 =?utf-8?B?UTRBQ2RzUm10S2RhUWhHRFVnazRnZGJZWUVrWG1LUU05TzY5elVDQ3ZTdDFY?=
 =?utf-8?B?Q2hHREhIOFV3RFdjaGY5NHBIeUJiaDVWbVNYeE8wazNWb0NWSWUwaHl6Vmxo?=
 =?utf-8?B?TmtHWnZ2QWc4RWxCclJNajVhc0JGQURJYUw2TFAwZGRubksxQjF0Qm0zOTRw?=
 =?utf-8?B?TWhNQm5PTm11cVdObklHVHduR2ZuUHBzWXJjRGJueFAvWHl5ZlRoRFY0aUxU?=
 =?utf-8?B?RkpnNDBpd081dDVLZkh3dWZudm45VER4d0Z1T3BwNlpZbjBSNTFwS3dYNHNv?=
 =?utf-8?B?TWVxVjR3MGN3SUNhL0FCQUJaajRrZjZhMnVaM2lQVlpkZmMwWEhzSStiNkZu?=
 =?utf-8?B?V001dW94bHJhNGpPU0V0OE9ORENpamtkQUxxOHFkZ0lPZ0c3OW9PbDFzMk1F?=
 =?utf-8?B?TjlhWktOenhQVGVxdmJDQnBVTVZBa2xsYm1NTFBhQkRWY1NFTjFZdU5Mcm1l?=
 =?utf-8?B?ZGIvQUtXdzZCa2ZwK0ErVnJzVUlFajRndkFLblhIV2JieG1xdmsrQnV5MTlN?=
 =?utf-8?B?RnJSSzJDUE9nTUQ0UzdzNGRZbCtJTkV5NlRkbjhSWmgvdXowVG9VdlJORnpy?=
 =?utf-8?B?c0IwN2dUc2dVUWN2RHMrVzdrdXo0bmdlMHQvclJSb2p5ZXhhK1k2eXVXVWZQ?=
 =?utf-8?B?Q1NJbnNvVmJWYnQwcDJ5ZHhmN1dleklHNlpJLzRLRmpSQkMxY2lxRnlGaTJL?=
 =?utf-8?B?NmYybkF4dGs1THA2dFR0OFgyNjg4dUJjT0lVQWt2NmUrczJhZ0hSWFQvY1V2?=
 =?utf-8?B?alZBK1kxSnM3YUJjNVZhQVYwY3JDQmdzQ2QybWhCTGhnTlFyQ3o0MTZxQVZv?=
 =?utf-8?B?Yk1ZeXkwTGFTZkp2RXZaZllBNWN0V1kxZDhlTUxUS2VpSUhEbGJGVWwyWHlH?=
 =?utf-8?B?TkRFVUJoelRqSzNyN3RQbmRVSlNDZmlhZE9JWS9LbWp5RWpJbmpoL2EyaWxW?=
 =?utf-8?B?ZVJ4dDc4ZDZSVWg5aGZXcCtjaHdQQUorTFYvemszSnhXSS9rbHRyZG94cTAv?=
 =?utf-8?B?dlBsd051VEhtczhPdWl1UWJjcUNjTVpibVJieHkrS1pDSkVrSGlzbXVaSGk3?=
 =?utf-8?Q?r4lauLt7?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: cognex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR06MB6573.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75542dff-8c8b-433e-e48c-08d8beb41639
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2021 08:59:54.8223
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c12007a4-882b-4381-b05a-b783431570c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D5oVn8uhjfGkAnVNRNgoJep6fG8ZDsEg8rGTv04s1ptCdiSg8x39g3TU/rY7ZXOYrRpCUOqMwlCdjqUY1/ddtLCLpcaAvXA5wHDePmktOS4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR06MB4563
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGV5LA0KDQpXZeKAmXZlIHVwZ3JhZGVkIHRvIHpldXMgc29tZSB0aW1lIGFnbyBhbmQgYWxzbyB1
cGRhdGVkIHNvbWUgb2Ygb3VyIHJlY2lwZXMgYXJvdW5kIG5vZGUtcmVkIGFuZCBpdOKAmXMgbm9k
ZXMuIEJlZm9yZSBJIGNyZWF0ZWQgbXkgb3duIGNsYXNzIHRvIGVhc2lseSBmZXRjaCBzZXZlcmFs
IG5vZGVzLCBub3cgd2UgdXNlZCBkZXZ0b29sIHRvIGNyZWF0ZSB0aG9zZSByZWNpcGVzLiBJbiB6
ZXVzLCB0aGlzIGhhcHBlbnMgdXNpbmcgdGhlIG5wbTovLyBmZXRjaGVyLg0KDQpUaGlzIHdvcmtl
ZCBmaW5lLCBidXQgd2Ugc29tZXRpbWVzIGhhZCBRQSBlcnJvcnMsIGhhcmQgdG8gcmVwcm9kdWNl
LiBTb21ldGltZXMgb24gc29tZSBwZW9wbGVzIFBDLCB0aGUgbGljZW5zZSBmaWxlcyB3ZXJlIG1p
c3Npbmcgd2hlbiBkb19wb3B1bGF0ZV9saWMgd2FzIHJ1bm5pbmcuDQoNCkVSUk9SOiBub2RlLXJl
ZC1jb250cmliLXNvY2tldGlvLTEuMC43LXIwIGRvX3BvcHVsYXRlX2xpYzogUUEgSXNzdWU6IG5v
ZGUtcmVkLWNvbnRyaWItc29ja2V0aW86IExJQ19GSUxFU19DSEtTVU0gcG9pbnRzIHRvIGFuIGlu
dmFsaWQgZmlsZTogL2RhdGEvd29ya3NwYWNlL3lvY3RvLWJ1aWxkL2J1aWxkL2NvZ25leC1teW5h
L3RtcC93b3JrL2FhcmNoNjQtcG9reS1saW51eC9ub2RlLXJlZC1jb250cmliLXNvY2tldGlvLzEu
MC43LXIwL25wbXBrZy9ub2RlX21vZHVsZXMvc29ja2V0LmlvL25vZGVfbW9kdWxlcy9AdHlwZXMv
Y29va2llL0xJQ0VOU0UgW2xpY2Vuc2UtY2hlY2tzdW1dDQoNClR1cm5lZCBvdXQgdGhhdCBkb191
bnBhY2sgd291bGQgZG93bmxvYWQgdGhlIGRlcGVuZGVuY2llcyBvZiB0aGUgbm9kZS1yZWQtbW9k
dWxlIChzbyBpbiB0aGUgZXhhbXBsZSBhYm92ZSwgbm9kZS1yZWQtY29udHJpYi1zb2NrZXRpbyBk
ZXBlbmRzIG9uIHNvY2tldC5pbyksIGJ1dCBkb19pbnN0YWxsIHdvdWxkIHBhY2thZ2UgdGhvc2Ug
YXdheS9jbGVhbiB0aGVtIHVwLg0KU2luY2UgdGhleSBnbyBpbnRvIHRoZSByZXN1bHRpbmcgcGFj
a2FnZSwgd2Ugc3RpbGwgaGF2ZSB0byBsaXN0IHRob3NlIGxpY2Vuc2VzLCBzbyBJIGZpeGVkIGl0
IGJ5IGFkZGluZyANCg0KZG9faW5zdGFsbFtkZXBlbmRzXSArPSAiJHtQTn06ZG9fcG9wdWxhdGVf
bGljIg0KDQp0byBteSBwYWNrYWdlcyB0byBmaXggdGhlIG9yZGVyLg0KDQpIb3dldmVyIEkgd291
bGQgbGlrZSB0byBmaXggdGhpcyB1cHN0cmVhbSwgYnV0IGNvdWxkbid0IGZpbmQgdGhlIGNvcnJl
Y3Qgc291cmNlIGxvY2F0aW9uIHRvIGFkZCB0aGlzIGRlcGVuZGVuY3kuIENhbiBzYiBoZWxwIG1l
IGZpZ3VyZSB0aGlzIG91dCBhcyBJIHdvdWxkIGxpa2UgdG8gY29udHJpYnV0ZSDwn5iJDQoNCkJl
c3QgcmVnYXJkcywgT2xsaQ0K
