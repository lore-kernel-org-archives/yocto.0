Return-Path: <fabian.hanke@bosch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EA5EC3DA6E
	for <webhook@archiver.kernel.org>; Wed,  3 Jan 2024 16:54:36 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.57])
 by mx.groups.io with SMTP id smtpd.web10.22339.1704300865978982370
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jan 2024 08:54:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bosch.com header.s=selector1 header.b=p4zdL4S9;
 spf=pass (domain: bosch.com, ip: 40.107.8.57, mailfrom: fabian.hanke@bosch.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ODpi9ttXlpTKtvVnUVChgXNRqAZpOd8pzLZq9h/1HOKyCkuS2LPaFYszcP+FZUusWOZ7Mj5AtWpmCLUSC4nhXabyxTZ4znMantbOpMmySYFvzzJhKYDh/hdaJCLp+ZzVBtLK98je4g4pyYLwGQOcR3qy6hlKIt9a6jM7wya9EtxE+bP/ztCIsjWE+GjlMMt2PigEoZpdPPsWOmwPviKSK6Zu3CEYD6JnYlHPLvj4S7mr2xaBnS8mrjiHoGPwoXvj0dUFc/s7evuq+UAHrpRqLm2MJLf94VgtwC3ASASoW+I5EBZzWVpp38FYBgSwILbEnH0N2+9VMsKam8LzZUCv2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KohmUiymqVSTxFUeVFAdP49w5kyUkcEGeQDqWubG0hI=;
 b=E7aJYTLrAu5t7xz/Ag8mq3ptCYzOrcEhaFvCw2w1+c9P4ri9pD1r1Muen6Tm0Xcr5SsU+abUBQ3Kf0UVewQYHah347JNTCIU0JtBYiKUTGHlXvN15CxbJPjsTv8Hy3JpJo2UuAy6P6jPy3bIftqqy4Ji4Q6QAj/Nhef50hZzee9KSCHlz5dv8IUm3qPJg1UKSp1jIT+VUHNe9KDP0dKg0d8e8fto0YOrfoFL1bvbOqXSsf7Nm7V7D+Q+OFjhj7wQS/YQphi06Su+rm1t6lTp3KS8X50F7DcbpfHmVHJiAXKPddfvbMwP+M6iZM+rnrO/IJTpCYMddyhP+xGyLbBsug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bosch.com; dmarc=pass action=none header.from=bosch.com;
 dkim=pass header.d=bosch.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bosch.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KohmUiymqVSTxFUeVFAdP49w5kyUkcEGeQDqWubG0hI=;
 b=p4zdL4S9XTc8AvD3k73r3zdfhFMmgo/s4cUKXQbEmmdd8yitwAyi3NJi92xETJMbr+VyOIOdICGNkcjsh5T9j766asWrJ5FnHaCW9Lo4Kw4tdF4rgXz2izoJj77pOcFsegrAi0D9MvwmjAbTdjh+7xTnjrnR/RtxWBsdhlSl3Zlp0gMJxMP+H4OJ4S3zcuj/Q0TEpbeoH0OuORLOQxhxQxhhpEkQ9CxQO52riZ4MYVoRwrtwPkTLKSu/keiWyMw2nnWRmZsBV3krEg29+mRxfp/jMXUFhERvZgt6UiyksiSO9rLr7jQnq+QSp6ILRkdfWZORHDMoH1XG6oiF/wg4wQ==
Received: from AM8PR10MB4625.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:356::18)
 by PAXPR10MB5436.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:275::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.25; Wed, 3 Jan
 2024 16:54:22 +0000
Received: from AM8PR10MB4625.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::12f0:945f:8daf:6d93]) by AM8PR10MB4625.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::12f0:945f:8daf:6d93%7]) with mapi id 15.20.7159.013; Wed, 3 Jan 2024
 16:54:22 +0000
From: "Hanke Fabian (DC/PAR)" <fabian.hanke@bosch.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] CVE Scanners and Package Version
Thread-Topic: [yocto] CVE Scanners and Package Version
Thread-Index: AQHaPUy4ubx/kXtxC0eiqD7EVeX3CbDHD6WAgACmPwCAAI7/cA==
Date: Wed, 3 Jan 2024 16:54:22 +0000
Message-ID: 
 <AM8PR10MB4625B6271A379D68723FB22C8460A@AM8PR10MB4625.EURPRD10.PROD.OUTLOOK.COM>
References: <01of.1703328456869824351.98Vs@lists.yoctoproject.org>
 <ZZO6LMkb9ECnPFev@nuoska>
 <38fdec21c1f00c5cacc9c3fff8f8875460f25376.camel@gmail.com>
 <ZZUPosbNBhGP-iv9@nuoska>
In-Reply-To: <ZZUPosbNBhGP-iv9@nuoska>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bosch.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM8PR10MB4625:EE_|PAXPR10MB5436:EE_
x-ms-office365-filtering-correlation-id: 2df96fc8-f012-4d8b-e0a9-08dc0c7ca2c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 BQ0ziRMxIEANph6nvKy+y+8gVAO3wKeRHJ922NL447nYienpNFBEjIkqze1iep+CckPaYJ5i9dLoJcovw08D0etsq5QWZVslQ47A5ugG1qXWvX1PhZ6+xQ3LxZqqA+VZsKfaL4F4mzz9M5nVeWHh4d70fCO0UCnzm8GBwMvpeNb5ChOR+u7V0GpIsClKCRQkNa/xSZGdMY4QSA0LMZtbOwW1XEqgmPwgZ8gCQbWC1kdsq7XIw0DitqjfFhMeO5hrfRMG0aNrHWZhYUxwLZoUVALbNJ8Mb7wTI+Cp3LF800W7p/gBQFHd/TYXhBg8cQhEiAPa8g9Cn1FI8YiSAD2YTfb1y2P9VPsSKnY1vxZ3UJxd1RN4M+Y/eBmRym7n2DWpNfeLFWtJDo/2f02HAMAA6gqigpUwgs450IIgP1MYhjKqP1EoXk0TJ74u5JGRutS4hMN3ZAxn61NBkmY4Qx6MAa2/CKKO/a3pVMzp+wrq6p8QaTFSo9/faEFZKdKnUNiasH0jX/cerFAV+30ioYPVdLomVoiLxq7CNYMWnZIafgqrQJOLCrZyfnQp7tx1CAJKYyk+NTzncpAfGRi3gCLCwDRfvGzEDg0lilCUvkT45YI=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR10MB4625.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376002)(39860400002)(396003)(346002)(136003)(366004)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(55016003)(33656002)(66899024)(9686003)(66946007)(7696005)(64756008)(6506007)(66446008)(66556008)(76116006)(86362001)(38070700009)(66476007)(38100700002)(83380400001)(122000001)(26005)(66574015)(2906002)(5660300002)(71200400001)(478600001)(6916009)(966005)(8936002)(41300700001)(52536014)(82960400001)(316002)(8676002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?YlUEmAPLslm1KDoxZZZwOar2dWK1YwjcTsZWL8UPQU9m7uSRrDqh9TGFbD?=
 =?iso-8859-1?Q?3ZRpE4nnwvHntrxIcFHTPYN67E+AyXjF81U3iVputPv04UgMioRkTrC0hZ?=
 =?iso-8859-1?Q?B9qHO6aPV7GxjlsKTD0Skaqh9TmI0Pb0O6vcXJwLcEc32FtLSjCtye0nIv?=
 =?iso-8859-1?Q?ad2ZLH7WES8mtdSr/JrTeQr5JSSTNYA9CPtGthXqfwOcoBa5W+R0YEU+oe?=
 =?iso-8859-1?Q?gA2Ds09y0w/5o/zwMrojT8rA1xgwLQ13YmkzePONeNBxTtL5OeQZif1TK8?=
 =?iso-8859-1?Q?UIIx/lszPo9+fANtXP9cX+cihWJ3H0N2FLJ1BTdTjDSvQeAmcFSaXtiKB0?=
 =?iso-8859-1?Q?KU+EegYUfUm1AGj9EKCvgLgjRJpfaSTsUaubPaw0NLxk3enGBKGwK9KIf+?=
 =?iso-8859-1?Q?hjmbCN4d8A/V5Gahgpg1it4ZnkYfoZ+NdskAfVe7Ya5atgIHO82mIh4DHp?=
 =?iso-8859-1?Q?YVGHxO7TyHG2AcaYfu+LvG2sdKmCvNSN3EsHIZul8LYtq1S2ZPq6+gjo62?=
 =?iso-8859-1?Q?yRe3uzJCtshCpQYuYuPt5X4u+j4tULJDi9LNfzJhxKHd/6d61AOchUH+LK?=
 =?iso-8859-1?Q?x1mxBHqdGH6hbtW3W+Llmjp0L1s+3yfKHGtuQgZBqFJ2Th4ihseSd0ZVC3?=
 =?iso-8859-1?Q?a3H0rfJZ/HJGXrFdNzUVu7PlG4s2Y1JRlkErFjd+zWNJ5ZFsmXiE1gdGrE?=
 =?iso-8859-1?Q?olQOuvep2ZWVTvruo7Olq7EjiR4hY8hSfzDfqXHPD3RzqrFo9hvBUG84Xx?=
 =?iso-8859-1?Q?qfvEyXPd6JxQ5WxqvcZE1b2WdZj8q27uK1rFHizR+cltYper3dv4HUMEGJ?=
 =?iso-8859-1?Q?gW1tBVUBfmRosAHmIdSdglB1GuWUONXtYQ2WVxB7FUJ1mXrv4FHC98B55Y?=
 =?iso-8859-1?Q?UfNUsQULEys3w9FaiPqs7qc5Prcew8lCb5gmGctUB/ocumOatvOmAITFFb?=
 =?iso-8859-1?Q?rbXntoo+2FGDC0CavY3Wrejd0EnZQ16OlDT0kQOH1oVCpFNFLw1TfC8VhR?=
 =?iso-8859-1?Q?aZN83uOEa2PqaXumPw41YCMCwgvzhQJ2SU+NXNmmeA3Rrz+eftpYH8GJAi?=
 =?iso-8859-1?Q?QIF16kq+XC79AHS19eOabC8DzVDVo255ZqVHGZFC0bMW7g5/PqeTCpKrt/?=
 =?iso-8859-1?Q?dM/pqk1pSZLQilftODVhUCBEDpRLvEnFHA8E9x4PG7MleV30qq5XLuR3/g?=
 =?iso-8859-1?Q?V5Ga/55EIYVyD4W8WVewBTButJ/5b3TL8bPLozN5TxvHgUgaJzh2CAxM55?=
 =?iso-8859-1?Q?BffWkC8MxMwwpvM1OjjtwO2f0S1rsP2aKtaLGBB0bMXsZ4dRdBmRHIbJlN?=
 =?iso-8859-1?Q?zJzFE5/js8XgXMZuWuIf54lzPvMBZ7KEhYJHhxloZ+51WPMLQpHHexV1Od?=
 =?iso-8859-1?Q?/KFQr9Qqfi8sPtQeTlHCr5MwHetSy3jrkAeHU+greLDCqQZ9DXXvVNehf2?=
 =?iso-8859-1?Q?6DckEmOFSZNsZBYx5EUcGUKU7h/vB+Ss6S6V4NEnnL3JWsdwiL3vUecDMm?=
 =?iso-8859-1?Q?cFuwYbMyvWxQBJjJhunuoiPZDVXBzyV8IPVvQa+5tRSyM01jNZDWIDlmyv?=
 =?iso-8859-1?Q?CZD3Kxj3R7yDwolPGwAIb5itZ8fkfxeJMrhUK3cC+Axq9Ht4U88/nWildC?=
 =?iso-8859-1?Q?BWiaDGIItldzM=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: bosch.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM8PR10MB4625.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 2df96fc8-f012-4d8b-e0a9-08dc0c7ca2c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2024 16:54:22.5842
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0ae51e19-07c8-4e4b-bb6d-648ee58410f4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +08djJsA9JjwzGO76NK2YRKtURKng2M0ltkp9qfLM+p7zztKoTsDMoCpbc0MzVD30r108sJBJ3i+bjxqySYm7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR10MB5436
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Jan 2024 16:54:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62080

Hello and thank you for the feedback so far,

> The cve-check tooling can check which issues are present and which are fi=
xed in some way so that information is there.

I guess our security department wants a standardized format for all product=
 teams and not use individual tooling for each team (which can be very dive=
rse in a big corp). They would like to quickly be able to answer which prod=
ucts are affected in case of another "log4j incident". It's not about repor=
ting, but rather having a standardized format which can be processed automa=
tically to deal with the ever increasing number of CVEs.

> AFAIK, and I'd be happy to be proven wrong, SPDX and SBOM don't help matc=
hing SW component names and version strings so that comparison against CVE =
database information works. Only license names are standardized.

That is a good point. It also depends on the build configuration whether a =
component is affected or not. I brought this up as a concern to the securit=
y department.=20

> Our experts have also opted for CycloneDX. Is your CycloneDX generator pu=
blicly available?

We are still implementing it internally, but started by adapting the follow=
ing: https://github.com/bgnetworks/meta-dependencytrack

> Much more reasonable is to provide a static SBOM which provides
> information about:
> - Installed packages and versions
> - CVE related patches for the packages
> - Additional information from CVE_STATUS_* variables (These use cases
> were also the motivation for adding this additional information)

I also looked into this. The cycloneDX format supports pedigree information=
 for each component, which can be used to add patch objects and link them t=
o fixed CVE numbers (see https://cyclonedx.org/guides/sbom/OWASP_CycloneDX-=
SBOM-Guide-en.pdf on page 48 ff for an example). But this seem to be a lot =
of effort to implement and the CVE scanner must support this and the naming=
+version ambiguity still remains.=20

Best regards, Fabian Hanke

Registered Office: Stuttgart, Registration Court: Amtsgericht Stuttgart HRB=
 23192
Executive Board: Dr. Steffen Haack (President), Roland Bittenauer, Thomas F=
echner, Holger von Hebel, Reinhard Sch=E4fer
Chairman of the Supervisory Board: Dr. Markus Forschner

