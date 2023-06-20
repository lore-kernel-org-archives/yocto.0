Return-Path: <Jesus.JimenezSanchez@verifone.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4786EB64D7
	for <webhook@archiver.kernel.org>; Tue, 20 Jun 2023 13:44:56 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (NAM10-MW2-obe.outbound.protection.outlook.com [40.107.94.58])
 by mx.groups.io with SMTP id smtpd.web11.10638.1687268692020790603
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Jun 2023 06:44:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@verifone.com header.s=selector2 header.b=jMleiCDZ;
 spf=pass (domain: verifone.com, ip: 40.107.94.58, mailfrom: jesus.jimenezsanchez@verifone.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MD0F+giqiEK9KbYoD1znrV8yxxZ/1rWJk3Dk5LzIpCnY9Tn1AoyYF7KHiF1OYI+DT7Ps71gva3zrUIbQfPH/Ng0yLNLVyvCZUYIrpbOzapnnF3fnU30n/Zpbkr1IU+Bs58Se9cspuM5kVo877xrV920mBBBUz/rHCmR5b4Tl9F+YsoPwlXIgAABWDURrRorKW5YqGITY0TvJChR+z7utCZ1PC34dHgwuradUhhut7pOXpXHv+7H40bBAIuY3KplBpblpHWJMJA0fLzHYjSA77NY1D33Mv2GTa2O3BvYwBt79rC+MwmqtP3x4HhDp5aO7HydDWtwHexdK5Q3HgS8GkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7lqYTpnyrEGtsrIOe/Z/7LwiCX1hUKUT4hWMfomRw1I=;
 b=inwv39bOuix9YKO4In2cK314g71JohNrW2v5zdU/SGlHoLOqfw+6fG241VLBc2ux3NwCa3Brt26IwQ3uvTGrXEMroF8xg5EdD4Mbq0orZlodUhEWs4Y/YJqjZwRnwJLW2iUyHQ7wan/kzAlRmTM34w2cTclCJBCYogTxN3+x0uPj/zvtGA2SySBuT/hsAFKxZHzC+3SdE1646ddeID0Ep71vZxsMhUy657hc852L7m4z9vbc6cEhPVOEjDx3ioHk1koLkFfeI7Hau9QMPPpgOnhLicka3DK2UP0Y1KzZ31/pMtL/KonX8lAy2BR1hdxdXRYxrOOCe7uwFOXdq52vHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=verifone.com; dmarc=pass action=none header.from=verifone.com;
 dkim=pass header.d=verifone.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verifone.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7lqYTpnyrEGtsrIOe/Z/7LwiCX1hUKUT4hWMfomRw1I=;
 b=jMleiCDZr43PtaFxa80obJhThU/zEOwaC/er3oLx05lJ8jAripQC6dmollR1GIK92AMcZTgJLKo6ixhiaeUkMWnlJ+U72/Ob0Yb4mMsH+jK+fsTKo+AsIbBdMAji4l5T2bZ+1nFaho4EimuEIXt1CYA2NW1g+ak+zH164tw+F7A=
Received: from PH0PR03MB5751.namprd03.prod.outlook.com (2603:10b6:510:37::20)
 by CO1PR03MB5938.namprd03.prod.outlook.com (2603:10b6:303:9b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Tue, 20 Jun
 2023 13:44:50 +0000
Received: from PH0PR03MB5751.namprd03.prod.outlook.com
 ([fe80::1254:84a2:6fd9:a60d]) by PH0PR03MB5751.namprd03.prod.outlook.com
 ([fe80::1254:84a2:6fd9:a60d%7]) with mapi id 15.20.6500.036; Tue, 20 Jun 2023
 13:44:49 +0000
From: Jesus Jimenez Sanchez <Jesus.JimenezSanchez@verifone.com>
To: Sumit Garg <sumit.garg@linaro.org>, Ross Burton <Ross.Burton@arm.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] meta-arm-toolchain: SUPPORTED file not found #toolchain
Thread-Topic: [yocto] meta-arm-toolchain: SUPPORTED file not found #toolchain
Thread-Index: AQHZo2/4H8OS8Q69kEWXpYjGcJANdq+ToKIAgAAL/YCAAAaCuA==
Date: Tue, 20 Jun 2023 13:44:49 +0000
Message-ID: 
 <PH0PR03MB57516615AFCC4F32BE740E34F95CA@PH0PR03MB5751.namprd03.prod.outlook.com>
References: <5H3q.1687192403619815582.2AB4@lists.yoctoproject.org>
 <CAFA6WYMUrPajYNqhgjW9XD8H0inw_MnYLBTAE-ONhgpyg=yi+A@mail.gmail.com>
 <57D4D4FE-0D69-4C4C-844C-0260490012E8@arm.com>
 <CAFA6WYMjeAA8HKhw43Q_d8iSs7-gMfaSq16Lgdirdi0aL3fAfQ@mail.gmail.com>
In-Reply-To: 
 <CAFA6WYMjeAA8HKhw43Q_d8iSs7-gMfaSq16Lgdirdi0aL3fAfQ@mail.gmail.com>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=verifone.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR03MB5751:EE_|CO1PR03MB5938:EE_
x-ms-office365-filtering-correlation-id: cd9c62fc-a464-4205-ed12-08db71948456
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 PZy/BdLdzAlqqJMXLGZ6twj+d1Cv8MWKnHYOI4EVVBrUwAjowsMze/ciZrCOB8/qude1ncNwBpbKhoKGxRMPrlWkxFxgP0u4g6WLHt2O8LaB+NQtAqKNV3Wov4Z7dn0NZ5B7Ic8YpQoWeAE83n4RuoPpjJGBwUTJEFStw4/dYeIGs3vYoL6eWODlh5Zv3LB/2o2H5G9wztBwFuqOQXS1eNP95DwtopSYu9UDFIy9TsCDT9oiFZN6a9qSmpATB96z4E6jYh7bhkR1gqhPMaFJ9m0oYMbFbqoA5hDLqXhvnvJQt3m85McdC2kqUj+rNzkApcf+HEALvC9NZ8O1J1gv6I0t6eFCOH/l8uFOfeHVRL2nvOe1F/H9Tl5XNx4CS5PPbMdbTObtzPMqexPLuCW5vWkVPyic93oXPkunFwqO7zy1OdI96eEsKeMSYecV/2Mphmsxf4Xl2zLw02ilZk65cMmSHorZ0jKLoi7H1qGsOdz+4LbeHKR5pVEF9fndswKiiCaTIJaivQbNI9YtChPA7uyLu+YKbL+q/ht9SnZYaU6sDlHJytTUn0rciql2oDgSMBXdmghln4PIKR0knkos77lB1wc6Xsd0hFeu94kvVK/8ltysE36/0BEcvLIca0hKXpJEhHgp6ff1Nn7YnRySoQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR03MB5751.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(136003)(366004)(39860400002)(376002)(346002)(451199021)(8676002)(8936002)(99936003)(38100700002)(5660300002)(122000001)(52536014)(26005)(9686003)(53546011)(55236004)(6506007)(186003)(7696005)(71200400001)(966005)(33656002)(66574015)(86362001)(55016003)(83380400001)(166002)(45080400002)(38070700005)(110136005)(316002)(91956017)(41300700001)(478600001)(4326008)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(2906002)(19627405001)(554374003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?S9nk3o31mkwlMwpjgu4kjup6LSjAPULt8pvoJ51JSQq9b7vORzu+zP40?=
 =?Windows-1252?Q?QB4sTG4LePzj25O00rismkAfui4xsCq16hCjd0mAg+KU5xnulcQ3XSiJ?=
 =?Windows-1252?Q?A9ZHR/smFOBvJRVPVFZ5HdFfd1cqSn2EXeEQH7q/WZoNT2bHUz8G7gv/?=
 =?Windows-1252?Q?kZVRnfi9bySbjiYfJhmeFDvUTwg8sZnr8alpzVBaiL/LuAK1kCE3xWdW?=
 =?Windows-1252?Q?8zEY/LF3z5deOmnz1E7HVbMxRWVTccpB09jM6KNxvnGCq3WHPjfQkS5a?=
 =?Windows-1252?Q?UqnuF5HtAqYg31IT8nyObDfXIXYMhpxyol7IwQNvvpQTCB1Iv0sMm+HE?=
 =?Windows-1252?Q?56x8Dgj/MYn9mPTsjLBQEt9zAYMVMiSr1JlMhT2F/c2HgP8zV3N5h2Pm?=
 =?Windows-1252?Q?p4cAzAeD9HotgWJGYH6QAGvhjjhk3wH480CJeCR0a4ObRTUMF6Pvdp2e?=
 =?Windows-1252?Q?knZyDWzbhz15sLk41+cmCHW6cV7OzWF0OBBTAkIwO+IEyNpHiYnRYbMG?=
 =?Windows-1252?Q?vHbwYZiPJCV20jZO+Uq5Tjnzfq7d4rN87AOD3y8WvmRNOaD7lO1s4UH/?=
 =?Windows-1252?Q?w6bKEmqdkIPh0k6xiuKlIFCXiqTo5WtcZe9n6SHoLBy7kPgKSboE4HIO?=
 =?Windows-1252?Q?PZ3xEpyVHNDw9CS7ofSwv1l6vjUNbfo50OmJwWRJLbV9fRnNv3C+wqk2?=
 =?Windows-1252?Q?BXWnRG3KXY0nX2n8gRvvM+l0oQzX/3zC9YX/LD8ingdYzT7eIGYvpfKb?=
 =?Windows-1252?Q?ICYkORtVuloSG0F52ZzEgdl5nGhVoJalSFMYzroXRgD9zQjaCW02205o?=
 =?Windows-1252?Q?3OWsr94zTKouUXQ1f8oxNGg7EEcf9W7ee8bB2SzdS2HJ/BwDyI85wrCd?=
 =?Windows-1252?Q?0l4lYLCO9elKzeHJ/FeHC14foUFC6Zo+NlDRow+AKvuyTrbSEcuXDkXa?=
 =?Windows-1252?Q?2o6PbyG8Jp61d87myKY+QherdRFB/hA+YWcsox01jitozsn6S4C4lW3I?=
 =?Windows-1252?Q?7DYBz/2ej44iuC0JcECwfDKG1VCFAU7m46TvDiYyjJK0oEgZ4U2/arEk?=
 =?Windows-1252?Q?JbDZdvplkHw7GOYKJmkiZPfTB63e91miEydNQTnqsYFLCZwrSzKP90gT?=
 =?Windows-1252?Q?56CLEuHZ6+N7/Q+M6Af++25ZKoxGftImsCqh4fdIsckl3W4QKH8DkoVU?=
 =?Windows-1252?Q?DQi5VI0j0KFWnQnpyxeCIo4Z6pnnPyjrujNWUqTleuVbTTzSOXC6ZK7P?=
 =?Windows-1252?Q?X1bv0HT7GFuFlF9myynYzHhz5E2V+dwRCYQxVNlVxpA5DjJwqXaPUNHk?=
 =?Windows-1252?Q?k2MvD0MBnOvvHDm55WY1Or0QwXssLznUm0M6cyg3qOo0sn7rIY4EgZAv?=
 =?Windows-1252?Q?jEj8PqOtc7DyS1PWFDpMYRuYgA0f54M38iMcpbEJjN41E3ldlfEzVrAn?=
 =?Windows-1252?Q?S0/96GFQbBFiV3zN0Fx3fG8V1qq0v+L4aHVKUf0l95tkfeUeN5rQ9ZrN?=
 =?Windows-1252?Q?t+nrmMKH29nG40Do6FO1M5KgrZGb8DIMipZNE40WFEIv7hCMQ1AvsIby?=
 =?Windows-1252?Q?KGbdYt1gzO9MSQb2kzRiqcgYCT0TG61w81jLH8naBgHft29+bGZ1+O/W?=
 =?Windows-1252?Q?ma+esBQcMagdTZrQo15CztxzfJzMGD1hyluzZeh8Sa7ssdOXlii12XiY?=
 =?Windows-1252?Q?ysAKI/asS7A=3D?=
Content-Type: multipart/mixed;
	boundary="_004_PH0PR03MB57516615AFCC4F32BE740E34F95CAPH0PR03MB5751namp_"
MIME-Version: 1.0
X-OriginatorOrg: verifone.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR03MB5751.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd9c62fc-a464-4205-ed12-08db71948456
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2023 13:44:49.2122
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 611a22d6-8c40-4958-84e3-ce47d8205d98
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VUV4PyUKL1GAfaF98IFfGUdfl8HCUH85LbGqUAFKT7qH31V0w7V2i481ElzuKXW7JyxFuozdldPj0uqnZtSalw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR03MB5938
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Jun 2023 13:44:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60363

--_004_PH0PR03MB57516615AFCC4F32BE740E34F95CAPH0PR03MB5751namp_
Content-Type: multipart/alternative;
	boundary="_000_PH0PR03MB57516615AFCC4F32BE740E34F95CAPH0PR03MB5751namp_"

--_000_PH0PR03MB57516615AFCC4F32BE740E34F95CAPH0PR03MB5751namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello,

I am using an absolute path there; I just removed it before posting on the =
email thread.

I have attached my local.conf here.

Best regards,
Jes=FAs Jim=E9nez S=E1nchez
________________________________
From: Sumit Garg <sumit.garg@linaro.org>
Sent: Tuesday 20 June 2023 14:18
To: Ross Burton <Ross.Burton@arm.com>
Cc: Jesus Jimenez Sanchez <Jesus.JimenezSanchez@verifone.com>; yocto@lists.=
yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] meta-arm-toolchain: SUPPORTED file not found #toolchai=
n

[You don't often get email from sumit.garg@linaro.org. Learn why this is im=
portant at https://aka.ms/LearnAboutSenderIdentification ]

CAUTION: This email originated from outside of our organization. Do not cli=
ck links or open attachments unless you recognize the sender and know the c=
ontent is safe.


On Tue, 20 Jun 2023 at 18:06, Ross Burton <Ross.Burton@arm.com> wrote:
>
> On 20 Jun 2023, at 13:08, Sumit Garg via lists.yoctoproject.org <sumit.ga=
rg=3Dlinaro.org@lists.yoctoproject.org> wrote:
> >
> > On Mon, 19 Jun 2023 at 22:03, Jesus.JimenezSanchez via
> > lists.yoctoproject.org
> > <Jesus.JimenezSanchez=3Dverifone.com@lists.yoctoproject.org> wrote:
> >>
> >> Hello, I'm trying to add the arm toolchain to my yocto project but I j=
ust got this error
> >> ```
> >> | cp: cannot stat '.../tmp-glibc/work/cortexa7t2hf-neon-vfpv4-ostl-lin=
ux-gnueabi/external-arm-toolchain/2022.02-r0/image/local/SUPPORTED': No suc=
h file or directory
> >> ```
> >> It comes from the `external-arm-toolchain.bb` recipe. I've checked and=
 the `SUPPORTED` file is in the right folder (the `files` folder where the =
`external-arm-toolchain.bb` file is). I haven't made any modifications to t=
he meta-arm repo. I just cloned it and changed to branch `kirkstone`. After=
 that, I have configured my local.conf with this:
> >> ```
> >> TCMODE =3D "external-arm"
> >>
> >> EXTERNAL_TOOLCHAIN =3D ".../gcc-arm-11.2-2022.02-x86_64-arm-none-linux=
-gnueabihf"
> >> ```
> >>
> >
> > Don't provide a relative path here. It should be an absolute path to
> > your external toolchain install directory. This should resolve your
> > issue.
>
> If that=92s the issue, can you add a check for the path being absolute to=
 the class?
>

Sure, see [1].

[1] https://nam02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flis=
ts.yoctoproject.org%2Fg%2Fmeta-arm%2Fmessage%2F4809&data=3D05%7C01%7CJesus.=
JimenezSanchez%40verifone.com%7C973f208b0af44819944408db7190e99c%7C611a22d6=
8c40495884e3ce47d8205d98%7C0%7C0%7C638228639435319950%7CUnknown%7CTWFpbGZsb=
3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C300=
0%7C%7C%7C&sdata=3DF7k3iyXYd8FFpc%2FMk2cPW3fKzKxIS44htt85A3liStA%3D&reserve=
d=3D0<https://lists.yoctoproject.org/g/meta-arm/message/4809>

-Sumit

> Ross

--_000_PH0PR03MB57516615AFCC4F32BE740E34F95CAPH0PR03MB5751namp_
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
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I am using an absolute path there; I just removed it before posting on the =
email thread.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I have attached my local.conf here.<br>
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
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Sumit Garg &lt;sumit.=
garg@linaro.org&gt;<br>
<b>Sent:</b> Tuesday 20 June 2023 14:18<br>
<b>To:</b> Ross Burton &lt;Ross.Burton@arm.com&gt;<br>
<b>Cc:</b> Jesus Jimenez Sanchez &lt;Jesus.JimenezSanchez@verifone.com&gt;;=
 yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] meta-arm-toolchain: SUPPORTED file not found #t=
oolchain</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">[You don't often get email from sumit.garg@linaro.=
org. Learn why this is important at
<a href=3D"https://aka.ms/LearnAboutSenderIdentification">https://aka.ms/Le=
arnAboutSenderIdentification</a> ]<br>
<br>
CAUTION: This email originated from outside of our organization. Do not cli=
ck links or open attachments unless you recognize the sender and know the c=
ontent is safe.<br>
<br>
<br>
On Tue, 20 Jun 2023 at 18:06, Ross Burton &lt;Ross.Burton@arm.com&gt; wrote=
:<br>
&gt;<br>
&gt; On 20 Jun 2023, at 13:08, Sumit Garg via lists.yoctoproject.org &lt;su=
mit.garg=3Dlinaro.org@lists.yoctoproject.org&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; On Mon, 19 Jun 2023 at 22:03, Jesus.JimenezSanchez via<br>
&gt; &gt; lists.yoctoproject.org<br>
&gt; &gt; &lt;Jesus.JimenezSanchez=3Dverifone.com@lists.yoctoproject.org&gt=
; wrote:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Hello, I'm trying to add the arm toolchain to my yocto projec=
t but I just got this error<br>
&gt; &gt;&gt; ```<br>
&gt; &gt;&gt; | cp: cannot stat '.../tmp-glibc/work/cortexa7t2hf-neon-vfpv4=
-ostl-linux-gnueabi/external-arm-toolchain/2022.02-r0/image/local/SUPPORTED=
': No such file or directory<br>
&gt; &gt;&gt; ```<br>
&gt; &gt;&gt; It comes from the `external-arm-toolchain.bb` recipe. I've ch=
ecked and the `SUPPORTED` file is in the right folder (the `files` folder w=
here the `external-arm-toolchain.bb` file is). I haven't made any modificat=
ions to the meta-arm repo. I just cloned
 it and changed to branch `kirkstone`. After that, I have configured my loc=
al.conf with this:<br>
&gt; &gt;&gt; ```<br>
&gt; &gt;&gt; TCMODE =3D &quot;external-arm&quot;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; EXTERNAL_TOOLCHAIN =3D &quot;.../gcc-arm-11.2-2022.02-x86_64-=
arm-none-linux-gnueabihf&quot;<br>
&gt; &gt;&gt; ```<br>
&gt; &gt;&gt;<br>
&gt; &gt;<br>
&gt; &gt; Don't provide a relative path here. It should be an absolute path=
 to<br>
&gt; &gt; your external toolchain install directory. This should resolve yo=
ur<br>
&gt; &gt; issue.<br>
&gt;<br>
&gt; If that=92s the issue, can you add a check for the path being absolute=
 to the class?<br>
&gt;<br>
<br>
Sure, see [1].<br>
<br>
[1] <a href=3D"https://lists.yoctoproject.org/g/meta-arm/message/4809">http=
s://nam02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.yocto=
project.org%2Fg%2Fmeta-arm%2Fmessage%2F4809&amp;data=3D05%7C01%7CJesus.Jime=
nezSanchez%40verifone.com%7C973f208b0af44819944408db7190e99c%7C611a22d68c40=
495884e3ce47d8205d98%7C0%7C0%7C638228639435319950%7CUnknown%7CTWFpbGZsb3d8e=
yJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C=
%7C%7C&amp;sdata=3DF7k3iyXYd8FFpc%2FMk2cPW3fKzKxIS44htt85A3liStA%3D&amp;res=
erved=3D0</a><br>
<br>
-Sumit<br>
<br>
&gt; Ross<br>
</div>
</span></font></div>
</body>
</html>

--_000_PH0PR03MB57516615AFCC4F32BE740E34F95CAPH0PR03MB5751namp_--

--_004_PH0PR03MB57516615AFCC4F32BE740E34F95CAPH0PR03MB5751namp_
Content-Type: application/octet-stream; name="local.conf.sample"
Content-Description: local.conf.sample
Content-Disposition: attachment; filename="local.conf.sample"; size=11936;
	creation-date="Tue, 20 Jun 2023 13:43:13 GMT";
	modification-date="Tue, 20 Jun 2023 13:43:16 GMT"
Content-Transfer-Encoding: base64

IwojIFRoaXMgZmlsZSBpcyB5b3VyIGxvY2FsIGNvbmZpZ3VyYXRpb24gZmlsZSBhbmQgaXMgd2hl
cmUgYWxsIGxvY2FsIHVzZXIgc2V0dGluZ3MKIyBhcmUgcGxhY2VkLiBUaGUgY29tbWVudHMgaW4g
dGhpcyBmaWxlIGdpdmUgc29tZSBndWlkZSB0byB0aGUgb3B0aW9ucyBhIG5ldyB1c2VyCiMgdG8g
dGhlIHN5c3RlbSBtaWdodCB3YW50IHRvIGNoYW5nZSBidXQgcHJldHR5IG11Y2ggYW55IGNvbmZp
Z3VyYXRpb24gb3B0aW9uIGNhbgojIGJlIHNldCBpbiB0aGlzIGZpbGUuIE1vcmUgYWR2ZW50dXJv
dXMgdXNlcnMgY2FuIGxvb2sgYXQKIyBsb2NhbC5jb25mLnNhbXBsZS5leHRlbmRlZCB3aGljaCBj
b250YWlucyBvdGhlciBleGFtcGxlcyBvZiBjb25maWd1cmF0aW9uIHdoaWNoCiMgY2FuIGJlIHBs
YWNlZCBpbiB0aGlzIGZpbGUgYnV0IG5ldyB1c2VycyBsaWtlbHkgd29uJ3QgbmVlZCBhbnkgb2Yg
dGhlbQojIGluaXRpYWxseS4KIwojIExpbmVzIHN0YXJ0aW5nIHdpdGggdGhlICcjJyBjaGFyYWN0
ZXIgYXJlIGNvbW1lbnRlZCBvdXQgYW5kIGluIHNvbWUgY2FzZXMgdGhlCiMgZGVmYXVsdCB2YWx1
ZXMgYXJlIHByb3ZpZGVkIGFzIGNvbW1lbnRzIHRvIHNob3cgcGVvcGxlIGV4YW1wbGUgc3ludGF4
LiBFbmFibGluZwojIHRoZSBvcHRpb24gaXMgYSBxdWVzdGlvbiBvZiByZW1vdmluZyB0aGUgIyBj
aGFyYWN0ZXIgYW5kIG1ha2luZyBhbnkgY2hhbmdlIHRvIHRoZQojIHZhcmlhYmxlIGFzIHJlcXVp
cmVkLgoKIwojIE1hY2hpbmUgU2VsZWN0aW9uCiMKIyBZb3UgbmVlZCB0byBzZWxlY3QgYSBzcGVj
aWZpYyBtYWNoaW5lIHRvIHRhcmdldCB0aGUgYnVpbGQgd2l0aC4gVGhlcmUgYXJlIGEgc2VsZWN0
aW9uCiMgb2YgZW11bGF0ZWQgbWFjaGluZXMgYXZhaWxhYmxlIHdoaWNoIGNhbiBib290IGFuZCBy
dW4gaW4gdGhlIFFFTVUgZW11bGF0b3I6CiMKI01BQ0hJTkUgPz0gInFlbXVhcm0iCiNNQUNISU5F
ID89ICJxZW11YXJtNjQiCiNNQUNISU5FID89ICJxZW11bWlwcyIKI01BQ0hJTkUgPz0gInFlbXVt
aXBzNjQiCiNNQUNISU5FID89ICJxZW11cHBjIgojTUFDSElORSA/PSAicWVtdXg4NiIKI01BQ0hJ
TkUgPz0gInFlbXV4ODYtNjQiCiMKIyBUaGlzIHNldHMgdGhlIGRlZmF1bHQgbWFjaGluZSB0byBi
ZSBxZW11eDg2LTY0IGlmIG5vIG90aGVyIG1hY2hpbmUgaXMgc2VsZWN0ZWQ6Ck1BQ0hJTkUgPz89
ICJxZW11eDg2LTY0IgoKIwojIERlZmF1bHQgcG9saWN5IGNvbmZpZwojCiMgVGhlIGRpc3RyaWJ1
dGlvbiBzZXR0aW5nIGNvbnRyb2xzIHdoaWNoIHBvbGljeSBzZXR0aW5ncyBhcmUgdXNlZCBhcyBk
ZWZhdWx0cy4KIyBUaGUgZGVmYXVsdCB2YWx1ZSBpcyBmaW5lIGZvciBnZW5lcmFsIFlvY3RvIHBy
b2plY3QgdXNlLCBhdCBsZWFzdCBpbml0aWFsbHkuCiMgVWx0aW1hdGVseSB3aGVuIGNyZWF0aW5n
IGN1c3RvbSBwb2xpY3ksIHBlb3BsZSB3aWxsIGxpa2VseSBlbmQgdXAgc3ViY2xhc3NpbmcKIyB0
aGVzZSBkZWZhdWx0cy4KIwojIFRoaXMgc2V0cyB0aGUgZGVmYXVsdCBkaXN0cmlidXRpb24gdG8g
YmUgbm9kaXN0cm8gaWYgbm8gb3RoZXIgZGlzdHJpYnV0aW9uIGlzIHNlbGVjdGVkOgpESVNUUk8g
Pz89ICJub2Rpc3RybyIKCiMKIyBXaGVyZSB0byBwbGFjZSBkb3dubG9hZHMKIwojIER1cmluZyBh
IGZpcnN0IGJ1aWxkIHRoZSBzeXN0ZW0gd2lsbCBkb3dubG9hZCBtYW55IGRpZmZlcmVudCBzb3Vy
Y2UgY29kZSB0YXJiYWxscwojIGZyb20gdmFyaW91cyB1cHN0cmVhbSBwcm9qZWN0cy4gVGhpcyBj
YW4gdGFrZSBhIHdoaWxlLCBwYXJ0aWN1bGFybHkgaWYgeW91ciBuZXR3b3JrCiMgY29ubmVjdGlv
biBpcyBzbG93LiBUaGVzZSBhcmUgYWxsIHN0b3JlZCBpbiBETF9ESVIuIFdoZW4gd2lwaW5nIGFu
ZCByZWJ1aWxkaW5nIHlvdQojIGNhbiBwcmVzZXJ2ZSB0aGlzIGRpcmVjdG9yeSB0byBzcGVlZCB1
cCB0aGlzIHBhcnQgb2Ygc3Vic2VxdWVudCBidWlsZHMuIFRoaXMgZGlyZWN0b3J5CiMgaXMgc2Fm
ZSB0byBzaGFyZSBiZXR3ZWVuIG11bHRpcGxlIGJ1aWxkcyBvbiB0aGUgc2FtZSBtYWNoaW5lIHRv
by4KIwojIFRoZSBkZWZhdWx0IGlzIGEgZG93bmxvYWRzIGRpcmVjdG9yeSB1bmRlciBUT1BESVIg
d2hpY2ggaXMgdGhlIGJ1aWxkIGRpcmVjdG9yeS4KIwojRExfRElSID89ICIke1RPUERJUn0vZG93
bmxvYWRzIgoKIwojIFdoZXJlIHRvIHBsYWNlIHNoYXJlZC1zdGF0ZSBmaWxlcwojCiMgQml0QmFr
ZSBoYXMgdGhlIGNhcGFiaWxpdHkgdG8gYWNjZWxlcmF0ZSBidWlsZHMgYmFzZWQgb24gcHJldmlv
dXNseSBidWlsdCBvdXRwdXQuCiMgVGhpcyBpcyBkb25lIHVzaW5nICJzaGFyZWQgc3RhdGUiIGZp
bGVzIHdoaWNoIGNhbiBiZSB0aG91Z2h0IG9mIGFzIGNhY2hlIG9iamVjdHMKIyBhbmQgdGhpcyBv
cHRpb24gZGV0ZXJtaW5lcyB3aGVyZSB0aG9zZSBmaWxlcyBhcmUgcGxhY2VkLgojCiMgWW91IGNh
biB3aXBlIG91dCBUTVBESVIgbGVhdmluZyB0aGlzIGRpcmVjdG9yeSBpbnRhY3QgYW5kIHRoZSBi
dWlsZCB3b3VsZCByZWdlbmVyYXRlCiMgZnJvbSB0aGVzZSBmaWxlcyBpZiBubyBjaGFuZ2VzIHdl
cmUgbWFkZSB0byB0aGUgY29uZmlndXJhdGlvbi4gSWYgY2hhbmdlcyB3ZXJlIG1hZGUKIyB0byB0
aGUgY29uZmlndXJhdGlvbiwgb25seSBzaGFyZWQgc3RhdGUgZmlsZXMgd2hlcmUgdGhlIHN0YXRl
IHdhcyBzdGlsbCB2YWxpZCB3b3VsZAojIGJlIHVzZWQgKGRvbmUgdXNpbmcgY2hlY2tzdW1zKS4K
IwojIFRoZSBkZWZhdWx0IGlzIGEgc3N0YXRlLWNhY2hlIGRpcmVjdG9yeSB1bmRlciBUT1BESVIu
CiMKI1NTVEFURV9ESVIgPz0gIiR7VE9QRElSfS9zc3RhdGUtY2FjaGUiCgojCiMgV2hlcmUgdG8g
cGxhY2UgdGhlIGJ1aWxkIG91dHB1dAojCiMgVGhpcyBvcHRpb24gc3BlY2lmaWVzIHdoZXJlIHRo
ZSBidWxrIG9mIHRoZSBidWlsZGluZyB3b3JrIHNob3VsZCBiZSBkb25lIGFuZAojIHdoZXJlIEJp
dEJha2Ugc2hvdWxkIHBsYWNlIGl0cyB0ZW1wb3JhcnkgZmlsZXMgYW5kIG91dHB1dC4gS2VlcCBp
biBtaW5kIHRoYXQKIyB0aGlzIGluY2x1ZGVzIHRoZSBleHRyYWN0aW9uIGFuZCBjb21waWxhdGlv
biBvZiBtYW55IGFwcGxpY2F0aW9ucyBhbmQgdGhlIHRvb2xjaGFpbgojIHdoaWNoIGNhbiB1c2Ug
R2lnYWJ5dGVzIG9mIGhhcmQgZGlzayBzcGFjZS4KIwojIFRoZSBkZWZhdWx0IGlzIGEgdG1wIGRp
cmVjdG9yeSB1bmRlciBUT1BESVIuCiMKI1RNUERJUiA9ICIke1RPUERJUn0vdG1wIgoKCiMKIyBQ
YWNrYWdlIE1hbmFnZW1lbnQgY29uZmlndXJhdGlvbgojCiMgVGhpcyB2YXJpYWJsZSBsaXN0cyB3
aGljaCBwYWNrYWdpbmcgZm9ybWF0cyB0byBlbmFibGUuIE11bHRpcGxlIHBhY2thZ2UgYmFja2Vu
ZHMKIyBjYW4gYmUgZW5hYmxlZCBhdCBvbmNlIGFuZCB0aGUgZmlyc3QgaXRlbSBsaXN0ZWQgaW4g
dGhlIHZhcmlhYmxlIHdpbGwgYmUgdXNlZAojIHRvIGdlbmVyYXRlIHRoZSByb290IGZpbGVzeXN0
ZW1zLgojIE9wdGlvbnMgYXJlOgojICAtICdwYWNrYWdlX2RlYicgZm9yIGRlYmlhbiBzdHlsZSBk
ZWIgZmlsZXMKIyAgLSAncGFja2FnZV9pcGsnIGZvciBpcGsgZmlsZXMgYXJlIHVzZWQgYnkgb3Br
ZyAoYSBkZWJpYW4gc3R5bGUgZW1iZWRkZWQgcGFja2FnZSBtYW5hZ2VyKQojICAtICdwYWNrYWdl
X3JwbScgZm9yIHJwbSBzdHlsZSBwYWNrYWdlcwojIEUuZy46IFBBQ0tBR0VfQ0xBU1NFUyA/PSAi
cGFja2FnZV9ycG0gcGFja2FnZV9kZWIgcGFja2FnZV9pcGsiCiMgV2UgZGVmYXVsdCB0byBpcGs6
CiMgUEFDS0FHRV9DTEFTU0VTID89ICJwYWNrYWdlX2lwayIKCiMKIyBTREsgdGFyZ2V0IGFyY2hp
dGVjdHVyZQojCiMgVGhpcyB2YXJpYWJsZSBzcGVjaWZpZXMgdGhlIGFyY2hpdGVjdHVyZSB0byBi
dWlsZCBTREsgaXRlbXMgZm9yIGFuZCBtZWFucwojIHlvdSBjYW4gYnVpbGQgdGhlIFNESyBwYWNr
YWdlcyBmb3IgYXJjaGl0ZWN0dXJlcyBvdGhlciB0aGFuIHRoZSBtYWNoaW5lIHlvdSBhcmUKIyBy
dW5uaW5nIHRoZSBidWlsZCBvbiAoaS5lLiBidWlsZGluZyBpNjg2IHBhY2thZ2VzIG9uIGFuIHg4
Nl82NCBob3N0KS4KIyBTdXBwb3J0ZWQgdmFsdWVzIGFyZSBpNjg2LCB4ODZfNjQsIGFhcmNoNjQK
I1NES01BQ0hJTkUgPz0gImk2ODYiCgojCiMgRXh0cmEgaW1hZ2UgY29uZmlndXJhdGlvbiBkZWZh
dWx0cwojCiMgVGhlIEVYVFJBX0lNQUdFX0ZFQVRVUkVTIHZhcmlhYmxlIGFsbG93cyBleHRyYSBw
YWNrYWdlcyB0byBiZSBhZGRlZCB0byB0aGUgZ2VuZXJhdGVkCiMgaW1hZ2VzLiBTb21lIG9mIHRo
ZXNlIG9wdGlvbnMgYXJlIGFkZGVkIHRvIGNlcnRhaW4gaW1hZ2UgdHlwZXMgYXV0b21hdGljYWxs
eS4gVGhlCiMgdmFyaWFibGUgY2FuIGNvbnRhaW4gdGhlIGZvbGxvd2luZyBvcHRpb25zOgojICAi
ZGJnLXBrZ3MiICAgICAgIC0gYWRkIC1kYmcgcGFja2FnZXMgZm9yIGFsbCBpbnN0YWxsZWQgcGFj
a2FnZXMKIyAgICAgICAgICAgICAgICAgICAgIChhZGRzIHN5bWJvbCBpbmZvcm1hdGlvbiBmb3Ig
ZGVidWdnaW5nL3Byb2ZpbGluZykKIyAgInNyYy1wa2dzIiAgICAgICAtIGFkZCAtc3JjIHBhY2th
Z2VzIGZvciBhbGwgaW5zdGFsbGVkIHBhY2thZ2VzCiMgICAgICAgICAgICAgICAgICAgICAoYWRk
cyBzb3VyY2UgY29kZSBmb3IgZGVidWdnaW5nKQojICAiZGV2LXBrZ3MiICAgICAgIC0gYWRkIC1k
ZXYgcGFja2FnZXMgZm9yIGFsbCBpbnN0YWxsZWQgcGFja2FnZXMKIyAgICAgICAgICAgICAgICAg
ICAgICh1c2VmdWwgaWYgeW91IHdhbnQgdG8gZGV2ZWxvcCBhZ2FpbnN0IGxpYnMgaW4gdGhlIGlt
YWdlKQojICAicHRlc3QtcGtncyIgICAgIC0gYWRkIC1wdGVzdCBwYWNrYWdlcyBmb3IgYWxsIHB0
ZXN0LWVuYWJsZWQgcGFja2FnZXMKIyAgICAgICAgICAgICAgICAgICAgICh1c2VmdWwgaWYgeW91
IHdhbnQgdG8gcnVuIHRoZSBwYWNrYWdlIHRlc3Qgc3VpdGVzKQojICAidG9vbHMtc2RrIiAgICAg
IC0gYWRkIGRldmVsb3BtZW50IHRvb2xzIChnY2MsIG1ha2UsIHBrZ2NvbmZpZyBldGMuKQojICAi
dG9vbHMtZGVidWciICAgIC0gYWRkIGRlYnVnZ2luZyB0b29scyAoZ2RiLCBzdHJhY2UpCiMgICJl
Y2xpcHNlLWRlYnVnIiAgLSBhZGQgRWNsaXBzZSByZW1vdGUgZGVidWdnaW5nIHN1cHBvcnQKIyAg
InRvb2xzLXByb2ZpbGUiICAtIGFkZCBwcm9maWxpbmcgdG9vbHMgKG9wcm9maWxlLCBsdHRuZywg
dmFsZ3JpbmQpCiMgICJ0b29scy10ZXN0YXBwcyIgLSBhZGQgdXNlZnVsIHRlc3RpbmcgdG9vbHMg
KHRzX3ByaW50LCBhcGxheSwgYXJlY29yZCBldGMuKQojICAiZGVidWctdHdlYWtzIiAgIC0gbWFr
ZSBhbiBpbWFnZSBzdWl0YWJsZSBmb3IgZGV2ZWxvcG1lbnQKIyAgICAgICAgICAgICAgICAgICAg
IGUuZy4gc3NoIHJvb3QgYWNjZXNzIGhhcyBhIGJsYW5rIHBhc3N3b3JkCiMgVGhlcmUgYXJlIG90
aGVyIGFwcGxpY2F0aW9uIHRhcmdldHMgdGhhdCBjYW4gYmUgdXNlZCBoZXJlIHRvbywgc2VlCiMg
bWV0YS9jbGFzc2VzL2ltYWdlLmJiY2xhc3MgYW5kIG1ldGEvY2xhc3Nlcy9jb3JlLWltYWdlLmJi
Y2xhc3MgZm9yIG1vcmUgZGV0YWlscy4KIyBXZSBkZWZhdWx0IHRvIGVuYWJsaW5nIHRoZSBkZWJ1
Z2dpbmcgdHdlYWtzLgpFWFRSQV9JTUFHRV9GRUFUVVJFUyA/PSAiZGVidWctdHdlYWtzIgoKIwoj
IEFkZGl0aW9uYWwgaW1hZ2UgZmVhdHVyZXMKIwojIFRoZSBmb2xsb3dpbmcgaXMgYSBsaXN0IG9m
IGFkZGl0aW9uYWwgY2xhc3NlcyB0byB1c2Ugd2hlbiBidWlsZGluZyBpbWFnZXMgd2hpY2gKIyBl
bmFibGUgZXh0cmEgZmVhdHVyZXMuIFNvbWUgYXZhaWxhYmxlIG9wdGlvbnMgd2hpY2ggY2FuIGJl
IGluY2x1ZGVkIGluIHRoaXMgdmFyaWFibGUKIyBhcmU6CiMgICAtICdidWlsZHN0YXRzJyBjb2xs
ZWN0IGJ1aWxkIHN0YXRpc3RpY3MKVVNFUl9DTEFTU0VTID89ICJidWlsZHN0YXRzIgoKCiMKIyBS
dW50aW1lIHRlc3Rpbmcgb2YgaW1hZ2VzCiMKIyBUaGUgYnVpbGQgc3lzdGVtIGNhbiB0ZXN0IGJv
b3RpbmcgdmlydHVhbCBtYWNoaW5lIGltYWdlcyB1bmRlciBxZW11IChhbiBlbXVsYXRvcikKIyBh
ZnRlciBhbnkgcm9vdCBmaWxlc3lzdGVtcyBhcmUgY3JlYXRlZCBhbmQgcnVuIHRlc3RzIGFnYWlu
c3QgdGhvc2UgaW1hZ2VzLiBJdCBjYW4gYWxzbwojIHJ1biB0ZXN0cyBhZ2FpbnN0IGFueSBTREsg
dGhhdCBhcmUgYnVpbHQuIFRvIGVuYWJsZSB0aGlzIHVuY29tbWVudCB0aGVzZSBsaW5lcy4KIyBT
ZWUgY2xhc3Nlcy90ZXN0e2ltYWdlLHNka30uYmJjbGFzcyBmb3IgZnVydGhlciBkZXRhaWxzLgoj
SU1BR0VfQ0xBU1NFUyArPSAidGVzdGltYWdlIHRlc3RzZGsiCiNURVNUSU1BR0VfQVVUTzpxZW11
YWxsID0gIjEiCgojCiMgSW50ZXJhY3RpdmUgc2hlbGwgY29uZmlndXJhdGlvbgojCiMgVW5kZXIg
Y2VydGFpbiBjaXJjdW1zdGFuY2VzIHRoZSBzeXN0ZW0gbWF5IG5lZWQgaW5wdXQgZnJvbSB5b3Ug
YW5kIHRvIGRvIHRoaXMgaXQKIyBjYW4gbGF1bmNoIGFuIGludGVyYWN0aXZlIHNoZWxsLiBJdCBu
ZWVkcyB0byBkbyB0aGlzIHNpbmNlIHRoZSBidWlsZCBpcwojIG11bHRpdGhyZWFkZWQgYW5kIG5l
ZWRzIHRvIGJlIGFibGUgdG8gaGFuZGxlIHRoZSBjYXNlIHdoZXJlIG1vcmUgdGhhbiBvbmUgcGFy
YWxsZWwKIyBwcm9jZXNzIG1heSByZXF1aXJlIHRoZSB1c2VyJ3MgYXR0ZW50aW9uLiBUaGUgZGVm
YXVsdCBpcyBpdGVyYXRlIG92ZXIgdGhlIGF2YWlsYWJsZQojIHRlcm1pbmFsIHR5cGVzIHRvIGZp
bmQgb25lIHRoYXQgd29ya3MuCiMKIyBFeGFtcGxlcyBvZiB0aGUgb2NjYXNpb25zIHRoaXMgbWF5
IGhhcHBlbiBhcmUgd2hlbiByZXNvbHZpbmcgcGF0Y2hlcyB3aGljaCBjYW5ub3QKIyBiZSBhcHBs
aWVkLCB0byB1c2UgdGhlIGRldnNoZWxsIG9yIHRoZSBrZXJuZWwgbWVudWNvbmZpZwojCiMgU3Vw
cG9ydGVkIHZhbHVlcyBhcmUgYXV0bywgZ25vbWUsIHhmY2UsIHJ4dnQsIHNjcmVlbiwga29uc29s
ZSAoS0RFIDMueCBvbmx5KSwgbm9uZQojIE5vdGU6IGN1cnJlbnRseSwgS29uc29sZSBzdXBwb3J0
IG9ubHkgd29ya3MgZm9yIEtERSAzLnggZHVlIHRvIHRoZSB3YXkKIyBuZXdlciBLb25zb2xlIHZl
cnNpb25zIGJlaGF2ZQojT0VfVEVSTUlOQUwgPSAiYXV0byIKIyBCeSBkZWZhdWx0IGRpc2FibGUg
aW50ZXJhY3RpdmUgcGF0Y2ggcmVzb2x1dGlvbiAodGFza3Mgd2lsbCBqdXN0IGZhaWwgaW5zdGVh
ZCk6ClBBVENIUkVTT0xWRSA9ICJub29wIgoKIwojIERpc2sgU3BhY2UgTW9uaXRvcmluZyBkdXJp
bmcgdGhlIGJ1aWxkCiMKIyBNb25pdG9yIHRoZSBkaXNrIHNwYWNlIGR1cmluZyB0aGUgYnVpbGQu
IElmIHRoZXJlIGlzIGxlc3MgdGhhdCAxR0Igb2Ygc3BhY2Ugb3IgbGVzcwojIHRoYW4gMTAwSyBp
bm9kZXMgaW4gYW55IGtleSBidWlsZCBsb2NhdGlvbiAoVE1QRElSLCBETF9ESVIsIFNTVEFURV9E
SVIpLCBncmFjZWZ1bGx5CiMgc2h1dGRvd24gdGhlIGJ1aWxkLiBJZiB0aGVyZSBpcyBsZXNzIHRo
YW4gMTAwTUIgb3IgMUsgaW5vZGVzLCBwZXJmb3JtIGEgaGFyZCBoYWx0CiMgb2YgdGhlIGJ1aWxk
LiBUaGUgcmVhc29uIGZvciB0aGlzIGlzIHRoYXQgcnVubmluZyBjb21wbGV0ZWx5IG91dCBvZiBz
cGFjZSBjYW4gY29ycnVwdAojIGZpbGVzIGFuZCBkYW1hZ2VzIHRoZSBidWlsZCBpbiB3YXlzIHdo
aWNoIG1heSBub3QgYmUgZWFzaWx5IHJlY292ZXJhYmxlLgojIEl0J3MgbmVjZXNzYXJ5IHRvIG1v
bml0b3IgL3RtcCwgaWYgdGhlcmUgaXMgbm8gc3BhY2UgbGVmdCB0aGUgYnVpbGQgd2lsbCBmYWls
CiMgd2l0aCB2ZXJ5IGV4b3RpYyBlcnJvcnMuCkJCX0RJU0tNT05fRElSUyA/Pz0gIlwKICAgIFNU
T1BUQVNLUywke1RNUERJUn0sMUcsMTAwSyBcCiAgICBTVE9QVEFTS1MsJHtETF9ESVJ9LDFHLDEw
MEsgXAogICAgU1RPUFRBU0tTLCR7U1NUQVRFX0RJUn0sMUcsMTAwSyBcCiAgICBTVE9QVEFTS1Ms
L3RtcCwxMDBNLDEwMEsgXAogICAgSEFMVCwke1RNUERJUn0sMTAwTSwxSyBcCiAgICBIQUxULCR7
RExfRElSfSwxMDBNLDFLIFwKICAgIEhBTFQsJHtTU1RBVEVfRElSfSwxMDBNLDFLIFwKICAgIEhB
TFQsL3RtcCwxME0sMUsiCgojCiMgU2hhcmVkLXN0YXRlIGZpbGVzIGZyb20gb3RoZXIgbG9jYXRp
b25zCiMKIyBBcyBtZW50aW9uZWQgYWJvdmUsIHNoYXJlZCBzdGF0ZSBmaWxlcyBhcmUgcHJlYnVp
bHQgY2FjaGUgZGF0YSBvYmplY3RzIHdoaWNoIGNhbiBiZQojIHVzZWQgdG8gYWNjZWxlcmF0ZSBi
dWlsZCB0aW1lLiBUaGlzIHZhcmlhYmxlIGNhbiBiZSB1c2VkIHRvIGNvbmZpZ3VyZSB0aGUgc3lz
dGVtCiMgdG8gc2VhcmNoIG90aGVyIG1pcnJvciBsb2NhdGlvbnMgZm9yIHRoZXNlIG9iamVjdHMg
YmVmb3JlIGl0IGJ1aWxkcyB0aGUgZGF0YSBpdHNlbGYuCiMKIyBUaGlzIGNhbiBiZSBhIGZpbGVz
eXN0ZW0gZGlyZWN0b3J5LCBvciBhIHJlbW90ZSB1cmwgc3VjaCBhcyBodHRwcyBvciBmdHAuIFRo
ZXNlCiMgd291bGQgY29udGFpbiB0aGUgc3N0YXRlLWNhY2hlIHJlc3VsdHMgZnJvbSBwcmV2aW91
cyBidWlsZHMgKHBvc3NpYmx5IGZyb20gb3RoZXIKIyBtYWNoaW5lcykuIFRoaXMgdmFyaWFibGUg
d29ya3MgbGlrZSBmZXRjaGVyIE1JUlJPUlMvUFJFTUlSUk9SUyBhbmQgcG9pbnRzIHRvIHRoZQoj
IGNhY2hlIGxvY2F0aW9ucyB0byBjaGVjayBmb3IgdGhlIHNoYXJlZCBvYmplY3RzLgojIE5PVEU6
IGlmIHRoZSBtaXJyb3IgdXNlcyB0aGUgc2FtZSBzdHJ1Y3R1cmUgYXMgU1NUQVRFX0RJUiwgeW91
IG5lZWQgdG8gYWRkIFBBVEgKIyBhdCB0aGUgZW5kIGFzIHNob3duIGluIHRoZSBleGFtcGxlcyBi
ZWxvdy4gVGhpcyB3aWxsIGJlIHN1YnN0aXR1dGVkIHdpdGggdGhlCiMgY29ycmVjdCBwYXRoIHdp
dGhpbiB0aGUgZGlyZWN0b3J5IHN0cnVjdHVyZS4KI1NTVEFURV9NSVJST1JTID89ICJcCiNmaWxl
Oi8vLiogaHR0cHM6Ly9zb21lc2VydmVyLnRsZC9zaGFyZS9zc3RhdGUvUEFUSDtkb3dubG9hZGZp
bGVuYW1lPVBBVEggXAojZmlsZTovLy4qIGZpbGU6Ly8vc29tZS9sb2NhbC9kaXIvc3N0YXRlL1BB
VEgiCgoKIwojIFFlbXUgY29uZmlndXJhdGlvbgojCiMgQnkgZGVmYXVsdCBxZW11IHdpbGwgYnVp
bGQgd2l0aCBhIGJ1aWx0aW4gVk5DIHNlcnZlciB3aGVyZSBncmFwaGljYWwgb3V0cHV0IGNhbiBi
ZQojIHNlZW4uIFRoZSB0d28gbGluZXMgYmVsb3cgZW5hYmxlIHRoZSBTREwgYmFja2VuZCB0b28u
IEJ5IGRlZmF1bHQgbGlic2RsMi1uYXRpdmUgd2lsbAojIGJlIGJ1aWx0LCBpZiB5b3Ugd2FudCB0
byB1c2UgeW91ciBob3N0J3MgbGliU0RMIGluc3RlYWQgb2YgdGhlIG1pbmltYWwgbGlic2RsIGJ1
aWx0CiMgYnkgbGlic2RsMi1uYXRpdmUgdGhlbiB1bmNvbW1lbnQgdGhlIEFTU1VNRV9QUk9WSURF
RCBsaW5lIGJlbG93LgpQQUNLQUdFQ09ORklHOmFwcGVuZDpwbi1xZW11LXN5c3RlbS1uYXRpdmUg
PSAiIHNkbCIKUEFDS0FHRUNPTkZJRzphcHBlbmQ6cG4tbmF0aXZlc2RrLXFlbXUgPSAiIHNkbCIK
I0FTU1VNRV9QUk9WSURFRCArPSAibGlic2RsMi1uYXRpdmUiCgojID09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0K
IyAgIFNUIFNQZWNpZmljCiMgPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQojCiMgQ09ORl9WRVJTSU9OIGlzIGlu
Y3JlYXNlZCBlYWNoIHRpbWUgYnVpbGQvY29uZi8gY2hhbmdlcyBpbmNvbXBhdGlibHkgYW5kIGlz
IHVzZWQgdG8KIyB0cmFjayB0aGUgdmVyc2lvbiBvZiB0aGlzIGZpbGUgd2hlbiBpdCB3YXMgZ2Vu
ZXJhdGVkLiBUaGlzIGNhbiBzYWZlbHkgYmUgaWdub3JlZCBpZgojIHRoaXMgZG9lc24ndCBtZWFu
IGFueXRoaW5nIHRvIHlvdS4KQ09ORl9WRVJTSU9OID0gIjIiCgojIFNldCBHTElCQ19HRU5FUkFU
RV9MT0NBTEVTIHRvIHRoZSBsb2NhbGVzIHlvdSB3aXNoIHRvIGdlbmVyYXRlIHNob3VsZCB5b3Ug
bm90CiMgd2lzaCB0byBwZXJmb3JtIHRoZSB0aW1lLWNvbnN1bWluZyBzdGVwIG9mIGdlbmVyYXRp
bmcgYWxsIExJQkMgbG9jYWxlcy4KIyBOT1RFOiBJZiByZW1vdmluZyBlbl9VUy5VVEYtOCB5b3Ug
d2lsbCBhbHNvIG5lZWQgdG8gdW5jb21tZW50LCBhbmQgc2V0CiMgYXBwcm9wcmlhdGUgdmFsdWUg
Zm9yIElNQUdFX0xJTkdVQVMuCiMgV0FSTklORzogdGhpcyBtYXkgYnJlYWsgbG9jYWxpc2F0aW9u
IQpHTElCQ19HRU5FUkFURV9MT0NBTEVTID0gImVuX0dCLlVURi04IGVuX1VTLlVURi04IgpJTUFH
RV9MSU5HVUFTID89ICJlbi1nYiIKCiMgQWRkaXRpb25hbCBpbWFnZSBnZW5lcmF0aW9uIGZlYXR1
cmVzCiMKIyBUaGUgZm9sbG93aW5nIGlzIGEgbGlzdCBvZiBjbGFzc2VzIHRvIGltcG9ydCB0byB1
c2UgaW4gdGhlIGdlbmVyYXRpb24gb2YgaW1hZ2VzCiMgY3VycmVudGx5IGFuIGV4YW1wbGUgY2xh
c3MgaXMgaW1hZ2VfdHlwZXNfdWJvb3QKIyBJTUFHRV9DTEFTU0VTID0gIiBpbWFnZV90eXBlc191
Ym9vdCIKCiMgU3VwcG9ydCBvZiBkZXZzaGVsbApJTkhFUklUICs9ICJkZXZzaGVsbCIKCiMgUmVt
b3ZlIHRoZSBvbGQgaW1hZ2UgYmVmb3JlIHRoZSBuZXcgb25lIGdlbmVyYXRlZCB0byBzYXZlIGRp
c2sgc3BhY2UKUk1fT0xEX0lNQUdFID0gIjEiCgojIE5pY2UgZGVidWcgZGF0YQpJTkhFUklUICs9
ICJidWlsZGhpc3RvcnkiCkJVSUxESElTVE9SWV9DT01NSVQgPSAiMSIKCiMgQ2xlYW4gdXAgd29y
a2luZyBkaXJlY3RvcnkgYWZ0ZXIgYnVpbGQKSU5IRVJJVCArPSAicm1fd29yayIKCiMgVG8gZ2Vu
ZXJhdGUgZGVidWcgaW1hZ2Ugd2l0aCBhbGwgc3ltYm9sCiNJTUFHRV9HRU5fREVCVUdGUyA9ICIx
IgoKIyBmb3JjZSB0aGUgdXNhZ2Ugb2YgZGViaWFuIHBhY2thZ2UKUEFDS0FHRV9DTEFTU0VTID0g
InBhY2thZ2VfZGViIgoKIyBUbyBlbmFibGUgYXJjaGl2ZXIgZm9yIHJlY2lwZXMgdGhhdCBhcmUg
Y29uZmlndXJlZAojU1RfQVJDSElWRVJfRU5BQkxFID0gIjEiCgojIFNldHVwIGVudmlyb25tZW50
IGZvciBidWlsZHMgYmluYXJ5IHJlcHJvZHVjaWJpbGl0eQpSRVBST0RVQ0lCTEVfVElNRVNUQU1Q
X1JPT1RGUyA9ICIiCgojIFNldHVwIGVTREsKU0RLX0VYVF9UWVBFPSJtaW5pbWFsIgpTREtfSU5D
TFVERV9UT09MQ0hBSU49IjEiCgojIEVuYWJsZSBQUiBzZXJ2ZXIgdG8gYXZvaWQgdmVyc2lvbi1n
b2luZy1iYWNrd2FyZCBpc3N1ZQpQUlNFUlZfSE9TVCA9ICJsb2NhbGhvc3Q6MCIKCiMgPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PQojIENvbmZpZ3VyZSBTVE0zMk1QIGRlZmF1bHQgdmVyc2lvbiB0byBnaXRodWIK
IyA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09CiNTVE0zMk1QX1NPVVJDRV9TRUxFQ1RJT046cG4tbGludXgtc3Rt
MzJtcCA9ICJnaXRodWIiCiNTVE0zMk1QX1NPVVJDRV9TRUxFQ1RJT046cG4tb3B0ZWUtb3Mtc3Rt
MzJtcCA9ICJnaXRodWIiCiNTVE0zMk1QX1NPVVJDRV9TRUxFQ1RJT046cG4tdGYtYS1zdG0zMm1w
ID0gImdpdGh1YiIKI1NUTTMyTVBfU09VUkNFX1NFTEVDVElPTjpwbi11LWJvb3Qtc3RtMzJtcCA9
ICJnaXRodWIiCgoKIyBEaXNhYmxlIGRlcGVuZGVuY3kgb24gU1JDUFYgaW4gUFYgZm9yIGNsZWFu
ZXIgdmVyc2lvbgpfX0JCU0VFTlNSQ1JFViA9ICIxIgoKIyBFeGNsdWRlIGRlYnVnIHN5bWJvbHMg
YW5kIG90aGVyIGRlYnVnIGluZm9ybWF0aW9uCklOSElCSVRfUEFDS0FHRV9ERUJVR19TUExJVCA9
ICIxIgoKVENNT0RFID0gImV4dGVybmFsLWFybSIKCkVYVEVSTkFMX1RPT0xDSEFJTiA9ICI8PGFi
c29sdXRlLXBhdGgtaGVyZT4+L2xheWVycy9nY2MtYXJtLTExLjItMjAyMi4wMi14ODZfNjQtYXJt
LW5vbmUtbGludXgtZ251ZWFiaWhmIgo=

--_004_PH0PR03MB57516615AFCC4F32BE740E34F95CAPH0PR03MB5751namp_--

