Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D41EC77B7F
	for <webhook@archiver.kernel.org>; Mon,  8 May 2023 14:53:19 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.57])
 by mx.groups.io with SMTP id smtpd.web11.109564.1683557597117562299
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 May 2023 07:53:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=p4efrrIP;
 spf=pass (domain: siemens.com, ip: 40.107.20.57, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DFMzmHA3pnSqtJ4lMewDHVr/gIPQ+b624CU2zUXv5GpJUiLO4MLAFC4rNOtRJw2yEipk3RNO1+TLuCTAgY8StTNb9jufQBR0JW4wRmySed1lXgdTWrw559IbmXhx2vxGuXhZHY4eRfrAvsO1vUSq0MMzJS5YJV76i9UE1iT3mUE7UiqMCDtSOLSDPAUJr4HvNcSvuRQjPiHNej4Uy11LJdtdht4xTRo0hA35odSg+HqzoAmwwpgfmU8ZzoUSGdXSoE8EH6NHp5lK5qSyUIwEhoi5RzjLxnJLOYgebOTrTyw4yweN5RO7GbticE/89QVY6/iXCYbV0yH6XnvNGCvwxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k+JqEFT4msQsRi2LQQFmrNaCQ08Fml65ysYnf4/0B9o=;
 b=jA4D9HUw7AlgyaSXQW+RcvNWrOgUy4Bb7jrq+qknSAk8x3AbHH70GG6hUwRjp3/GkIlx8WgGzzVN3fL6ookDVSkdgSeHBkVt6aCi+8eefwwsLQ49O4lzgcR4ke2nLJMYsa+Mnbie3wyEeWog9HrgAVPP6OFYrFD3KHP/P6XkKLM2aePzn6hXx9p24YYh3tw6clnOep/O2hnBH+MePoipkkaw4rW0gUlk8+w93UZflfgr64X1RvFs/qdhIkPRKyifhPDn7L8IXuPgbHqxS2L6PBPApsad2Xxis0xIi9OWoeRYFuv9a2FUZDN/Nnhg+vA1spiNgiZ0WhQuYFJVOLWTNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k+JqEFT4msQsRi2LQQFmrNaCQ08Fml65ysYnf4/0B9o=;
 b=p4efrrIPMycAhkoGKjdYE3d6D/RWweGUWGe2ELOOkH0HCyyIlZS7eH+lSSgs3mKHy1PgT0Oe/nuXcPdL+8GQ1p3bfXHdTcKpzXttAHaV7YZVfxvO42g37/u8BQnrMyNNYG8PvCnFjB2pnX19kizlsknMQsWF4mdm5U8MPlOuJESmzK/hn1XnXwR+BaJX27CJ9/qZprOpEggI8RJ68Jqo3ZVrflUVcLIlBEegCe+s2VmdAVUa2ggDdKLog91ay9Az93Fw/2rS9bXi4m7AXVqVOyl836zN0jsh8IUF6zD5tjUMvNWCEtUnaZL2YgLn+B+JCI9hSpv4v9fkGniMprBKkw==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by AS8PR10MB7017.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:5a4::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Mon, 8 May
 2023 14:53:14 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::412e:af24:fb75:da07]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::412e:af24:fb75:da07%4]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 14:53:14 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: Mikko Rapeli <mikko.rapeli@linaro.org>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] [meta-security][kirkstone][PATCH] tpm2-tss: upgrade to
 3.2.2 to fix CVE-2023-22745
Thread-Topic: [yocto] [meta-security][kirkstone][PATCH] tpm2-tss: upgrade to
 3.2.2 to fix CVE-2023-22745
Thread-Index: AQHZgbBiYYkpkPluc0Sr2Gfc92tB+a9QYF+AgAAVa1A=
Date: Mon, 8 May 2023 14:53:14 +0000
Message-ID: 
 <AS1PR10MB5697E62C91BF6ED82495B579FD719@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: <20230508132334.427518-1-peter.marko@siemens.com>
 <ZFj6fwaS5hJ9hs/D@nuoska>
In-Reply-To: <ZFj6fwaS5hJ9hs/D@nuoska>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2023-05-08T14:53:13Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=797cea1c-5f23-469d-b8ba-77284ecfba89;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0
document_confidentiality: Restricted
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|AS8PR10MB7017:EE_
x-ms-office365-filtering-correlation-id: 11c5387a-3b76-4754-14d8-08db4fd3f396
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 83gxuHIfCesBAv41pQ2bdZ1OPgglkvjjixP8Lvz/M75UHWnxJ8xvmFxu6Q+a4OEarRUbu5Vi80CpR950rbprUEnDwHhR00/USFhXNhkyxhbmAvG0oZiOf7YkLEBGDtq/YTEpZvi1XVkpdup+RJu1feakGHx6TSEZKTKqjauegNMJfPhmxwysxF0cP2yuQivDexJv6K0n/d0mEYpXjvVqdWZ2imX1WiV/660Q/jKsQHmVFsiiTsgXRf6Rvlkd1BNpdymj5w9tuN/rTRad56UitaqdsWEL9emYsFa0Y5lIp6w5Lu+L3VyKlUTBaxIung/ULIEfpTJJI9IPG30pkDCLyd+X/OuwIc28MNOIApk7GKcbZnh2WqpaeNr6YkqgUWDCuZwlYUfx3H0b79753D/m6KaU/VkMZ9mwyfZzFMqzMN7kq4gg4kJ1utgWH2kOs6NQ35OoE+yIdS0vLIIJxmwOMnujiLUY27wCEbV4R0NWePjMkyZklV9S2q82Vdl3o9xlsdPxfE3Yr/bfVXE4q2pjRe/sRo079TqAXIQaiiaoKMbGXVdMS/yPII6YAtmo6vILyDljRJ3b0/+IFMJFFNNEpGv3YB3VBzJgKt7lKY/LaPs=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(136003)(346002)(396003)(39860400002)(376002)(451199021)(55236004)(53546011)(122000001)(38100700002)(9686003)(26005)(82960400001)(38070700005)(186003)(83380400001)(6506007)(71200400001)(2906002)(4744005)(8936002)(15650500001)(52536014)(86362001)(478600001)(966005)(41300700001)(66946007)(7696005)(4326008)(5660300002)(316002)(76116006)(66446008)(6916009)(66476007)(64756008)(66556008)(8676002)(33656002)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?45Tfpga7VVq20Q6FnpG/R5QJY3d+XQ7NzzmQQIpmu4ICEzV6dts5M5yXIJxU?=
 =?us-ascii?Q?nUiE5mv/Wfdbs0Vbb2HyYsXD8it8OWdeLK2J9gKFooq9WG5EI9MUua6cIg9D?=
 =?us-ascii?Q?ffn9tDY466aODdrWmc7ukMATbP6c9fCk8XPzDLxu7kFuAQoaxElLu6nEglqG?=
 =?us-ascii?Q?lh9GW+6+4hPMgxxEabADJp7t0urUD1fHiPlnt/lluDQEcfEZMbVv9F0UJXFp?=
 =?us-ascii?Q?VCFRhK/LGTXAMtDoLGN6kQgmhfbheyjgldryXlvng2gw7ouAqMbvBqlWA9au?=
 =?us-ascii?Q?Sa+WXzj8U/YMgzuUpOLxXXTxVn2mjp3p2k30XIf9Xe4wy/jQqRIYo8Cpu/AR?=
 =?us-ascii?Q?5BemWHHkEK8JdYCHRDLgDQl+T4K7jCvLHDQcDt/B5hmHbaVLBkmBnZb3Lyic?=
 =?us-ascii?Q?yuxY49PYfSxPMdht+/CmOhtnm/WTitVCiKwuxJTrH8gjsajNzbvvWia5LgnO?=
 =?us-ascii?Q?i4pwNqJV0DHCgbh/u/Vd1Z5m4H4/C8o6GBJial7AqCFi6IpZLDeSkwTBNa/O?=
 =?us-ascii?Q?/UxBksQ27wBbMmquO29b3Bmf1xZVUYPR3IW/7VbvyUmkPAfHTmoLgI6d01t2?=
 =?us-ascii?Q?Nko95q9W54Q8yHRh7YnCxUehgpohft3uku/9D23CQSbXMeDwz48MCfpa1+M3?=
 =?us-ascii?Q?s1T+X3Rg27Fo+mrtIzPIUH9AbqQmfd1yYYjeWQCyAmEPmZl8frBjxvZRbJmX?=
 =?us-ascii?Q?DWhicCpDYDOYV1B48kZrgp7kJPNwR5RIl3uXz4BAt+r0GFf8dTMv5+qLcdWt?=
 =?us-ascii?Q?lHysCs9UZhB/az5IRSOVyNjKI3hJxH2yCBIp3eTWg2Pu2XaM8QDeyrlPcnE7?=
 =?us-ascii?Q?UrGWi/GqKMOrmAvKTL7BeEoMMMvX0lePDCGxekd9itscn3M5CcPblI79Do61?=
 =?us-ascii?Q?YZcBueWxZUhfVrFeUcZ9JAVhMTTHhCadz/Rh6HEGFjt5t3V1g0LvFYPIwVY+?=
 =?us-ascii?Q?ssUYvMmVBMpb1gET+H1+gdoUmVT18TFZiH97Kl3OEaZIcksietODYCg4zOfG?=
 =?us-ascii?Q?KctnJSurQUpYLxEg7Ry1BSPBGxK1IEiPv6W7XzTlUTowEdIKPp//GRtf8EhU?=
 =?us-ascii?Q?2LV5kJB/ijPexwMfkLGVtbua/EL1FYiudgNYkIqt13qsgI7jr2fvD9zyviDP?=
 =?us-ascii?Q?Rp6xvr68vj4yxXTNN1LfQY/GrLdwDEvuCqzY6TdNdRnbIr3NaBNYZ8CgQ66+?=
 =?us-ascii?Q?53k54bKl4aMsFRUWnFTxdMygY7tlW7P8bjpKaYnrSRFJTVv7EfECerGaPFR1?=
 =?us-ascii?Q?zhB09lbxGAYshW/a5kcgL2NjkPM9Rq+VUX3Mlcm4Xs2UKFn8XH6rfYsFFDwF?=
 =?us-ascii?Q?Dn6fLtwzy/3PixJDNN2Dygd2TWYNzfViRPEEJXiw3X4gsYcsDDUJjlTazDmq?=
 =?us-ascii?Q?YGzrlbX+Gq79vVE9klVZwwYYUTCh3khCiB5CEc5fcApPSdsl+N2c0lBe6wAr?=
 =?us-ascii?Q?hVZqJ+SSm+xMR2eNz+R1XRhzCZNB72jMSbRtv54eQU0b/WX56L/oiV21iBjY?=
 =?us-ascii?Q?ysH0bFXNhDWzJvhURaWsKG8OkCumTgjgJV3f3Sa7VS9/Bcj+1VEpMvX6J7vv?=
 =?us-ascii?Q?sBI3y+HwTQkP70smGYR26u8LLFKQSwdaq9MCkwBY?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 11c5387a-3b76-4754-14d8-08db4fd3f396
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2023 14:53:14.6135
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RQBkMy0Kmi1CPERyT+qShUkWzt5djiW9DM1y1zBIphHui4Y/xnhCGF1y6CjKTHTm86pKY3OG9WBNZSwPXpgNbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB7017
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 May 2023 14:53:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59906

Hi,

I'm not a big fan of commit messages saying that other branch has it fixed.
But yes, I forgot to mark the CVE as fixed, so sent a v2.

Peter

-----Original Message-----
From: Mikko Rapeli <mikko.rapeli@linaro.org>=20
Sent: Monday, May 8, 2023 15:35
To: Marko, Peter (ADV D EU SK BFS1) <Peter.Marko@siemens.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-security][kirkstone][PATCH] tpm2-tss: upgrade to=
 3.2.2 to fix CVE-2023-22745

> Hi,
>
> Since master has 4.0.1 and CVE is impacting:
>
> https://nvd.nist.gov/vuln/detail/CVE-2023-22745
>
> "Up to (including)
> 4.0.0"
>
> then I guess master branch and 4.0.1 is not impacted. Would be nice to ha=
ve this info in commit message though.
>
> Cheers,
>
> -Mikko
>
> On Mon, May 08, 2023 at 03:23:34PM +0200, Peter Marko via lists.yoctoproj=
ect.org wrote:

