Return-Path: <Jesus.JimenezSanchez@verifone.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C22B7EB64D7
	for <webhook@archiver.kernel.org>; Mon, 26 Jun 2023 16:13:04 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.52])
 by mx.groups.io with SMTP id smtpd.web10.12558.1687795976127241084
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jun 2023 09:12:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@verifone.com header.s=selector2 header.b=C2EYUtWy;
 spf=pass (domain: verifone.com, ip: 40.107.223.52, mailfrom: jesus.jimenezsanchez@verifone.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MaJ4ezh47amYaOUYdHsUKYKZaack4eLbEeCeVW/UdaL0EvQz4AxQ+doIiW4fa9f2bUcHFM7TvyUtsFjsCl/vfioJ9kSJuWMnyCarGoVgVzoJIoJQWtNdBkAis36HxucIJj24hmcQRR3NDX61bWsKlsi4ztEoB3J8P58FS6MBFpzyf/cYeNzaf3rX+upFL9jiZ4uJF+xLDVVv2R2M68hhacRL4QtfT/gQQndmNCna7G9shJ56hNyPJvpiUEuSMUfmLV1OiF4AhaOczeU5IZSrP/pMa6KSBWgTGFWulaFSHNSmkHGa0khChKwnGfu/P3LQVNOGG1k122azjXbt945EbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2hX4HOKs0dzgJAwozwU8g3kNwB0xmGChwLvN0E/GU4k=;
 b=DbIotMesQB/IwT50C2yQ+JHB4GBPxuyjtMiUrR5Wyt6CoLM0LUrZNxJfXD0MQLoVnze6fQOBGdn9Rj9c3vpU6xXyNgx+qZId3zBDdw24BUlx+0LmdBan2rBoJ6s9SxtACxC5L5QFXdnb5t3Vh0Sn3yDWOIWZpiaNUWwcSAK+U50cZ2jt0tjC0JxpgU6XvC0KYK+6nqmNp9hTRrWNUVvkd4eQKizq4uYB/H8JS/aE2oCp4jkokyf6N9gN2jvXgpbJF2JhIlM7IvWZ3Z07JLq5kI5mz2WgWQ8S1lVbrbzA1MuST6QgX2rvn4No7XJDMtHW4un0/gCMj2p+q+1cwC+k2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=verifone.com; dmarc=pass action=none header.from=verifone.com;
 dkim=pass header.d=verifone.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verifone.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2hX4HOKs0dzgJAwozwU8g3kNwB0xmGChwLvN0E/GU4k=;
 b=C2EYUtWy48Mhm5sKU/OIJ/Lb+ghvIM+dvxen2LMhzKDo4LNqbGAUoI7BwkGmW7IZSIcP40/NMaABvHraZJ8I6e0C4nRQcMBbUYyRAwXfjFDJR4pHdChrEkZUX1MFvL6W7psUXxKU31N3cFM5oF4gR8QZxNfU6jbV2JEHpmaDt5Q=
Received: from PH0PR03MB5751.namprd03.prod.outlook.com (2603:10b6:510:37::20)
 by PH7PR03MB7241.namprd03.prod.outlook.com (2603:10b6:510:248::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Mon, 26 Jun
 2023 16:12:53 +0000
Received: from PH0PR03MB5751.namprd03.prod.outlook.com
 ([fe80::1254:84a2:6fd9:a60d]) by PH0PR03MB5751.namprd03.prod.outlook.com
 ([fe80::1254:84a2:6fd9:a60d%7]) with mapi id 15.20.6521.024; Mon, 26 Jun 2023
 16:12:53 +0000
From: Jesus Jimenez Sanchez <Jesus.JimenezSanchez@verifone.com>
To: Ross Burton <Ross.Burton@arm.com>
CC: Sumit Garg <sumit.garg@linaro.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] meta-arm-toolchain: SUPPORTED file not found #toolchain
Thread-Topic: [yocto] meta-arm-toolchain: SUPPORTED file not found #toolchain
Thread-Index: AQHZo2/4H8OS8Q69kEWXpYjGcJANdq+ToKIAgAAL/YCAAAaCuIAAAt+AgAmUmoI=
Date: Mon, 26 Jun 2023 16:12:53 +0000
Message-ID: 
 <PH0PR03MB5751D6E5E8B03D924FFDE79DF926A@PH0PR03MB5751.namprd03.prod.outlook.com>
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
x-ms-traffictypediagnostic: PH0PR03MB5751:EE_|PH7PR03MB7241:EE_
x-ms-office365-filtering-correlation-id: 6674d7ef-48b3-4514-c535-08db766031fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 EziFfrslPtlPinMwsAwcWiSM/+JuAoULQnq8/Pvwdc8lMYNPz++8hd82L11B1a8+0XujUO415AnbjLM2VfVavJ24Rf5oisVsf0Lax+IxkFaSATfIQO28tcT7QoomcPpd4DtiTbh2npwAG5PBzeN5n1nh3etY3EYHsBmC0DHpkqkTIEidaIKU95oykDBdD89mJ8RljtxJ3zrXNZt0FtmlUfhiQu5KsiKrXGZWSyUwY35MBTplOtOVqPFdRwSPRse+gpPtLrbzH6uDtk+q5VdHwE3dqszwulSfcR+4X+dFiK2UZr3vg223b40nN/lunlLqyf+ZRv0SKVJj+YTDttXShQOL8TufHSSQbk3hsFjFLW6dbpyP2KOaaSqE1ELgS+QK96HE123IY/6g8Ob15c8DtPiJ4MgohMuPNYrBxf4V1pLqEiH3xVClPRpgNulXQFC5Ss4oNwxVHg0X8UzaOcncw2L8OsbQh6pHstdfjhv1JUIpx9uNMLtSxScvXwhSIm8KmYEYsJM5gSFLCBO80hTPYr94jjrpf9W4oHIsmBtAf337FdrBGzBv0nmg9dL+eUsxRVmESGq3O+dDkDWMO9JJjOwmc7Gvm7n07ZnjghrCwXM=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR03MB5751.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(136003)(346002)(376002)(39860400002)(366004)(451199021)(52536014)(19627405001)(186003)(2906002)(26005)(55016003)(38070700005)(166002)(33656002)(8676002)(6916009)(316002)(7696005)(45080400002)(54906003)(478600001)(966005)(86362001)(4326008)(66574015)(38100700002)(122000001)(71200400001)(5660300002)(83380400001)(8936002)(41300700001)(91956017)(64756008)(66446008)(66556008)(66476007)(66946007)(76116006)(6506007)(53546011)(9686003)(55236004);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?nWj+MWOFly0WDDEwq1yrqUK6UpOWiM8n1fXUJrPNgBDB2LVsUg/P+O3u?=
 =?Windows-1252?Q?AFx7SdFFAwn1/nfV7zcRQNEBImQEBITBfXjEoobRVLJYfL2xTq72pWfX?=
 =?Windows-1252?Q?JlmAgwwCfdcmoZ5j9MLubmXmjO5VIyoITTl5FEg8I7C0rB0VERLldHBO?=
 =?Windows-1252?Q?YZjTplx6KBKx80NZHxP7M2P0bV+zxiqkd66N/e/JdAmOUMoPpqgCTTax?=
 =?Windows-1252?Q?9gZIHw81ZtVTZSrv50gHMxUTfU0661V/VF5CAZTzXV1gryx0wk6i9rjY?=
 =?Windows-1252?Q?WGB2oWWBR9aaUfVb4SvQ4Zl+WhEaDtJfzyJW9dVmMrRxxx5boB3rBbP+?=
 =?Windows-1252?Q?MNmF49pgszbmg5wC3VdS66enbc40PSsb9u+ExiJsGGNX/tqiZ+a2JW9a?=
 =?Windows-1252?Q?8Gl2W7d8XjYoqI+bhKVi5tH33pGt8kCT9M8A116jEuYJpUVcxaxCnPPW?=
 =?Windows-1252?Q?GY7wO4HAGBjYiKzRiOFlU9X6SruiFsVsu6wZG6vux70IgF+xpegmNOWv?=
 =?Windows-1252?Q?Ih4J59wEmaCgS7k8DrqdbYTHyGo/1Ep8T/o3z2mNNcXKl5SZoP1Cjuua?=
 =?Windows-1252?Q?nEhds3+IGmt8YLyM7wo5c4yGRzazIgYe5LmTXYpRaw6rUUF2BgheKncn?=
 =?Windows-1252?Q?z3+wPv4xU/R9vGhf1Zc3IPlZdhjKAdA4u/fSTBOcvPPbEjJB3F//Px7J?=
 =?Windows-1252?Q?gKZXJKuQgcxEV3Gm3/TttpuaTAT0JrF6QuWwf5s4rdNW6KYe0vOWs8Mw?=
 =?Windows-1252?Q?vIXiM2ObkdnzCRcDfeOoq4Lzz5nkQxlpI26wtnSVWn3T4Bqe1PkT6R2M?=
 =?Windows-1252?Q?jHBtksNusx0/ycfRf87pqN+N/N1I3w7RG7iy0uJhqkRI2SlJjxCtj8rL?=
 =?Windows-1252?Q?tZBJi/Am6F0lY+qTPZgMD0haMajGiIYzuEvuDzCNuTU4UYpcb3Qo6BRV?=
 =?Windows-1252?Q?eg9o5jnu3w2Rn7weSQgRt3nDZbqeTk2Iy2xmGRFq3zjMUULif6guTNPd?=
 =?Windows-1252?Q?CN6X/4y9Hn0fjVfX3q0A/ZGomLfP5kfIln/odyg3H3NKR499fT47v8gb?=
 =?Windows-1252?Q?HbxXjvAk+wH3WH8K5wDFRTzopkWkjryz4cx45/sWlUV3oDdzZIcZbtQW?=
 =?Windows-1252?Q?S4Ul0OPTIvyxXhnXfDNjPpuPoqGjAOFZc7hFzmKgkurmt0bBLuXOZioL?=
 =?Windows-1252?Q?FmLBXtZs01OCzm3H5qw1na2gr/D9+CSkRHlm8DDqrAfAcsNLLcpRiVxl?=
 =?Windows-1252?Q?vrn93Pj0t29mp2Jy/sD5INzVuWtjdOazPuGpfz9uCw2WbcjubuSoF4vd?=
 =?Windows-1252?Q?GugjT+s8pUPuCfRnCc/4y8LvCObypLfdRu4G9kcBoGyJWTMFxFPJiwHm?=
 =?Windows-1252?Q?p7xQROlG7cu7LN2nVVAPRLp1LFQGZpxdyrR6FtVZr1epsj/oMCEHGiyZ?=
 =?Windows-1252?Q?aLcxfCrsXU8Y0FSKDMm1n8nZdoBodSDD+YyoTPjaTO/anb6qJz1uuC7Y?=
 =?Windows-1252?Q?JkjvFgAGKRuRdCJ4zPOLPMUMmctZ0ueKic3Y+13I/a0ELF+buvXe2h3H?=
 =?Windows-1252?Q?TtznLGmb0oBYHgkE9WtlVk8TOwVS7+2PjdoEQ26vwfWJEiK09VYRNOsL?=
 =?Windows-1252?Q?TfJBh72/JnzWMm/nqI3omfHkntO8uj09GqGRPX17niSYo/Wdz9Lfy+VC?=
 =?Windows-1252?Q?l8gCGWRfCjM=3D?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR03MB5751D6E5E8B03D924FFDE79DF926APH0PR03MB5751namp_"
MIME-Version: 1.0
X-OriginatorOrg: verifone.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR03MB5751.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6674d7ef-48b3-4514-c535-08db766031fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2023 16:12:53.0323
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 611a22d6-8c40-4958-84e3-ce47d8205d98
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: msXWjNAkMZunVWxCNJV/a7WT2GhrQhLAvBd2bNTbaO5QaV8VV6kbZi0nH2F3oYoY+IWQwV8pWmB+56x8txJpBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR03MB7241
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Jun 2023 16:13:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60447

--_000_PH0PR03MB5751D6E5E8B03D924FFDE79DF926APH0PR03MB5751namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

I kept investigating and it turns out that someone in my team had made a cu=
stom glibc-package.inc which changed the WORKDIR value, and I didn't know. =
That was all in the end.

I've modified this file to revert the change (we actually have both now, ju=
st in case they need it for something else) and the toolchain is working pe=
rfectly now.

Thank you very much for your help anyways.

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


--_000_PH0PR03MB5751D6E5E8B03D924FFDE79DF926APH0PR03MB5751namp_
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
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
I kept investigating and it turns out that someone in my team had made a cu=
stom glibc-package.inc which changed the WORKDIR value, and I didn't know. =
That was all in the end.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
I've modified this file to revert the change (we actually have both now, ju=
st in case they need it for something else) and the toolchain is working pe=
rfectly now.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
Thank you very much for your help anyways.<br>
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

--_000_PH0PR03MB5751D6E5E8B03D924FFDE79DF926APH0PR03MB5751namp_--

