Return-Path: <Jesus.JimenezSanchez@verifone.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD3CEB64D7
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 14:32:47 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (NAM10-MW2-obe.outbound.protection.outlook.com [40.107.94.78])
 by mx.groups.io with SMTP id smtpd.web10.12220.1687357965386917801
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 07:32:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@verifone.com header.s=selector2 header.b=sKDPJ/fW;
 spf=pass (domain: verifone.com, ip: 40.107.94.78, mailfrom: jesus.jimenezsanchez@verifone.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dvhHjJWMtixquU9iQguclS1Z4M28oiQ7sF6DAfqFUvmd96yEy06iEMEaoKSeOdwaKvJ4iugA9uBiAkgJvRKRjC9moDpSEmJHo2hn3rofSFE0Oy7C+/PJTP6G2qHjTpHT1ClMLXiA3tN0bFXaarFgoFfEOl/0atk+g9nHH/8XezNw3oIIWlWPTJu74j7PgyNMiDbsbWSLTO7biKUilmjvwk0STWlADv879Tl8TonMdKskYUQZNiF4spj5OeIEWi2jTt9f/Q9a1s8Q5++JtqzKvkJhAVKidA1XXDozuLuFKa2Bqvs5CgTmEm3ubed9tdzBBOAtkcMhrwRv9YFqPRo13g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UBfczxdxpBaMqE79rsswPyxbGn4Yjn/srsXUAT0ovLE=;
 b=BRHB7he3LxZIdR/PQglzzqqAgbjvWZbzuAmtpnP+MYCFECEP4ePzKM//vpgVqqqKG+JbyY7C6dXqz9ePf4L8IgihvbB8PioDCP6kiYwEG52XQwSVUOiNrA5IdYIC32EmYRcJxGLiznkmzXRL914uRr3tMNWAbOEJeQeSpSMar/z98JOCchAKEDa0sFQW8L5l8F/xQUV1+t9dL/yR0xJFZNE0R++R2HTNdMJ9kZ16LeXn2k0r9Wa1o7SyWDpLjYYRtjEBStxaHouftXO65syoV+v/QTabltkJrGQVMzHvJdY7yzEa8QStqAZ6QsiBQTQGSixp+5ojXs6GMcxGRnG73g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=verifone.com; dmarc=pass action=none header.from=verifone.com;
 dkim=pass header.d=verifone.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verifone.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UBfczxdxpBaMqE79rsswPyxbGn4Yjn/srsXUAT0ovLE=;
 b=sKDPJ/fW7TCDKhnNqdTOsJnAGQbwxcoEwZL5tG1jZVzpCKfIH52we8yYZY2vRRlPzNop6GehUY07xgYWX9QlnbjXjyNK5JoWLPSmSa0ovbPYwgvkLzgTNC6z+BCARnAVLLQC2cdCeL0PohR/RrvKC+EMy5RQ0P/hws9uLZzpiGs=
Received: from PH0PR03MB5751.namprd03.prod.outlook.com (2603:10b6:510:37::20)
 by MN2PR03MB5373.namprd03.prod.outlook.com (2603:10b6:208:19f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Wed, 21 Jun
 2023 14:32:43 +0000
Received: from PH0PR03MB5751.namprd03.prod.outlook.com
 ([fe80::1254:84a2:6fd9:a60d]) by PH0PR03MB5751.namprd03.prod.outlook.com
 ([fe80::1254:84a2:6fd9:a60d%7]) with mapi id 15.20.6521.023; Wed, 21 Jun 2023
 14:32:42 +0000
From: Jesus Jimenez Sanchez <Jesus.JimenezSanchez@verifone.com>
To: Ross Burton <Ross.Burton@arm.com>
CC: Sumit Garg <sumit.garg@linaro.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] meta-arm-toolchain: SUPPORTED file not found #toolchain
Thread-Topic: [yocto] meta-arm-toolchain: SUPPORTED file not found #toolchain
Thread-Index: AQHZo2/4H8OS8Q69kEWXpYjGcJANdq+ToKIAgAAL/YCAAAaCuIAAAt+AgAGaeNA=
Date: Wed, 21 Jun 2023 14:32:42 +0000
Message-ID: 
 <PH0PR03MB5751FC25223536468268DB7EF95DA@PH0PR03MB5751.namprd03.prod.outlook.com>
References: <5H3q.1687192403619815582.2AB4@lists.yoctoproject.org>
 <CAFA6WYMUrPajYNqhgjW9XD8H0inw_MnYLBTAE-ONhgpyg=yi+A@mail.gmail.com>
 <57D4D4FE-0D69-4C4C-844C-0260490012E8@arm.com>
 <CAFA6WYMjeAA8HKhw43Q_d8iSs7-gMfaSq16Lgdirdi0aL3fAfQ@mail.gmail.com>
 <PH0PR03MB57516615AFCC4F32BE740E34F95CA@PH0PR03MB5751.namprd03.prod.outlook.com>
 <B7E68CD6-45E4-4B14-9F9C-79C3B442E549@arm.com>
In-Reply-To: <B7E68CD6-45E4-4B14-9F9C-79C3B442E549@arm.com>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=verifone.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR03MB5751:EE_|MN2PR03MB5373:EE_
x-ms-office365-filtering-correlation-id: ae60e693-36ed-454f-a0a9-08db72645f41
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 I336bw0v8wRMb6aRYS1pQqEdCHXG96jRTnp2zxv0YLKWqTmcNF3YYymyMr+A3k90wbqiZSERjppWM8DA7K0fjpArXouW4rkaQBsYm1xEPJ+qYwS6TogRRAXzPcmyZFDdkWRPdROC6kMTBALB76zTmnE4qE35SwWUdNGpXFCx6c7QNhZjRgGDwjOZlMV3fS0MAL9IoyzdT10khR5jPGTiCq6bIMJSV5pGFI1BRZj/NnQZwvzLiIxku17hu6Z4JaGhXFf+U57cYhBTaINkoqZabvVrsFxlhgJRteS3h3L/AsxREwnVzTI2rud1oywItZ6jCn1Se5osy15YEFs6TeCaBRsbInNhw3IRiNJwJpmGr9b0FR/fXZmMsH0mQXNBZ7cpa2S95WQTTi/545yGQc7uMxR8wLORdIfQ3EzorOGd7QGDakN0KdhYG/+071fxYUl2F7R10cwXFIhb3fXjZnadAfChPxf4xO1hwtzQ+alKRzqqRfFHGfX68mfcJff4q9ljTy+edwqkaE/TVwz+Z0lmQL4hJkhZKJ/p54p/hSP6ev5AmuSF23kKdupa7OywUesb6c85ShlQJwvq7V/AT6+EzJGzBJB97by0Vqefk0t/Q+I=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR03MB5751.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(366004)(396003)(346002)(136003)(376002)(451199021)(5660300002)(52536014)(8936002)(19627405001)(8676002)(64756008)(6916009)(4326008)(66946007)(66446008)(66556008)(66476007)(91956017)(76116006)(316002)(2906002)(54906003)(41300700001)(966005)(7696005)(71200400001)(45080400002)(478600001)(55016003)(26005)(6506007)(9686003)(53546011)(186003)(66574015)(83380400001)(33656002)(122000001)(38100700002)(166002)(86362001)(38070700005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?+Q/EHVzvIVYuXVZPkj3UzkYsfHYEHXhLKb9zG9K16xXEMOpwhMD0piOX?=
 =?Windows-1252?Q?3h3Rh1oCnEAU85+7+MGo7GkFmiWrAtWED0tNwAc65rov6+DqYyn4m3nW?=
 =?Windows-1252?Q?Jp0yDFczwSMmzgUKTUBWN4TRCCf+QpXdTKlmVyt175ZB2SHdbKm/Zt15?=
 =?Windows-1252?Q?7YdMl5rgJ7pr1FV/LGnq2wbL2qiyBQv24MTSd1DiyijWBmMmdBCclY01?=
 =?Windows-1252?Q?9LYgpFKSO2MEiPWxfeQ4tF/T8BfiS2RAhwS7xbFUz9sUXGANQoKN0ta6?=
 =?Windows-1252?Q?JexKrj/BM2QxNAvwTu4uGcfL77f6YJ/7aeMqcEaTKQat2aknXeAi5DyR?=
 =?Windows-1252?Q?bB90GuKYvdSFG+cd+1bNHu9EueobI3cT9MXrSsNjS4BIy6yi7FPN+FLN?=
 =?Windows-1252?Q?ASM5wMBlP1VxpodYib/q+ZF8HtzSw+Tv92Zvo0dxsJoWV8NqDpsmAhEc?=
 =?Windows-1252?Q?3d2FI1cMyZT3KXc9B6PfaxLPjJNxg4Hw7QjQhWIHZvKiu8v3MoL6V/q0?=
 =?Windows-1252?Q?/iub7BV8Py0Xr2GStJsBd1jJ+xiyvZ3T3PS/ttIPgn4EHeo2nOUXyZ2V?=
 =?Windows-1252?Q?yUA6TSRm7OImu8rZ5OTWZpztSFC3+9ZMVHV/xXvVZPFrymYOhv7wi2Cx?=
 =?Windows-1252?Q?cS4Pm+YSbaZ7h7UcGsHwx1slbyZkGeh6FfAECV/xMxRofWDpsYGxH+ik?=
 =?Windows-1252?Q?OYqrqBursd+PeX3K+okjLsoswfkxX2NqrE+tXyLw8VsvIN15jsFejBFh?=
 =?Windows-1252?Q?Z3b795V1H67uyKLXM/SqFM/Vp7fx4Sf9VMO/sIQYh9y4pgPYDqp+SSSR?=
 =?Windows-1252?Q?ljCNoaMRn9FTb+xTJ1cxhttApLv7YZwaXG4CHnAgCGem5yX+cGRj2krf?=
 =?Windows-1252?Q?EW358NvuhopQhd9GoUcfBhhMxiRBMgD6EWdfEKF26/jumFE80Dxhd400?=
 =?Windows-1252?Q?6EtsV262gOKAO6JmFVxx8i6iuDhceXZgPM7rHyq+YaSYjOVb2gZBJCYP?=
 =?Windows-1252?Q?+gHeLgzScdjmoD7vgAr4Su0J2cRnvWjMwkEe1yL+e0MBAFF4tJYtiKU3?=
 =?Windows-1252?Q?UT9QWUVTUD2wEtZ/Z8etk956t9ZeimxKfZckGXEI+gRUmcr731R53XGF?=
 =?Windows-1252?Q?ESBZO8x7dCZ8CElyvm0fER+wwzs1E8AGP/CL5qMdI5kpcnV0lb/TLya8?=
 =?Windows-1252?Q?nXWv7T8UvM5f6RcCoyPf/2fSpIvBToMV8Yltdg9WVGcN/T+we0ljPcQ5?=
 =?Windows-1252?Q?WScpBr0qnvMmuuR5W6JoudncZsrOLWyIFM8Zr3rmXBeojcWXzrgMJx+6?=
 =?Windows-1252?Q?h64lMv0xR1dOgf5t8P2AkBR1E+PR5FaeDelKxNcghBL1MS0bi37jysmw?=
 =?Windows-1252?Q?DEAfkT0M0kYawu4P3ZHB8Vbx0QNSSCNcM5Wtmg/VezbQ8TE0bJzGczbO?=
 =?Windows-1252?Q?OggnD3aapoVL4JCuzcSz3+9V8Dr8UsDCT7+dYzAGZXu9FeNacJtMTmVx?=
 =?Windows-1252?Q?YRxk9ZT8YEbleu5U/gIcZQ6KqYk06DzPm72s0fAVstff2kf8s+aVmwxx?=
 =?Windows-1252?Q?E8VyASOPpc4XVBQpnK6LbzmapfN/I6yIN/aI6njkCwGPw/Qpga3yXkr4?=
 =?Windows-1252?Q?wvR+2OrdBMKdwG7El6PpMerPeg97QvEi+TC8D7f3pvoadcMWd0o3XKAr?=
 =?Windows-1252?Q?6RyhK91kXTc=3D?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR03MB5751FC25223536468268DB7EF95DAPH0PR03MB5751namp_"
MIME-Version: 1.0
X-OriginatorOrg: verifone.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR03MB5751.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae60e693-36ed-454f-a0a9-08db72645f41
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2023 14:32:42.3477
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 611a22d6-8c40-4958-84e3-ce47d8205d98
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KnBs8Lptney79INPqolGIsr2eO1VWe05JkHe8JGxY6rQo5FfiD7G4Q1o+WjuxDpzvjRwMTgySCfb9thjjInt6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR03MB5373
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 14:32:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60377

--_000_PH0PR03MB5751FC25223536468268DB7EF95DAPH0PR03MB5751namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

After a few problems that took me a while to fix, I've now used a default p=
oky with default configuration, and it builds just fine.

There must be something in one of my configuration files that appends that =
"image/local" at the end of WORKDIR, but I've search in entire folder and t=
here are no references to that string.

Best regards,
Jes=FAs Jim=E9nez S=E1nchez
________________________________
From: Ross Burton <Ross.Burton@arm.com>
Sent: Tuesday 20 June 2023 14:52
To: Jesus Jimenez Sanchez <Jesus.JimenezSanchez@verifone.com>
Cc: Sumit Garg <sumit.garg@linaro.org>; yocto@lists.yoctoproject.org <yocto=
@lists.yoctoproject.org>
Subject: Re: [yocto] meta-arm-toolchain: SUPPORTED file not found #toolchai=
n

CAUTION: This email originated from outside of our organization. Do not cli=
ck links or open attachments unless you recognize the sender and know the c=
ontent is safe.


So there=92s a lot of settings in that file.  Can you replicate with a defa=
ult config as generated by poky?

Ross

> On 20 Jun 2023, at 14:44, Jesus Jimenez Sanchez <Jesus.JimenezSanchez@ver=
ifone.com> wrote:
>
> Hello,
>
> I am using an absolute path there; I just removed it before posting on th=
e email thread.
>
> I have attached my local.conf here.
>
> Best regards,
> Jes=FAs Jim=E9nez S=E1nchezFrom: Sumit Garg <sumit.garg@linaro.org>
> Sent: Tuesday 20 June 2023 14:18
> To: Ross Burton <Ross.Burton@arm.com>
> Cc: Jesus Jimenez Sanchez <Jesus.JimenezSanchez@verifone.com>; yocto@list=
s.yoctoproject.org <yocto@lists.yoctoproject.org>
> Subject: Re: [yocto] meta-arm-toolchain: SUPPORTED file not found #toolch=
ain
>  [You don't often get email from sumit.garg@linaro.org. Learn why this is=
 important at https://aka.ms/LearnAboutSenderIdentification ]
>
> CAUTION: This email originated from outside of our organization. Do not c=
lick links or open attachments unless you recognize the sender and know the=
 content is safe.
>
>
> On Tue, 20 Jun 2023 at 18:06, Ross Burton <Ross.Burton@arm.com> wrote:
> >
> > On 20 Jun 2023, at 13:08, Sumit Garg via lists.yoctoproject.org <sumit.=
garg=3Dlinaro.org@lists.yoctoproject.org> wrote:
> > >
> > > On Mon, 19 Jun 2023 at 22:03, Jesus.JimenezSanchez via
> > > lists.yoctoproject.org
> > > <Jesus.JimenezSanchez=3Dverifone.com@lists.yoctoproject.org> wrote:
> > >>
> > >> Hello, I'm trying to add the arm toolchain to my yocto project but I=
 just got this error
> > >> ```
> > >> | cp: cannot stat '.../tmp-glibc/work/cortexa7t2hf-neon-vfpv4-ostl-l=
inux-gnueabi/external-arm-toolchain/2022.02-r0/image/local/SUPPORTED': No s=
uch file or directory
> > >> ```
> > >> It comes from the `external-arm-toolchain.bb` recipe. I've checked a=
nd the `SUPPORTED` file is in the right folder (the `files` folder where th=
e `external-arm-toolchain.bb` file is). I haven't made any modifications to=
 the meta-arm repo. I just cloned it and changed to branch `kirkstone`. Aft=
er that, I have configured my local.conf with this:
> > >> ```
> > >> TCMODE =3D "external-arm"
> > >>
> > >> EXTERNAL_TOOLCHAIN =3D ".../gcc-arm-11.2-2022.02-x86_64-arm-none-lin=
ux-gnueabihf"
> > >> ```
> > >>
> > >
> > > Don't provide a relative path here. It should be an absolute path to
> > > your external toolchain install directory. This should resolve your
> > > issue.
> >
> > If that=92s the issue, can you add a check for the path being absolute =
to the class?
> >
>
> Sure, see [1].
>
> [1] https://nam02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fl=
ists.yoctoproject.org%2Fg%2Fmeta-arm%2Fmessage%2F4809&data=3D05%7C01%7CJesu=
s.JimenezSanchez%40verifone.com%7C8fdf8d44005f462cd9b208db71959a89%7C611a22=
d68c40495884e3ce47d8205d98%7C0%7C0%7C638228659596378789%7CUnknown%7CTWFpbGZ=
sb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3=
000%7C%7C%7C&sdata=3Dc%2Fd7LXNot1v%2Bmy%2BU6ioRDcoot2Qb2wXgN5PlDGHEe6I%3D&r=
eserved=3D0<https://lists.yoctoproject.org/g/meta-arm/message/4809>
>
> -Sumit
>
> > Ross
> <local.conf.sample>


--_000_PH0PR03MB5751FC25223536468268DB7EF95DAPH0PR03MB5751namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
After a few problems that took me a while to fix, I've now used a default p=
oky with default configuration, and it builds just fine.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
There must be something in one of my configuration files that appends that =
&quot;image/local&quot; at the end of WORKDIR, but I've search in entire fo=
lder and there are no references to that string.<br>
</div>
<div class=3D"elementToProof">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Best regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jes=FAs Jim=E9nez S=E1nchez</div>
</div>
</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Ross Burton &lt;Ross.=
Burton@arm.com&gt;<br>
<b>Sent:</b> Tuesday 20 June 2023 14:52<br>
<b>To:</b> Jesus Jimenez Sanchez &lt;Jesus.JimenezSanchez@verifone.com&gt;<=
br>
<b>Cc:</b> Sumit Garg &lt;sumit.garg@linaro.org&gt;; yocto@lists.yoctoproje=
ct.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] meta-arm-toolchain: SUPPORTED file not found #t=
oolchain</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">CAUTION: This email originated from outside of our=
 organization. Do not click links or open attachments unless you recognize =
the sender and know the content is safe.<br>
<br>
<br>
So there=92s a lot of settings in that file.&nbsp; Can you replicate with a=
 default config as generated by poky?<br>
<br>
Ross<br>
<br>
&gt; On 20 Jun 2023, at 14:44, Jesus Jimenez Sanchez &lt;Jesus.JimenezSanch=
ez@verifone.com&gt; wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; I am using an absolute path there; I just removed it before posting on=
 the email thread.<br>
&gt;<br>
&gt; I have attached my local.conf here.<br>
&gt;<br>
&gt; Best regards,<br>
&gt; Jes=FAs Jim=E9nez S=E1nchezFrom: Sumit Garg &lt;sumit.garg@linaro.org&=
gt;<br>
&gt; Sent: Tuesday 20 June 2023 14:18<br>
&gt; To: Ross Burton &lt;Ross.Burton@arm.com&gt;<br>
&gt; Cc: Jesus Jimenez Sanchez &lt;Jesus.JimenezSanchez@verifone.com&gt;; y=
octo@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt;<br>
&gt; Subject: Re: [yocto] meta-arm-toolchain: SUPPORTED file not found #too=
lchain<br>
&gt;&nbsp; [You don't often get email from sumit.garg@linaro.org. Learn why=
 this is important at
<a href=3D"https://aka.ms/LearnAboutSenderIdentification">https://aka.ms/Le=
arnAboutSenderIdentification</a> ]<br>
&gt;<br>
&gt; CAUTION: This email originated from outside of our organization. Do no=
t click links or open attachments unless you recognize the sender and know =
the content is safe.<br>
&gt;<br>
&gt;<br>
&gt; On Tue, 20 Jun 2023 at 18:06, Ross Burton &lt;Ross.Burton@arm.com&gt; =
wrote:<br>
&gt; &gt;<br>
&gt; &gt; On 20 Jun 2023, at 13:08, Sumit Garg via lists.yoctoproject.org &=
lt;sumit.garg=3Dlinaro.org@lists.yoctoproject.org&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On Mon, 19 Jun 2023 at 22:03, Jesus.JimenezSanchez via<br>
&gt; &gt; &gt; lists.yoctoproject.org<br>
&gt; &gt; &gt; &lt;Jesus.JimenezSanchez=3Dverifone.com@lists.yoctoproject.o=
rg&gt; wrote:<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; Hello, I'm trying to add the arm toolchain to my yocto p=
roject but I just got this error<br>
&gt; &gt; &gt;&gt; ```<br>
&gt; &gt; &gt;&gt; | cp: cannot stat '.../tmp-glibc/work/cortexa7t2hf-neon-=
vfpv4-ostl-linux-gnueabi/external-arm-toolchain/2022.02-r0/image/local/SUPP=
ORTED': No such file or directory<br>
&gt; &gt; &gt;&gt; ```<br>
&gt; &gt; &gt;&gt; It comes from the `external-arm-toolchain.bb` recipe. I'=
ve checked and the `SUPPORTED` file is in the right folder (the `files` fol=
der where the `external-arm-toolchain.bb` file is). I haven't made any modi=
fications to the meta-arm repo. I just cloned
 it and changed to branch `kirkstone`. After that, I have configured my loc=
al.conf with this:<br>
&gt; &gt; &gt;&gt; ```<br>
&gt; &gt; &gt;&gt; TCMODE =3D &quot;external-arm&quot;<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; EXTERNAL_TOOLCHAIN =3D &quot;.../gcc-arm-11.2-2022.02-x8=
6_64-arm-none-linux-gnueabihf&quot;<br>
&gt; &gt; &gt;&gt; ```<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Don't provide a relative path here. It should be an absolute=
 path to<br>
&gt; &gt; &gt; your external toolchain install directory. This should resol=
ve your<br>
&gt; &gt; &gt; issue.<br>
&gt; &gt;<br>
&gt; &gt; If that=92s the issue, can you add a check for the path being abs=
olute to the class?<br>
&gt; &gt;<br>
&gt;<br>
&gt; Sure, see [1].<br>
&gt;<br>
&gt; [1] <a href=3D"https://lists.yoctoproject.org/g/meta-arm/message/4809"=
>https://nam02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.=
yoctoproject.org%2Fg%2Fmeta-arm%2Fmessage%2F4809&amp;data=3D05%7C01%7CJesus=
.JimenezSanchez%40verifone.com%7C8fdf8d44005f462cd9b208db71959a89%7C611a22d=
68c40495884e3ce47d8205d98%7C0%7C0%7C638228659596378789%7CUnknown%7CTWFpbGZs=
b3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C30=
00%7C%7C%7C&amp;sdata=3Dc%2Fd7LXNot1v%2Bmy%2BU6ioRDcoot2Qb2wXgN5PlDGHEe6I%3=
D&amp;reserved=3D0</a><br>
&gt;<br>
&gt; -Sumit<br>
&gt;<br>
&gt; &gt; Ross<br>
&gt; &lt;local.conf.sample&gt;<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_PH0PR03MB5751FC25223536468268DB7EF95DAPH0PR03MB5751namp_--

