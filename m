Return-Path: <mpham20@gmu.edu>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D290C4332F
	for <webhook@archiver.kernel.org>; Tue,  1 Nov 2022 21:10:04 +0000 (UTC)
Received: from na01-obe.outbound.protection.outlook.com (na01-obe.outbound.protection.outlook.com [40.93.198.0])
 by mx.groups.io with SMTP id smtpd.web08.23.1667337000029773790
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Nov 2022 14:10:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmuedu.onmicrosoft.com header.s=selector2-gmuedu-onmicrosoft-com header.b=QWNbpkMS;
 spf=pass (domain: gmu.edu, ip: 40.93.198.0, mailfrom: mpham20@gmu.edu)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G9UbnmZPaCIb4AdSfuGnPB0a4odAGFyfWwcTJP/+/1YSo2yTeyH0aBpvB+VdZnT1PdQ5lUepBYNwQVqRNcys5r80SMX/ufqRZGbAhgGQwZN4MqSJfteG5SYLPZkjU0d8ay4DGx/JmwwiF67RT2/gBKe63oXGBKNEgfQ0u7gghjEStaMkLywEleoFZTEw+eVrvDLo7Ovj+oG8zOEkBpi0hvkNOqShl+X3xmxLvdCANCIlIf0Y6QBNHjokY2jJpmeke0mEJWqob9hME2vo3RdX2X1p3LM63rBs9L3v3/kRoM03TQdujWZgzadTk7UEcV4+Ko/NLazVEgj8xU7nZxRK/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HUQgZRbrbSQb1W+w5XY9urhnYQrjGW3htpOqUj6WBY0=;
 b=b5fJxbSL9hqFIYv1ofy+gYGTEE4Hg23hqs3VP/5AGPAjzEHLUy5YJQs0+e7ZSh7Hki1GciKte4BtCmgywn+tcyabHzWwm5FOmp4qqSlWtIud0Y+Jgu0q9x4uMFqKLtGf4i1KCJobtgfpNlf3PBQ6CvXjRjOsFJZrQFO6zuZZSOVlxGy149PrDwqj3LBdG+osEkEpVD8H95+FffnY2yxTpJlkveCGh3em1/a4gcycGneCDSDKKHfcEppVuze1D6i01isB+ocrKEY8ovp6eIDu8MmXN8oyjkSizkZLx6zxkJoftRbq3GYgJ0HX1t9EaSC9sdbj5JNtZT3+f4udTAWhvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gmu.edu; dmarc=pass action=none header.from=gmu.edu; dkim=pass
 header.d=gmu.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmuedu.onmicrosoft.com; s=selector2-gmuedu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HUQgZRbrbSQb1W+w5XY9urhnYQrjGW3htpOqUj6WBY0=;
 b=QWNbpkMSnYncRSYpdC+I7Jzefv/6FtqbkHmdruNPIuKrbDq6ltU//j6gfz0YOsuIpeqjt1qKsICmfMCzN05/tERO1Wke9F5BNAbrvhlcdnFwWaETUsuZGbFe1QbPtSdpivwjA/tAsTfKLQTNA2mAIqHluU+LZ3LQaEZ8dfpKtA0=
Received: from CY4PR05MB3286.namprd05.prod.outlook.com (2603:10b6:910:53::10)
 by BYAPR05MB5910.namprd05.prod.outlook.com (2603:10b6:a03:cf::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.10; Tue, 1 Nov
 2022 21:09:56 +0000
Received: from CY4PR05MB3286.namprd05.prod.outlook.com
 ([fe80::7f4a:4fda:3970:b27]) by CY4PR05MB3286.namprd05.prod.outlook.com
 ([fe80::7f4a:4fda:3970:b27%4]) with mapi id 15.20.5791.019; Tue, 1 Nov 2022
 21:09:56 +0000
From: Michael T Pham <mpham20@gmu.edu>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Help with setting up a PREEMPT_RT image for BeagleBone
 Black #yocto
Thread-Topic: [yocto] Help with setting up a PREEMPT_RT image for BeagleBone
 Black #yocto
Thread-Index: AQHY6izCTuzM60m1ZkS/ROJdcj5/Aq4qDbgAgAB++yY=
Date: Tue, 1 Nov 2022 21:09:56 +0000
Message-ID: 
 <CY4PR05MB32865CAB7E20F81D92EEC2A0A4369@CY4PR05MB3286.namprd05.prod.outlook.com>
References: <LsVs.1666893088601518070.INID@lists.yoctoproject.org>
 <20221101125410.GD17701@gmail.com>
In-Reply-To: <20221101125410.GD17701@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gmu.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR05MB3286:EE_|BYAPR05MB5910:EE_
x-ms-office365-filtering-correlation-id: c47169a1-4762-42cd-7806-08dabc4d6dcf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 OL0WBVh6Yode2OVRvHAwb8i4q6Ls+S0StkpjZW1sHpKbssd2j57kQU3c8qbIuvcJe4dTywpLHAgAnP9HHbOSoGOikdjN/jwX7t9PcraYMcb22prXmnIRuT2QaBdkLSvZ+hhjWxXrg4WQT+44cH+TofI2zhIy17bqwoHejGLc63ulUX9o2te4oNHPZUkzdRbZ7svQOf440sKbH43IriHas9uKO/s1KGFUseR17HHd49bmhuOdelBZ0iXxw7a4s2d84EuNxYVsKMMObfpsv5fmTlH0WtOpiJqwH4K7QX40LjMkyQrwC36nXdHDODGxvHBDAMuxvi6yuC3WdedVYwLaphJTAbRdQ8fMWc/NpcweOjfbgMMO/v8xgdQv00d4dPhKSQq4iDYIpjXebX25xkpxXERM1aXkFHVOqT23YZRdSiqjxF3lwsoVmZMvflre5bxbKRn7136IEFowgXp4KHznfmbXNMm/7308kiQCrgCa+HFY+RbAhNVUx15v/YDPBxk0Aj6/v3/Yjzqy5i1TS5lCOq3rfynnetXGHGzm/fFOYBgn6ougEsyhoiGpoJmnkQMHW3OUKYCGj4gTT9o9aPQwQ+lD788nSzxakbdYQXpUrnplLZE4OaX7hjDoPqGDkW/yhJB5cHicR95FzOJinL7D5RLKb321dfvU02xf4x9cwErMzU75YOQeJzKOO3SxtWTXCpi4P3+piE35XE5/NBxqcodfUv5/hrCZK/hqV5KG9pAJ2fyxQ11BB1Lf9dWAmM3vmSdOuQW5t0tyrTli36eBbQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR05MB3286.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(376002)(396003)(39860400002)(136003)(346002)(451199015)(71200400001)(86362001)(38070700005)(478600001)(122000001)(6916009)(5660300002)(76116006)(316002)(33656002)(4326008)(66446008)(66946007)(64756008)(66556008)(66476007)(8676002)(8936002)(38100700002)(83380400001)(52536014)(186003)(786003)(2906002)(55016003)(75432002)(6506007)(9686003)(41300700001)(91956017)(7696005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?sS6u+UYYoCI3Z1wL4aSAJfRxHplKCGFwb1f2/ZBRNrSCsWf6i4iXb95o+w?=
 =?iso-8859-1?Q?BAYhEWAKbz61afkPr29R1Hiet0iSK6y20zEAxvswbOOwt605TgDW0oOECF?=
 =?iso-8859-1?Q?TQGSAM4nqSVeAoNlXPTeAPkjMRNaFE4mafwdQa/p0/u0cXBE8kqKel5O02?=
 =?iso-8859-1?Q?777KAm1ALouYeyox2va8om9AiTbOTpYVbmADrE/wjH0YrQ9yjaoiSdSNvd?=
 =?iso-8859-1?Q?Y/6XrkcSGLS1flkUTlcox8Zap7zpA+EV7HLfrVxGvZ4QNGLW2rn2dueBZK?=
 =?iso-8859-1?Q?ldUwm/aAmyxLxaKsYR8JRpGWzY8Fz8qxG7c53h7vfB9rK1ZR1kZOvyWXcQ?=
 =?iso-8859-1?Q?vftsWAaz7EM0xDreiiqDq1sxobAneoBdq8pSDEFpfJ5df6LuLoySb86i6z?=
 =?iso-8859-1?Q?VEKiyoZFUg6ftJVUt7GDc250jgdiEdhk0DozgU7Qar696dNHmg6nvLDgwe?=
 =?iso-8859-1?Q?SSxReN3LulgvusM0uFx217C+N1tc5ExDi4fHeqXNY1gs6oKdzc03sWDr6s?=
 =?iso-8859-1?Q?7on1yXjhnQuTnVQnDZg9HSkLJm7qAJWMhDxInLmbqyTxeT2OSoxtkr2i4f?=
 =?iso-8859-1?Q?/ubOawr/I5GX4FuhFq9pFvxx6jdPp7XuEojmSXaJ47MfdEspBT8+q80j5R?=
 =?iso-8859-1?Q?IU5HuVLSFgn20XD2c0unTC+T3qvBUltxZrzpfUUhdUBPSSgZkyVwT9a0VI?=
 =?iso-8859-1?Q?DXPVPgdry2H63V7Rr9ibWzWcEeDIEJd9/I/DgHflBTyKPrfiHbrCIKbegk?=
 =?iso-8859-1?Q?3B3gH2idqBnSwg0pobIciikbc/iY5ZRQ4LtbXHWoEM2gaceLWvS1r+U5Dc?=
 =?iso-8859-1?Q?EXPle8ynMknwFa5wNUvjkjeO4FEEdCdrapQHIjmQe2d7fS856A1ybRb+nj?=
 =?iso-8859-1?Q?AkGq82b0sQQmtHvtK1K+6Y4J+P4Qjp6mM80h6yHFOr8TF9v/winidDGxpL?=
 =?iso-8859-1?Q?wiCA/Nx1sUffm5tBl7NbmETvPBNeVfHLMeW3XdK2s3sBXmeTUK7NAWhW67?=
 =?iso-8859-1?Q?akkShwOylo7rXatGBVA7P8vZHA3s+io5ww+u2O3bXIjqFjgOhk3gJA4moh?=
 =?iso-8859-1?Q?WEtcon/EoAl6J/XN9NGNtISkLkHsMTcB8wXQkSp1Pl97Nhj7nPGUU2Lq6F?=
 =?iso-8859-1?Q?8naikSkiVKuxVHdPqD/Uik3zwOaTl+HTFqlCUvetXq032/VkM/0dDI1GRS?=
 =?iso-8859-1?Q?rosFlObBjf+sjzYcDwF4ABVntYtOK3Io8XvZpBwi518qWmjHKTxnY5TopU?=
 =?iso-8859-1?Q?InbeNrRN/xPae0ogjhR8Xe4HWO51FWzypGaJNq/x3Ljs/EK0G4DqtNJy/w?=
 =?iso-8859-1?Q?5JDtVxVqcnr5T6YlaaaWKpvx7Nqi+SVf1GvNiI62xz2LZYOjuRQ4Mp5CZo?=
 =?iso-8859-1?Q?T2aZiDqlFYMiARTASsX6TRNXbRCirUUlEn72GS/FEizVTYRcRoFoYkcQd2?=
 =?iso-8859-1?Q?rBNFPxJpNnMob0QsqCdcgV51/8zlw+y9yEAOtzkps7X7/Vq2Vc5n9cIyKO?=
 =?iso-8859-1?Q?8TdMSRxQ0kEnyy3a6mHjAQb0fl0lBlDK/+IOBvYLSGq+EWh2cMd9eXr8mQ?=
 =?iso-8859-1?Q?k7MWKpZ4UzapBfwLg028T/7GIZsiQEIoxt9WBtioyhqatk1rvxnqxm15bD?=
 =?iso-8859-1?Q?8LtiIM0wrEkOiM982yiXf2Wo1WDihpiblEHtDtG4McX8/6lYquuBiM6wBd?=
 =?iso-8859-1?Q?IugkwraX3g1mCsZuHCs=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: gmu.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR05MB3286.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c47169a1-4762-42cd-7806-08dabc4d6dcf
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2022 21:09:56.6538
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9e857255-df57-4c47-a0c0-0546460380cb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: puG4NZ8ygs3EXNB7aRP6yzc6taWq325h8kMynqZaqk0aCmFT2bP3TnQCp3vVXG4n
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR05MB5910
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Nov 2022 21:10:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58462

=0A=
>To build a kernel recipe (not just linux-yocto), it must be marked=0A=
>as compatible with your machine. The messages you are seeing are=0A=
>telling you that, by indicating that the recipes were skipped (since=0A=
>they are not compatible) and once they are all skipped you get a failure=
=0A=
>as nothing provides virtual/kernel.=0A=
>=0A=
>For linux-yocto, you also need a BSP description that the tooling=0A=
>uses to create the kernel configuration.=0A=
=0A=
I am not sure what is meant by this. Sorry, I'm a complete newbie ':)=0A=
=0A=
>We haven't been testing the beaglebone-yocto reference against -rt,=0A=
>so it isn't marked as compatible by default. That being said, it=0A=
>can be easily made compatible via a bbappend. Look at the=0A=
>meta-yocto-bsp layer, and the bbappends in there. We are adding=0A=
>the reference boards as compatible with linux-yocto. A similar=0A=
>bbappend would work for linux-yocto-rt, and you'd solve that first=0A=
>issue of not having a compatible machine.=0A=
=0A=
I think I see what you're saying. So I would copy the contents of =0A=
/poky/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend=0A=
for linux-yocto-rt? Where is the location to place this?=0A=
=0A=
>For the BSP description, it does happen that we have one in the=0A=
>linux-yocto configuration meta-data, so one doesn't need to be=0A=
>created. The tools would find that description during the build=0A=
>and use it accordingly. The default KBRANCH should aslo be fine=0A=
>for the beaglebone-yocto, as we aren't carrying any extra patches=0A=
>for the board, so the linux-yocto-rt recipe's default values will=0A=
>get the right branch checked out and built.=0A=
=0A=
Forgive me for not understanding but at first it sounds like you are=0A=
saying I need to create something and then you are saying I don't =0A=
need to?=0A=
=0A=
Michael=0A=

