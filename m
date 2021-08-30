Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.66])
 by mx.groups.io with SMTP id smtpd.web12.16464.1630328075278282439
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Aug 2021 05:54:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=Yds+tw2W;
 spf=pass (domain: optimeas.de, ip: 40.107.21.66, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ltmFOV6/3zVev9uTNomqmpUPlExwGWQJ94Xg+XsFLGDVpPFtAMsm0jO1Vf9Qi77ARptdZG4lfBMCRNebEofXQKBVjQZtt+GH2l9MV/1F/kVKYhN9K2l6X58I9KQhpraedy8xBRZjETp6B8OXAOzuMPURkEXsEpQ2dID0d4o/yH5cjyVhF54Fhew+kzKSKmefX5DUUJ9tQztqoc3KchFybpu5eyodW4u9qrbKu6AoWbBmpl6n9bfjJuSu90Vqh4/08RRBK9bnx++t0TXfub3qLYykuvynM71N2ezCsQTDxh21YK8Ghvn/t7Kx9zF78wMkfiS9nHcwDFqOLuurgL9Bjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CQjmx8GSBN6GNjZyUvnudVD9US6i3yUdj8CTq/xlq+Y=;
 b=SrR0TB9/2/KdYCoeAKnCvFcE3SsZBwCI+cx194uB0oGe2X7ObgTyzJ9q5C/ZELTb4gB7yV/hJ+zTOA03+2aXf07xZyw25dclxyuv6PraR5kZHqL2pB2qREIUq5Z2xWv4ivO49ZjyC1wfkcplhMuA3e22/Q80TldGggZzh8KiHBxmpwYisr2NZv0cmz+dzu1VvZZpRuQLOdvYVhTg9CndHbveqmx+R9CrSLPpBgdghHJwWb8OeACVad53SSFBdtbpNlvSq+KXSLcULv/NcWFWyfv/3s5LJ/5qH0evtr736kDz/LcB8mEWvSM7XMh4nCa5bOGpqgPxe0OHaSp8XDSsEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CQjmx8GSBN6GNjZyUvnudVD9US6i3yUdj8CTq/xlq+Y=;
 b=Yds+tw2W+HCttHLKN+j4tzfmRN01yZHAi8yh6bCNcDVKih2xQgXDSn2Aty1o9ombMlndopjfU5FZaF7ZX2R4c2ffLZNGfWvP+m3+/zhqM59HfJ/f6keKTRdJAMq/c6a48tJ0+Nv9WZiWx9hikNNuc9txDRFtEN/Et+ZGqe8nNlg=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM0PR10MB3170.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:180::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.23; Mon, 30 Aug
 2021 12:54:32 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1df1:442d:d6:9a54]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1df1:442d:d6:9a54%6]) with mapi id 15.20.4457.024; Mon, 30 Aug 2021
 12:54:32 +0000
From: "Matthias Klein" <matthias.klein@optimeas.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: extrausers-bbclass: plaintext password (since shadow update to 4.9)
Thread-Topic: extrausers-bbclass: plaintext password (since shadow update to
 4.9)
Thread-Index: AdednfBjjf/Uk5A2TVymOPe4ar1MOw==
Date: Mon, 30 Aug 2021 12:54:32 +0000
Message-ID: 
 <AM0PR10MB310796884E3E3D545695708099CB9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8e590cb0-8798-4bd0-30d6-08d96bb5500c
x-ms-traffictypediagnostic: AM0PR10MB3170:
x-microsoft-antispam-prvs: 
 <AM0PR10MB3170EE84F23748BD4897681A99CB9@AM0PR10MB3170.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 6kweemN6chx5yc8jlh6oUo1RnSaELGQqKk1XahBGIjczh7RwIIeoOPHIDXbFjSZ0PmlsK6Ow2w4Mi5KmCXWIGUK1PPtucvjD09xmmybuGS7oVdFr0wZLpuSzPCbi86QY+rsd518pNZ+G8NHodzD5gBT2haVrTw43DUYFxz7/LDSjQAqZQS7TQduZcv/xmv/1QradLzx2uRe9M05V3heRt0u8DbG8BYUSfrEKYSPC/4QMDiuOrE5CPopVHK+1yZgKDQKN+MoAVIbcNPVPUsoYuF3ad4IjFsx603urZayqUZTI95815cC3zuy7bXCjUU3qeD5+RW69uBu69HTT2O7fLkj7YlkpntZmnJ8LQ84OyowQrbxsUgX8dQzjflIFnxcY8xzRb5b7iTFywrEb6/2zh2koPODjRahhjKdndaPIpcX/8xRlAs6EdXn7DNozqULveJiamlFgGPvPdWpoOf/zEh6DtMN7A2ZzkFONrI6h/fmveEvXw1z24ceh6OOfQNmLDzu9/xHIMhdz9YYp0NJG+EeiRPf7TAq055lqFda+uwZD64DfyP5y/uPzjLCESmtA4myl/5gtmSYhYQJmaKvN2Egbowd81R2VJ2I4tn1k3LEh2M/WrO6xYYH0vGA9iXltw8x2o9JmzpfRY9h2DHknbejuCFc3154L5meSa4PUul+px98PNNznZ50uCfAsJmeBPqmwV5pynSfIbPVeR20igchClb5CbsFqwKhRN82NCP8W4b7XTw7vt3SKOLGaMVyewGVSyy9Q3QRPwZqdO5LX+gszY+X9cGU2gNj9bSM1pq4=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(366004)(376002)(136003)(346002)(39830400003)(396003)(38070700005)(44832011)(6916009)(38100700002)(52536014)(55016002)(71200400001)(7696005)(478600001)(9686003)(5660300002)(64756008)(33656002)(316002)(83380400001)(186003)(8676002)(8936002)(76116006)(66446008)(4744005)(66946007)(2906002)(966005)(66556008)(66476007)(122000001)(86362001)(6506007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?WD3ycbRu1ynYw8wt0v+95zFKGu3g924c7WpeS3/BwqsbTBb1IZe3NWUMfkq2?=
 =?us-ascii?Q?Tj8vtolKgJXRPInysk4CG7cSyDWlFmVMU0JLcU7yCmbZEkYfT7+Jw3p9o+QP?=
 =?us-ascii?Q?DZXFJI/0e4jJBhdOq/WYX2WZIQjbNdV2B9zDwqVFYd16SP+PMcbYfL+jRv4/?=
 =?us-ascii?Q?NH7mi/jvLCr1OaRx7J40ks3fd0tXNOZMKOZ9f9gZkFhrxLhjWSJixRtP6hVB?=
 =?us-ascii?Q?IfvJAWCCpSAWiS+OeEOyuVlaPRI27ovVZXxNI580cJjisivnAgvZC+L4BvAF?=
 =?us-ascii?Q?ljpet95rgathO1wMOIWkZHdHwrXCAbuqxsonxD8FJLZfGlj3eFdVZo8jQ1FU?=
 =?us-ascii?Q?tYv/xa4kYkbmkx+m3Kt+wvBqadRx6dDXUG2tTEEIEoPCrTYQx1xAh4MKostg?=
 =?us-ascii?Q?7J+7r+ZpdQk0X4FDPVDg17hDaE8fBPq35BwEkZ/5cmQRAPrusIn3OaJIr2G0?=
 =?us-ascii?Q?rSmRtxvnk/f6FxQDDHjM71UHhuLdH6xQv+1KOuy8D3Jzkc2k9Ctk7CuCI+mK?=
 =?us-ascii?Q?LtOkyJuJm91p5ZHQ3XTVqTBhbN0UnyXglaxPVxmOvW5FRWHrExReeTqAWBuE?=
 =?us-ascii?Q?ewr0g05yD0IArzcZg/H3I/lFeoqoXEHWXcaj1Ah6zMLVN8xVaNcE6r6ikUa3?=
 =?us-ascii?Q?fUOAEcli+vWRDV0Pqs5p+sG9eTVLkPvUdvrFJtHGg3Yw/QYI5mHUbG08uuww?=
 =?us-ascii?Q?MBUeN1sUGzZVMvwW+I7tIMCfHC1ac9pywp393Fa0as4SsxZ+idAP9lKL67L+?=
 =?us-ascii?Q?eK/19fKTkfNH1xUyoEVu6TKyJU6LtyQ9VLInPq/MdKbOKp9YTmJ6XTyn6281?=
 =?us-ascii?Q?bSgXAZUbbkc/kOz2FoDE1xy30g11MUBcwRGdgLNy1Obg66dvVNcBEeDMMUva?=
 =?us-ascii?Q?LtdNz53TDpE6+fWvEjjk47a1u6ZNylIGlLHByof8HLbnkQWfft/MmWVoQ1U1?=
 =?us-ascii?Q?lGyQ/aKCGi1brcTrQRnH8GTTljtVrFDYHnBcOlz41zUQr/mb28J2x+KZ+u5Y?=
 =?us-ascii?Q?lhtFXSUQugLclkIA9AhNu99XlQO1blOfczsn5JiXyj0gSIzDdCjNfWrmWaIU?=
 =?us-ascii?Q?c11xjziu7VEMSYTDG6XL97eBoZAoyRVzjOdI22NlbeKiQGTk6yNKI9/N3Eoj?=
 =?us-ascii?Q?FuoxwWYNLS79g1cHBC+mR4R5O/FZdf9JlYNwYQufUkkm65VU0QfAaAYvJOAM?=
 =?us-ascii?Q?zWe8sDK3itJCONjkHIlx0KuHpc+ecMBfnnvyaIiEthXDCW/V65iZJVWw3MLe?=
 =?us-ascii?Q?tWnjm+cBq+rDou5e9xmOkrZqP1YLY9JTbuQ2y9K7mIL0tLaT1Yk4hVQyd5zW?=
 =?us-ascii?Q?bAsOpPAm/sAJ1x01M4FyLC6KtV7I9GmMv9rjxlBiz3xHLL0pEXJZ+hDEKcWI?=
 =?us-ascii?Q?inL+i/a5QAFgWQjHdrJBFeFga3OX?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e590cb0-8798-4bd0-30d6-08d96bb5500c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2021 12:54:32.5055
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TMCed23xmGMv3NFvbVHAWh3dUtSYkht/4V54tSJh6gwfOhohMdGNb8/b49FqYHV163+qESywlI7YF1nFPfikuUESlJKc0SzOSpJ5vSO+0zw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB3170
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to find a working alternative for the old -P option.

Previous:=20
EXTRA_USERS_PARAMS =3D "usermod -P toor root;"

The suggestions from this thread don't seem to work: https://lists.openembe=
dded.org/g/openembedded-core/topic/84548199

Current:=20
hash=3D"$(python3 -c "import crypt; print(crypt.crypt('toor', crypt.METHOD_=
SHA512))")"
EXTRA_USERS_PARAMS =3D "usermod -p ${hash} root;"

The hashed password does not seem to be escaped properly in the extrausers-=
bbclass. The password in the shadow file is missing $ characters.

Is there a way (with the current master branch) to define a password?

Many greetings,
Matthias

