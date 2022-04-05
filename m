Return-Path: <davide.rombola@mermecste.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B000C4707E
	for <webhook@archiver.kernel.org>; Tue,  5 Apr 2022 17:24:47 +0000 (UTC)
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (EUR03-AM5-obe.outbound.protection.outlook.com [40.107.3.63])
 by mx.groups.io with SMTP id smtpd.web10.7141.1649169525481566902
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Apr 2022 07:38:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@angelcompanygroup.onmicrosoft.com
 header.s=selector2-angelcompanygroup-onmicrosoft-com header.b=pTQinN2T;
 spf=pass (domain: mermecste.com, ip: 40.107.3.63,
 mailfrom: davide.rombola@mermecste.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cIcMEWUGy/2T4Sq2lU2dJ8tzz34XaI0EjUWMKT5wu8UK21thHVS4G1+DpbR0yI2MziCI7vmvGKTPrAQUybbfPnvecAHGcfX7E9ay7cv9xZHIyBQgVtgRFBAXb10g26Kf1k7G1WSfSV68o13PMrZ8zpAdWuwb2iKx+dQV8fEco+Q4acLwSiy+DeZm5tmgVeIXe5aoqa1YJDsH2CXOyX+vVA7uV+ghCZj6qfWLTRAwVS9+iS2QLov7svXej+1mTY56wduYUmwRIaiMIMNlnPfHpJceBPoI9L9l9ev5ceMigGay611Ptwz0LJtxhusv/jGT3xh5p+9y4dW2BpPfJB2k2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CldyiU/ZLC3SdAJAYManZf2yIRvnnmPIWpj4I5uY/sw=;
 b=TqMqh6/sqPw5P1T8UqhsnZlDbyOW77kbCxvr4TmnX/sD6Mub7BEME4+LrDw0WhkxJDNihKlwBnZAfWQXYBG7h51f1smbkHdNdDliq78tvUpKTlR/FKdg5Z6q7ClrD8fIlz90p5hulLjU76Uq/JIlWu7PrJ9v52TmV3AD1nKhcFDIcx2/8/hMf+MlpOuKjXRK3J2ABCzJ10RCAjvRTvBAA4gPVoDMgA+vQezLSQYUdijzHU9gN7rosg49YkhHf8J4JtrG5k9vWlp9GXWbU6FF3A8tfxyFHJTVtQ9DSbCveSQd0PjpkjhKh0iU1Qp0bgH03lmFsFjZ6okG4fHaiMJ6Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mermecste.com; dmarc=pass action=none
 header.from=mermecste.com; dkim=pass header.d=mermecste.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=angelcompanygroup.onmicrosoft.com;
 s=selector2-angelcompanygroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CldyiU/ZLC3SdAJAYManZf2yIRvnnmPIWpj4I5uY/sw=;
 b=pTQinN2TX0e2ivgFkPxTFZnLueChZJee6YFJXUaQz+NggVLN+r43UyLyznmKIU4i8WFYhVd03iWKOeEn5HjRM4BXyqe4Rqwhyl49V3DxQMKS2hDgO0B35wJyUiLUYO5ITIlcb08RLJWeHXXpZECnXYqMzzh5gs0TliGSfNBvL5w=
Received: from PAXPR08MB6527.eurprd08.prod.outlook.com (2603:10a6:102:156::13)
 by PA4PR08MB7482.eurprd08.prod.outlook.com (2603:10a6:102:2a6::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.30; Tue, 5 Apr
 2022 14:38:41 +0000
Received: from PAXPR08MB6527.eurprd08.prod.outlook.com
 ([fe80::7c3b:10b3:3ac:c27a]) by PAXPR08MB6527.eurprd08.prod.outlook.com
 ([fe80::7c3b:10b3:3ac:c27a%2]) with mapi id 15.20.5123.031; Tue, 5 Apr 2022
 14:38:41 +0000
From: Rombola Davide <davide.rombola@mermecste.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Wrong file installed when building a machine
Thread-Topic: Wrong file installed when building a machine
Thread-Index: AQHYSPmMtgCYBhkOwUCOXpDQoMVc4Q==
Date: Tue, 5 Apr 2022 14:38:41 +0000
Message-ID: 
 <PAXPR08MB652725DC99C5C2ADC0A246F383E49@PAXPR08MB6527.eurprd08.prod.outlook.com>
Accept-Language: it-IT, en-US
Content-Language: it-IT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 6ff173bf-6fcf-9124-5eeb-5ba01c84da9d
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mermecste.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e47691e4-324c-438f-d595-08da1711fab2
x-ms-traffictypediagnostic: PA4PR08MB7482:EE_
x-microsoft-antispam-prvs: 
 <PA4PR08MB748253D69E1D033FB2C084F183E49@PA4PR08MB7482.eurprd08.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 tagAUPoBJy5bx1D1VGAJBEnKa6md23AeMEqOZDJCaDQMnhrDZwlbj7lACPMkOGnhWDLlQAjw4TWbjekrA2yD8kcJ9Zm5l91AZK345DaaUenv5Kd5n3cFogCF+vLp0CSRzQJbpD8sKH33Mnxbiil/KzdtcWJgfT7vaLOvTA+D/eu2a4ugFm/cmDqE/IH4oXMCdwRV4A4zSSpN5BKreqb5oBMZE8mEQHw8Rd1wd+HOyDbzxV94MeWy68EtqS6AsWgAUazT1sy7KWpQzU0wcsjaPuBgq0GV4C3XNlR1ZR9pSGNF585TGAq3aRcfgL5QJTv0uKS5wTJOmFY9bkzhyOcYbn1t7jkFgZ9u7nY1/oizwLo58LmrVqltKiSQHtizki9NXBJvl3UxF6M+m+bDYyvytfBJH+5TtkpLzDYLB2NnRANuGhA4lM4vxIh1AxDCnRMsjLcV8ut/PwGzQmGww9u3j1/3Ie3SDX6THHmcF1P2/Hwcnf8HANHvqjFEGN0+gnWFXcqLrw244xjJv5IntqlMEIbhgqlCJyfdjGOHqxQeGOVn04W1mGH7XuuHiBgtdeY21Gdt5ipSVeJuufqIyGEKpiRk78XZvpQWqIvU7iG/UYSoaRNEK5VhdJNoip86XxcykMzDfg/eh07axO4Uz8PgfuK0WO2wNWGMhKTHDMGdg0cyt0Qp8+1o4WYk5QKQIt6rkDmghd42kq6JIw/E8ueaAQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR08MB6527.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(66556008)(71200400001)(6916009)(66946007)(38100700002)(66476007)(64756008)(66446008)(316002)(33656002)(52536014)(8936002)(86362001)(91956017)(76116006)(122000001)(55016003)(5660300002)(7696005)(6506007)(26005)(19627405001)(186003)(38070700005)(9686003)(2906002)(8676002)(508600001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?koi8-r?Q?QLTfh7E1XQujivsHlLhlEq6NfDSTXQGas6LtBZ+Dg84Vx2wxWLTlKBztasRwxR?=
 =?koi8-r?Q?hUcg4I5fIWUiVypnry5bnILlI6I0Vg6opG0iZy/IoZrOs08PCls/f8r3YqANmA?=
 =?koi8-r?Q?QIOdf1RXTkUwEp/6xdaVUmWGQ0gM+2fysz0K/T0B2zmK6eIpjo02eWtYgvKIh9?=
 =?koi8-r?Q?rf1CDaOsChnNZv8hO/TiKicjLFNP8+MYVrT+hlQ4gbvfkwCC844vQ9GmbFztsk?=
 =?koi8-r?Q?F0nmyNP1v5rxnfYDOgGfPO+pDie2abYogvLADJsvwlWjHkRInSYvvA0VdxsHvt?=
 =?koi8-r?Q?vpGtrN5k8hUUi7GAucrmZu9fi0Sktcw4OGmvk/26Whv3hdeVYwJKtEM4klzMVk?=
 =?koi8-r?Q?NcF1v64E2IvPDun49qndXPjPY5YOuzYQ7ot3WaWyiflDygb0dDMDhxDugT5fKT?=
 =?koi8-r?Q?JXZgMgZ6u1VZk1XEm/vE9yiuVYR+NuJjwvUUNrNN024yrWmO3p5G/RerftPQgN?=
 =?koi8-r?Q?WVgHyq9w3wC1oRRLcBnjRoPIYaK6T/ewDscBrc/GX561FdCMnTjgXDiOxq1MpF?=
 =?koi8-r?Q?pMwqYYJaaN7Nnu5k8Zm7Uotq/KRVBF/T82GUQopdxzdaAFdULREBU4BC0gLUgm?=
 =?koi8-r?Q?bqHgMbqVfnzn4+Pg8MNJ8q3KAEJYFbP1GG67PKw5kovW8QkCExNuzdpSneG5DK?=
 =?koi8-r?Q?sM00wlB10kZosb6l1ugRAWnbXI4TRVrMFEzJ2DVF8jinRI9YBTdYl4Jc07te14?=
 =?koi8-r?Q?lk4Li3lUavru9pyXEW0/Zin8Hso+aMusSq1jmOjWDz39PaU9gCIgVe9nBpVKIl?=
 =?koi8-r?Q?RSgSnhKt435SOQ48l1+xDXBI2M88XaD/1xFPpCz0dDbyhQItwYE8UEKgQ5l2Yi?=
 =?koi8-r?Q?wMmqm/nspUptCrG0qtFVeIwafvsMMA/7qJVN7gPBM1oN189VD6lRUNkITvV41G?=
 =?koi8-r?Q?b3b+40HiQAwthXy9Gujrrba+f1fY4k0GLjx6q5G8E73Xp7ptZXYtTidNL17AKp?=
 =?koi8-r?Q?273AFU6jE2a7E6dvYZiJwN8OoXPbd4xY5nzHu2rfIudg8wxwT2FgYlg/0lMZyq?=
 =?koi8-r?Q?DgJ2ByLpJsvakxpch+ES6PUARbDdCLUtwhvs5RVDwRhvrzyEYirvuZsdoxla8q?=
 =?koi8-r?Q?K6VvkNpPMzv05xJuC41OpYUUbq1eVqFb5EhC3MWheQLRv33wZAiMP0p6iC/kxU?=
 =?koi8-r?Q?TKCFX0uzVPaVGNsLjmRO0MydhyfmeblIZBUs8zlIpE2iYxy6v0pph8XcmQXgqQ?=
 =?koi8-r?Q?ANZ+SFsUSlmcWY/U4gbZPdoPLc5nFC5Ce0FObKS3N9auz5OWl76axT+f6kaZcp?=
 =?koi8-r?Q?SIP0j6JF1oT+1iGtWuUaaLiFlJ+zOR+7i6/WRLSGVlltq0D4dsMMoxO1uYS0qC?=
 =?koi8-r?Q?dIdEXsFHMeov3pwxuVsapJfPmCcEu8WNTKKHd+WZl9LZ3FcfJisHA93nbYpHHC?=
 =?koi8-r?Q?iPT57jeS6eK40gKraLOib4cnmhDCQeCwqolNcGqaiPMk//4eQc1NRkgXd4NxJZ?=
 =?koi8-r?Q?B2ol9PCzWn1Ak3YTtwqlZuMeRYsygCuhiUZujr3lFGgfLuZKdNee9wSJBOrZV5?=
 =?koi8-r?Q?N3CCZHMVeSKwprzENuH4rJF9bGqOXY1nce3KO/IiN73g1ehnZ3kIqcYx271QGm?=
 =?koi8-r?Q?3wuCekYe5Wu2uUwDAIQtB+IFDVVH7Z2WY8jh8N260cPXr9eW6XMbn786arel6R?=
 =?koi8-r?Q?lehDyyhr/9IKPUtmqTcFxRgWfWkpRFtcXSHX1uyHyOfdSCD7oMGMzKGmyCOZ6A?=
 =?koi8-r?Q?Q3HHS26c1UZYIgW5RHRDVWNV11a6mU17uBg=3D?=
Content-Type: multipart/alternative;
	boundary="_000_PAXPR08MB652725DC99C5C2ADC0A246F383E49PAXPR08MB6527eurp_"
MIME-Version: 1.0
X-OriginatorOrg: mermecste.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR08MB6527.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e47691e4-324c-438f-d595-08da1711fab2
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2022 14:38:41.3472
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c187ee01-4e4e-40c8-b342-f82c8d699421
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 VXSWMY5svdESZuwo8cinoy/PA2lYXyDgIQ5x1nH2Cmm3lfAo5sK2mIBR8CbdPyuUlPlLobqzqg2vBtfRyQkJsZwj+Ol77SzJN2bWyyoD+AA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR08MB7482
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Apr 2022 17:24:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56667

--_000_PAXPR08MB652725DC99C5C2ADC0A246F383E49PAXPR08MB6527eurp_
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

I have 3 layers:
meta-a:

meta-a
=84=80=80 recipes-my
    =84=80=80 mypgk
        =86=80=80 mypgk_1.0.bb
        =84=80=80 mypkg_rel
            =86=80=80 config.conf
            =84=80=80 mypkg.service


  *   mypgk_1.0.bb:

FILESEXTRAPATHS_prepend_$(MACHINE) :=3D "${THISDIR}/${PN}_rel:"

SRC_URI =3D "file://config.conf "

SYSTEMD_PACKAGES =3D "${PN}"
SYSTEMD_SERVICE_${PN} =3D " mypkg.service"

do_install() {
         install -m 755 -d ${D}${bindir}
         install -m 755 -d ${D}${sysconfdir}
         install -m 644 ${WORKDIR}/config.conf ${D}${sysconfdir}/config.con=
f

         install -d ${D}${systemd_system_unitdir}
         install -m 644 ${WORKDIR}/mypkg.service ${D}${systemd_system_unitd=
ir}/mypkg.service
}

meta-b:

meta-b
=84=80=80 recipes-my
    =84=80=80 mypgk
        =86=80=80 mypgk_1.0.bbappend
        =84=80=80 mypkg
            =84=80=80 config.conf


  *   mypgk_1.0.bbappend:

FILESEXTRAPATHS_prepend_${MACHINE} :=3D "${YOCTOROOT}/meta-a/recipes-my/${P=
N}/${PN}_rel:"
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
SRC_URI +=3D "file://config.conf "


I also have a meta-c layer. meta-c/recipes-my doesn't exists, i want to use=
 the meta-b one.

  *   meta-c depends on meta-b,
  *   meta-b depends on meta-a.

In meta-c layer.conf i have this:

LAYERDEPENDS_c =3D "b"

Layers priority:

  *   meta-a =3D 14
  *   meta-b =3D 15
  *   meta-c =3D 16

Every layer defines a machine (machinea, machineb, machinec)
When I build machinea, the config.conf file from meta-a is installed.
When I build machineb, the config.conf file from meta-b is installed.
When I build machinec, the config.conf file from meta-a is installed instea=
d the one in meta-b which have a higher priority.
When I build machinec I want mypkg from meta-b as-is, why bitbake use the o=
ther config.conf file?
Also copying recipes-my/* from meta-b to meta-c/ doesn't work and config.co=
nf from meta-a is installed.
If I rename config.conf to config_b.conf (changing .bbappend accordingly) i=
n meta-b everything works as axpected.


--_000_PAXPR08MB652725DC99C5C2ADC0A246F383E49PAXPR08MB6527eurp_
Content-Type: text/html; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dkoi8-r">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div>I have 3 layers:</div>
<div><b>meta-a:</b></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<pre style=3D"margin-top:0px;margin-bottom:calc(var(--s-prose-spacing) + 0.=
4em);padding:12px;line-height:1.30769;font-family:var(--ff-mono);font-size:=
13px;width:auto;max-height:600px;overflow:auto;background-color:var(--highl=
ight-bg);border-radius:5px;color:var(--highlight-color);text-align:left"><c=
ode style=3D"margin:0px;color:var(--black-800);border-radius:0px"><span sty=
le=3D"font-family: monospace; font-size: 9.75pt; line-height: normal; color=
: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">meta-a=0A=
=84=80=80 recipes-my=0A=
    =84=80=80 mypgk</span><span style=3D"font-family: monospace; font-size:=
 9.75pt; line-height: normal; color: rgb(0, 0, 0); background-color: rgb(25=
5, 255, 255);">=0A=
        =86=80=80 mypgk_1.0.bb=0A=
        =84=80=80 mypkg_rel=0A=
            =86=80=80 config.conf=0A=
            =84=80=80 mypkg.service=0A=
</span></code></pre>
</div>
<div>
<ul>
<li><span>mypgk_1.0.bb:</span></li></ul>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<pre style=3D"margin-top:0px;margin-bottom:calc(var(--s-prose-spacing) + 0.=
4em);padding:12px;line-height:1.30769;font-family:var(--ff-mono);font-size:=
13px;width:auto;max-height:600px;overflow:auto;background-color:var(--highl=
ight-bg);border-radius:5px;color:var(--highlight-color);text-align:left"><c=
ode style=3D"margin:0px;color:var(--black-800);border-radius:0px"><span sty=
le=3D"font-family: monospace; font-size: 9.75pt; line-height: normal; color=
: rgb(0, 0, 0); background-color: rgb(255, 255, 255);"><pre style=3D"color:=
var(--highlight-color);background-color:var(--highlight-bg);margin-top:0px;=
margin-bottom:calc(var(--s-prose-spacing) + 0.4em);padding:12px;line-height=
:1.30769;font-family:var(--ff-mono);width:auto;max-height:600px;overflow:au=
to;border-radius:5px"><code style=3D"margin:0px;color:var(--black-800);bord=
er-radius:0px"><span style=3D"margin:0px;font-size:9.75pt;line-height:norma=
l;font-family:monospace;color:rgb(0, 0, 0);background-color:rgb(255, 255, 2=
55)">FILESEXTRAPATHS_prepend_$(MACHINE) :=3D &quot;${THISDIR}/${PN}_rel:&qu=
ot;=0A=
=0A=
SRC_URI =3D &quot;file://config.conf &quot;=0A=
=0A=
SYSTEMD_PACKAGES =3D &quot;${PN}&quot;=0A=
SYSTEMD_SERVICE_${PN} =3D &quot; mypkg.service&quot;=0A=
=0A=
do_install() {=0A=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;install -m 755 -d ${D}${bindir}=0A=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;install -m 755 -d ${D}${sysconfdir}=0A=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;install -m 644 ${WORKDIR}/config.conf ${D=
}${sysconfdir}/config.conf=0A=
=0A=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;install -d ${D}${systemd_system_unitdir}=
=0A=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;install -m 644 ${WORKDIR}/mypkg.service $=
{D}${systemd_system_unitdir}/mypkg.service=0A=
}</span></code></pre>=0A=
</span></code></pre>
</div>
<div><b>meta-b:</b></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<pre style=3D"margin-top:0px;margin-bottom:calc(var(--s-prose-spacing) + 0.=
4em);padding:12px;line-height:1.30769;font-family:var(--ff-mono);font-size:=
13px;width:auto;max-height:600px;overflow:auto;background-color:var(--highl=
ight-bg);border-radius:5px;color:var(--highlight-color);text-align:left"><c=
ode style=3D"margin:0px;color:var(--black-800);border-radius:0px"><span sty=
le=3D"font-family: monospace; font-size: 9.75pt; line-height: normal; color=
: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">meta-b=0A=
=84=80=80 recipes-my=0A=
    =84=80=80 mypgk=0A=
        =86=80=80 mypgk_1.0.bbappend=0A=
        =84=80=80 mypkg=0A=
            =84=80=80 config.conf=0A=
</span></code></pre>
</div>
<div>
<ul>
<li><span>mypgk_1.0.bbappend:</span></li></ul>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<pre style=3D"margin-top:0px;margin-bottom:calc(var(--s-prose-spacing) + 0.=
4em);padding:12px;line-height:1.30769;font-family:var(--ff-mono);font-size:=
13px;width:auto;max-height:600px;overflow:auto;background-color:var(--highl=
ight-bg);border-radius:5px;color:var(--highlight-color);text-align:left"><c=
ode style=3D"margin:0px;color:var(--black-800);border-radius:0px"><span sty=
le=3D"font-family: monospace; font-size: 9.75pt; line-height: normal; color=
: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">FILESEXTRAPATHS_prep=
end_${MACHINE} :=3D &quot;${YOCTOROOT}/meta-a/recipes-my/${PN}/${PN}_rel:&q=
uot;  =0A=
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;  =0A=
SRC_URI +=3D &quot;file://config.conf &quot;=0A=
</span></code></pre>
</div>
<div>I also have a&nbsp;meta-c&nbsp;layer.&nbsp;<span style=3D"font-size:14=
px;background-color:rgb(255, 255, 255);display:inline !important">meta-c/re=
cipes-my doesn't exists, i want to use the&nbsp;<span style=3D"background-c=
olor:rgb(255, 255, 255);display:inline !important">meta-b
 one.</span></span></div>
<div>
<ul>
<li><span>meta-c&nbsp;depends on&nbsp;meta-b,</span></li><li>meta-b&nbsp;de=
pends on&nbsp;meta-a.</li></ul>
</div>
<div><span style=3D"margin:0px;font-size:14px">In&nbsp;meta-c&nbsp;layer.co=
nf&nbsp;i have this:</span>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri, Arial, Helveti=
ca, sans-serif">
<pre style=3D"margin-top:0px;margin-bottom:calc(var(--s-prose-spacing) + 0.=
4em);padding:12px;line-height:1.30769;font-family:var(--ff-mono);font-size:=
13px;width:auto;max-height:600px;overflow:auto;background-color:var(--highl=
ight-bg);border-radius:5px;color:var(--highlight-color);text-align:left"><c=
ode style=3D"margin:0px;color:var(--black-800);border-radius:0px"><span sty=
le=3D"margin:0px;font-size:9.75pt;line-height:normal;font-family:monospace;=
color:rgb(0, 0, 0);background-color:rgb(255, 255, 255)">LAYERDEPENDS_c =3D =
&quot;b&quot;</span></code></pre>
</div>
<br>
</div>
<div>Layers priority:</div>
<div>
<ul>
<li><span>meta-a&nbsp;=3D 14</span></li><li>meta-b&nbsp;=3D 15</li><li>meta=
-c&nbsp;=3D 16</li></ul>
</div>
<div>Every layer defines a machine (machinea,&nbsp;machineb,&nbsp;machinec)=
</div>
<div>When I build&nbsp;machinea, the&nbsp;config.conf&nbsp;file from&nbsp;m=
eta-a&nbsp;is installed.</div>
<div>When I build&nbsp;machineb, the&nbsp;config.conf&nbsp;file from&nbsp;m=
eta-b&nbsp;is installed.</div>
<div>When I build&nbsp;machinec, the&nbsp;config.conf&nbsp;file from meta-a=
 is installed instead the one in&nbsp;meta-b&nbsp;which have a higher prior=
ity.</div>
<div>When I build&nbsp;machinec&nbsp;I want&nbsp;mypkg&nbsp;from&nbsp;meta-=
b&nbsp;as-is, why bitbake use the other&nbsp;config.conf&nbsp;file?</div>
<div>Also copying&nbsp;recipes-my/*&nbsp;from&nbsp;meta-b&nbsp;to&nbsp;meta=
-c/&nbsp;doesn't work and&nbsp;config.conf&nbsp;from&nbsp;meta-a&nbsp;is in=
stalled.<br>
</div>
<div>If I rename&nbsp;config.conf&nbsp;to&nbsp;config_b.conf&nbsp;(changing=
 .bbappend accordingly) in&nbsp;meta-b&nbsp;everything works as axpected.</=
div>
<div><br>
</div>
</body>
</html>

--_000_PAXPR08MB652725DC99C5C2ADC0A246F383E49PAXPR08MB6527eurp_--

