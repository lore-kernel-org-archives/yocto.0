Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5BA0C433F5
	for <webhook@archiver.kernel.org>; Sat, 19 Mar 2022 07:43:30 +0000 (UTC)
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (EUR02-HE1-obe.outbound.protection.outlook.com [40.107.1.80])
 by mx.groups.io with SMTP id smtpd.web11.4919.1647675807753565013
 for <yocto@lists.yoctoproject.org>;
 Sat, 19 Mar 2022 00:43:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=VRH8na4X;
 spf=pass (domain: optimeas.de, ip: 40.107.1.80,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mvknSBRnScDkfIdNuhBYUBt7rBvlvM6tBULIuLDuzNxq+GDg+hcj9gmRBewOL+NJqUcFNj8AzjAMQzsj8WEWdHrz/YM8xoh/JM/WQtIPPrKbVPjLBsIkzt8s4MDoqnSu0zqQWjZko2zQYiCxxMsSzyhVN1zqliLWijveTNeWvvO8oyDYOgYCOSlO2I8142AUIm9DqOFDoNlU6CRHMgXXspAil3/1MEUA3LzOWEKYJixL7AtpTIPn9d6sXKg57vS1re0cCJ3CVwFnnhRGsyXvod5CC50huMWpyM51d6Yj+5LzeY8cccsJFJZKzc574U2S9boA1wJgzIW4/+sH0fOPsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t4U0tNzqr4Mj6BhdzD3DU5cRtPbNbeIc5iy7KIEhEDQ=;
 b=oM+QVS/o9ZXw9gridc4QIVN4B00/AvKI31rFB4yJPtdphp71+lb4fhToMLcMcDzjKg/w9YEpg3PAkAyvCJfrZ2zFve7PXqw7RgnLcIi7zwYy80CtgHfckyhpJ0QAVVtxhLpMHfhiAzgrLAEzOU16d/ooMhYqs4phkZ8LW/Db+Ofgck3gb/W/ITgO0BlnoWm048H+X7O0o6Ftz6zAu24a/sSThVERF7os79nHH2BFXSi7oZVU7Tyg42vhl5CqHdS5RtLq4NPJXVcMcDbZmpLmACj3iwKkO+qiJ2cFfY8sinBcxU6kRtYU9RLUkRI7CobAq+m/GAqRq4feAiZCl5ouXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t4U0tNzqr4Mj6BhdzD3DU5cRtPbNbeIc5iy7KIEhEDQ=;
 b=VRH8na4X36TUGNFic88QwGvo9aIjiDWiJFKXMTUdOjnuj0BgTpRy0n2Q/qAmfbO1qwN1Z3ilDg7P5ZEFwapg0b8F18fEsLrr/m2Huim3hDWqtv75HxH9pF5gC0oUmkyKIaaOHJa6iHefvSloWp+4A5dmSU3VEEK8HCs9CDpn+FQ=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by DU2PR10MB5077.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:2d4::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.18; Sat, 19 Mar
 2022 07:43:22 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e5f9:550e:18dd:7fa]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e5f9:550e:18dd:7fa%7]) with mapi id 15.20.5081.017; Sat, 19 Mar 2022
 07:43:22 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "ManWag@FastMail.FM" <ManWag@FastMail.FM>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: AW: [yocto] qemu: Enable guest access to the internet
Thread-Topic: [yocto] qemu: Enable guest access to the internet
Thread-Index: AQHYOyY33Ej43AtHmEKmssNfP+mwfKzGUwcw
Date: Sat, 19 Mar 2022 07:43:22 +0000
Message-ID: 
 <AM0PR10MB3107E3DC28B5E7C518228C3C99149@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: <ecb915d5-3d42-40a7-bae9-268455e9fd5a@www.fastmail.com>
In-Reply-To: <ecb915d5-3d42-40a7-bae9-268455e9fd5a@www.fastmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6efc1168-12e0-4528-572c-08da097c2508
x-ms-traffictypediagnostic: DU2PR10MB5077:EE_
x-microsoft-antispam-prvs: 
 <DU2PR10MB5077963A61307275E07D63E399149@DU2PR10MB5077.EURPRD10.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ClPcgzdYOure+Bu3/rGg1RTvxm5vbNldVqFofLvmz0MtdeNKqjsAYONwWg1zuuVmfEawo1riIqm5p3bm77AQIhE1d5yyzoxk6SkPT2CsWC7O+2JW9TFj6FevHQ2K6o+XmaRCK3isg4nylUnmxOwA9Fb+bHbnOd4qJWlgWRzFBNj82g4CyI6ShIXgIsEHOuY/W93431FPdFXrVTDA9SaEN3ZM1AlyuikNksd5dDBPZBUXCQ2RjbUesFQ7GZzvEx1v0tHNAsvKcVxTcihadaw0IgEqN+u+IYi12xGG8VvUgBjrXol32isZqmQkVeeGkiMDBKzdle3NEp//zyh3EMv5tTTKZH8nWBlElcEMWtqRxLd3VNqF06DcLdxAssWUfedHsb9L/mdCrfp4162pIV9cKMnQxkZMCU548YHQgpyLVQp5oKePJe4q3jXvyaL3FYkYVOWd3alxv+DcoXmTukuBQKqsbLG+YGaOgvpW8RWnRHKI1JwXKMhufhvYoD1lC0Qua14DiGdVZ6waX1uKnkOAphtCejUXswu9ed1d5UwIZgUEjQdfWnSxcNdocO5zKvnFnwXxvDPKqrNcOZTnOzOWVbFzQNJ8wAZUCAsWB006fXkgO0RAoChzQ8uil8Zh55dHLi1b+t35IIh+2YapZJp2RTrK0gB3AeTrdh4IkE1HxgYtbqEdhDFSOZUfyLXm8ieurD3X5IvFU6RP1WMI6xzZkxAlIInqBq4gXCifQ9yRq3/f29A6VTGtziO5wI45fkhX5awgQHH1DOeHbIkDSH+V/niXklkcJocIKrJ+LQ416rw=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(366004)(39830400003)(136003)(376002)(346002)(396003)(5660300002)(71200400001)(186003)(52536014)(8936002)(122000001)(38100700002)(55016003)(66574015)(110136005)(83380400001)(86362001)(64756008)(66446008)(66476007)(66556008)(66946007)(8676002)(76116006)(316002)(2906002)(6506007)(7696005)(966005)(9686003)(38070700005)(33656002)(44832011)(508600001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Xjccm/myuk2CHBTV1nRjyZ+P1CbyWmlKpRheOViSOxBXW8L9vn4DBe9odU?=
 =?iso-8859-1?Q?/y9keGPoXLuiH1m95vMDlcKy/Y3Be1KQhoyIQQJAECJK0fLCzWhl7yy1Y+?=
 =?iso-8859-1?Q?zrQhgWSd2ShKhryhMgcp0C8br1M06QDUF2m4GljRtOcC4cqc8Rxl5g9gyi?=
 =?iso-8859-1?Q?8PzT5FuUtr2GKmZTPaofoUrLGZTbCNDWKxJqfyCj1BKeTFvtW0bftz0VuB?=
 =?iso-8859-1?Q?XDEoUUYDg/FJKLjGfz9Y0jFXnNCcJCSmEECgUsd/dctzjeXJZdwHAXOMWx?=
 =?iso-8859-1?Q?E9w9BpHNAulhyYvO8pHF2SVsfnNwomu1kg3oQQNer2vGzzLCkx41OXv0n/?=
 =?iso-8859-1?Q?L6zUHzwARXVEJ5b1qhQd7peeQ0+iRtU+R7C3SDCfdMNV3n5JkoMFo14JMN?=
 =?iso-8859-1?Q?+RU8+Drk2rGLvGId94jsSzyfyFQ6vqIme+/JE1w1Vz70y5aPw7y3ufrs/y?=
 =?iso-8859-1?Q?n1zhFwfcPnh224hrkw42LnKgCV70+m39ITD2ZuWTIAi8eZ+gdxOuHd9zve?=
 =?iso-8859-1?Q?adoFFRZafsqwIV+QhZPiqW9KPHiH3P+iyvEbj3J8BNoV4Ua2G4L49dpI1k?=
 =?iso-8859-1?Q?7QsrbnVFR2+YGAEgjNmCTi4r3oeopcTnMmFvwwnXB3YIx0lMNNMnfiWaKe?=
 =?iso-8859-1?Q?azuHEVyxGE2uSeogx17fJSJdEmL/+EnONXkEU68/B26uGE1IkZKoMEo0/Z?=
 =?iso-8859-1?Q?o6v2/XzHvJzwqFoNPNPun9rZ+sVK6GYSIvU8ZrdXxSXjH2R871A3pkTE0y?=
 =?iso-8859-1?Q?LrFCafWuPi0PXvvbWydExPMg/O0uiCdEHIqJhskHBww6x1RpVGcFHe2WIY?=
 =?iso-8859-1?Q?d7ZHedDP/6+ewR7U3Db7XI7HnJdj5oBivs/diF1Of4snCMqB4POD+B8vno?=
 =?iso-8859-1?Q?x7o/KRN47zBObSqHsrtVz9sJotnXz67AffdtSLwW5IuQWtiAjexdfBMU/J?=
 =?iso-8859-1?Q?Eq9zvqSvIvV7P0TnFc5MnsLLVLltwEqYDwHCDouHgzxSLTZh9sirLPSO1C?=
 =?iso-8859-1?Q?QoN6PzIyfS41CoHjqtubTBWVfl4mkqfjyurWpFMEtXlCKAdPXTegYdjk53?=
 =?iso-8859-1?Q?YFRHBfLTuv720E1h1xUnSeXD5zTlfhw6lVKVSHG7wVJMZaZggq5mgowCrD?=
 =?iso-8859-1?Q?RCbV2qDUHvg7OnPBXmjfXgpLOtQpPv9wTvqK8uGZwBtd5/h+NXuupsXRS2?=
 =?iso-8859-1?Q?DrQMMoLv0C40VTAmoh0KQSL/rOuR9MnPsobCFbmNguO2+vSe3uUj1NejDe?=
 =?iso-8859-1?Q?8tA32Kyeqvb8f5u65ctG2I0irE7nHXR9IASD4vI4w6DRreVzwLScJytFSk?=
 =?iso-8859-1?Q?HLrFnR4Vz7ElNdpmv7T2uU/4eC2wXDHdMLtd9+3CPKBomHOzbjrW54Gte7?=
 =?iso-8859-1?Q?8IuvxyYEwk2wZH3z3LNZoLo/fWVTL8FvGLUEiaciKCTpCyCSnCUU38PsQp?=
 =?iso-8859-1?Q?VcQbPPA2S6d+3YFQfVdlfw2r+yFzn6jvbVHFhle50L20U++efDRPMhzba0?=
 =?iso-8859-1?Q?Qe5seaw5EbQ8Zl9BgxgTd2uvGJeKl9e3NC0FlP7/gTfMeROpgi9naHKoEj?=
 =?iso-8859-1?Q?gloaM0ZIDODFvBjn/R7TcbWeADyGnsNODBJTd+P9dVFZbCyzHQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 6efc1168-12e0-4528-572c-08da097c2508
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2022 07:43:22.7307
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 VEs7kGSmrkxgE05fzQu2hFOmfCIhvw4eGMnpKDTFhsYS4NQXhXro2zaNikneGrGc7dwNIoVifz5hiQ5+T7u0BZU3ILE0K+W5S1m0E2bsxls=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR10MB5077
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 19 Mar 2022 07:43:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56502

Hello Manuel,

the last time I tried, I had to set the IP 192.168.7.2 and the gateway 192.=
168.7.1 in the guest.

Then everything worked through the tap device.

Best regards,
Matthias

-----Urspr=FCngliche Nachricht-----
Von: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> Im Auftrag=
 von Manuel Wagesreither via lists.yoctoproject.org
Gesendet: Samstag, 19. M=E4rz 2022 01:13
An: yocto@lists.yoctoproject.org
Betreff: [yocto] qemu: Enable guest access to the internet

Hi all,

I would like to configure my host to allow the yocto-built qemu guest acces=
s the internet. I'm running qemu with kvm virtualization and slirp, and acc=
ording to [1] it should just work. I'd like to find out why it doesn't.

[1] https://www.linux-kvm.org/page/Networking#User_Networking

Here's the current situation:

* The guest has ip 10.0.2.15 and can ping my host with `ping 10.0.2.2`.
* The host has no ip 10.0.0.0/16.
* The guest cannot ping my hosts only ipv4 interface (besides lo) `ping 192=
.168.178.24`.
* The guest cannot ping devices in the same LAN as my host: `ping 192.168.1=
78.101`.
* The host has sysctl configured like so:

    net.ipv4.conf.all.accept_source_route =3D 1
    net.ipv4.conf.all.send_redirects =3D 1
    net.ipv4.ip_forward =3D 1
    net.ipv6.conf.all.accept_source_route =3D 1
    net.ipv6.conf.all.forwarding =3D 1

* The hosts routing table:

    Destination     Gateway         Genmask         Flags Metric Ref    Use=
 Iface
    0.0.0.0         192.168.178.1   0.0.0.0         UG    600    0        0=
 wlp3s0
    169.254.0.0     0.0.0.0         255.255.0.0     U     1000   0        0=
 wlp3s0
    192.168.178.0   0.0.0.0         255.255.255.0   U     600    0        0=
 wlp3s0

* runqemu starts qemu with hostfwd=3Dtcp::2222-:22. That is, qemu is instru=
cted to on the host listen on port 2222 and forward packets to port 22 of t=
he guest.
* From the host I can ssh into the guest with `ssh root@localhost -p2222`.

When the ssh connection is up, `netstat -tupen` on the host prints

    Proto Recv-Q Send-Q Local Address           Foreign Address         Sta=
te       User       Inode      PID/Program name
    tcp        0      0 127.0.0.1:2222          127.0.0.1:37548         EST=
ABLISHED 1000       34788      2301/qemu-system-x8=20
    tcp        0      0 127.0.0.1:37548         127.0.0.1:2222          EST=
ABLISHED 1000       40091      2331/ssh

`netstat -tuen` inside the guest prints

    Proto Recv-Q Send-Q Local Address           Foreign Address         Sta=
te      =20
    tcp        0      0 ::ffff:10.0.2.15:22     ::ffff:10.0.2.2:37548   EST=
ABLISHED


Has anyone any ideas?

Thanks, regards,
Manuel

