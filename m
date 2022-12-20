Return-Path: <Antti.Garding@etteplan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05B25C10F1E
	for <webhook@archiver.kernel.org>; Tue, 20 Dec 2022 08:38:12 +0000 (UTC)
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (EUR03-VI1-obe.outbound.protection.outlook.com [40.107.103.125])
 by mx.groups.io with SMTP id smtpd.web11.45987.1671525479753874899
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Dec 2022 00:38:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@etteplan.com header.s=selector1 header.b=E24o1fGz;
 spf=pass (domain: etteplan.com, ip: 40.107.103.125, mailfrom: antti.garding@etteplan.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lYNOwrHvhp8WYmnfJ2bfzwRRGFxxTatdEjvgmqqGLdymiPU7uW66Bwns2KQckpaXs8KdAu2L9Mvm0i7mrdFe5pN1MPVWrCCOCKJMVuV8yeTjr5ic0psG+VKahl+OFr7i2Yj7L7dNDmrLiRTNjA32NZnyEaOuJuFAD8pURZwsteZXytSzztKdPxu9Duhed1u2Q85UNm+6PeFYmZLSPSQsxVMUZNcZQwntJiUtFZOWAeuiWV6gDzrD/sYqaGMaBal/HsvYGgEx+ckcemKDKUlJlrgQOliDw+/3jVjaUYwmpoER2W4ay21S8QaouZK5CvbKs1d3yt+B3H1otlucMHRSBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Av9Xa4C6Tl/q+7fya31CmXoSLfopZYQ7EF9kYOiyk+M=;
 b=YTdF5fAaEoWSHY/5FTHI7Mb9iR6dF0x9GFs4Pu4CmC5AAYxXVtNM1mNSFyKMB++40NvLwHa9ber4yy1H1vIhVU6oH+YTG6YjzdIpuvHDpOSz2QM7F6WSS4yM8/dcp8G9hEuFv8KbXjLJh3I5DQzCBQxul/C0tglimNbhBdLQrhcBKrJyoS7CCXycdfD1L3e3om8qN9mHtfER7e6DdrtTLDiF87f1XYgwnN8adSYoZPaukq0Nl99RNPX5Uc7tPYxj3YOuVLPcb8kqs+n7J8HpbQQnXzm3Ql4JX6ps+7N1HzebQatg/5oJgRbiexsgPJwdtXkoK+nGUebpCJOWWTZ+xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=etteplan.com; dmarc=pass action=none header.from=etteplan.com;
 dkim=pass header.d=etteplan.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=etteplan.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Av9Xa4C6Tl/q+7fya31CmXoSLfopZYQ7EF9kYOiyk+M=;
 b=E24o1fGzzv4wAW7lERlj5KFriouYZ6qJQXymenVVg5/abbVf6uCNVLlZ+u3EuXVaHZs+NgTfANAp3cLVqRMDtrsT31LPm16d5y126FSK+DiF+Qwvu7hrI+ojjFu50wbcWSqqz0Qi6mHoUvxa1uVUwg+uwj4lUtg+O6mWK/YeJPc=
Received: from PAXP250MB0626.EURP250.PROD.OUTLOOK.COM (2603:10a6:102:286::18)
 by GV2P250MB0801.EURP250.PROD.OUTLOOK.COM (2603:10a6:150:a9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Tue, 20 Dec
 2022 08:37:55 +0000
Received: from PAXP250MB0626.EURP250.PROD.OUTLOOK.COM
 ([fe80::a305:14dc:85c:150e]) by PAXP250MB0626.EURP250.PROD.OUTLOOK.COM
 ([fe80::a305:14dc:85c:150e%4]) with mapi id 15.20.5924.016; Tue, 20 Dec 2022
 08:37:54 +0000
From: =?iso-8859-1?Q?G=E4rding_Antti?= <Antti.Garding@etteplan.com>
To: Martin Jansa <martin.jansa@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] Issue with accessing network from a recipe
Thread-Topic: [yocto] Issue with accessing network from a recipe
Thread-Index: AdkTqbMtoJkQ6BNeRBGA0W0cC1sNfgACs7MAACRBkiwAAhOUgA==
Date: Tue, 20 Dec 2022 08:37:54 +0000
Message-ID: 
 <PAXP250MB06262A4560BDCF3D3B3E1F8F9EEA9@PAXP250MB0626.EURP250.PROD.OUTLOOK.COM>
References: 
 <PAXP250MB062615A0B44EF5561D565B819EE59@PAXP250MB0626.EURP250.PROD.OUTLOOK.COM>
 <CA+chaQeNiqpL7Va12dL0rRwPn3mSpa_FeTJHZMDH=A7KFi+jkA@mail.gmail.com>
 <PAXP250MB0626A80F1DC33D033F0274869EEA9@PAXP250MB0626.EURP250.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PAXP250MB0626A80F1DC33D033F0274869EEA9@PAXP250MB0626.EURP250.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=etteplan.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXP250MB0626:EE_|GV2P250MB0801:EE_
x-ms-office365-filtering-correlation-id: d4cfb0ee-2eff-4730-8056-08dae2657d55
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ibfXjDgrRrteMH3s5alKphXJyPa4znlA3kpPsZPA4s+60APTiNHgkLYmOkJBL3CCzEdVd3sL3Ltbvl2vQWZdoY3G4Vij/QZUpc56JWI/+K/RxCJa565Zx+zxffu7DLEygdXhqrRLpGQKlBak/lUffREO5uRp2LbW/KjbaA6qwf+ek8pRJI2gZaJUETTuA4UUGBztLpH/WNh3ZEm9E5RPARdD9zdjdrEPNTHl6Yg116p+pVqoBHzEQgULTH6Uc1FfHqDZZLPqXs8WE9gEpN+bG7hGhqjoUAOqdkk/XqrKS6+qUSjcotSal+ZCYB0nFOIYMbggpB0RECsnoMjDYp1KQgke+WuNLcCocK0EJF/c/QeBgVZ/4L5226DIDXncEo5jRW7LcNbPt1qB7cNWc31ifQUHNcuJioyVc8rdVeq1cYCkDqVU2kQUtFENhKIVxgNjvmyR9+FxO+DiL8pKtMNT0CQI5c5slgLZ6PfR/QgEW0Tgvs2LQYSBfTKm0luJ2YtrUQG9OZA94dEYqzQvfOl8qE4zjBGHsufTOqImS96ZKUMpYjUwWtanbiGCeElsztyd6nSTOUeIkI3M5sQadgp4tx0we52pbxiTwdu5ejlpN1JtTCaBpP7/SexGrPCp+osvL1EaDh5kUTIb/kaGs6Psfqi8zla+cU2StnbYPrpFb0X+rDzdsouVjYOkeOAZMDQCOr5sPdF2rgxgPyej3nxu5f5rijKZ4ZQE2/u5gleZYWk=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXP250MB0626.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(376002)(136003)(39860400002)(366004)(346002)(451199015)(76116006)(66556008)(66946007)(86362001)(64756008)(66446008)(52536014)(8676002)(4326008)(316002)(5660300002)(66476007)(9326002)(8936002)(53546011)(41300700001)(26005)(33656002)(9686003)(7696005)(6506007)(186003)(2940100002)(66574015)(83380400001)(71200400001)(38070700005)(55016003)(122000001)(6916009)(2906002)(966005)(38100700002)(166002)(478600001)(66899015);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?sjosf+LtJhzDDZcYHnc05WMdJSeqAC5UnIwqVpCbj1uz0jAsGFuxWuWMHl?=
 =?iso-8859-1?Q?Eyp7ugC3V2jiWiwnuvus4vWOgxexE2oB+IwttBbcsGiCW/MdN2n8/BATO0?=
 =?iso-8859-1?Q?Z6G82IW3fpe0DzYVENXS7sUH1+jHJK97VGip3Um2uPwMR01U3T11tnRymE?=
 =?iso-8859-1?Q?7OYNjW9bPPmgLxvfopZarRJt5ZypTstvZGss4yaNKi3vPhRIOXy1ryzUrn?=
 =?iso-8859-1?Q?qJVrfGCSVLPbugd1qMqk0H38DJ/zylQYOgNIpPCDfvPUIDWRM5nmvJOJX0?=
 =?iso-8859-1?Q?EGDG90/C3AyeJhoanAm6c3bKG60kMgEDr6OLwLfBGlM/mRbKRHTedgMxt5?=
 =?iso-8859-1?Q?uTB6r2zLPoAeY9s3CEFIiVetQXEVYCcVVcuJ+MPd0JKPiAudjo0tg8her0?=
 =?iso-8859-1?Q?caMXhnAcTlPgo2YpSM9eWh2HfKEQunc27YwJzxnXtUH8KRMA5d2fWRr/jj?=
 =?iso-8859-1?Q?10bN6rokgW7+M746bCWcDeduSno+mZLj9MIywuH2KNWILQ808X+xdoFb84?=
 =?iso-8859-1?Q?5HSwFb0sEAI3G73WVoxxGTo3lKUGtcf9c8py1cM+F9DYNevA6RZjB6DW6x?=
 =?iso-8859-1?Q?cyC19qHo59+Viwg3ueVSXYyFlZgu1LihBki8hRZ/eWM6wAsWr3OW+d79y0?=
 =?iso-8859-1?Q?HpLvJDFyo3nP9eA/F1RJnTIuL8lb+QNDpusE2kDwFEVTUxwezD/6qppU5A?=
 =?iso-8859-1?Q?Dqm+/j6xrIlMjP7dgVP9F43vlwPVwMkfqlVBjpaguiB51DMKaESV/vNI73?=
 =?iso-8859-1?Q?lrpnJe11xxwdTKvtjsaIMZ94Hp+FopX0HrZnripLRLQYesL/09dR9R8nEi?=
 =?iso-8859-1?Q?U7WZEAzwIw7IPLpybGgX616OGFWvatcueNpobieHvMMCP0pf8MWVP7c7ij?=
 =?iso-8859-1?Q?EWQttFZwwnBGcZs7r+fCRIyQ+Rhj6b9MgMqBymSWEsxHkXveUW1roK2+g8?=
 =?iso-8859-1?Q?bQ5/zgPNxPs1SuqM9npFU797OXMVtRb8+8CKARPCub36Jfhb8Ivd9lGv30?=
 =?iso-8859-1?Q?5Qsbv4+wE2+y+vpocQQpFSl9exUy9BW3tYQFGai9EaIZYVCDylAOtNeBT/?=
 =?iso-8859-1?Q?zQW6e921PlPEn8PbxzS0EWZjIemTVQcqYhF9LCMc4fm6jPCkhVNZgHvCdS?=
 =?iso-8859-1?Q?rT0kUmK/Vwt7Dn2GsNuiGlXK7u8wSBZ9PHU605mPWg4syX4i0wdbWUPUPQ?=
 =?iso-8859-1?Q?njvGDu3Usrm3HPoLCL6drHWms1Pou2YA4LProDza5+c2v+PeehTHQepXcJ?=
 =?iso-8859-1?Q?UaisSAizFpVtEI790gqYAQMcIZSdAXbFdi3KiXDUKfyZMkTxPgxqacIiJa?=
 =?iso-8859-1?Q?ZUNj7XkolkHjOxIqxLCKWflgYlIdc3ku9BPrqrsXz4y0DVd1JbI5Ae6K8A?=
 =?iso-8859-1?Q?rWHRZohiGgE5K2COQk+/g4qgvKZk8ne9MBOjw6nLaqydNHKGNHM0Pm9bIY?=
 =?iso-8859-1?Q?lZPrh9d0cETtW6IwFk6DvWB7qjechALUapzt+me/I0YcSTBip2S6UjIQ+v?=
 =?iso-8859-1?Q?FryB4Nv/33VgkckoxRSVwJcowla5gFbOzNEgu0DUeAG/FBnE4/LYBcxdOV?=
 =?iso-8859-1?Q?a2AKOJKLKsaAV3/pLh9RjTSXRWLFkZu0pzgQBOK75ibjhkdU8rsieXjARv?=
 =?iso-8859-1?Q?1Xz2JOyaylFQTmTGkeQSuQ94wLSRysj39L?=
Content-Type: multipart/alternative;
	boundary="_000_PAXP250MB06262A4560BDCF3D3B3E1F8F9EEA9PAXP250MB0626EURP_"
MIME-Version: 1.0
X-OriginatorOrg: etteplan.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXP250MB0626.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: d4cfb0ee-2eff-4730-8056-08dae2657d55
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2022 08:37:54.8676
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1f23d6d3-b158-4e45-b7e1-7631cf28c804
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QnCCm0G+sRbmCMFJgpuQQ3bPto9qwmbiA4HnYYnn9RaRpP0f4J7QfYJxIdsvHJuaOI4ZGroB+xvVzist2dY0/C5oW1x7fAQBLZI/xqtoyGc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2P250MB0801
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Dec 2022 08:38:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58840

--_000_PAXP250MB06262A4560BDCF3D3B3E1F8F9EEA9PAXP250MB0626EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I noticed that the another question was probably due to my own mistake: Acc=
essing network from do_fetch seems to work, but I hadn't noticed that I had=
 left commands requiring network into do_compile even though I had moved th=
ose of them that were in do_configure to do_fetch.


Best regards,
Antti G=E4rding

From: G=E4rding Antti <Antti.Garding@etteplan.com>
Sent: Tuesday, December 20, 2022 9:42
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Issue with accessing network from a recipe

Hi,

Thanks! That helped my team find out a solution or at least a work-around: =
setting do_configure[network] and do_compile[network] to "1" in local.conf.

I would have another related questions, though: Should the commands requiri=
ng network access work if they are invoked from do_fetch? I tried that and =
it didn't work.


Best regards,
Antti G=E4rding

________________________________
Kohteesta: Martin Jansa <martin.jansa@gmail.com<mailto:martin.jansa@gmail.c=
om>>
L=E4hetetty: maanantaina 19. joulukuuta 2022 klo 16.16
Vastaanottaja: G=E4rding Antti <Antti.Garding@etteplan.com<mailto:Antti.Gar=
ding@etteplan.com>>
Kopio: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <y=
octo@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>>
Aihe: Re: [yocto] Issue with accessing network from a recipe

Hi,

that is intentional, recipes should fetch sources with bitbake fetcher (whi=
ch respects MIRROR/PREMIRROR/DL_DIR etc) in do_fetch and network shouldn't =
be used in other tasks (unless explicitly enabled in well explained excepti=
ons).

bitbake can now restrict network access in various tasks based on "network"=
 flag as implemented in:
  https://git.openembedded.org/bitbake/commit/?id=3D0746b6a2a32fec4c18bf1a5=
2b1454ca4c04bf543<https://eur02.safelinks.protection.outlook.com/?url=3Dhtt=
ps%3A%2F%2Fgit.openembedded.org%2Fbitbake%2Fcommit%2F%3Fid%3D0746b6a2a32fec=
4c18bf1a52b1454ca4c04bf543&data=3D05%7C01%7C%7C68bbc2a8d2a04566721208dae1cb=
ac1e%7C1f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C638070562123843657%7CUnkn=
own%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXV=
CI6Mn0%3D%7C3000%7C%7C%7C&sdata=3DnHr4o3NfePVtT9Qm5CtFxUyph%2BpIDsAPu0ga7hz=
qiLk%3D&reserved=3D0>
  https://git.openembedded.org/bitbake/commit/?id=3D9d6341df611a1725090444f=
6f8eb0244aed08213<https://eur02.safelinks.protection.outlook.com/?url=3Dhtt=
ps%3A%2F%2Fgit.openembedded.org%2Fbitbake%2Fcommit%2F%3Fid%3D9d6341df611a17=
25090444f6f8eb0244aed08213&data=3D05%7C01%7C%7C68bbc2a8d2a04566721208dae1cb=
ac1e%7C1f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C638070562123843657%7CUnkn=
own%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXV=
CI6Mn0%3D%7C3000%7C%7C%7C&sdata=3DwVgmBkoIzcgJ%2FxmB5CfM6HBWRzoyGAi%2BZi6to=
7k3veI%3D&reserved=3D0>
and oe now enables network mostly only in do_fetch and few special tasks as=
 implemented in:
  https://git.openembedded.org/openembedded-core/commit/?id=3D7ce1e88a3ad85=
bbb925bb9f7167dc0a5fd1c27f4<https://eur02.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Fgit.openembedded.org%2Fopenembedded-core%2Fcommit%2F%3=
Fid%3D7ce1e88a3ad85bbb925bb9f7167dc0a5fd1c27f4&data=3D05%7C01%7C%7C68bbc2a8=
d2a04566721208dae1cbac1e%7C1f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C63807=
0562123843657%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiL=
CJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3Dn2d5TSsWPg%2BXptt7B8p=
X%2Bnoc5TPWUhXXb13lRjlXK9g%3D&reserved=3D0>

Regards,

On Mon, Dec 19, 2022 at 2:02 PM G=E4rding Antti via lists.yoctoproject.org<=
https://eur02.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Flists.yo=
ctoproject.org%2F&data=3D05%7C01%7C%7C68bbc2a8d2a04566721208dae1cbac1e%7C1f=
23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C638070562123843657%7CUnknown%7CTWF=
pbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D=
%7C3000%7C%7C%7C&sdata=3Dk0%2Fi49SgkdqHptYWr%2BvwituUCyBB2%2FP1kBfaH%2Bk84O=
8%3D&reserved=3D0> <Antti.Garding=3Detteplan.com@lists.yoctoproject.org<mai=
lto:etteplan.com@lists.yoctoproject.org>> wrote:
Hi,

I am having an issue with a recipe whose do_configure requires network conn=
ections and I wonder if this issue could be related to Yocto so that this l=
ist would be the correct place to ask for ideas.

The problem appears when trying to build dotnet-hello-world which comes wit=
h meta-dotnet (https://github.com/jeremy-prater/meta-dotnet<https://eur02.s=
afelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgithub.com%2Fjeremy-pr=
ater%2Fmeta-dotnet&data=3D05%7C01%7C%7C68bbc2a8d2a04566721208dae1cbac1e%7C1=
f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C638070562123843657%7CUnknown%7CTW=
FpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3=
D%7C3000%7C%7C%7C&sdata=3DnBS8Ja%2BxFCyOrVn8%2BV6Nr6z4oS8X5ShrXkAFBvNjDPM%3=
D&reserved=3D0>). I am not the only one having this issue, but many people,=
 including the layer's author, also report having no problems. Googling giv=
es a lot of suggestions, but as this is related to .NET, all of them are re=
lated to Windows / Visual Studio environment and I don't know how to apply =
them using Yocto.

In short, do_configure for dotnet-hello-world invokes the .NET SDK's tool d=
otnet as a host tool to fetch what is needed to build and run the program. =
As a part of that, it uses NuGet, the package manager for .NET, which says =
"error NU1301: Unable to load the service index for source https://api.nuge=
t.org/v3/index.json<https://eur02.safelinks.protection.outlook.com/?url=3Dh=
ttps%3A%2F%2Fapi.nuget.org%2Fv3%2Findex.json&data=3D05%7C01%7C%7C68bbc2a8d2=
a04566721208dae1cbac1e%7C1f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C6380705=
62123843657%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJ=
BTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3DAOKlXUv0ktrRXh1iK6own5z=
Iyzq9OMwHkDweuOQQuRg%3D&reserved=3D0>".

If I modify the recipe so that it tries to curl that file, I get "Could not=
 resolve host: api.nuget.org<https://eur02.safelinks.protection.outlook.com=
/?url=3Dhttp%3A%2F%2Fapi.nuget.org%2F&data=3D05%7C01%7C%7C68bbc2a8d2a045667=
21208dae1cbac1e%7C1f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C63807056212384=
3657%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik=
1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3DUpta%2F3f1sPoPAVhM7s3ABvgygraP=
XIwA14Da4cRYfL8%3D&reserved=3D0>". If I do the same but use numeric address=
, I get "Couldn't connect to server".

If I run the commands in the recipe manually in the same environment I use =
for Yocto builds, using .NET SDK I have installed manually, they work.

My build environment is Ubuntu 20.04 run inside a Docker container.


Best regards,
Antti G=E4rding

-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#58831): https://lists.yoctoproject.org/g/yocto/message/=
58831<https://eur02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fl=
ists.yoctoproject.org%2Fg%2Fyocto%2Fmessage%2F58831&data=3D05%7C01%7C%7C68b=
bc2a8d2a04566721208dae1cbac1e%7C1f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C=
638070562123843657%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2lu=
MzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3DttNSefU3zhwKswk9=
E9lJhrTL7JND3pcIx0fRogerzUo%3D&reserved=3D0>
Mute This Topic: https://lists.yoctoproject.org/mt/95764092/3617156<https:/=
/eur02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.yoctopro=
ject.org%2Fmt%2F95764092%2F3617156&data=3D05%7C01%7C%7C68bbc2a8d2a045667212=
08dae1cbac1e%7C1f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C63807056212399987=
7%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1ha=
WwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3DBu44bJUc881McFGixdgBk6h%2FKJUlyVb=
mNu6zeUQMrk0%3D&reserved=3D0>
Group Owner: yocto+owner@lists.yoctoproject.org<mailto:yocto%2Bowner@lists.=
yoctoproject.org>
Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub<https://eur02.saf=
elinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2=
Fg%2Fyocto%2Funsub&data=3D05%7C01%7C%7C68bbc2a8d2a04566721208dae1cbac1e%7C1=
f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C638070562123999877%7CUnknown%7CTW=
FpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3=
D%7C3000%7C%7C%7C&sdata=3D9jIeQariiOq1rKxR9MuvgeTLmYA5WxZav7Nsu2w5y20%3D&re=
served=3D0> [Martin.Jansa@gmail.com<mailto:Martin.Jansa@gmail.com>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--_000_PAXP250MB06262A4560BDCF3D3B3E1F8F9EEA9PAXP250MB0626EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I noticed that the another question was probably due=
 to my own mistake: Accessing network from do_fetch seems to work, but I ha=
dn&#8217;t noticed that I had left commands requiring network into do_compi=
le even though I had moved those of them
 that were in do_configure to do_fetch.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Antti G=E4rding<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> G=E4rding Antti &lt;Antti.Garding@ettep=
lan.com&gt; <br>
<b>Sent:</b> Tuesday, December 20, 2022 9:42<br>
<b>To:</b> Martin Jansa &lt;martin.jansa@gmail.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Issue with accessing network from a recipe<o:p>=
</o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"color:#212=
121"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"color:#212=
121">Thanks! That helped my team find out a solution or at least a work-aro=
und: setting do_configure[network] and do_compile[network] to &quot;1&quot;=
 in local.conf.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"color:#212=
121"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"color:#212=
121">I would have another related questions, though: Should the commands re=
quiring network access work if they are invoked from do_fetch? I tried that=
 and it didn't work.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"color:#212=
121"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"color:#212=
121"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"color:#212=
121">Best regards,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"color:#212=
121">Antti G=E4rding<o:p></o:p></span></p>
</div>
<div id=3D"mail-editor-reference-message-container">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"divRplyFwdMsg">
<p class=3D"MsoNormal"><strong><span style=3D"font-family:&quot;Calibri&quo=
t;,sans-serif">Kohteesta:</span></strong> Martin Jansa &lt;<a href=3D"mailt=
o:martin.jansa@gmail.com">martin.jansa@gmail.com</a>&gt;<br>
<strong><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">L=E4hete=
tty:</span></strong> maanantaina 19. joulukuuta 2022 klo 16.16<br>
<strong><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Vastaano=
ttaja:</span></strong> G=E4rding Antti &lt;<a href=3D"mailto:Antti.Garding@=
etteplan.com">Antti.Garding@etteplan.com</a>&gt;<br>
<strong><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Kopio:</=
span></strong> <a href=3D"mailto:yocto@lists.yoctoproject.org">
yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctopro=
ject.org">yocto@lists.yoctoproject.org</a>&gt;<br>
<strong><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Aihe:</s=
pan></strong> Re: [yocto] Issue with accessing network from a recipe<o:p></=
o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">that is intentional, recipes should fetch sources wi=
th bitbake fetcher (which respects MIRROR/PREMIRROR/DL_DIR etc) in do_fetch=
 and network shouldn't be used in other tasks (unless explicitly enabled in=
 well explained exceptions).<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">bitbake can now restrict network access in various t=
asks based on &quot;network&quot; flag as implemented in:<br>
&nbsp; <a href=3D"https://eur02.safelinks.protection.outlook.com/?url=3Dhtt=
ps%3A%2F%2Fgit.openembedded.org%2Fbitbake%2Fcommit%2F%3Fid%3D0746b6a2a32fec=
4c18bf1a52b1454ca4c04bf543&amp;data=3D05%7C01%7C%7C68bbc2a8d2a04566721208da=
e1cbac1e%7C1f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C638070562123843657%7C=
Unknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiL=
CJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DnHr4o3NfePVtT9Qm5CtFxUyph%2BpIDsA=
Pu0ga7hzqiLk%3D&amp;reserved=3D0">
https://git.openembedded.org/bitbake/commit/?id=3D0746b6a2a32fec4c18bf1a52b=
1454ca4c04bf543</a><br>
&nbsp; <a href=3D"https://eur02.safelinks.protection.outlook.com/?url=3Dhtt=
ps%3A%2F%2Fgit.openembedded.org%2Fbitbake%2Fcommit%2F%3Fid%3D9d6341df611a17=
25090444f6f8eb0244aed08213&amp;data=3D05%7C01%7C%7C68bbc2a8d2a04566721208da=
e1cbac1e%7C1f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C638070562123843657%7C=
Unknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiL=
CJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DwVgmBkoIzcgJ%2FxmB5CfM6HBWRzoyGAi=
%2BZi6to7k3veI%3D&amp;reserved=3D0">
https://git.openembedded.org/bitbake/commit/?id=3D9d6341df611a1725090444f6f=
8eb0244aed08213</a><br>
and oe now enables network mostly only in do_fetch and few special tasks as=
 implemented in:<br>
&nbsp; <a href=3D"https://eur02.safelinks.protection.outlook.com/?url=3Dhtt=
ps%3A%2F%2Fgit.openembedded.org%2Fopenembedded-core%2Fcommit%2F%3Fid%3D7ce1=
e88a3ad85bbb925bb9f7167dc0a5fd1c27f4&amp;data=3D05%7C01%7C%7C68bbc2a8d2a045=
66721208dae1cbac1e%7C1f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C63807056212=
3843657%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI=
6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3Dn2d5TSsWPg%2BXptt7B8pX%=
2Bnoc5TPWUhXXb13lRjlXK9g%3D&amp;reserved=3D0">
https://git.openembedded.org/openembedded-core/commit/?id=3D7ce1e88a3ad85bb=
b925bb9f7167dc0a5fd1c27f4</a><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Dec 19, 2022 at 2:02 PM G=E4rding Antti via =
<a href=3D"https://eur02.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F=
%2Flists.yoctoproject.org%2F&amp;data=3D05%7C01%7C%7C68bbc2a8d2a04566721208=
dae1cbac1e%7C1f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C638070562123843657%=
7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWw=
iLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3Dk0%2Fi49SgkdqHptYWr%2BvwituUCyB=
B2%2FP1kBfaH%2Bk84O8%3D&amp;reserved=3D0">
lists.yoctoproject.org</a> &lt;Antti.Garding=3D<a href=3D"mailto:etteplan.c=
om@lists.yoctoproject.org">etteplan.com@lists.yoctoproject.org</a>&gt; wrot=
e:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Hi,<span lang=3D"FI"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<span lang=3D"FI"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I am having an issue with a recipe whose do_configure requires net=
work connections and I wonder if this issue could be related to Yocto so th=
at this list would be the correct place
 to ask for ideas.<span lang=3D"FI"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<span lang=3D"FI"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">The problem appears when trying to build dotnet-hello-world which =
comes with meta-dotnet (<a href=3D"https://eur02.safelinks.protection.outlo=
ok.com/?url=3Dhttps%3A%2F%2Fgithub.com%2Fjeremy-prater%2Fmeta-dotnet&amp;da=
ta=3D05%7C01%7C%7C68bbc2a8d2a04566721208dae1cbac1e%7C1f23d6d3b1584e45b7e176=
31cf28c804%7C0%7C0%7C638070562123843657%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4=
wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp=
;sdata=3DnBS8Ja%2BxFCyOrVn8%2BV6Nr6z4oS8X5ShrXkAFBvNjDPM%3D&amp;reserved=3D=
0" target=3D"_blank">https://github.com/jeremy-prater/meta-dotnet</a>).
 I am not the only one having this issue, but many people, including the la=
yer's author, also report having no problems. Googling gives a lot of sugge=
stions, but as this is related to .NET, all of them are related to Windows =
/ Visual Studio environment and
 I don't know how to apply them using Yocto.<span lang=3D"FI"><o:p></o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<span lang=3D"FI"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">In short, do_configure for dotnet-hello-world invokes the .NET SDK=
's tool dotnet as a host tool to fetch what is needed to build and run the =
program. As a part of that, it uses
 NuGet, the package manager for .NET, which says &quot;error NU1301: Unable=
 to load the service index for source
<a href=3D"https://eur02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2=
F%2Fapi.nuget.org%2Fv3%2Findex.json&amp;data=3D05%7C01%7C%7C68bbc2a8d2a0456=
6721208dae1cbac1e%7C1f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C638070562123=
843657%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6=
Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DAOKlXUv0ktrRXh1iK6own5zI=
yzq9OMwHkDweuOQQuRg%3D&amp;reserved=3D0" target=3D"_blank">
https://api.nuget.org/v3/index.json</a>&quot;.<span lang=3D"FI"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<span lang=3D"FI"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">If I modify the recipe so that it tries to curl that file, I get &=
quot;Could not resolve host:
<a href=3D"https://eur02.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F=
%2Fapi.nuget.org%2F&amp;data=3D05%7C01%7C%7C68bbc2a8d2a04566721208dae1cbac1=
e%7C1f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C638070562123843657%7CUnknown=
%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6=
Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DUpta%2F3f1sPoPAVhM7s3ABvgygraPXIwA14Da4c=
RYfL8%3D&amp;reserved=3D0" target=3D"_blank">
api.nuget.org</a>&quot;. If I do the same but use numeric address, I get &q=
uot;Couldn't connect to server&quot;.<span lang=3D"FI"><o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<span lang=3D"FI"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">If I run the commands in the recipe manually in the same environme=
nt I use for Yocto builds, using .NET SDK I have installed manually, they w=
ork.<span lang=3D"FI"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<span lang=3D"FI"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">My build environment is Ubuntu 20.04 run inside a Docker container=
.<span lang=3D"FI"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<span lang=3D"FI"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<span lang=3D"FI"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"FI">Best regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"FI">Antti G=E4rding<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58831): <a href=3D"https://eur02.safelinks.protection.o=
utlook.com/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Fmessag=
e%2F58831&amp;data=3D05%7C01%7C%7C68bbc2a8d2a04566721208dae1cbac1e%7C1f23d6=
d3b1584e45b7e17631cf28c804%7C0%7C0%7C638070562123843657%7CUnknown%7CTWFpbGZ=
sb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3=
000%7C%7C%7C&amp;sdata=3DttNSefU3zhwKswk9E9lJhrTL7JND3pcIx0fRogerzUo%3D&amp=
;reserved=3D0" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/message/58831</a><br>
Mute This Topic: <a href=3D"https://eur02.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fmt%2F95764092%2F3617156&amp;d=
ata=3D05%7C01%7C%7C68bbc2a8d2a04566721208dae1cbac1e%7C1f23d6d3b1584e45b7e17=
631cf28c804%7C0%7C0%7C638070562123999877%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC=
4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&am=
p;sdata=3DBu44bJUc881McFGixdgBk6h%2FKJUlyVbmNu6zeUQMrk0%3D&amp;reserved=3D0=
" target=3D"_blank">
https://lists.yoctoproject.org/mt/95764092/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">
yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://eur02.safelinks.protection.outlook.com/?url=
=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Funsub&amp;data=3D05%7=
C01%7C%7C68bbc2a8d2a04566721208dae1cbac1e%7C1f23d6d3b1584e45b7e17631cf28c80=
4%7C0%7C0%7C638070562123999877%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAi=
LCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3D=
9jIeQariiOq1rKxR9MuvgeTLmYA5WxZav7Nsu2w5y20%3D&amp;reserved=3D0" target=3D"=
_blank">
https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:Martin.=
Jansa@gmail.com" target=3D"_blank">Martin.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<o:p></o:p></p>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_PAXP250MB06262A4560BDCF3D3B3E1F8F9EEA9PAXP250MB0626EURP_--

