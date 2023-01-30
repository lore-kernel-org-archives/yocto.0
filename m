Return-Path: <richard.leitner@skidata.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19110C636CD
	for <webhook@archiver.kernel.org>; Mon, 30 Jan 2023 20:27:38 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.103])
 by mx.groups.io with SMTP id smtpd.web11.5609.1675110453893278311
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Jan 2023 12:27:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@skidata.com header.s=selector1 header.b=IwEVOvNi;
 spf=pass (domain: skidata.com, ip: 40.107.104.103, mailfrom: richard.leitner@skidata.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OOSIJ0MUTMibPbo+E+TZ1Uz1sQjv8ldBIcVJ8odBLfHmgdS52zL361iGSdqTv8dnZlPr/M0uwbB7AcM1sRel8pPluQGykLhPAhBM9Oq3btwhFleaIcs/zr0UGBbRO/f1EHykjoln2aMHmWrH3cibpz+1ydfl8eU6ba4t0GFIQXd54RSD7f/ri0sXCdC4Y1KNbENm7tnfLBCejm4qtKtdiVdZqQyIIb74zip3x/AgUro5Lq67j9sc/7ELEv17Met+Wt9dZ/EO7uCYPsaXuYPiftSGt10JpcVW3TvRsF/rLTKziBB9IaJrIBAwDZdyBQoBdCS6otk3D+7pyHKFhxvr2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VLyHYE9mXRbd8vprCppoDTlEhP4B59+7RtZJb4tUkX8=;
 b=U5Lb58W9acYjY7/ikNEgkAT2RZBnTYw3xPVGcH9BF+RRzHCDK5YvkRD/2WjBxx4um0HvdaJK4qcAn3B8XlY2xtoiroI4lxoYh+uKF8dDjulP35tfR3+a4aZJwOX1L0asl2cYgn+kgbvNmbfUJBqu8ki34JJEHtl7DvcvEiVH/LSEhRbtJWtsyquTkfTcAj7BjRB8LwDk32pUpVW/vhhU0LDRGOZK0lVQi/6a2dc1LyBhoOZm34KbQJMmjSP+3OHOhtIYIlGAErZ6flNzJgf30uqHVzuQRiIX/whrNqL5i6dqIlPy2HST7luJhmx05Von7sOZJqL0SGJOoex0pyY32Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=skidata.com; dmarc=pass action=none header.from=skidata.com;
 dkim=pass header.d=skidata.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=skidata.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VLyHYE9mXRbd8vprCppoDTlEhP4B59+7RtZJb4tUkX8=;
 b=IwEVOvNi1bbNCJDldHeiIIxbiMI9ixnG06aEqvQpYEpM2wW14SPcNa6A7Mmni/XueJWmmEutlQlxfO2A62D/SM4LisYaO/QfUv5EAF7hq0s1NYApBXBIOt9ZxbO35cqvCPVse/WP/zNWIIRZwsyXEStSxeBPPpB6NirBn+DTAdQSXOJysnaPV47ZbM25rroeVdjRzUbZWb6Lgu9xD5lHt73eBy8r9sZCtCK5vjOKciNDJjC/6cEcwWSpFVv4RtFM3+o1TmHYiWizE28j7Zg5jVqlTvqVgorOM4w2ZeGIHlJXuZMqG7TEnpPuHn8Vvvce8DHvX5mUQtul3HeWHVvPXg==
Received: from GV0P278MB0211.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:30::7) by
 ZRAP278MB0771.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:4b::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6043.36; Mon, 30 Jan 2023 20:27:30 +0000
Received: from GV0P278MB0211.CHEP278.PROD.OUTLOOK.COM
 ([fe80::d5f4:92f8:c46f:ac68]) by GV0P278MB0211.CHEP278.PROD.OUTLOOK.COM
 ([fe80::d5f4:92f8:c46f:ac68%3]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 20:27:30 +0000
From: Richard Leitner - SKIDATA <Richard.Leitner@skidata.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"dspore@parraid.com" <dspore@parraid.com>
Subject: Re: [yocto] Adding openjdk-11 to Yocto
Thread-Topic: [yocto] Adding openjdk-11 to Yocto
Thread-Index: AQHZNM5Mm/b7AVzRjUOSdBd23oVVjq63aD+L
Date: Mon, 30 Jan 2023 20:27:30 +0000
Message-ID: 
 <GV0P278MB02110F36ACEAFD3C29936CBCF0D39@GV0P278MB0211.CHEP278.PROD.OUTLOOK.COM>
References: <TNB7.1675098856905334898.dmEm@lists.yoctoproject.org>
In-Reply-To: <TNB7.1675098856905334898.dmEm@lists.yoctoproject.org>
Accept-Language: en-AT, en-US
Content-Language: aa
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=skidata.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GV0P278MB0211:EE_|ZRAP278MB0771:EE_
x-ms-office365-filtering-correlation-id: 265dbd5b-8e99-4450-6b8d-08db0300693d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 2Xzcd3PfAgsJF1uLd/OR4D609W8REu2b/2QBLXkvr7M2BbJwmx139uuA61E4kg9l2MZSFukLONQtASWEgjIBAbON4AIpiVBn3ApbRj/b9XWTsXcG6gXX8RKOcSFE++MEZYFaFPpTgjuhnia5YXdRcDK7NgneAfl0nmLaInCBwqwacFCsRllST1CkesYCW/uVbkIYUHp8GUHwcRx5EMtGvvxZAhYU4G25E1bBVPexbRIYgynDkeEYEKyp5C80KG1Csf3cEwjF5KDshy+Rj1ZlOFPYJBs4q8GgIX4TSOqZvVtxQ1yRC9iRl1OKqjJcSHKFT2niw/R2lbBvwHgXHau42zMDrLssyC8KICIBvFNYG21DS444ophmFqIH5ZVKVEZMH7+mIvc9dViOygZeghW0Nn0Fq0pzm8/N9w/h7az8rvC+2nmrSTg97p+5jnfgNNXcorgwbnIcWtUcJFaHW+6lOfQkaC50vvNlxuZPO67YVsspvFbCBLV1wwEAdGG4doqBT9VfilqATrf4mr6pKmvObh7WM9BrRJhe2y43f2cZyFUTT+yIewdNlLN4UdtjiiBRwmqpLpu8NRZSAL335VasQA6yQNBmqn5Ea94nCRYnb6JReqwBCZEjpxW4bH/X7s16ML2pY/ihc4cyrGrJOWqQmeMOs4+CngAZpq+25FY+myrjjQlycfk6P+PYvvdGmQWxj9fVvsDuzVGkpjeOBrAmuA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV0P278MB0211.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(366004)(39860400002)(346002)(396003)(136003)(451199018)(6506007)(53546011)(186003)(9686003)(26005)(316002)(7696005)(71200400001)(110136005)(8676002)(66556008)(64756008)(66476007)(66446008)(83380400001)(52536014)(8936002)(66946007)(2906002)(76116006)(91956017)(41300700001)(478600001)(4744005)(5660300002)(38100700002)(122000001)(55016003)(38070700005)(33656002)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?KbPtWPksWI8o+AzbgiG3dFlheKIP63tKkCsrL3+FLV46b+ubBo4YnIX9ePaj?=
 =?us-ascii?Q?I3AJ3V0DkmSzwz9muXHUaMaRDdrPwiiocD8OMPfMyUczD9XMDFhaiKLO/A9O?=
 =?us-ascii?Q?z5OvNIXhg8y/Ib4kLj4yCv+lrHn0fHEBzqu/Ngo1J1JeZFXsHWEgGn1/nuLZ?=
 =?us-ascii?Q?cbX5L1Bk+eyOYjHKaGL+6pWH8pkCkNEfA73HRxT635ISU/1a/r+9DLQ/YhkL?=
 =?us-ascii?Q?4H30layS70RejVusCQLcZOWRHA5zzA18Nfmlq5kZ9bsi9vrH5cNl1+kCxEAM?=
 =?us-ascii?Q?XI+KktkdCyJ8rddRipyOAm7Vr9UboTLwQgJ0a4ANzTXlRtJC7PRiozGwnAyn?=
 =?us-ascii?Q?EHK7jvOpd2VDaYGgolNn4q3XuWQSEOfzUFX1juiZgE3oOje64U8Inmz6qxhP?=
 =?us-ascii?Q?jDj2/L6dc00ijPIo39hbp1wuWgndk9fJVUOXq3nB3dMOLHwastvxG51+27QB?=
 =?us-ascii?Q?wVQD8mdikTjHtAlLxYVjA63Dxy8DyMtVPsYpO5R8qTpBo3dX1Q5PgMetV93F?=
 =?us-ascii?Q?fz5qLmazJsJTompMCjJwDNYbXFTBmtp6N9672hlBmfsRdBy2S0HsyRbuuJAj?=
 =?us-ascii?Q?kigfpvUEyTFKauANFWriXwGTxwRjw1DpVxIOUIB75qmScmN8kcM/c1DrRBQr?=
 =?us-ascii?Q?H/4QMx/0GQNT1N8YrdYGJEZBtMhuItBsuk5HFITSkHR44U3s+jz5nOaiHJF8?=
 =?us-ascii?Q?+lskm6zLZS4hSAbqYqKQxJvZXOf6bXkiFEYnpWkHqSHKPmcbsUqz2C1Etdor?=
 =?us-ascii?Q?3VsUZuhYOs5X7Ut5SMjpStGw2qSnv46yaztRsNMpylcMU2K5DgvLj3juJxrH?=
 =?us-ascii?Q?7UqmqOy/6AiM+zHaxdHxs7fcg6BggU3ha8Q+jmlHKZOVzt4d3yjREsKCd4NX?=
 =?us-ascii?Q?O09AmKrm9PYdhupH9OFDPOgPfthU+a3gD27N/2kv+Wdky5EP7BorHc2FcrR2?=
 =?us-ascii?Q?3CL3CVG5jYUSsYs1cjpD0hGUGJCfisJ4s7wf/zquOAFbr3so0YN2oz2wu4UJ?=
 =?us-ascii?Q?fj+deWVPKb9XC5eEb+Fnyx8iiVXhLn7kKibkHtKmWfxf3IIOTvIlLhOEhpup?=
 =?us-ascii?Q?mDf8Zcrk1WtzVrYXw1f9NcsoON3WYSlKmEG4kOMvhZoqtreLdDxwlOVJeF/K?=
 =?us-ascii?Q?XuZXIahpOLhrym8eZAnoakyFPn6YqjaoL10axEWJ+7yUKOV82mZ9CAbzJdK3?=
 =?us-ascii?Q?anjfWA/gJ1Wz0PLORWldcm/P7ezzduUywuXDspFRj02C5q8LVRfbGqPgYJl8?=
 =?us-ascii?Q?qqy9w4VHr1EpHMUJyiaTzMMsOqHYyISGxoifCToKnO6/O4LjG8qKnfu8L+UR?=
 =?us-ascii?Q?LjB1u5UdNymRbtEqjN4VSvAIwKeXylt4Y4q6LAE/3QZhlP0IFKhR4af2XGye?=
 =?us-ascii?Q?QGa/SZuzVZJhW474BCbYogJuPsVp/e+OW7Da3NyxergOBucJMlurFiaAbWdc?=
 =?us-ascii?Q?oRwzDJYcqGubgn52rzjYBMPLMm4gi8n0ezJqrETVqGD33dbKw3gT3DAEXPwb?=
 =?us-ascii?Q?IBYnCzQdhoFVRQx697ErSC9uD+9Lu79EbcPXQzyOaKrvs2PrXmJx0MR14mcc?=
 =?us-ascii?Q?7hSpagjkKUfW1l7ghbMLK4EDzipuytKeTtYI/j6C15A1QscNfFqubPR0aZ1s?=
 =?us-ascii?Q?Rw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: skidata.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GV0P278MB0211.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 265dbd5b-8e99-4450-6b8d-08db0300693d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2023 20:27:30.2948
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e5733095-4425-4f08-b6ba-487b9a46a425
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rtf5oaL7m3qnWu5KdBemhDKGxJQcd1/dju7i/5JSAhzJlc2X27Pz5vdJmUwh7KNBWkdDB57Sebz7xpuPWoxdhU39K4q6tBJ+wOmsLOUaW2g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZRAP278MB0771
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Jan 2023 20:27:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59104

Hi David,=0A=
unfortunately none I'm aware of.=0A=
=0A=
But if you have time to add java 11 (or newer) support to meta-java I can g=
ive support/guidance.=0A=
=0A=
regards;rl=0A=
=0A=
________________________________________=0A=
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of dspore via lists.yoctoproject.org <dspore=3Dparraid.com@lists.yoctoproj=
ect.org>=0A=
Sent: Monday, 30 January 2023 18:14=0A=
To: yocto@lists.yoctoproject.org=0A=
Subject: [yocto] Adding openjdk-11 to Yocto=0A=
=0A=
Hello!=0A=
=0A=
I am working with Kirkstone release and need to add java openjdk-11.  I hav=
e a program which requires it.  From what I can find, the meta-java layer o=
nly supports openjdk-7 and openjdk-8.=0A=
I've looked through various forums with no luck.  Is there a recipe for ope=
njdk-11?=0A=
=0A=
Hoping somebody can  help!  Thanks.=0A=
=0A=
David=0A=

