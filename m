Return-Path: <mpham20@gmu.edu>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C02EC38A02
	for <webhook@archiver.kernel.org>; Sat, 29 Oct 2022 18:08:39 +0000 (UTC)
Received: from na01-obe.outbound.protection.outlook.com (na01-obe.outbound.protection.outlook.com [52.101.64.11])
 by mx.groups.io with SMTP id smtpd.web09.839.1667066918435248796
 for <yocto@lists.yoctoproject.org>;
 Sat, 29 Oct 2022 11:08:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmuedu.onmicrosoft.com header.s=selector2-gmuedu-onmicrosoft-com header.b=iaS0FkRw;
 spf=pass (domain: gmu.edu, ip: 52.101.64.11, mailfrom: mpham20@gmu.edu)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kH729kNwL2doJkhGKy5OmJifnNH8ldE76efR6kjUonf0aW5D/Y/xsG39uoZMubRm0GwOTJryfrhduHm823Wvq88p2+1V++fNmHfgpjFqJ+HwlRCiA1wTakzD/F/Bcc+aok1HFiVQI6GDM9J4ZiYji5jFSPJlYWaUzg1NxwT+ADFajEfGa94q/1fw32u04QReekK3geIL8w2WF2UJzjpDB5xI39mgg4UvojZhcT4fWFc7yZWydfuypvPYULHiai3YFWMY9NEIbTRN1hZYvANuJlU1RP+weFLIN5XsiU4G3xGDTMf9BSanTHz7vjrF1RFihyA0OOI8cTqwK7fcCAUgoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=78CZPNrTmTiLfEM7gz4Qz3hFP0q4UHwWNf8PRWc6UiU=;
 b=Z+AA322S95FNj4fnWf9t8y1+7+YNI3h15kBPAMpqDSZqHdC3FTC8yuP6gopLr2mM9LAZOGiPhKvMDsmPkaM6WRQS2pCjn9sCVGAmeRkFYVsvbVtMvetZ9MO5fkDsSYE5bHQqnVOwSJeXSyRDa2gzDuUnDkvnEwuIS1fjKPlqW8kF6Rk2d5GcDzER2etDJ/qNdVFqzPcG6AKbDf+cBuk25M8n0O3OCoeU+JvT2oWmwCd4xKXFDnvbqiwoDNLHW1YyEobAC994v2dhCVD4K0bXWp2TcEm6IaBaQBLGe0ppE6dKytjOkPz54hvOlXXyGHXlXDram9Bm/HLdaJdiA1Zohw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gmu.edu; dmarc=pass action=none header.from=gmu.edu; dkim=pass
 header.d=gmu.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmuedu.onmicrosoft.com; s=selector2-gmuedu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=78CZPNrTmTiLfEM7gz4Qz3hFP0q4UHwWNf8PRWc6UiU=;
 b=iaS0FkRwPoj1R8RwXamABhz79HshT8J7a9fLAsmDxoxkVErw8CoPJAbJEI4dPn7G+owtq507k8R8meMHsx/ysrduyMwdxggeFh3mQWx3tgwIotBGexilIiFsLXHIDmuJ5/RdA2vnn7maw+ky7/JF/iVeHPJxaq8CAAAJZM183JM=
Received: from CY4PR05MB3286.namprd05.prod.outlook.com (2603:10b6:910:53::10)
 by DM6PR05MB4364.namprd05.prod.outlook.com (2603:10b6:5:a2::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.18; Sat, 29 Oct
 2022 18:08:35 +0000
Received: from CY4PR05MB3286.namprd05.prod.outlook.com
 ([fe80::7f4a:4fda:3970:b27]) by CY4PR05MB3286.namprd05.prod.outlook.com
 ([fe80::7f4a:4fda:3970:b27%4]) with mapi id 15.20.5723.020; Sat, 29 Oct 2022
 18:08:35 +0000
From: Michael T Pham <mpham20@gmu.edu>
To: Alexander Kanavin <alex.kanavin@gmail.com>, Bruce Ashfield
	<bruce.ashfield@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Help with setting up a PREEMPT_RT image for BeagleBone
 Black #yocto
Thread-Topic: [yocto] Help with setting up a PREEMPT_RT image for BeagleBone
 Black #yocto
Thread-Index: AQHY6izCTuzM60m1ZkS/ROJdcj5/Aq4ittuAgAL2ll0=
Date: Sat, 29 Oct 2022 18:08:35 +0000
Message-ID: 
 <CY4PR05MB328653B2C6D8027560315123A4359@CY4PR05MB3286.namprd05.prod.outlook.com>
References: <LsVs.1666893088601518070.INID@lists.yoctoproject.org>
 <CANNYZj-kF-uECoEEwDB0webSTSji24JgFjnFY9KbP5=4Kty4CQ@mail.gmail.com>
In-Reply-To: 
 <CANNYZj-kF-uECoEEwDB0webSTSji24JgFjnFY9KbP5=4Kty4CQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gmu.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR05MB3286:EE_|DM6PR05MB4364:EE_
x-ms-office365-filtering-correlation-id: e1e3a3a9-7589-4e5f-f1e1-08dab9d898a0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 iq9aXt1uAzQiRbgakE1Ga/76MrZjJTeMMC8nvyo6U06rWNZF0UsLqfIl9XHs0rRkawQ4FJQ0RY+AIubRT7YuGUIk/O5G2FxOPY4IV6ZVtd9CgfCA2bJH2EWDcqywMRf7kVLQrbLBHnZHUAt95fEp2wYQenBwS3Iqqf4OSod1sRsP9UmG5MqxwgnAY+ADU2z6JLKT/7xyCBqme3L0tWJvzSf6FApNZ3xmTTVZUErBLqcJfAZ1rRERMdVRJcFeJbcrAnUNv2GgKK3ZQTV7YHja2BkAnlK+C9+5WcDokk0UuzS9qKIZ3WLP1anPDFRoEweZ3lpFdZoefOiJixH6z78jJ+bq/l0GUax8orrZa9RS6vE0qpPlJrcAk/64NgPSGpRi5jdFoBC6UvMoHfn9eYUlo5RKhdaS2KKXkdFIxrhYS81NwL+hph8lcCKpiEFwscz1iqy86TvwWpEZCkE2i2yLXr+oBwjety4ZfYt4YecEhoItfCahisOnQngNcRMNjdcWDxxoWMuzUnZ4cxByiweCk/6Hs8+oCaxqjUptVw2dbCUB4XMtHHgi60uph9LmkLh8wHtzMYB1zcaYqR7BVqsoCp802oPJ+H0SXH4gplkNaP3Tcjn4bucTNEMTRfAbFjBU7N4HTvoQIBu1GvyBfJHg7Y5W236k9F7zT5EPvLy3pUejjBwg+ssbBQCCazzHyvMZH+5LRWIScoi/Uujt7DamL+MbfYeuFJZqXqrMikOEGzWkQgeaI2/XeAb+Oy5jOAY3ar/S6cV9lf/4d9qmJ6NUmZK21Tl34TV4JL6f7QUiGY0Wt/F08P4tiNAJFTlFE3Hm
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR05MB3286.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(136003)(396003)(346002)(376002)(39860400002)(451199015)(33656002)(110136005)(66946007)(38070700005)(66556008)(38100700002)(71200400001)(66476007)(4326008)(316002)(66446008)(91956017)(122000001)(8676002)(2906002)(52536014)(64756008)(4744005)(7696005)(75432002)(55016003)(6506007)(5660300002)(9686003)(478600001)(8936002)(76116006)(186003)(786003)(41300700001)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?WPFn8Ai/JphZIwbu92Wqax1dldntenjQLhL00pG4SUpsxEEzM721mZtu2r?=
 =?iso-8859-1?Q?NPEloYJJ2W/64bzX30EZV81GIOIx7cMRUOhQHKdwrvd6/DqSCrxVv2K0x5?=
 =?iso-8859-1?Q?So9F+e26tOphyqfW2f9LGiozC3VVj2e+SOttlnz/ak3r/cgwCiynUu99Tw?=
 =?iso-8859-1?Q?dreEXTeYrU8Htsrax2543OrykyPVbvlSnLMPoaE15NTvk1VtAQ2G6lmSv9?=
 =?iso-8859-1?Q?goE36CfQrqz1srGAruDLb3qz155Df6qwiJizINuoo69GUTN5r0+wQRcIpx?=
 =?iso-8859-1?Q?tczFXQd1slQW9eW4kHpAlTUtT6lYnWWmXLPcNIhlfbP3dPC+wM3f7ZuMfN?=
 =?iso-8859-1?Q?CbYx5DZDX8SKALWOh9UezXARhx2uRajg87fkxToZptWnWYuKMtAksfduz2?=
 =?iso-8859-1?Q?eZxGGQOnlnN/G+hv6oJQ+/9EoEM4u9hdcfxyRTx6kyFYPCbDcIfIzGldie?=
 =?iso-8859-1?Q?ZZ4DxJNIm7eTfrSZ+S9zL8fRqRo2ebsupk0ua4HFHxRebc8JwHUXq7R8Ba?=
 =?iso-8859-1?Q?6qJczrFi8DMpTEn42kaVayv/HfviaF27dBt5mIwDZ8B3uAtynL1/auzEDL?=
 =?iso-8859-1?Q?nexb89q2GmELWjt6XdIUMxqFS3k0oZwkFPHqTVL5QfGd0WHQCWbPcRt6AG?=
 =?iso-8859-1?Q?edOATfPIkTsgwD0Lr2MvSFk0U86PrgSKHCl6kI1sjZ0AOUX+2a2MG669ld?=
 =?iso-8859-1?Q?WWNLQI8EkncCnsGxWy8J+eSmgF8o6FmaMSlv3siiqDl43RnYqZ/PfBXXzq?=
 =?iso-8859-1?Q?5I8fzLMOa5sl7FN/X7N6dt9T+9xC4/kdo/Ecs4ODIsAmnEqa7pDHx/25E/?=
 =?iso-8859-1?Q?CGKsYbV/K3yn7yX1m9jGdJx3qlXnoYD9g15bXngIFTd2z905p7e8cEgUHS?=
 =?iso-8859-1?Q?/8y0jffQlaUPWk3JyBcFmo+QKyBokPxcpiVO/thxx7XbtIfnfi5Q0ffhCe?=
 =?iso-8859-1?Q?kWc+y75hWzmyf7vSo02ti/uowMISo+nU3e+1Yu66xkK9hta3jGQ3eGh5dd?=
 =?iso-8859-1?Q?40VeDqnv6vO1HluvHmfMCR+UBUdMP5PhvfIg8W9P8KeEWrBGdVBRc/TDYa?=
 =?iso-8859-1?Q?ODaG7kxNiEk8GVGar1d/C+ynXh0q0IqdsB8C1pgD9lF7VbDLbIPCKY7Dbf?=
 =?iso-8859-1?Q?lrGJOoYEc4soRomdbUPTRelGFrzpEhe95WEH2m3HE5NVwz0s7wMbfHtY5m?=
 =?iso-8859-1?Q?E+p7gJJhzsekZ7Zcl9wemIx5zGPsqEXs0H3g5muWJA5GngFvLdtf2beOdb?=
 =?iso-8859-1?Q?GCVDvX3SdEgpyrbo4hJ7v1sXiVrss2+Raj7lOXc6YEIkTI39Mqyh8UgUjX?=
 =?iso-8859-1?Q?YHfsgVWPaBm2LfBUmdxZOd/8MeGyN05USy500mbyZrZINVN7Ci1LYx5eB9?=
 =?iso-8859-1?Q?Wz/uqGQtiTcAmN8tIZghOqvKUXIt/7n8PHqHnMOcffRASFnBtry6RMMS6u?=
 =?iso-8859-1?Q?CMYV15TRVa799M+y64yEr72L7NFfhT/vP8rOAbBpBCChExTYmQh0k6h3XR?=
 =?iso-8859-1?Q?4LV1XMGbMpvrXJ4LT6qG04pOm2C4szBdbjyXxbogFP3CCfJQeLJ+iTsddX?=
 =?iso-8859-1?Q?90F0ufgnYbsvyWLVm15mrPP9KPvgLRvvZSQafk9VeDxZ12hIemN+CFoqdn?=
 =?iso-8859-1?Q?E+AMMcg5zrL9X/bh21y6OtWnpL/tZDkc4EnrzOE72vs6MsYc8TD/YGVr3v?=
 =?iso-8859-1?Q?yePypzEsS+45E2yxoo4=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: gmu.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR05MB3286.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1e3a3a9-7589-4e5f-f1e1-08dab9d898a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2022 18:08:35.0793
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9e857255-df57-4c47-a0c0-0546460380cb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jzZdwREpTsPh653gav3QfMkY8Sz025XQAP4uWfsYxlTnSNGCib9QV75oUdZ+XK7z
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR05MB4364
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 29 Oct 2022 18:08:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58438

=0A=
>On Thu, 27 Oct 2022 at 19:51, <mpham20@gmu.edu> wrote:=0A=
>> linux-yocto-rt PROVIDES virtual/kernel but was skipped: incompatible wit=
h machine beaglebone-yocto (not in COMPATIBLE_MACHINE)=0A=
>=0A=
>This is the key piece. Beaglebone target only allows a standard non-rt=0A=
>kernel. Perhaps Bruce can clarify the steps needed to add=0A=
>linux-yocto-rt? This is not something newcomers are expected to handle=0A=
>without assistance.=0A=
>=0A=
>Alex=0A=
=0A=
Just a friendly bump, hopefully people don't mind :)=0A=
=0A=
And thank you Alex for mentioning Bruce. Maybe I can get some help.=0A=
=0A=
Michael=

