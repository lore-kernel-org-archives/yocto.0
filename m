Return-Path: <Logan.Grosz@b9c.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3FA2D43371
	for <webhook@archiver.kernel.org>; Thu,  7 Nov 2024 15:34:45 +0000 (UTC)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (NAM04-BN8-obe.outbound.protection.outlook.com [40.107.100.134])
 by mx.groups.io with SMTP id smtpd.web10.75054.1730993675565960449
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Nov 2024 07:34:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@b9c.com header.s=selector1 header.b=WfMIE+71;
 spf=pass (domain: b9c.com, ip: 40.107.100.134, mailfrom: logan.grosz@b9c.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RmOqaq+SGKvEynx4QX+GChfg6+Gh4l1P/4YBBg/ftmMpm3wHESNTf+93QmiW/l4/qkwzEqMuUk0bHY5CRXFQvOLsgcb5SLuBsHSj5Gk7TJufQe5pvBXGfrUd18z36ho3ubQytdz/OeWnFol8BYh6SKAzb9oziFFXgJ+D4YgiXJjBn4Z8K8Tj2avC4httcRbApw4AMWyJ/VzcXl0J4xIwp0QKGi9ZuS9ld9R5f3b8fAck/gWwl9HSgU3+MU16IdOfkO3MHAg628QGoSQXiVuPhFRAavzHYqV/4qYN072N0DZN3olBDdtEgecAta/ivuEkURXqiZ4ybLA2EcWkV0USZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UifpIADXnC3RdA//6TNjlPjgOXhTd44iFIIMd1vfr1g=;
 b=ka87jPpqDi6tZpJ+fGDMWze2OvG4cVtsjnUoqFvHiJ9ICJsmijBUzGoyZSCfaUBGi3x1Lm8KtMWO3cZqXQF7Bb8Le94aVKWlDfrBNmSQXJY5VQ4hwQFETXw3xdN2lxMO63BsuJjbyww1pZ7oW5s6jDCVS7h5WAFdDgjkIB5ewqGAQzWU68egPmZATxQletyVPoBxCw4FfEP9qxMrZSygYaWsBPYIZsRTumtpB2+z3pe+usqdoUtS8wSWnQ15IQEtqxSGeLuax/PQDagZcGJOjZ5ijXyS8jlV1SX0FEwLY++KTlnAGWO18Nx9rQkZWv50JSLDI6CyqV6RQQ7aqBKEew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=b9c.com; dmarc=pass action=none header.from=b9c.com; dkim=pass
 header.d=b9c.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=b9c.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UifpIADXnC3RdA//6TNjlPjgOXhTd44iFIIMd1vfr1g=;
 b=WfMIE+71Z9nUGgXef1/hZ/Umd0mYeFH0XYi9GaRarO/RyZw+q61MmmbaaX5ZnGQvNGv1hHTfwhO7JFrrqgkLXY6cEy+9GC8wU/q2RYwn6B8xy0WsHzHz5sJTCOmd7BIlFwvkTyuPjD3SYNZeNzMMASERV+MYgVd62n7jtHbFj/4=
Received: from MW4PR16MB5087.namprd16.prod.outlook.com (2603:10b6:303:1be::18)
 by MW6PR16MB5541.namprd16.prod.outlook.com (2603:10b6:303:24a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Thu, 7 Nov
 2024 15:34:31 +0000
Received: from MW4PR16MB5087.namprd16.prod.outlook.com
 ([fe80::dd82:bdb7:3ca1:2b8]) by MW4PR16MB5087.namprd16.prod.outlook.com
 ([fe80::dd82:bdb7:3ca1:2b8%4]) with mapi id 15.20.8114.028; Thu, 7 Nov 2024
 15:34:31 +0000
From: Logan Grosz <Logan.Grosz@b9c.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Conditionally set SYSTEMD_SERVICE_${PN} based on version of another
 package
Thread-Topic: Conditionally set SYSTEMD_SERVICE_${PN} based on version of
 another package
Thread-Index: AQHbMSmFn2uCk95IKU6w+uInypq9tQ==
Date: Thu, 7 Nov 2024 15:34:31 +0000
Message-ID: 
 <MW4PR16MB5087DC4C691E4B6A0F1F2070BB5C2@MW4PR16MB5087.namprd16.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=b9c.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR16MB5087:EE_|MW6PR16MB5541:EE_
x-ms-office365-filtering-correlation-id: ce535f1c-2465-4f54-9905-08dcff41acc6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|366016|1800799024|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?fu0U2ipNDX0UnloIiQjsU/NxkJlTFeJGjDmiv7frnFD/WVkbPcTSrmM+W5?=
 =?iso-8859-1?Q?ltZ74qg9k4wPGvAYtyIlvFiOoHXf1jFZwWeHjd+ka1rYgahJDtgZIBCPJ0?=
 =?iso-8859-1?Q?xMNVFYqfzSmor+1XHFFcTv0IvA26a/fpO85MNMwBjWP5rkfv5Wqev8du8D?=
 =?iso-8859-1?Q?EdmHM+G/WlcCGGueTsbmg0biFARO6ZezNX1ufAVvUyabUr5Debaw0eCLu1?=
 =?iso-8859-1?Q?cj9u09y+Lpxko+0oZuNzALigTo3b3iFE37dP9cu4ks93SCcJs+eD490RL3?=
 =?iso-8859-1?Q?p8ov9qpBbDzHPflZxS8psyv+02DGgq8Sv1viVdN/o8qEoQrq1+11BWJ3g7?=
 =?iso-8859-1?Q?L7qZMY0NWQLqfqSx4VDDihFaKXpceP54pHVIwrBAqOLXc2jVzIzqwvwPly?=
 =?iso-8859-1?Q?Xe7MerTgBIncgNQMPXS44p14ZiYoH7+NUHAMpbAbRFHLDXv5A2dCB5Y3Ib?=
 =?iso-8859-1?Q?lAxugAV52VUe6JDcuLIvlkr7/M5mecOVSliatphJYQBctpjZwxg+60457c?=
 =?iso-8859-1?Q?xFsTr6+4Ugp4DXHcqKQ9mkEVOx2VX0Y+wX2l4ppjyhCxDk8gPPWe+y3pio?=
 =?iso-8859-1?Q?N3SPR5QENZ2ziZE1KhWS2HgTTKQkbicp9Uv4lVEbs3LXvDx4bjaIwC3x6n?=
 =?iso-8859-1?Q?AyvoMD2f8nIwbY2jzSIkUc7F+b9mpJSrLcD8sPVEsVpk6mnDX1U15efI3N?=
 =?iso-8859-1?Q?dlvJ1cMoZ5VHdwaxYm5h4FIvtfwj+W4mEtRcu+um3mh61hwj0o2SjHY9dd?=
 =?iso-8859-1?Q?rp5SIhtTGN9fCwhTBQ8zt66TUYVTX19Rx+AAvyWRhzY1y9nX6zQPBYyjJl?=
 =?iso-8859-1?Q?4gg5DLBcxxlnUO0epeB+cyykx6KyZvIz4mRvYcCTQYbDufYzaq3cKG8CKr?=
 =?iso-8859-1?Q?+KUu+Y2ZAPFrkZEPz2ClqoueM6oWz9mrTuQTxBud9qM2SwrbBqZuPZ+nA1?=
 =?iso-8859-1?Q?g36N1Iu+epXFyITTHtZxlvUflXGLqMDLIWcu0zDpHPuLd4tRVCyUboYefh?=
 =?iso-8859-1?Q?K1Ko3gGuQ26YmOBlh5b3ZOOHkbK9CANF+B2RdLnk8LkOqiJY+BE0joaeOY?=
 =?iso-8859-1?Q?GeIgxaKn6z9QgXNDVsqaBBQrzGYm8tl4foOogSLqGCL6tQw4R3iTbCGJdw?=
 =?iso-8859-1?Q?IEaTNn4PJc/nLCdrQtHU/IHOtYrMMVO3rY03tAXFHguxF4ERrEuMNcEq93?=
 =?iso-8859-1?Q?I3SJ30JdLTMZA58Bg1bH5d7fdEIrFIt6u8hkdOcS9s46YSoxMRV0QUU/mb?=
 =?iso-8859-1?Q?79DX/C4D7ZqXUsF4hvWmFQJfEHGbQbyl61jyke7bbmIZ1YYSL/w9IKVOOX?=
 =?iso-8859-1?Q?Bk+2z5yqlBvJU/qVurUESzosExobka1pJRHN5bjqHLI9wlAlPRcSdgJ8Gz?=
 =?iso-8859-1?Q?3M9d3QX+j/N1C1OF8cb/XoNrrU5PSGF7ZZKIUYt/Ug3qgdbcKGQXI=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR16MB5087.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(8096899003)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?gY+UZA2UCwYYEm/E8zS6N+kioaXrRqPQ+KUBw5FZuPIkhRVa7X7C4QBC4u?=
 =?iso-8859-1?Q?2G0qBtS7/Fj9EoOZawQaArPei/3ra3/nPjUU7Ag/tgOuBlKktZ7uPZESaU?=
 =?iso-8859-1?Q?ofYTwkcK5Cj7TOeOxcUoNOCWVFbRcyNHonSxEsxmU5vXGS+JeMP3K+LltW?=
 =?iso-8859-1?Q?8uSNnBlLd7vKVXJyrZT27n2fwBjZflXmNJfUsYDz8QgEiD6KGHwYv3kNgX?=
 =?iso-8859-1?Q?rXZqcX06CqHiRWHkL/sbI4M7jqXu40uEL5IUBqDxYE28inCa6l94PKKdXf?=
 =?iso-8859-1?Q?3ilJDmha3Uiwoe+UV/K+O5sMyDkDtJG92NB/5KbdKRRShdTWmFr1z8lKMD?=
 =?iso-8859-1?Q?+6aL/IFJGSAnNP6XETTE22sOHhJpn0E/Qr2co0PbyH0kAbPb4J9xPS0RaK?=
 =?iso-8859-1?Q?lOfkq6RXBZiJNlH3KOHMnfPesZk/vs+t6Ls7TThvf6w85hYSVIXT7s3fY7?=
 =?iso-8859-1?Q?N6VfifYph0sZJVX+p+ROMasWCgzcsyL3fZzT0j9WEcj8xxz9qirPEPJtWU?=
 =?iso-8859-1?Q?bwqR6L9Uyq+wbXpu6cf5wWMQsi12tGoCndVwh03zCIyic90DqpfZJbQNxg?=
 =?iso-8859-1?Q?H1uyXdu48nnsxsmLGPRlGnN6dHjAIXKoXnMZI3QsiWq+oovqLSbGk3KcAB?=
 =?iso-8859-1?Q?GitaG7O7C4i20KLC/8xEC+Wcreio0MTW9FcA0t24KKsDBDUn1qkBCkAN4f?=
 =?iso-8859-1?Q?g2IFIcl/9kZowL/9Br9d0NST1EV67t44LCxc8fqaAjt/baFgGHe1f2glV+?=
 =?iso-8859-1?Q?L+5Agdl2owsE8j21T2OmAu0eFQV+rsRdsok8xEaeBGmecKmRy/YQAVnkB5?=
 =?iso-8859-1?Q?H9FeGkmTnh73ewFNFsOvoZZXGJ9xd+F5nLTU1RqF2coilAFgnSAqpzjgLa?=
 =?iso-8859-1?Q?9OCzZhAo48lUcbprqL+5MB4Wc9ji47SpfD8KsaGmguMtAu9pA6+OBEUiRO?=
 =?iso-8859-1?Q?KxdFgk7YcgaymY/Gy5Fn3N7ygxLo8/dh4zPjw0w4L16quUYLx1oQlgJK7i?=
 =?iso-8859-1?Q?9+PwvR2isEYL053G1p91SQurItpmx2+5igjRN/C9Kv3h7dtk8xdyk5EiXL?=
 =?iso-8859-1?Q?rNhQ316cWhkITQRiC+6qetpZhyO9/5sBE5kqaEJqUePogK6S847GpTkZxl?=
 =?iso-8859-1?Q?DSv21xD530WjNpUuhFW7srLWALm6PSvDRBgUqFsD8+0gKSZWTUybcUykkB?=
 =?iso-8859-1?Q?/QfA+rEHGMQ7S1zYImWYmsZDEmiNo2PauaZVBza8TdBLoJGbs1zsWSeOTa?=
 =?iso-8859-1?Q?JUii8FeRqGfbrkktn+msazbageL7D4WE58b9hueS20YyY/zVWfNyCbPGip?=
 =?iso-8859-1?Q?xwsRTdEENWxfvzq/xJfLHaooKZ3gCVJv/d0yD6cQH88zLj+LsYYRqCBvMy?=
 =?iso-8859-1?Q?DWc/5zHNQlNjBheD0VJWSS1ixIaO+uxKsunPmV+RKqTi+bEa5sQR5LJ5IB?=
 =?iso-8859-1?Q?em4PRrQHNH498OSYk4ti6qn7TJIRttP/1kkC94XkvN5oCDo1GWW9Y4VBnc?=
 =?iso-8859-1?Q?kSVF71BMd7T2JynUONtaSj+q6/HQWgY185tnzKRFlBsnvp+HLYV5N9R2tb?=
 =?iso-8859-1?Q?b9CX/D2DSYHfCLk45tczpAKHvB3HicAM7rgxdxf2RXEks7hLsd6xfDn5Fe?=
 =?iso-8859-1?Q?ZnU4VecBW6pKnMepWhGfMQHjwrKMxt4O5j?=
Content-Type: multipart/alternative;
	boundary="_000_MW4PR16MB5087DC4C691E4B6A0F1F2070BB5C2MW4PR16MB5087namp_"
MIME-Version: 1.0
X-OriginatorOrg: b9c.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR16MB5087.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce535f1c-2465-4f54-9905-08dcff41acc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2024 15:34:31.5962
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3ace18e3-3825-4b3e-be2a-b5c73f048d39
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 14lcy17LCOxeGUTRxICar4EW3qFnFwE54+rRgXxQD1DJWVen3GaNfJmiQiilTKU6EW3VKsgDnLfP7GHg0XLc8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR16MB5541
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Nov 2024 15:34:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64231

--_000_MW4PR16MB5087DC4C691E4B6A0F1F2070BB5C2MW4PR16MB5087namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi, all

My company is trying to migrate a newer version of Yocto and in an effort t=
o do that I am making changes to our current layer to facilitate an easier =
transition. One problem I encountered was SystemD 250 installs a target fac=
tory-reset.target, but we already have a recipe that installs a that same f=
ile. The recipe is as follows

```bitbake
LICENSE =3D "CLOSED"
SUMMARY =3D "A factory reset target"
DESCRIPTION =3D "A recipe which provides a common means of creating factory=
 reset \
    tasks. Each application should attach to this target in order to perfor=
m \
    any tasks when the device needs to be reset."

SRC_URI =3D " \
    file://factory-reset.target \
    file://factory-reset-reboot.service \
"

SYSTEMD_SERVICE_${PN} =3D " \
    factory-reset.target \
    factory-reset-reboot.service \
"

do_install() {
    install -d ${D}/${systemd_system_unitdir}
    install -m 0644 \
        ${WORKDIR}/factory-reset.target \
        ${WORKDIR}/factory-reset-reboot.service \
        ${D}/${systemd_system_unitdir}
}

inherit systemd
```

I figured I could get the version of systemd through its installed pkg-conf=
ig, but I'd need to modify the content of `SYSTEMD_SERVICE_${PN`, so I trie=
d this

```bitbake
LICENSE =3D "CLOSED"
SUMMARY =3D "A factory reset target"
DESCRIPTION =3D "A recipe which provides a common means of creating factory=
 reset \
    tasks. Each application should attach to this target in order to perfor=
m \
    any tasks when the device needs to be reset."

DEPENDS =3D "systemd"

SRC_URI =3D " \
    file://factory-reset.target \
    file://factory-reset-reboot.service \
"

python __anonymous() {
    import subprocess

    try:
        output =3D subprocess.check_output(["pkg-config", "--modversion", "=
systemd"]).decode("utf-8").strip()
        systemd_version =3D int(output.split('.')[0])
        d.setVar("SYSTEMD_VERSION", systemd_version)
    except (subprocess.CalledProcessError, ValueError):
        bb.warn("Could not determine systemd version. Assuming version < 25=
0")
        d.setVar("SYSTEMD_VERSION", 249)  # Default to 249 if systemd versi=
on cannot be determined
}

SYSTEMD_SERVICE:${PN} =3D "factory-reset-reboot.service"
SYSTEMD_SERVICE:${PN}:append =3D "${@ ' factory-reset.target' if int(d.getV=
ar('SYSTEMD_VERSION')) < 250 else '' }"

do_install() {
    # systemd 250 introduces factory-reset.target for the same reasons we c=
reated it in the first place
    if [ ${SYSTEMD_VERSION} -lt 250 ]; then
        install -d ${D}/${systemd_system_unitdir}
        install -m 0644 ${WORKDIR}/factory-reset.target ${D}/${systemd_syst=
em_unitdir}
    fi

    install -d ${D}/${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/factory-reset-reboot.service ${D}/${systemd_=
system_unitdir}
}

inherit systemd pkgconfig
```

Obviously, this has troubles at the parsing stage.. so, this won't work. I =
was wondering if there was a nice solution to this problem so I can make my=
 recipe compatible with both layer versions during the migration.

Thank you,
Logan

--_000_MW4PR16MB5087DC4C691E4B6A0F1F2070BB5C2MW4PR16MB5087namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi, all</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
My company is trying to migrate a newer version of Yocto and in an effort t=
o do that I am making changes to our current layer to facilitate an easier =
transition. One problem I encountered was SystemD 250 installs a target
<code>factory-reset.target</code>, but we already have a recipe that instal=
ls a that same file. The recipe is as follows</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"direction: ltr; margin-left: 40px; f=
ont-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvet=
ica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
```bitbake</div>
<div class=3D"elementToProof" style=3D"direction: ltr; margin-left: 40px; f=
ont-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
LICENSE =3D &quot;CLOSED&quot;</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
SUMMARY =3D &quot;A factory reset target&quot;</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
DESCRIPTION =3D &quot;A recipe which provides a common means of creating fa=
ctory reset \</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; tasks. Each application should attach to this target in order=
 to perform \</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; any tasks when the device needs to be reset.&quot;</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
SRC_URI =3D &quot; \</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; file://factory-reset.target \</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; file://factory-reset-reboot.service \</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
&quot;</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
SYSTEMD_SERVICE_${PN} =3D &quot; \</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; factory-reset.target \</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; factory-reset-reboot.service \</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
&quot;</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
do_install() {</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; install -d ${D}/${systemd_system_unitdir}</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; install -m 0644 \</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; ${WORKDIR}/factory-reset.target \</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; ${WORKDIR}/factory-reset-reboot.service \</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; ${D}/${systemd_system_unitdir}</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
}</div>
<div style=3D"direction: ltr; margin-left: 40px; font-family: &quot;Aptos M=
ono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 1=
2pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"direction: ltr; margin-left: 40px; f=
ont-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvet=
ica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont, Apt=
os_MSFontService, monospace;">inherit systemd</span><br>
```</div>
<div class=3D"elementToProof" style=3D"direction: ltr; margin-left: 40px; f=
ont-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvet=
ica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"direction: ltr; margin-left: 0px; fo=
nt-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I figured I could get the version of systemd through its installed pkg-conf=
ig, but I'd need to modify the content of `SYSTEMD_SERVICE_${PN`, so I trie=
d this</div>
<div class=3D"elementToProof" style=3D"direction: ltr; margin-left: 0px; fo=
nt-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"direction: ltr; margin-left: 40px; f=
ont-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvet=
ica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
```bitbake</div>
<div class=3D"elementToProof" style=3D"direction: ltr; margin-left: 40px; f=
ont-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService=
, monospace; font-size: 12pt; color: rgb(0, 0, 0);">
LICENSE =3D &quot;CLOSED&quot;</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
SUMMARY =3D &quot;A factory reset target&quot;</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
DESCRIPTION =3D &quot;A recipe which provides a common means of creating fa=
ctory reset \</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
&nbsp; &nbsp; tasks.&nbsp;Each application should attach to this target in =
order to perform \</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
&nbsp; &nbsp; any tasks when the device needs to be reset.&quot;</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
<br>
</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
DEPENDS =3D&nbsp;&quot;systemd&quot;</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
<br>
</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
SRC_URI =3D &quot; \</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
&nbsp; &nbsp; file://factory-reset.target \</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
&nbsp; &nbsp; file://factory-reset-reboot.service \</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
&quot;</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
<br>
</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
python __anonymous() {</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
&nbsp; &nbsp; import subprocess</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
<br>
</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
&nbsp; &nbsp; try:</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; output =3D subprocess.check_output([&quot;pkg-c=
onfig&quot;, &quot;--modversion&quot;, &quot;systemd&quot;]).decode(&quot;u=
tf-8&quot;).strip()</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; systemd_version =3D int(output.split('.')[0])</=
div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; d.setVar(&quot;SYSTEMD_VERSION&quot;, systemd_v=
ersion)</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
&nbsp; &nbsp; except (subprocess.CalledProcessError, ValueError):</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; bb.warn(&quot;Could not determine systemd versi=
on. Assuming version &lt; 250&quot;)</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; d.setVar(&quot;SYSTEMD_VERSION&quot;, 249) &nbs=
p;# Default to 249 if systemd version cannot be determined</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
}</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"margin-left: 40px; font-family: &quo=
t;Aptos Mono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; fon=
t-size: 12pt; color: rgb(0, 0, 0);">
SYSTEMD_SERVICE:${PN} =3D &quot;factory-reset-reboot.service&quot;</div>
<div class=3D"elementToProof" style=3D"margin-left: 40px; font-family: &quo=
t;Aptos Mono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; fon=
t-size: 12pt; color: rgb(0, 0, 0);">
SYSTEMD_SERVICE:${PN}:append =3D &quot;${@ ' factory-reset.target' if int(d=
.getVar('SYSTEMD_VERSION')) &lt; 250 else '' }&quot;</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
<br>
</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
do_install() {</div>
<div class=3D"elementToProof" style=3D"margin-left: 40px; font-family: &quo=
t;Aptos Mono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; fon=
t-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; # systemd 250 introduces factory-reset.target for the same re=
asons we created it in the first place</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
&nbsp; &nbsp; if [ ${SYSTEMD_VERSION} -lt 250 ]; then</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}/${systemd_system_unitdir}</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; install -m 0644 ${WORKDIR}/factory-reset.target=
 ${D}/${systemd_system_unitdir}</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
&nbsp; &nbsp; fi</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
<br>
</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
&nbsp; &nbsp; install -d ${D}/${systemd_system_unitdir}</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
&nbsp; &nbsp; install -m 0644 ${WORKDIR}/factory-reset-reboot.service ${D}/=
${systemd_system_unitdir}</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
}</div>
<div style=3D"margin-left: 40px; font-family: &quot;Aptos Mono&quot;, Aptos=
_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(=
0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"margin-left: 40px; font-family: &quo=
t;Aptos Mono&quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; fon=
t-size: 12pt; color: rgb(0, 0, 0);">
inherit systemd pkgconfig</div>
<div class=3D"elementToProof" style=3D"direction: ltr; margin-left: 40px; f=
ont-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvet=
ica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
```</div>
<div class=3D"elementToProof" style=3D"direction: ltr; margin-left: 0px; fo=
nt-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"direction: ltr; margin-left: 0px; fo=
nt-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Obviously, this has troubles at the parsing stage.. so, this won't work. I =
was wondering if there was a nice solution to this problem so I can make my=
 recipe compatible with both layer versions during the migration.&nbsp;</di=
v>
<div id=3D"Signature" class=3D"elementToProof" style=3D"color: inherit;">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thank you,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Logan</div>
</div>
</body>
</html>

--_000_MW4PR16MB5087DC4C691E4B6A0F1F2070BB5C2MW4PR16MB5087namp_--

