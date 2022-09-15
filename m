Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC75BECAAD3
	for <webhook@archiver.kernel.org>; Thu, 15 Sep 2022 08:01:40 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.79])
 by mx.groups.io with SMTP id smtpd.web10.7433.1663228898288536843
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Sep 2022 01:01:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify"
 header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=V4HNngCY;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.14.79,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aO1sBcsGleW5F5wxe+axBujPb8Luka1P9KGYTXuafTOll+I/l3r2fLpCnzC0ZrGd/wQagBaCpVC3U2dKjuu0L1ujxrSv/Cr99GOkc5tUobc/u8Le3umWa1r2o5gy+vK+kmOXMI0CDaf3ta5aXZPhV0p5cyi+hetUKwzBPT57iuHHtS33OekG0+roeI1YmYGZV7jZHLycCpC6JHjWmnHGhDd9fZA+YNhXFnsOH++z725FTvHC8IN1SuhYZAUhFa0DwEcuvWjNI2OceDmpMxUMqDnWYDyi5xrxjkUPQtHlUidRuH2RDBsEatGNbolUOiL/YexokCB3k8p9T8Fas2s4BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pz/wYHWkHQ8iZWoucVk+LUjqIJjhTWGcvMlYpAdRLJ8=;
 b=khL4TFBsFU8i/KFo0qEujqYNaR8mVVBd/XlLAN7B7MCWpdutBHQGEcBP7uGSfb4UhgW/6emEdsn0fQR3n5Cfmp+swWti1gDqNY3V9BnBfaJdflULMuLMH4JrLgnvCkMgHUCbqy8LB1cjSGRk8dy8ZGB7DAjLEttjYpD/PLMd/Oddx/TRycMeL98gYzEjDhun/WqkFZkT6zFPGvH3txVSPqt8sedPqLoXO1I4nmQE7fXFvHTkookhZ3tHvTjywf0X+C7EnN2Gqf5dx6LlBuHkAayPyTBcxWWZMc6w7mkkDmdWESHGdNv5NBiyQRn5/3lNh1nTAo9GLDxcrG+fJbvlGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pz/wYHWkHQ8iZWoucVk+LUjqIJjhTWGcvMlYpAdRLJ8=;
 b=V4HNngCYQ0Kcia/6/Rz+sFP5BYoy2V+eM/XwymYSN1n4tWBuwL+mTrVk9+5VCKjoss/CLT+TSx+MaJkuofzAtSIxRuwrvBuAoNgJZXiphzCQEmmCR9YqurlUFprplfnT7qlfkDvJcTpyiEu0qefHrB2WI8HBeI6gACrcczQY+iU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AM0PR04MB6931.eurprd04.prod.outlook.com (2603:10a6:208:17e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.15; Thu, 15 Sep
 2022 08:01:34 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833%3]) with mapi id 15.20.5632.014; Thu, 15 Sep 2022
 08:01:34 +0000
Message-ID: <be99343d-b441-7680-cb83-c22afe57820c@theobroma-systems.com>
Date: Thu, 15 Sep 2022 10:01:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Subject: Re: [yocto] install: cannot create regular file Permission denied
 #dunfell
Content-Language: en-US
To: Mahendra Sondagar <mahendrasondagar08@gmail.com>,
 yocto@lists.yoctoproject.org
References: <OPcU.1663179386288137669.KD6c@lists.yoctoproject.org>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <OPcU.1663179386288137669.KD6c@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AS8PR04CA0035.eurprd04.prod.outlook.com
 (2603:10a6:20b:312::10) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AM0PR04MB6931:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ff83596-6630-48fd-56a4-08da96f080fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	I58KfTJoPFwiS9DzaGQyb0F1p1nw2V1Cal3y5g27TNoS2D9X4Q+2qZK3+FiEqSI2hMmPnwsKiRXPgOG/7fJX42EC/KVtzGTSCQALUCIn+BJJZyXhc0tK1EueJHLulG1DwsuT1gLIT0DOvT+cDEZ9G9Eex8lrwgACRodVqK97an3uYZD6pWIDDSyNUmZ0UxrXxibEb6fB2BwxQqJR+pzk8pVqM6KXn5H6dSXUaMx0HH41TRYLeYFIt+fGKbGbgj/TovCCEZ2phyxQcMk0c1XjbXie934SIidTv3hZnXw756wS69U/GEmG34WIy7S44SumCNTJQT8yb/19Xb5tBNjtEAobYoskRf0Ja7gg3K36m2B0UaGrjWU3UCe4YOZemJqJ5sx0V8fjHD60SyaWhf40vgHOVvTgWDgAMUY7A+BXyFAO/zTo41+F76rq6M6i2uD4RLVYf8y4jPQnWqk9nx1d5R+uPtbbH3/KzKdQHZcZi2e4KUkjoMdVRqSvdXyAuxS/Quj8UuVRNisQfnR1IrhhF9aJ0Joqh1HWfPpcETboFukTKbmg+RmKVUa3qvsFVpi4PWXjf/2e94FlMz6Kn3gzAJufLXVNs8Baa+t7K9GyxD2C9zWEnJRtE5aF769bsPQzPc4iR8qLFAm6U+X79Nm1GovEbIpb/nd9/HNEOaQSNUKSwEpgRsFXeSjcvVwq2bXuoEGaz7AySueUKKWD04AQuxHXJb9RAqFaxj9vl4kmK2Iptr7hwo+eCW6XeC+FZ02MTESB8M09Swkrtn6pr6ISrlVWpHqJTXkkVtG4DBhpYDw=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(136003)(39850400004)(366004)(376002)(396003)(346002)(451199015)(26005)(6666004)(6512007)(6506007)(53546011)(41300700001)(36756003)(31686004)(38100700002)(8676002)(66476007)(66556008)(66946007)(86362001)(31696002)(2616005)(478600001)(83380400001)(186003)(6486002)(316002)(8936002)(5660300002)(44832011)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?NAEN0RKglWYbWuwPlLcm/y5oyDh8GKDg7juqaOMgyBU89G7brhmSggvTyrlU?=
 =?us-ascii?Q?A5dMZRS1XQd9d9slCKntbGDB9Ngkm8jgPsGsfA16JtQ+ezvEdJAQmb/73l9K?=
 =?us-ascii?Q?cS4enyGbHWpnGOZr7U2SiVi58e557AwLrQvADn+Z8rk4MpcfqSCeM/t0DrV2?=
 =?us-ascii?Q?vG3+h4sp8ESQdujXiIN7XgK27jNYRCiMbksN4DpqQAUC9hos7RgNMXRVjy/z?=
 =?us-ascii?Q?d0RrTJSjqJDLvKq1M3wNSP4OIrOfNfD6F9i7Dy0LRkWGZyljDxMvxwsxqxzK?=
 =?us-ascii?Q?dLo2Etq8/63SAisaSO/ESxATOnkJjltAjpG1yjRTs/l8IkD5j531EDYj1XPr?=
 =?us-ascii?Q?ukAtonZc+h0L8O4sYeoYKHiM6vRepJZVdcptTPhBabw2TkMjOgUg0Yb/pFz6?=
 =?us-ascii?Q?xsGZd7HGmweR4DseNbmX4sbXWwG3l03/Ai6Llh8QYrvYwaM9lhxVz93Bv+Ma?=
 =?us-ascii?Q?a4X+N27SG/PeM4kci30pp/ZSzHsW5U0k+o/0uUUoPfdo+f6RgwU9ymvQtTYX?=
 =?us-ascii?Q?B4jxLx+spLdhZSa1ox95pf4rmBNgMsofYgzO9MT0INGYToLddbpDg2DTNkT8?=
 =?us-ascii?Q?Rq1V3kXV2g8MRjWVB32ECYvrdEhygZkotw95+v3WIWUkbHJvf42D0LU6Z2ik?=
 =?us-ascii?Q?l2eqWVbVSH/Cfyz299l8sXBONMDVzzz3RTynFkxMCXBjSF0VBn/Dnwg0TIyG?=
 =?us-ascii?Q?UIZRuDrIp6sqA/HyNF6OdUpXp5AnXSO7gFxXS8RJwrsSqjPU01lMbYW0bkpO?=
 =?us-ascii?Q?qwxF9eizbaN0p05c0i5DRMIyYwdqWpA4ai7nWT5lE4gDHlaWHv1SLWn69nAf?=
 =?us-ascii?Q?iExEHor/6QecL8D6rkvofcZPSRDUoR3u1IzBNaPZzvH1a47QXPE4Gv2SspQ0?=
 =?us-ascii?Q?Oz5gjaGS5sPfGa+Qxdh45wkuq4zFLH/ZsjuLU3j5asN9ssqWWh6R1LrUaaXi?=
 =?us-ascii?Q?mPbkH5xDbE7Oqo28x2EeUC70RUOOWVbsVeajq1Cc5jgD+537pL5l/6PmVUuU?=
 =?us-ascii?Q?/Dmwc1GLEMtZyazuBXnUGmcQxWnzr/hzaa0Vgc/1QISMvq+kdOY4JvJqaDYM?=
 =?us-ascii?Q?pF/uewvaKJgEWCOgv20LhkVM22WbYIgJXlaz1wKLZGU30Q6jQbNyMRFzQZxW?=
 =?us-ascii?Q?DB9HwdttwOTqli7PVVq8ozx+MKpIPqJO80oMCr/XzvCibJBHlA0XHvYj+Rw4?=
 =?us-ascii?Q?ZWJVW41GPK4p4oiblUjG5S0058Wp/em5MoJNPR51u9Jr89N35JNMkGX9zJGa?=
 =?us-ascii?Q?UlVZZEYeaK88vRVPkptoOoBhFJsXKcL4760aXcBLS9WF2DHDVYyvygXNENRa?=
 =?us-ascii?Q?cI3uouw4YOsbnWUjsklP3oZuRMWnF1XYcLlQShKHXxFMrjQSVGQ5g4XpChWd?=
 =?us-ascii?Q?Wnvz3VR2Fis+cBIsXyTcz53Ba/CdOuWmqjwVJyTo6dVE90I2Ezq4fu3unCWW?=
 =?us-ascii?Q?MF7acfc5nx1DSR02/auj+Ozlok0VrtUqwgXjFw0Ax9FJuFDjLo7iR1FB9RM+?=
 =?us-ascii?Q?Itj7Lb3aMeNcu3QNSrvC/0qms1B39GF7ncFiF0vybi9cDnEzapEH4pBdeyNF?=
 =?us-ascii?Q?1CXYCWuVPTyzzhOCgsKwK1xZGAxr2uScTuWmGe3yoaRtwzG9F7vz/Qwgoi5Q?=
 =?us-ascii?Q?/K8XuO5Jw733IXxTPYy5gMg=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 3ff83596-6630-48fd-56a4-08da96f080fd
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2022 08:01:34.3626
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 MEfFeZ4BF9VF6evAxRUHFOD+mYxaGEVbqeGSt1astaiCDJfvsEjFExzPsqjPAc9Ns4b+75q1jES3RDDxhhM8ie5w9EXPHUpaNx6rJe+jtzLZ7vbLr49OtBj0g4DLXP93
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6931
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Sep 2022 08:01:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58047

Hi Mahendra,

On 9/14/22 20:16, Mahendra Sondagar wrote:
> Hi.. there
>=20
> Hope all are doing well
>=20
> I'm working with the Yocto dunfell branch with the STM32MP1
> My goal is to add the test.sh script in to the rootfs of the Yocto custom=
 image (in to the bindir)
>=20
> That's how, i have created the recipes file called "recipes-support"
> Inside that, i have created "net-cfg" file
> the files under net-cfg file at where, i have kept test.sh file
> here is the tree structure
>=20
> .
> =E2=94=94=E2=94=80=E2=94=80 net-cfg
> =E2=94=9C=E2=94=80=E2=94=80 files
> =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 test.sh
> =E2=94=94=E2=94=80=E2=94=80 net-cfg_1.0.bb
>=20
> I have installed the image with the custom-image.bb file as a
> IMAGE_INSTALL +=3D "net-cfg"
>=20
> The content of the net-cfg_1.0.bb are as follows
> -------------------------------------------------------------------------=
-------------
> SUMMARY=3D "Script files for the testing"
> SRC_URI =3D " file://test.sh"
>=20
> LICENSE =3D "CLOSED"
>=20
> do_install() {
> install -d ${D}${bindir}
> install -m 0755 ${WORKDIR}/test.sh ${D}${bindir} /

Spurious slash at the end of the line, it tries to install=20
${WORKDIR}/test.sh and ${D}${bindir} to / (root directory of your build=20
machine).

Just remove it.

Cheers,
Quentin

