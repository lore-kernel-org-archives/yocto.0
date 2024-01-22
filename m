Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 009A9C4725D
	for <webhook@archiver.kernel.org>; Mon, 22 Jan 2024 13:40:21 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (EUR02-VI1-obe.outbound.protection.outlook.com [40.107.241.44])
 by mx.groups.io with SMTP id smtpd.web11.73916.1705930816061159305
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jan 2024 05:40:16 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@theobroma-systems.com header.s=selector1 header.b=bD/MNRXB;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.241.44, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ngdHvJ3Irv4w38iEzWBYnfO6ZIeVKugRDrJ3v2m29HXc1dx+KuaOXUfNUwDTiF7eCZV869IHgMhwkHOV30nluIkGauxq/PkExbKgamIWZwRg3CqvVW1+B/VBfKt0/JfdbhlaFCskONTPrHMMlAH1tzs8sb4UXssp/J7Mih2Uy/XRwdv0A9NXx5n54jfp926igQwMqLTLn59V/ICJXihxUUmBGuBta0voVQxv18xIRbEIohyMRYHLZOSnY2v4Kj35+V0uZm+8Ke442c2Jc50XaC8eO9U3vWeJRlW5fd2u6W1ncHwQ9BtZpgf+Osjpx7ZuYVDAiltccC2F2cs/TEr7kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cnjb6qKOlkE1G3ZT9iMgcr/anA+Dqk2K0PnmIEBr0eI=;
 b=R072uPjrdrdh2yWPV+q9Ffg4n6vmyWdCiKA6uLN3oPWqv/jUWGXWi/UoJHGy5RKvLSjzu8/FxYutxnNALSNesGZQmAM7ETf2LaG9Rb8bB2XvODQSMz/SfL0OTxVBxFsZLCLZ1fewQ6P4DR/BD/GJmIKk4+x223vmUS2xCk68dtdaNip+EOmWToppeCHhL/xWskwFJ15tuNqF63Zgb53wE5P+496SOdBY2s6Q2HgTDe0eioqRVAm/OcOOcmMYW2z9ht3L8k5enU7hebl5o5kxwEeXMsiEbeOawL+j6+NIJmIb3QNNipaQtmb1CcRGmSUvUaCKLd7l9+Rp1ClKxteb/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cnjb6qKOlkE1G3ZT9iMgcr/anA+Dqk2K0PnmIEBr0eI=;
 b=bD/MNRXBmd3NLeq0CNzYvIaUMaipgK8xPxgcUqAp17XV5bckMhMyas7nrhr4KRyNq0WVRufNniM9aZ8oNCJuhZeovOsEj+xA9UKHKIu/dES4sVJDcvyk5r85GP+NjGFLHSTEIQQ4g1Y/5B+SL818IwfagPNihIxcbHNYh+PDLTl78Hm9fvP8aEWEqy22LArQVyXSGITZ9tos2vwl/jX1PZ53mUzdaRS3lEEcoKUc+f34PCqN6KEpWfeIF5Y3fJTDF5wy1hbIMVkzeduTuhNmNNE8G0YCjJBXpCs/TwC/hP53+cvFYfU+7QTKXia2pFMpRRBarhnzgpPN+hpA5Wq0XQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PR3PR04MB7259.eurprd04.prod.outlook.com (2603:10a6:102:8a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.30; Mon, 22 Jan
 2024 13:40:12 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9ee0:71d6:cd29:289a]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9ee0:71d6:cd29:289a%7]) with mapi id 15.20.7202.031; Mon, 22 Jan 2024
 13:40:11 +0000
Message-ID: <f854dec6-5968-4b79-b8d5-6abfd8d75135@theobroma-systems.com>
Date: Mon, 22 Jan 2024 14:40:09 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Remove Python dependency from target package only
Content-Language: en-US
To: yocto@lists.yoctoproject.org, holger.sebert.ext@karlstorz.com,
 Richard Purdie <richard.purdie@linuxfoundation.org>
References: <DU2PR01MB871782D4F3B6384568F20F99A4762@DU2PR01MB8717.eurprd01.prod.exchangelabs.com>
 <07856f5e06ff5c9fc1ffa903b682426de2a32a65.camel@linuxfoundation.org>
 <DU2PR01MB87178F9BB04E6D84F03AFE1CA4752@DU2PR01MB8717.eurprd01.prod.exchangelabs.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <DU2PR01MB87178F9BB04E6D84F03AFE1CA4752@DU2PR01MB8717.eurprd01.prod.exchangelabs.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: FR4P281CA0127.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b9::11) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PR3PR04MB7259:EE_
X-MS-Office365-Filtering-Correlation-Id: c676a6d1-0de7-4e10-e604-08dc1b4fa812
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	iaFUHTCJ+3y28QNcczgv3V2EKftsWdx6UDuEb4XCImftCQf/VaxxmGI3Enhy+4FlEfYGQMgCg0qiFWWv08yEDH2DPwGbJUz0H+cjb3madiEU5y6fa/C2jIl34B0QXKtflQcjgvOfMTrM4S1IXw7FK+JBppyh7JWFGjcV1ih+TmilI4+E4R37JW+9y1NdZp3kV1knUVajOcVENyjnsOhOPMGyFw5p7v+PBkNsmRWvefkSTfWByH5oAq4GIdV0jakK7//tJngSJBVceBRDoGCZkfoyy0763sd+cS7caWSZ3oh0b5FM+YSQwBvq4rBwYIFbDNfczbrRHwGTgcORjogI2xYh3j6yUz+V3tgSyit+d3XadcANArARARH7dPk+sAa8hcgF9JdX675/dpX/HQK5IyI9s+dVotwP7s12GuFXkG2TaMjX59UygNayXM7SNeYC/fNDYpPiZbl/c/94wwYt9e8K6cZZlZu95xVzv0Hc1jX1lrmfDYQasYtIcFhmEPjGcHyrwV9U69+dod314KObq7DFp5z0UFwRs6YBuKG/+PAvLQHPehorXYl8/E4I213C/7WLN0uMOA5paxdSb6OopnVnekM0D/JTaeSsioQbqhvUzsNcZfjgfPFDbjRmtbA5SYagywhiB0MovWsYM2bXrpb34JznjLMMFbxUsGpJYljArSSatPo5Khlffq+Jz/Vf0tEFcvPouhJs10XrnmEBo10k7WScYyszaylxLVJgcZo=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(396003)(136003)(39850400004)(366004)(376002)(230473577357003)(230373577357003)(230173577357003)(230273577357003)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(36756003)(31696002)(86362001)(38100700002)(31686004)(26005)(6512007)(4744005)(44832011)(6916009)(966005)(478600001)(8936002)(6506007)(53546011)(8676002)(316002)(66476007)(66556008)(66946007)(6486002)(5660300002)(2906002)(2616005)(41300700001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?RXSt6lg+zQpliY2V7+/Zvj4/Cq9f2LSJHmf/0Zu8MioOtXAbcpkAY638oFrf?=
 =?us-ascii?Q?7+3zC85INrv/Be7Pa6lbnE8u2vxi7+CYe52E2DrDnweePfOMZJ1RPXmssF/w?=
 =?us-ascii?Q?PemNAncvjvrUgDtuX0h45iiv0K7vcqMGMmSSTANtLCdGSfFNuLnt36R9ZWR5?=
 =?us-ascii?Q?wuDtuHANBpifBrC1tHPEP/7hbqeI4r3RoWCwWmHc/kyMq4zUy9Fz4p3MmmPc?=
 =?us-ascii?Q?DXREXKM0DoAAYfe6DhUzaSqC214bpOJmpV1M15ae45A1aUX219KbhELYFypE?=
 =?us-ascii?Q?L7CQjG/bIeZsxGrdmPmTBRpy2yS/+5xW/2mCOyKH4GaAgl1MNjsiDpgRunHd?=
 =?us-ascii?Q?OcUfpBCBd65kYTobn0Da9F44GmBxB+F59GlGgY8UrR9s2Z0VI8ia49ln/9DS?=
 =?us-ascii?Q?NMsKYfGc2+/ESrnASmZhqOWqmchlU7BNatdUUPvqltlewbUFG6UXIm836aOq?=
 =?us-ascii?Q?M/+086d3BHoV4NY011QKYz4nNX/Rgs3t4ud9MooGJIKe2nQaJmH+aHNBUmhW?=
 =?us-ascii?Q?oQCGipuvJToSxrctr5xTFu1BIZQvvTAu93Gn6ExWJma/aibDMDH8H8hHw/Db?=
 =?us-ascii?Q?Y9/2n7x/M4+fMKSYLKKs1OoJ6uqCyFRqzLFpOpFuAB8QQmihHfx/OViaiiYH?=
 =?us-ascii?Q?tys6ku7fZSWsm7ibkJYNe2pwqBibaZrz9w8d0rWZ/TiOHsf+Y5By9pwPuMhE?=
 =?us-ascii?Q?MTmuE4KzQz6jQJTJdbD7F7HbYDsG+2yt3VWYFUKoQ1+C4SQxN/hdqRoP7oWT?=
 =?us-ascii?Q?7dSJ6i6nECSSFHpmJsjX8gFne6Iz+aodZ/xj0Ql6/DN0TR4VqVU55ZbpWQoW?=
 =?us-ascii?Q?NxP7dI4fBCOfxiJA91+5FjONcBT2rq514aej021x58BIeF81k0Uj+sovMS0c?=
 =?us-ascii?Q?dBp/1/BDEB2B+392W1WDCPlX8PXd7TOQJrVAM18VegpnUg5HO3FaF842bgfV?=
 =?us-ascii?Q?uqU/ST8OoqCMFOguUKOZOvWkLaoEPPiu51JqDB8D66ecbDiUvdvsbuaJvgW9?=
 =?us-ascii?Q?8WyQW7Bawo3aFO+e7LlGveBrajYPlsYwSnOYNgX+IwO5D29uGR1kTpAlFGx3?=
 =?us-ascii?Q?dqHkB9sgNSq5zuerKISR0bpGiKU8IatJAxp95apEO5hUp40rdt2hVrEMdwvw?=
 =?us-ascii?Q?1Byx6XDpaQzcKEOerolWLtuH8ExQq2kFt2cwrEnJnh7tOgCoT5lAw5Wr1rRP?=
 =?us-ascii?Q?uMBv65QY88CUYgSGsGw11DZNJM8jcZ43krpv15TeQxMgb35C+YnuJfkRm44r?=
 =?us-ascii?Q?4Ddtld+4NYdOjMKIWLRa+2O8SqIyTragROotct6K0zawRQGLV4aTproKLv7+?=
 =?us-ascii?Q?xeEVTiVuMlLOa40HhhU9q2pEQQCBnBKDun0lm/mbsXawhThAXOvQz0LFCbSh?=
 =?us-ascii?Q?yVd5i6nULEzYDdTksBzSX1/f6nARWsP0u7LbtjVhSYJOjeyTpBH3GiTZSB8c?=
 =?us-ascii?Q?VSVeE7A452XNVdtDo7RRde73D5G+CK9IRl2kM59TsPPnl3aM9wcvSghamd8S?=
 =?us-ascii?Q?lbVjuWyzFfg9IVH1ifMf7DHRh1LEk1HMPBfVB+NQs69QV4PdVaIcIHuvm0B9?=
 =?us-ascii?Q?baj2WWTi23B9NE0Giaw5KN3J2dmXzMvDNs/lUuiA3c+70bAMgEmYuE7/YC3v?=
 =?us-ascii?Q?mP/ZT6qnicJmScDMLvZMwMc=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c676a6d1-0de7-4e10-e604-08dc1b4fa812
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2024 13:40:11.7056
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 13OGhhThJeq13YV1QpymAts1SYkihpziylXkJnaET2xjVllD3A68oNmdAl9nt2n2JqjcRu2CiG/r0Q1FenV4BxyBE3eoup11TsdYFsaGfOUBRD1npVWfN9nzQ+ISNrhH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7259
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 13:40:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62220

Hi Holger,

On 1/22/24 14:33, Sebert, Holger.ext via lists.yoctoproject.org wrote:
> [You don't often get email from holger.sebert.ext=3Dkarlstorz.com@lists.y=
octoproject.org. Learn why this is important at https://aka.ms/LearnAboutSe=
nderIdentification ]
>=20
> Hi Richard,
>=20
> Von: Richard Purdie <richard.purdie@linuxfoundation.org>
>> Try:
>>
>> PACKAGECONFIG:remove:class-target:pn-libxml2 =3D "python"
>>
>=20
> Tried it, but same error appears (=E2=80=9CPython not found=E2=80=9D in l=
ibxml2-native).
>=20

What does
bitbake-getvar -r libxml2-native PACKAGECONFIG
and
bitbake-getvar -r libxml2 PACKAGECONFIG

return?

I'm not entirely sure if the former will work since bitbake-getvar=20
expects a recipe and libxml2 isn't reaaaaally a recipe on its own.

If the former doesn't work, we need to check for=20
PACKAGECONFIG:class-native and PACKAGECONFIG:class-target in=20
bitbake-getvar -r libxml2 PACKAGECONFIG to debug this further.

Cheers,
Quentin

