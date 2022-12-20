Return-Path: <Antti.Garding@etteplan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B456FC4332F
	for <webhook@archiver.kernel.org>; Tue, 20 Dec 2022 07:42:01 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.99])
 by mx.groups.io with SMTP id smtpd.web10.45261.1671522115299828318
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Dec 2022 23:41:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@etteplan.com header.s=selector1 header.b=g//Jl2G7;
 spf=pass (domain: etteplan.com, ip: 40.107.7.99, mailfrom: antti.garding@etteplan.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hI8nVM2C1/G+0YBWb8TWMxeYyh3UyaMkVm4Z8aOt8oQS2FEo6spe79az8Wq6pPA3bkGSDEEkeU+JoVvIBIfu3GGjkwQt7jAY94qhPKWhXcSfHaEdUVvPRwDO/evWTN5yMDOLXI9OW2qYaftpvnjdfy+lbhnS/FTref9Fm8oVRkWyDSdd0qBT4eqUnnkmvQerVopmFIA3A/HiM4tBfwNXraIggaMICX7OpligOLnrYXdOGvjupncVVUUDMZaJqTD936j1v17lDKxMZd3b1bvveAKwHiaT4eZjNmWGi7HhhdadtxjdGZphwsTzpK1EStSJyuibJy7T5exdLK3XUorIcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h0KLNmZyHAnQ3Og/j3xuMa59VwGfW6oBiCdzBsvFx5E=;
 b=lJ3eLAIptXQKewP/ZRmVUxbRccqcHQ5LtGwrsz4AybSdfRTYi/V6iX9OSuZ1fryvzFsaWZ6gUajFaO3qO2tAXUTi9LWAPEwZcRmZHw3xVw1rqvOWjfgI3qhAQ+xADX+SocPW7mQ/IBx1pdYufOD6A7Yas70t0b2Vti/fC3Bxi+5ce0C3+T559PyhuTJTVmx6HcUnAnZEGibnBpk4P+iVkSKm628MqsbQ4f2TehpGnrazjkU8puJkU58JuLZs/etRqsw1/eH1giqGyeJSPyywJx2RbTSUjF1NjAG6k7bi2g3XRQXfdcPlBcyRjRa3KGyi14fA0UQvPHzlPhJJXusWSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=etteplan.com; dmarc=pass action=none header.from=etteplan.com;
 dkim=pass header.d=etteplan.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=etteplan.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h0KLNmZyHAnQ3Og/j3xuMa59VwGfW6oBiCdzBsvFx5E=;
 b=g//Jl2G731r95QfUkpHNgSwc36xsj2BnXyweVj+NpIjf6xWnu90FtLFCbnRNdaxL4VI+PJKwCCfJXU0Tt2HHR24kKEYh0JXs7LSMpooVFnLXV0+m7EpgNJYKh7YNg20GzxyT5yjFG9Nmym3ArZOPXay4yJB7RNytkfgn1Wpuy3I=
Received: from PAXP250MB0626.EURP250.PROD.OUTLOOK.COM (2603:10a6:102:286::18)
 by AS8P250MB0056.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:35b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Tue, 20 Dec
 2022 07:41:50 +0000
Received: from PAXP250MB0626.EURP250.PROD.OUTLOOK.COM
 ([fe80::a305:14dc:85c:150e]) by PAXP250MB0626.EURP250.PROD.OUTLOOK.COM
 ([fe80::a305:14dc:85c:150e%4]) with mapi id 15.20.5924.016; Tue, 20 Dec 2022
 07:41:50 +0000
From: =?iso-8859-1?Q?G=E4rding_Antti?= <Antti.Garding@etteplan.com>
To: Martin Jansa <martin.jansa@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Issue with accessing network from a recipe
Thread-Topic: [yocto] Issue with accessing network from a recipe
Thread-Index: AdkTqbMtoJkQ6BNeRBGA0W0cC1sNfgACs7MAACRBkiw=
Date: Tue, 20 Dec 2022 07:41:50 +0000
Message-ID: 
 <PAXP250MB0626A80F1DC33D033F0274869EEA9@PAXP250MB0626.EURP250.PROD.OUTLOOK.COM>
References: 
 <PAXP250MB062615A0B44EF5561D565B819EE59@PAXP250MB0626.EURP250.PROD.OUTLOOK.COM>
 <CA+chaQeNiqpL7Va12dL0rRwPn3mSpa_FeTJHZMDH=A7KFi+jkA@mail.gmail.com>
In-Reply-To: 
 <CA+chaQeNiqpL7Va12dL0rRwPn3mSpa_FeTJHZMDH=A7KFi+jkA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=etteplan.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXP250MB0626:EE_|AS8P250MB0056:EE_
x-ms-office365-filtering-correlation-id: 4b9d1283-c143-41ac-dc09-08dae25da81e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 VkOXY8rg9Lz3ZPLfkzgB07mDFqjGIsDYJTxN4h2nBp7yg+0LFM/rs+Gqol3U4o8S9b5LgrMDNrWEvXNWEzvN7drADg6c+HEmh9woz/JTvqkLy5PUAo1i1GfKxq1Lm4LGlBm3/tllt2dcv4pRFShuACl1ShzzEjuve2AbLBWdqTVh3wnRoWnV+wE7zytdyHwCf00TH3nBkTGuvrO6cbWchLEfnLQbLHsnVD5UyU3mvaneluee5WmP3S7qQ93s+5bVhX+KmBCSdUAAhRIoDvH4JYtTp7MSxm1bc8QTYKe6DjnvUwEAo2vWOTAie7+etFBe4ts5KPVE8kMe02+uOkKMQ83zYJ8LWq8MVpdJr0qjGd2/1lGzTbWoyei6pqe2A1rcAJU/3jdVMQw5y7Z/BCg4rF9b4yh1wDZ/w45lNIItDD5xFfG23bgoCrwZ3DPwi7fPiHIgWrppMAEvvIgMDF+aQyIebaTZRW6SUCtLBhVD6uEiNbs+kg1ii9wJq3Pd8YrRrayATMW4fnYHt4sbK3Go8UwQLHBumy7G0itDfyTI3TFgyeipm71Y2laIZDkj6JGPU1ZMoqa5uWMA7Z1wc4ospBqALSGDY8w64Rzy5sMYb3QzmPjiGQ2UwNEvxIG4XuJ5265J3FNu0AnZr2xipvsVQe390h+GI5h+BI13/pBxH50OsNwqZn/4Pyy461sETY+qIQC/kLGMKizcpgrGjztZb8qqezI+gjkYIg3mc7GdJmI=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXP250MB0626.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(396003)(136003)(39860400002)(376002)(346002)(451199015)(316002)(66574015)(52536014)(41300700001)(186003)(8936002)(9686003)(6916009)(91956017)(76116006)(66946007)(8676002)(64756008)(66446008)(86362001)(38070700005)(166002)(38100700002)(122000001)(33656002)(83380400001)(66556008)(66476007)(5660300002)(55016003)(4326008)(478600001)(2906002)(966005)(66899015)(53546011)(7696005)(6506007)(71200400001)(26005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?k9VnOUZk7X7mbHR5Sxuj/hXyFUffYv8HtX6R5a7z64cPktU00A8G3al1cR?=
 =?iso-8859-1?Q?aFqE7m9yGlyQeGIpneE8NbrgOKxJLXu0N8TUQswAwOOV51H/j53v7kIs1J?=
 =?iso-8859-1?Q?vv1fDF2cLuQY2VXME6hVus5KJUdMkYQj0AfMcy9tSK7kz8/vrh9ZdNe2N/?=
 =?iso-8859-1?Q?bRpXiB2KO65J2+w98/4S2j9fMRyMmI0Exlh4jrBGpTqkURD8koY+OGU7Lr?=
 =?iso-8859-1?Q?lelGLxxuHTJlmtJokH32nKHnjbxClcOfd77ZQJGqlDBULQg2IzMyNZOZI7?=
 =?iso-8859-1?Q?tZuZOQ75+WR3l7CR/yd7vskQu3fco0HCm5j5vGkk4zHq59u3zWBEd+BUv3?=
 =?iso-8859-1?Q?EY/Oqrk18sJh2XDjDSDVZ5fRehvc5sVPAp9K+4ZZCbkuq8NeqsLPxHugrv?=
 =?iso-8859-1?Q?9FeBDATskgv1APq0424URTB2KaY2yKhfeJFhbtaMsLO/dt+7Mo+ns9Uo+o?=
 =?iso-8859-1?Q?iZb9TD9GZeV829nKlvQNiNOvBYWAIXSX2fvHo/zwLsh6ZqzjqacQ+vV3PA?=
 =?iso-8859-1?Q?Co4TZEkibPSNwWTbHZD2ALiALlLc62/laQS8Q4Rm1fqZSBJu/NkGkbgn3K?=
 =?iso-8859-1?Q?Np8xEpOqwxD02zQx7+9tm8/LeUfWei950wT+rli4z754KMcNdMFg9fJkmi?=
 =?iso-8859-1?Q?aX/XdSp8PDpFTFFFAP8TGh+AHX9kgjHofGTZxjX2XyqnjK+11t8s9N84W3?=
 =?iso-8859-1?Q?3RhuYeHUln43hbHBtyhWCpOdnre76WrlQXLUQWfbBdQT1pvx4OslZQdlkv?=
 =?iso-8859-1?Q?xsg9UN4mh5PPJTEpfweuUAMmIs3kMAT0wx+q7eI872juLHcyuIgzsVcXc9?=
 =?iso-8859-1?Q?IKrcFn+drxv9u8aWoxWYM4IZl8PLOvmrgkOV/nt56TUvOYG58V34u86/uI?=
 =?iso-8859-1?Q?Nt0m06mpzRsPVhp4BLpn9YZV1d69Kn3DJuNUCXGeiwtH2IUG0WCVwPW0AW?=
 =?iso-8859-1?Q?mESjVVeZI2IlVW4+P6uu5Y9088xhUqZkSlYdtN1mbyRRt2ipVsS7PhV819?=
 =?iso-8859-1?Q?yDU6Tr0a8orf0uJ4ZGZYleegVfqk6183Q+ddAnLjdaNV5i2BKvM6qjGrNQ?=
 =?iso-8859-1?Q?miZOVKRBqV5uO1kq0CtI9hZejy47OZxZNJqeMKX7FLws7PmIs6zp/l5iIV?=
 =?iso-8859-1?Q?+P9U8lW29pJ6DTGCcDaQsdhjOUPMji0mULeGGBZGZf4zOxursKfvUizGYY?=
 =?iso-8859-1?Q?svpm6rlu1O3H4vgQBsJw/zD/DbPf5YvIWgf7/MezYyXihm4v5EUirL3O9S?=
 =?iso-8859-1?Q?sFg0PQ13v/CCOrdNhRVFtq1E9nEGunGE5tNS1Qwf0duMz9jQDY9RGOcOTl?=
 =?iso-8859-1?Q?JgUHrrw8mef74SOexGM6PQnn+puYZZeF7/3ZWewToPwxK2iQ+AXAh2Luj3?=
 =?iso-8859-1?Q?cKrlr+FIe1z6OfXHYRrrdZLSjMjiictSG/cLyQ1UXU/6v0GzxEaZVCcaMG?=
 =?iso-8859-1?Q?FCr70jVynJ/G/UWL1FH4AHu61fw7JXdGSRchLNmKVQHaKmiJyRgLwNCf3i?=
 =?iso-8859-1?Q?zoUbjrK4EuhMNstlrLwmtzYnVf3Kg0OLDv5UnkCTmawhL56qiUvTfqDvlO?=
 =?iso-8859-1?Q?+oOtGES+SYUSaIbZtd1amtxv8puuh333RceMCvRv+nCg7SiYQ5SZbiyl1p?=
 =?iso-8859-1?Q?t2EAlvbVR9pffSM1n3vKH2PEaKzjp2JIH+Wzcwe+vdk1+1nTon37X4/MsF?=
 =?iso-8859-1?Q?wxhwq50uJ3yxKYUIwXY=3D?=
Content-Type: multipart/alternative;
	boundary="_000_PAXP250MB0626A80F1DC33D033F0274869EEA9PAXP250MB0626EURP_"
MIME-Version: 1.0
X-OriginatorOrg: etteplan.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXP250MB0626.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b9d1283-c143-41ac-dc09-08dae25da81e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2022 07:41:50.6620
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1f23d6d3-b158-4e45-b7e1-7631cf28c804
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /cseH0QRKEcsNtkENYz4HqXko8WOmpixCTeXdEnIIJfEYBnxpSC0MBIgEsFfA/2q5gvkOGNcHRjnfcNVelO6yuau+nksAkI3xw72rdcMh38=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P250MB0056
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Dec 2022 07:42:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58838

--_000_PAXP250MB0626A80F1DC33D033F0274869EEA9PAXP250MB0626EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks! That helped my team find out a solution or at least a work-around: =
setting do_configure[network] and do_compile[network] to "1" in local.conf.

I would have another related questions, though: Should the commands requiri=
ng network access work if they are invoked from do_fetch? I tried that and =
it didn't work.


Best regards,
Antti G=E4rding

________________________________
Kohteesta: Martin Jansa <martin.jansa@gmail.com>
L=E4hetetty: maanantaina 19. joulukuuta 2022 klo 16.16
Vastaanottaja: G=E4rding Antti <Antti.Garding@etteplan.com>
Kopio: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
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



--_000_PAXP250MB0626A80F1DC33D033F0274869EEA9PAXP250MB0626EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div dir=3D"auto">Hi,</div>
<div dir=3D"auto" style=3D"color: rgb(33, 33, 33); background-color: rgb(25=
5, 255, 255);">
<br>
</div>
<div dir=3D"auto" style=3D"color: rgb(33, 33, 33); background-color: rgb(25=
5, 255, 255);">
Thanks! That helped my team find out a solution or at least a work-around: =
setting do_configure[network] and do_compile[network] to &quot;1&quot; in l=
ocal.conf.</div>
<div dir=3D"auto" style=3D"color: rgb(33, 33, 33); background-color: rgb(25=
5, 255, 255);">
<br>
</div>
<div dir=3D"auto" style=3D"color: rgb(33, 33, 33); background-color: rgb(25=
5, 255, 255);">
I would have another related questions, though: Should the commands requiri=
ng network access work if they are invoked from do_fetch? I tried that and =
it didn't work.</div>
<div dir=3D"auto" style=3D"color: rgb(33, 33, 33); background-color: rgb(25=
5, 255, 255);">
<br>
</div>
<div dir=3D"auto" style=3D"color: rgb(33, 33, 33); background-color: rgb(25=
5, 255, 255);">
<br>
</div>
<div dir=3D"auto" style=3D"color: rgb(33, 33, 33); background-color: rgb(25=
5, 255, 255);">
Best regards,</div>
<div dir=3D"auto" style=3D"color: rgb(33, 33, 33); background-color: rgb(25=
5, 255, 255);">
Antti G=E4rding</div>
<div id=3D"mail-editor-reference-message-container" dir=3D"auto"><br>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" style=3D"font-size: 11pt;"><strong>Kohteesta:</st=
rong> Martin Jansa &lt;martin.jansa@gmail.com&gt;<br>
<strong>L=E4hetetty:</strong> maanantaina 19. joulukuuta 2022 klo 16.16<br>
<strong>Vastaanottaja:</strong> G=E4rding Antti &lt;Antti.Garding@etteplan.=
com&gt;<br>
<strong>Kopio:</strong> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctop=
roject.org&gt;<br>
<strong>Aihe:</strong> Re: [yocto] Issue with accessing network from a reci=
pe<br>
</div>
<br>
<div dir=3D"ltr">Hi,
<div><br>
</div>
<div>that is intentional, recipes should fetch sources with bitbake fetcher=
 (which respects MIRROR/PREMIRROR/DL_DIR etc) in do_fetch and network shoul=
dn't be used in other tasks (unless explicitly enabled in well explained ex=
ceptions).</div>
<div><br>
</div>
<div>bitbake can now restrict network access in various tasks based on &quo=
t;network&quot; flag as implemented in:<br>
&nbsp; <a href=3D"https://eur02.safelinks.protection.outlook.com/?url=3Dhtt=
ps%3A%2F%2Fgit.openembedded.org%2Fbitbake%2Fcommit%2F%3Fid%3D0746b6a2a32fec=
4c18bf1a52b1454ca4c04bf543&amp;data=3D05%7C01%7C%7C68bbc2a8d2a04566721208da=
e1cbac1e%7C1f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C638070562123843657%7C=
Unknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiL=
CJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DnHr4o3NfePVtT9Qm5CtFxUyph%2BpIDsA=
Pu0ga7hzqiLk%3D&amp;reserved=3D0" originalsrc=3D"https://git.openembedded.o=
rg/bitbake/commit/?id=3D0746b6a2a32fec4c18bf1a52b1454ca4c04bf543" shash=3D"=
MVOU6VuX/pfhW19DNan/UjSQfzgqQVNITlehbYh7/N19Hv1EQNVHasSNqltRVWz96ep7pPXs9TD=
jGznlJ1/lsKHueLyJfgGn6CmkWOD+mmCmlZ13K1V5yEl43bCcV+/Cg0VHMQVl6ODIsF19yfoDlT=
YkJS4ZLQ6YVNA3m/U0e7Q=3D">
https://git.openembedded.org/bitbake/commit/?id=3D0746b6a2a32fec4c18bf1a52b=
1454ca4c04bf543</a><br>
&nbsp; <a href=3D"https://eur02.safelinks.protection.outlook.com/?url=3Dhtt=
ps%3A%2F%2Fgit.openembedded.org%2Fbitbake%2Fcommit%2F%3Fid%3D9d6341df611a17=
25090444f6f8eb0244aed08213&amp;data=3D05%7C01%7C%7C68bbc2a8d2a04566721208da=
e1cbac1e%7C1f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C638070562123843657%7C=
Unknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiL=
CJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DwVgmBkoIzcgJ%2FxmB5CfM6HBWRzoyGAi=
%2BZi6to7k3veI%3D&amp;reserved=3D0" originalsrc=3D"https://git.openembedded=
.org/bitbake/commit/?id=3D9d6341df611a1725090444f6f8eb0244aed08213" shash=
=3D"NYYgVWyxrL9XKK3vDGq0e/8nfwn266OvsPNLRRkvKQ7GA1AEHzVspl8pCWbHbh9gwgp2PjK=
8bP36Y5z8ecVzPLNYuuOAxHfwDeG9j/JigfLr6g4FRzbElcpWugpxvpvTNqW7RInjbniUe5KdeW=
DlvoI7ZIoP0mApL5qiLlTFDEU=3D">
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
2Bnoc5TPWUhXXb13lRjlXK9g%3D&amp;reserved=3D0" originalsrc=3D"https://git.op=
enembedded.org/openembedded-core/commit/?id=3D7ce1e88a3ad85bbb925bb9f7167dc=
0a5fd1c27f4" shash=3D"LkxSkK7iUdgoVcz00w8GLSpL4QYFVcqoRyS3HA59aBXsVrBA2OpqG=
r/jFBcgoZ3V7ChoD7tUMN1PegUb0Pp3v0QQlX1/MJMOV8SuH8BWHNtoVCVylachENIAhobyMfjI=
IP9apZyKk0+lVwbYfaCmvz4/1srfKnhGkvW7+divU48=3D">
https://git.openembedded.org/openembedded-core/commit/?id=3D7ce1e88a3ad85bb=
b925bb9f7167dc0a5fd1c27f4</a><br>
</div>
<div><br>
</div>
<div>Regards,</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 19, 2022 at 2:02 PM G=E4r=
ding Antti via
<a href=3D"https://eur02.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F=
%2Flists.yoctoproject.org%2F&amp;data=3D05%7C01%7C%7C68bbc2a8d2a04566721208=
dae1cbac1e%7C1f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C638070562123843657%=
7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWw=
iLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3Dk0%2Fi49SgkdqHptYWr%2BvwituUCyB=
B2%2FP1kBfaH%2Bk84O8%3D&amp;reserved=3D0" originalsrc=3D"http://lists.yocto=
project.org/" shash=3D"sYckn7QVA0V7PpgMpWwtmd6ip73oy4RJJGbKMFBjOW0GSu8kJEfu=
vZnqGNUndHtFXWv6mKiYG+U+EhHhTKaVclOGYVwH6m0byaevzMhnhbzbeHKyf96oAljMXZY2EoL=
bXS9wQeatu0XQ9SF8H9Tnt5e5a7P9sDwKX0dtu3EE2DY=3D">
lists.yoctoproject.org</a> &lt;Antti.Garding=3D<a href=3D"mailto:etteplan.c=
om@lists.yoctoproject.org">etteplan.com@lists.yoctoproject.org</a>&gt; wrot=
e:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
<div class=3D"msg-5343277308938305858">
<div lang=3D"FI" style=3D"">
<div class=3D"m_4093437154112851462WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am having an issue with a rec=
ipe whose do_configure requires network connections and I wonder if this is=
sue could be related to Yocto so that this list would be the correct place =
to ask for ideas.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The problem appears when trying=
 to build dotnet-hello-world which comes with meta-dotnet (</span><a href=
=3D"https://eur02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgit=
hub.com%2Fjeremy-prater%2Fmeta-dotnet&amp;data=3D05%7C01%7C%7C68bbc2a8d2a04=
566721208dae1cbac1e%7C1f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C6380705621=
23843657%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTi=
I6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DnBS8Ja%2BxFCyOrVn8%2BV=
6Nr6z4oS8X5ShrXkAFBvNjDPM%3D&amp;reserved=3D0" originalsrc=3D"https://githu=
b.com/jeremy-prater/meta-dotnet" shash=3D"rKANauBQYEoNnEbojAJzV5PzhV9DUTugV=
a1GTI0dH7xqrkn2yMDuhkDHS98kd709DbqzPoQep6oFlJtnz7thsSMHdqaqGRpxAuxbfomyxcxF=
yYSpGSLLTO+HZsMbBZr1auELWrz05es3tFYj6Iy/hR+zp8slCX7APBDrclM3eBM=3D" target=
=3D"_blank"><span lang=3D"EN-US">https://github.com/jeremy-prater/meta-dotn=
et</span></a><span lang=3D"EN-US">).
 I am not the only one having this issue, but many people, including the la=
yer's author, also report having no problems. Googling gives a lot of sugge=
stions, but as this is related to .NET, all of them are related to Windows =
/ Visual Studio environment and
 I don't know how to apply them using Yocto.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">In short, do_configure for dotn=
et-hello-world invokes the .NET SDK's tool dotnet as a host tool to fetch w=
hat is needed to build and run the program. As a part of that, it uses NuGe=
t, the package manager for .NET, which
 says &quot;error NU1301: Unable to load the service index for source </spa=
n><a href=3D"https://eur02.safelinks.protection.outlook.com/?url=3Dhttps%3A=
%2F%2Fapi.nuget.org%2Fv3%2Findex.json&amp;data=3D05%7C01%7C%7C68bbc2a8d2a04=
566721208dae1cbac1e%7C1f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C6380705621=
23843657%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTi=
I6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DAOKlXUv0ktrRXh1iK6own5=
zIyzq9OMwHkDweuOQQuRg%3D&amp;reserved=3D0" originalsrc=3D"https://api.nuget=
.org/v3/index.json" shash=3D"vaXMGAxesnJI7n0NinCEvEfZmYdi10BoBcy8gw+QziQlRz=
MP3Q+i6Gv95sIFctI1VULf/LmgEEqL/PhcxO9mnt3fd8q9X5rzXsCkICTL7iA3pDcr1H/BlBKjU=
STzYtrk+ndvlfNQFl11EUzkPK+VjIDXIsX+9q5dnekC+BDWmB8=3D" target=3D"_blank"><s=
pan lang=3D"EN-US">https://api.nuget.org/v3/index.json</span></a><span lang=
=3D"EN-US">&quot;.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If I modify the recipe so that =
it tries to curl that file, I get &quot;Could not resolve host:
<a href=3D"https://eur02.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F=
%2Fapi.nuget.org%2F&amp;data=3D05%7C01%7C%7C68bbc2a8d2a04566721208dae1cbac1=
e%7C1f23d6d3b1584e45b7e17631cf28c804%7C0%7C0%7C638070562123843657%7CUnknown=
%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6=
Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DUpta%2F3f1sPoPAVhM7s3ABvgygraPXIwA14Da4c=
RYfL8%3D&amp;reserved=3D0" originalsrc=3D"http://api.nuget.org/" shash=3D"t=
gmkBce/n1paLEDE0eRATPSWGhOVxQhKxd5EqPFUmahj/ktjCTvA+FKbSCtj44wIP8Bkk8yszXwW=
vlgtH2qRJSmtevt3CmXzym3l+8t20jmOaPDTWg+tchj0DLyqSXJ0erMNVY1g2p17SqVH1BXByl4=
xNwSA29Ca4i1Z4X0TD6w=3D" target=3D"_blank">
api.nuget.org</a>&quot;. If I do the same but use numeric address, I get &q=
uot;Couldn't connect to server&quot;.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If I run the commands in the re=
cipe manually in the same environment I use for Yocto builds, using .NET SD=
K I have installed manually, they work.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My build environment is Ubuntu =
20.04 run inside a Docker container.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal">Best regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Antti G=E4rding<u></u><u></u></p>
</div>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58831): <a href=3D"https://eur02.safelinks.protection.o=
utlook.com/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Fmessag=
e%2F58831&amp;data=3D05%7C01%7C%7C68bbc2a8d2a04566721208dae1cbac1e%7C1f23d6=
d3b1584e45b7e17631cf28c804%7C0%7C0%7C638070562123843657%7CUnknown%7CTWFpbGZ=
sb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3=
000%7C%7C%7C&amp;sdata=3DttNSefU3zhwKswk9E9lJhrTL7JND3pcIx0fRogerzUo%3D&amp=
;reserved=3D0" originalsrc=3D"https://lists.yoctoproject.org/g/yocto/messag=
e/58831" shash=3D"xLP8AH/jYFA+XX+rgSsFUEoQeNb5iXdUvQXBzVVGtwYWYjlZEREaMq/43=
NxGxvBg9Prp3VfOt3wF75ZtlMhWMz+vb3ATEVzW9t8OqU/6wtCgk04y1sF5e2wxLHnQL2S+wvI1=
6vAcLnIzGkncJhCxWxluUvOf9ygU/t2OIcE4skw=3D" rel=3D"noreferrer" target=3D"_b=
lank">
https://lists.yoctoproject.org/g/yocto/message/58831</a><br>
Mute This Topic: <a href=3D"https://eur02.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fmt%2F95764092%2F3617156&amp;d=
ata=3D05%7C01%7C%7C68bbc2a8d2a04566721208dae1cbac1e%7C1f23d6d3b1584e45b7e17=
631cf28c804%7C0%7C0%7C638070562123999877%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC=
4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&am=
p;sdata=3DBu44bJUc881McFGixdgBk6h%2FKJUlyVbmNu6zeUQMrk0%3D&amp;reserved=3D0=
" originalsrc=3D"https://lists.yoctoproject.org/mt/95764092/3617156" shash=
=3D"ncgrqM4yrOFj+rc4qI9RL00VRExp+gDm9yYYka+i8Y+HiZ7CioDfmI/FFNgVXpnVYCA8zEH=
3ODKwNBAn/YTPS6Ix/vRrjPyeCx54VOIfCmXUiXmxkfRYOHJrXosxOFXO3KGptTH7gI+B3XFWBn=
o5DBR+I3Eo7tKvuRZ0Mwo31Mk=3D" rel=3D"noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/mt/95764092/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">
yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://eur02.safelinks.protection.outlook.com/?url=
=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Funsub&amp;data=3D05%7=
C01%7C%7C68bbc2a8d2a04566721208dae1cbac1e%7C1f23d6d3b1584e45b7e17631cf28c80=
4%7C0%7C0%7C638070562123999877%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAi=
LCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3D=
9jIeQariiOq1rKxR9MuvgeTLmYA5WxZav7Nsu2w5y20%3D&amp;reserved=3D0" originalsr=
c=3D"https://lists.yoctoproject.org/g/yocto/unsub" shash=3D"hKxmSiviAxc8gQj=
JDQZDUUkGFqcH2X5TAQ1l735h/ebjeMCFmIKLVKxs5lggveYYg7PFumsgOqt/BX3LtaY3vJoVnf=
XHyRnM+rVFCyub0PHfQcAbGIjctuqd4j6Vrkgl+WOBc7AsGWJMMl48jx8pimjAUqxpqxp6SYP9l=
Djn1Uw=3D" rel=3D"noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:Martin.=
Jansa@gmail.com" target=3D"_blank">Martin.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</div>
</blockquote>
</div>
<br>
</div>
</body>
</html>

--_000_PAXP250MB0626A80F1DC33D033F0274869EEA9PAXP250MB0626EURP_--

