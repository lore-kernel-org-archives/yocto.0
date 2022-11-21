Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C49FC4332F
	for <webhook@archiver.kernel.org>; Mon, 21 Nov 2022 17:39:37 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.59])
 by mx.groups.io with SMTP id smtpd.web10.233.1669052371967142869
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Nov 2022 09:39:32 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@theobroma-systems.com header.s=selector1 header.b=MHttNOg8;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.105.59, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oof8faTMdCSY59FEG2oMu1O4CN7wYZcl17zglR5J9aRiOTI50uhxfj5SSRg78xBhmwsZT+AmDcyYUwZJMVatST31Yv60BlpIPQVm3Gf24Roi0W7iV/mq40bGEzvlrScCogrlKtCxsAqo+kS2EHWjgKQTyLF1EbH/ruNognHMXHYbTzAAl2kUt439BDTaEeSG8AFHc50RdX+p01mYUW/s/yDBUT+qObRdUR8jpsi7evc5YwdZlith4zrY0zarqKfVQXQ5UuHSqnlQTVy4zLHOW8JJ41hPweC66xz+sYzej1IUL3oi/S2FPA+Qcmb9mdi/tpchJhbGDHA5Ry2vDT1oLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yy/qq28UT12kNcJeEKFlL3/d3SqDGvyJ5qsG0hK+aBs=;
 b=XaXtOEu00qdH3s3wPJt/OYUGgQaiecE8J0rlT7gaRhrJa/oka7/+KWKlTsWJ7JKUDmFxdD2HKECnEw/eUAGbdrK1qQ6vggS66Xid/o49nCDY7BuuLdwNStOyf40SJBhNeXvyi5bS/nnh/QqzAslfnAlJW6jMPmKwZuWLJo+EVu5p/PVpjBH/1XVep19I+Q6bPXQ0e6kjb5iz+QfctagvhdWCxEpZaxz8qCUDaAmtrtBu3aHzy7lNhZDYODvPbZi60syGrSiYHrEEAnvJzICQEzVeRm4ORP4MywbmxC7yEzap2mN3RrMKZ1nf9PzgthEcje2Rl8Fj4QCZVrHlKznBTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yy/qq28UT12kNcJeEKFlL3/d3SqDGvyJ5qsG0hK+aBs=;
 b=MHttNOg8Ivo+WK6OTmJhxvLElcaaZb0vhS634FR6ydWjX3X0UpU3CyfUrOKhUOl6XCxTN29jcx27KdGFK3yJxYr+icaRzpIELD9Z+n0GLvfChmgalXv68mTB0DGlGfWfu2e2hIVY2EOZEtnDgYwI06yHiZRo0qpZQMtOWrrBM1hgo1FOHeGa2D42jhu8Vz5jhX23MxyUxrF10VzxNkMnPxY/V9XGT7TdXQvYfK9Etn/NKZFcGo1aYkxGShrSKPG2bQZIKeV1Zevn3KOso8+yTU2PqHPX60KrbmpR4h79tFAcqyRwzFbAg2qPT3Kvr9S0QHCdS5ySWrMwMDJiThliQQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PAXPR04MB8815.eurprd04.prod.outlook.com (2603:10a6:102:20e::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.9; Mon, 21 Nov
 2022 17:39:29 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9584:94ee:73c6:bed4]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9584:94ee:73c6:bed4%5]) with mapi id 15.20.5834.015; Mon, 21 Nov 2022
 17:39:27 +0000
Message-ID: <17d464c5-918d-f5ab-de63-be41a3b65f7a@theobroma-systems.com>
Date: Mon, 21 Nov 2022 18:39:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [yocto] #kirkstone: boot script section not added in the fitimage
To: sebastien.fabre31@gmail.com, yocto@lists.yoctoproject.org
References: <IaM3.1668433842895128362.FuTB@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <IaM3.1668433842895128362.FuTB@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: FR2P281CA0001.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::11) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PAXPR04MB8815:EE_
X-MS-Office365-Filtering-Correlation-Id: 1b112b9c-dde9-400e-0500-08dacbe75661
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	K6j/H7cvGJ1SHjGo8JdBYsSAcx6RjXq7A3931KJ5ojRIBS0itxWlVI8ADDj5auzU2ZG7lOOfWGGBauSA18POAaOaioM5m95gUTZYQkI53B3FHB6hn1q/oa+YKvLQrcDzPS1zRmM3m4lw/5AjB/oimpkF7cpIpBHg7Gx/wwTtJo4Vi3Dww0onG4AfE6r/EUe0afC+R5/EQMWUC7a0wSeayZjgQHsKQHhB/5JHRMVyfq0s+LN2+/QdcwD7o1DXZgNKZyOn8e3HZ36mUmCRZR2kn27xGUO17W29C33+Mj6x7DIdhSRlJX+mBfIDa5WZ864FW5ao4scPXmvMX630nvmqXAionx5zrGGHxbi00dnmVNGlH25sMgj4AuvH7IfwFOJortganX1Pdac27AXLbbNkK9EV4EjpJ+bStAGPxdQSh9lTprGgY5R/liVJ36wRWBIMs6iQ+S4Mw5S22dvpvT9sVOXlHZIg351C7dquF86nQSsPJDZSqFiEp+kW0MkqdmAtDSEGsDJcHntByxJxbWzMMgRJt2nGKtRcOIobWY2WjLh0cUvlzrZxJDJmo6lgntLb2RrUJiTKwQFkN5ASXLU1ktAtLtVOiGV6cJhl0tEku+nh52g+E9nXOewRxbCTxAugvxYLhxdi4Fl3pGCVHdkUNTZ/dU4+xKSOxNgo0KY29lMCKg2pKcWuKFnwgIu8TJ4r3NBsFmRoYsUdKiLjHDqKFf+XViTfp1haXlhE6lXxE1Y=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(376002)(396003)(346002)(39850400004)(136003)(451199015)(6486002)(26005)(2906002)(36756003)(6506007)(86362001)(31696002)(478600001)(6512007)(38100700002)(53546011)(2616005)(186003)(44832011)(8936002)(41300700001)(31686004)(66556008)(66476007)(5660300002)(8676002)(66946007)(316002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?5uma/w3JfkmurhIi63dny200TMRMzLSWAyRsurCFyn0l1GZ3pJz2JUnCzDSF?=
 =?us-ascii?Q?DrQimmFIBzDk820bWMfQho+wbXR+DtDe1KnW8rWVlKFdhEtJvNk8eASZTgy0?=
 =?us-ascii?Q?uBzGgGlczQ2oZbt+Cxo1UkR7PwOXIeL2oGiTp7rR+OI6/BqKuBzHcS7KQgnN?=
 =?us-ascii?Q?OrTjM7HQgYnfoL+mUOfiWnjmBjmDYE48yJTiVQzbuJf03eDtURcU2L6uvJ1b?=
 =?us-ascii?Q?bwEBDOknUePGDjGC/4v3Ts6cV6ngiKiNClfzYDdHqokr3MmhLaAlzxue3wXp?=
 =?us-ascii?Q?3aNp8I34AlmfAmNNEIeZS5OhriB+clXyeu9h3IGJ4gmW47s3pQrJ6+BaPVnR?=
 =?us-ascii?Q?xbiwHGE9DRYf1JD4tLeSb/8k+udA0NDVlL1XIQ8OW1+X3oiqqx94fINeHIJv?=
 =?us-ascii?Q?+9k2gq7UJ9a2Ytb7A5QENJmNJCyZLayIZQx9ZeKzvRIu711MlCMMNip2jsro?=
 =?us-ascii?Q?APYCoLs9Xyde163M+gydwz6nV5GtoBp0LU7t+pnG2K3vrgHuhqTsrTcGdUd4?=
 =?us-ascii?Q?YYOhemWRJhUFQJw8lcmzDqE6FO9zWgcIfE9mJqSnlLV71QCq4S89ga/aGNb1?=
 =?us-ascii?Q?OpC+JUMuFmByIR2Ke9s4QEXccjGeGp2S7DxgAMQF7MEkS/GlcHCQglRFhRqH?=
 =?us-ascii?Q?RQfuoOlomXReIzm5em6aCbEM8k7upkEchQtlUSldcehfd2BOLUFqBvi5hG/c?=
 =?us-ascii?Q?lbZCfM0/t0YeKr24gzdHgshh+T85xtFac553UuNgJENGfDgijtoCEjZ3v79s?=
 =?us-ascii?Q?urUvOCVVcKdVu+gXUk2exY3HcSEZ+CrPzfEYX60/VDVUbENiNZOlUHG2+QyR?=
 =?us-ascii?Q?3p0cy2qfvGh4GKtakJjot3y4WqwmO311iEd9D7A5k9i4sXlDm1clEF0MTWhY?=
 =?us-ascii?Q?42VkX5RsNtDWldceM4AOWppX+B90FiHhmwmgVQyMo+a23mkcPCVxwURpBJZN?=
 =?us-ascii?Q?jQLs33vbViM+C7u/1OCndF/mA0rY9sXGa4eRMZisbW3eb5EWLQTqe7/aK6lA?=
 =?us-ascii?Q?5MQPzOWSKIfcGnJ5yOySjvK5c70i0RxNZwk/r6VD/9u1ejkP5VY+67nMmiba?=
 =?us-ascii?Q?p7ORqf3UxFhgKeMtDyGj4RvVqhXrgGgMbxfdZCv3m3C4si45K/Ulh2gZW8vC?=
 =?us-ascii?Q?m87689cBKUSJ+GICp/VhKfXw4HUweFeyjbcsD4+g97KZUfPw7yx/bIGrRS+V?=
 =?us-ascii?Q?9jaHkgiq9+NR/b3U70KwiG6g0gHHNahPSRQLjhiHontPrM70qSqdGG27nrId?=
 =?us-ascii?Q?FDr9TTCbgpXqVpJjmrC0dUcSXq3jEDW2NrbWQNURuchxGSHuv4hDo+fk1hvQ?=
 =?us-ascii?Q?mBJu5apJZEBn8OLv1C8gEj/bopuPVb9O8QGVRgKsB3VEXzw9bUeQMl6P39ai?=
 =?us-ascii?Q?40rGSOGb7NSR+U7caHBXYDztvDau97ii5dYCDtA/lhs3Yqtr5TWC4O+FrpXx?=
 =?us-ascii?Q?hvK+kjdPWYxZz0nJa7T7MZdZiM8dX/3axDay4QGg0iN1iju6dXZTCTq+5E/Z?=
 =?us-ascii?Q?6VxuzPcwPWDwmZQWmENbtEFJgek5gkgN2JtnX0pVo+iNpedhNPaQlDp0ktLs?=
 =?us-ascii?Q?6X0fyDJoyDzwS1psJatIVOr/jTF5UTY3Oj7abctVP+mNfuhvga2SIbNZCBNK?=
 =?us-ascii?Q?+WyQZeS4xVYDamwejVzns+g=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b112b9c-dde9-400e-0500-08dacbe75661
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2022 17:39:27.4991
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 74gHvLns/hkCeRgcbY/f+DlN0WL7Ouklpdl7KJTg8moaaDxikojC+4F5zCEsXcMIvpRcYpf4yhOksONscbXhNohZInR3wm0AvXA/HmaNUq+DWurO9bPcMnFzMvkbtG8N
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8815
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Nov 2022 17:39:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58607

Hi S=C3=A9bastien,

On 11/14/22 14:50, sebastien.fabre31@gmail.com wrote:
> Hello,
>=20
> I am working on kirkstone. If UBOOT_ENV is specified and kernel-fitimage =
is in KERNEL_CLASSES, boot script section is not added in the fitimage.
>=20
> In fitimage_assemble (kernel-fitimage.bbclass), the 3 rd step is not perf=
ormed because boot directory is not in STAGING_DIR_HOST. Indeed, u-boot.inc=
 installs UBOOT_ENV_BINARY in boot directory but boot is not in SYSROOT_DIR=
S so it is not present in kernel STAGING_DIR_HOST.
>=20
> Should we add the following line in u-boot.inc ?
>=20
> SYSROOT_DIRS:append =3D "${@' /boot' if d.getVar('UBOOT_ENV') else ''}"
>=20

The logic seems reasonable to me, yes. We could have used the deploy=20
directory instead and depend on the do_deploy task instead of the=20
do_populate_sysroot but I think it is actually safer to use the sysroot=20
(because it is cleaned if a dependency changes, as opposed to the deploy=20
directory that might be providing an old version, e.g. think one build=20
with UBOOT_ENV set followed by one it isn't, the deployed artifact will=20
still be present).

Though, please use +=3D instead of :append.

I'm wondering also if we cannot just always have /boot in SYSROOT_DIRS=20
for U-Boot recipe? I guess it's fine like this :)

Please send a patch,
Cheers,
Quentin

