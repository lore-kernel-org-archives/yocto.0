Return-Path: <gary@missionsecure.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05697C433F5
	for <webhook@archiver.kernel.org>; Tue,  8 Mar 2022 19:15:26 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (NAM10-DM6-obe.outbound.protection.outlook.com [40.107.93.42])
 by mx.groups.io with SMTP id smtpd.web10.12402.1646766924413717043
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Mar 2022 11:15:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@missionsecure.com header.s=selector2 header.b=TM9n1Sfe;
 spf=pass (domain: missionsecure.com, ip: 40.107.93.42,
 mailfrom: gary@missionsecure.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O4O6r344hBY6RNRo3ihDs9y+65ImF/m6B71JrfqI/cLq4mE56NMAiEgyMLx9eXee3SIGUkEAhCM8mU10QnjZ56BQpQRQzmYGbpiy0y/Gd44d2coyQy2qGFtKtbRpWZ914FyfghWIyjmJcuALXoIrT+yyDTYz4pVZwmHdfydEGqp1a1VdJIiSfCalsMuk3R+jLxynjfIOVe9zpP1XrAg9nXbQYcg4W/RTVg1G9lHahC1EsqbsAOk4SdYklKZ52i4+2EdyZEs/+FPrPaXtgrcCAB9g1YA2DPdWpyrnP7TGbfSlbgcklqwjZVRzWyppNp6JSOzEW4D2ZJBKMQlu6zbpnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IXKkYeUL9sOfvbktEmbzUfxKmvOGlE/93Jf8mWeyIKI=;
 b=bM4oRDCpKmCdIo6QryRYwBiZbv4gJPGOGaOh990/UzgNvPoX3961KhSYlLJw5XT2X5c7/DZT4QOrmazZadP13TvpSLrd08FTsnZDitcQYfsVae0H1SPwGl2zpyG0tGxx5geXhvPJPsMNslj/03sReTiiRADm+rBAW86rK/s0qJqGvqSDGV1J9amGZDParAqVoePF2LyFbCbRLXU9v/O1XYZDaLtKajjlraOLHMZFKYbZPvTRN36q0+KGK8yJuwdMKKIdyZBOYq/xCXIrhgkm8guk9etD+vGKVT9z3UW03m1qfBmIw6fj3UX6Ka6r/rZI4jIDxaoV/iiDIijO6I//Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=missionsecure.com; dmarc=pass action=none
 header.from=missionsecure.com; dkim=pass header.d=missionsecure.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=MissionSecure.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IXKkYeUL9sOfvbktEmbzUfxKmvOGlE/93Jf8mWeyIKI=;
 b=TM9n1SfeNLIYtMvglkgrZniotWqwsfCj7gqfu5HGOUJIEhU5jnKvjVWU+1MIACo1JcgLAwiVtBCumViovRy9mybbc14XauI+aBOpqsZIvpK/5ynqVhaI56PaEVfeCJ9XzFJg8fzL4+C3zLfXPY3xLr8ZslMwt/bkgA28bcF+HgQ=
Received: from MN2PR17MB3903.namprd17.prod.outlook.com (2603:10b6:208:20f::14)
 by DM6PR17MB2585.namprd17.prod.outlook.com (2603:10b6:5:71::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Tue, 8 Mar
 2022 19:15:19 +0000
Received: from MN2PR17MB3903.namprd17.prod.outlook.com
 ([fe80::91e0:e242:9425:f0ab]) by MN2PR17MB3903.namprd17.prod.outlook.com
 ([fe80::91e0:e242:9425:f0ab%5]) with mapi id 15.20.5038.027; Tue, 8 Mar 2022
 19:15:19 +0000
From: Gary Huband <Gary@MissionSecure.com>
To: Khem Raj <raj.khem@gmail.com>
CC: akuster808 <akuster808@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] suricata: enable lua support
Thread-Topic: [yocto] suricata: enable lua support
Thread-Index: 
 AQHYL/yW408Hdrs0QUShaIM8sTH4AayvqVWAgAAujwCAAB6gAIAAGMAqgABdnACABXPmiQ==
Date: Tue, 8 Mar 2022 19:15:19 +0000
Message-ID: 
 <MN2PR17MB39037D37E4C2FA650755EEADC3099@MN2PR17MB3903.namprd17.prod.outlook.com>
References: 
 <CAMKF1sqMQVeTO_FyyrUWRmV+JjLFH5mxNTvL+JxDgoBrck6V4w@mail.gmail.com>
 <13396.1646434954779482206@lists.yoctoproject.org>
 <d32cf394-4580-4549-0b8c-dd05a61fb1a4@gmail.com>
 <MN2PR17MB39031594692FB5064E0F4225C3069@MN2PR17MB3903.namprd17.prod.outlook.com>
 <CAMKF1srBN=obfQnySFAbcPnunuOkfxaTPk8LsdjB8REyiqCNAA@mail.gmail.com>
In-Reply-To: 
 <CAMKF1srBN=obfQnySFAbcPnunuOkfxaTPk8LsdjB8REyiqCNAA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 6a1ccaab-3d73-b33a-cfc6-0121232eaa88
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=MissionSecure.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4db173b1-0439-4bd8-bc33-08da0137fc33
x-ms-traffictypediagnostic: DM6PR17MB2585:EE_
x-microsoft-antispam-prvs: 
 <DM6PR17MB258565B120B17AA8AF10367CC3099@DM6PR17MB2585.namprd17.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 MxdfwuDsza9KS2xxxnoPzYET5kT/93xGOQN+xmMfEMstB0jYbVa5Eh31bB9p8Y0b07fAzO/0CRQ2Kot08QXdus5c/yyMuXvytOrqxjLdpvd25lEP01LJtTpP1C5M4eml6jZ/xmmnKk61Bt71whb4k3gWQksizAvpopt8+izHcTGTiZ9BWQZMgP+SaRD7cSAdZa8d1f5YhM3Qkm0+7ixiJWkh9mFMsSDmPPV53CTd7pkg0l4S0YFWW2PsL20g6kRq8rcoX4x77e+rgr6B74ucFmSV/tP7H1L+XuRoh3csiSqtCGXnVzv1UZSqogcISOpDekorQqU7MHbaPxtry7kwNp+mrlmWxgA7lSItCAFejI5f3gyRFrxcjJssw9HN42I0w2VLhemCVxNIy8zQS7sjOJUNN3OajGCpIVnwxqwzpZNHtuFKT8aR4nhtVtwWH65tRPh4OAGkAQYN0YaK3kpodEcMGZZUlcy/c8vssNtvhJcGOrOgS7TKJdpfmiLPEz7QNTRCH31lhTZw3nD+s0tT2zCdTKmIjeMnRavUypoQIb6KGJJOf4N9ruEvy5Kxt6wxboAXj7efRwJd87PvKuocsPexXmyJbin9qu38frvLguAGgMDbC9URs5St2BdUCZHeFbMVe5hnZJaGqhtrpQgLBtb/GMtl8U2KgXnIcqa0WySMkLqyzVeqRWKnc1c1xngHrE0R/46f+7H1mgIqp1kX7Bw87z/ai7s/4/EJjCQK5iaQh6BhPEAHNnbP9e7pS3MdITzp/wqWOtOnwhPaBtUYNW0zhJwJH2L35Gbblmi0NwwBfwFbRgWYjXMRJP85Qj2i
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR17MB3903.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(396003)(39830400003)(346002)(366004)(136003)(376002)(45080400002)(53546011)(508600001)(6506007)(186003)(71200400001)(966005)(26005)(9686003)(166002)(38100700002)(38070700005)(83380400001)(7696005)(122000001)(33656002)(8936002)(52536014)(5660300002)(40140700001)(19627405001)(66946007)(64756008)(76116006)(66556008)(66476007)(66446008)(4326008)(8676002)(86362001)(55016003)(2906002)(54906003)(6916009)(316002)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?/Kwtpvd0pUefzSage43STtkn/eglNvxrnIYa4XbOQHWl0/gWi5ZygTz+wjW/?=
 =?us-ascii?Q?XRLgLD7DmhY8+ZFL6yhWxyJr1wyLMpg1DJsWiz3QSnmf6Z78LAEDiYJteRoI?=
 =?us-ascii?Q?O0EUuOI0F2qzOhUvDLDKc4jQeN0cn5XYuyqorERMWrgyOT4Mo0Kl6e8Ywcbb?=
 =?us-ascii?Q?1AAa7+bm+nHf04jl2tJ2h6d9uP2BULJeBOCcbCMhBMxwxpE1Ty0WACkG7EdD?=
 =?us-ascii?Q?d92Vv+sXS0A+3vbHJaP2J9u03w6YVvfoQRByvyff4EInexIwff/kPlu7W0Zb?=
 =?us-ascii?Q?rQoQCtz5vujHxyY/dKF+1DzZ/Qyne+Nw0d9n5OsaK8qys3hUXa9pO7l1A9GN?=
 =?us-ascii?Q?FmPt0be42JhNEPeFYLbaxBx0hZ4q/4zmiy82WsYNSYO2NPhcgUHpjJHnpJes?=
 =?us-ascii?Q?FX3bwodG/5iIBt4N+E89Nr6ZmUka3hY1aetQTcNIFagsdgwdzhED8JgnoNy4?=
 =?us-ascii?Q?uztc3gq5w+KDRccPa0ReeAQIHV2JsQ4+zLJqKCdXpjoXpZaS2YPOF9c/+cyy?=
 =?us-ascii?Q?Ua+Jz/7rwOtZEVSDRmKiqVPl+TCwOjmR1lriOfP4lzfZNGmngVwupsPEjWYJ?=
 =?us-ascii?Q?Ef0j9+ENj6EIV6+lMfLNo3aJ8lMMNq6WuCm1jIYG8WbDbbjdR0/KmzTVgshh?=
 =?us-ascii?Q?2CYK9MKFyyC6OSU+7aTevAKoFyRXhxWDHsQY3QDxZ+AiD3C1E44poSaVxmZM?=
 =?us-ascii?Q?ZM5cclQyspyqcbfD5R+/rYKtE20WPToc63Uq51qUS3d0ubpBFJPzRUkyBL2A?=
 =?us-ascii?Q?XX+j6TvZ9UtFuWUatlh2UZsVdWvJx8aJCG+fK5ltbKki6YwjmysmvCUgjxWT?=
 =?us-ascii?Q?f9CL6C7B/OqaHSwj63BP3BLCRylN7zcoDpknQWaz5KdDa9SUlT+Cw5ufNHWY?=
 =?us-ascii?Q?HzqD0mh5n9k2KElYqD5+EDJCcZhDubuUwtDOFJ4kcZo2dpdF0tGRZfIxhih5?=
 =?us-ascii?Q?lYuhzla0hahhEgT96UJX1b+hw5mbBCeOwXgBhjWzrrZ79fTN5d3HwKOCx4wF?=
 =?us-ascii?Q?uwvXxpWv687eG8YNddHE3+9h028b/soowdBl93+23ROUy8Feic83aErWJzIJ?=
 =?us-ascii?Q?42E53I8DF5B/CMoEb6Dr91bP9Vm+V5LC9qnh3+RTZfmMKYHRtzpkau1ucoiW?=
 =?us-ascii?Q?X4lVWUn/yd4JkCfNnOtd7gyWnU2zd3KXDFqg7Bx4GqzJ1z238MWR5XE4WpW8?=
 =?us-ascii?Q?ktX2LxKYjnD768w8eFG5zf/4OKXyIeHvt67zhdCyP15fJM3tpdr1+nCioruL?=
 =?us-ascii?Q?T335Je60/Qmk3VXftHhyV3POaHhGPKc0sRQmlYN/gbQMOEMgOhpNWAh75Bz6?=
 =?us-ascii?Q?3bvV0uvpB4sdYyMTWs5fpNs6LVLrpL0pxGUBa00ogjvX5bNiuoLiOgWSqUIh?=
 =?us-ascii?Q?L06r8z00DY39BxSYdsgI4viO2o+jJnw0lA6rkgMiayycckbmv9gf6pvajJ4j?=
 =?us-ascii?Q?UWOItT8S955yChuwzhek9ZQ9dSMwhUayw4PIhHZfPSKyVpAQgXn447bZSYan?=
 =?us-ascii?Q?fVotbX84ZXNTPZ8627Dj+yUVNLytffK2ZI4iekQ7PgAX4iC5yAhodjCTL/Ou?=
 =?us-ascii?Q?D4QRjhcbK+PSpLX4GH2ybv22EgmRI5DVNU7isskDzQg3dvdZcZwHbAZLdyUo?=
 =?us-ascii?Q?QQ=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_MN2PR17MB39037D37E4C2FA650755EEADC3099MN2PR17MB3903namp_"
MIME-Version: 1.0
X-OriginatorOrg: MissionSecure.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR17MB3903.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 4db173b1-0439-4bd8-bc33-08da0137fc33
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2022 19:15:19.1487
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f0ca9611-f13f-4dc9-8e1b-119172b8ec5d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 8e3WcD96rP0TU7xS9h8C5AQdNcid8B8KpMKgP+yo64nB3QiNyTsDuCTHII2RkMiYH56kXH8pid9ZZhLmBXCgTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR17MB2585
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Mar 2022 19:15:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56396

--_000_MN2PR17MB39037D37E4C2FA650755EEADC3099MN2PR17MB3903namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The problems is that the configure.ac file is hard coded for lua5.1.  See

https://forum.suricata.io/t/lua-5-4-3-and-suricata-undefined-reference-erro=
r/1906/5

I created a patch to change configure.ac to use lua5.3 (I'm using Zeus). Bu=
t when I "bitbake suricata" I'm getting the same error because it's not upd=
ating the configure file.  Do I also have to fix the configure file or is t=
here some way I can force a autoreconf?

Thanks

Gary
________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Saturday, March 5, 2022 2:55 AM
To: Gary Huband <Gary@MissionSecure.com>
Cc: akuster808 <akuster808@gmail.com>; yocto@lists.yoctoproject.org <yocto@=
lists.yoctoproject.org>
Subject: Re: [yocto] suricata: enable lua support



On Fri, Mar 4, 2022 at 6:23 PM Gary Huband via lists.yoctoproject.org<https=
://nam04.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Flists.yoctopr=
oject.org%2F&data=3D04%7C01%7Cgary%40missionsecure.com%7Cfdd7bb729dab4632af=
a508d9fe7da05d%7Cf0ca9611f13f4dc98e1b119172b8ec5d%7C0%7C1%7C637820637801952=
624%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1=
haWwiLCJXVCI6Mn0%3D%7C3000&sdata=3DFlf1GviaQggt7vNDuC46swBvjTl1%2FJoaw4sVQ6=
RRDW4%3D&reserved=3D0> <gary=3Dmissionsecure.com@lists.yoctoproject.org<mai=
lto:missionsecure.com@lists.yoctoproject.org>> wrote:
The Suricata install site also says to install

liblua5.1-dev

Does this mean that Suricata needs lua 5.1 (which is very old)?? For Zeus t=
he lua recipe is 5.3.5.

Do I need to create a recipe for lua 5.1?

seems so, lua5.1 is not ABI compatible with newer Lua, so if an app needs t=
his version then
you will have to add it, perhaps see if you can just use internal version o=
r something like that

Gary
________________________________
From: akuster808 <akuster808@gmail.com<mailto:akuster808@gmail.com>>
Sent: Friday, March 4, 2022 7:52 PM
To: Gary Huband <Gary@MissionSecure.com>; yocto@lists.yoctoproject.org<mail=
to:yocto@lists.yoctoproject.org> <yocto@lists.yoctoproject.org<mailto:yocto=
@lists.yoctoproject.org>>
Subject: Re: [yocto] suricata: enable lua support



On 3/4/22 15:02, Gary Huband via lists.yoctoproject.org<https://nam04.safel=
inks.protection.outlook.com/?url=3Dhttp%3A%2F%2Flists.yoctoproject.org%2F&d=
ata=3D04%7C01%7Cgary%40missionsecure.com%7Cfdd7bb729dab4632afa508d9fe7da05d=
%7Cf0ca9611f13f4dc98e1b119172b8ec5d%7C0%7C1%7C637820637801952624%7CUnknown%=
7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6M=
n0%3D%7C3000&sdata=3DFlf1GviaQggt7vNDuC46swBvjTl1%2FJoaw4sVQ6RRDW4%3D&reser=
ved=3D0> wrote:
>
> Adding DEPENDS +=3D "lua"  fixed that error.  I'm assuming that allows
> the configure to find lua.
>
> Now I'm getting a compile error
>

I added this to the recipe and it appears the liblua it  is looking for
does not exist.

PACKAGECONFIG[lua] =3D "--enable-lua
--with-liblua-includes=3D${STAGING_INCDIR}
--with-liblua-libraries=3D=3D${STAGING_LIBDIR}, --disable-lua,lua, lua"

Error:

checking for luaL_openlibs in -llua5.1... no
|
|    ERROR!  liblua library not found, go get it
|    from https://nam04.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%=
2Flua.org%2Findex.html&amp;data=3D04%7C01%7Cgary%40missionsecure.com%7C7f98=
15dcc0c142b6d92d08d9fe4262cb%7Cf0ca9611f13f4dc98e1b119172b8ec5d%7C0%7C1%7C6=
37820383359878260%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luM=
zIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=3DFdB7jyQwXX%2BVjjhLSDhK=
NSt41GUOgdg%2FG3ajSKIElo0%3D&amp;reserved=3D0<https://nam04.safelinks.prote=
ction.outlook.com/?url=3Dhttp%3A%2F%2Flua.org%2Findex.html&data=3D04%7C01%7=
Cgary%40missionsecure.com%7Cfdd7bb729dab4632afa508d9fe7da05d%7Cf0ca9611f13f=
4dc98e1b119172b8ec5d%7C0%7C1%7C637820637802108939%7CUnknown%7CTWFpbGZsb3d8e=
yJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&sd=
ata=3DIIiVAzlCWInZxopdvMsLgkyuDmB5YSRF%2Fa%2FCsQAl7r0%3D&reserved=3D0> or y=
our distribution:
|
|    Ubuntu: apt-get install liblua5.1-dev


It may be  the lua recipe.  I only see the static lib 'liblua.a'

-armin

> |
> /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
> util-lua-dns.o: in function `DnsGetTxid':
> |
> /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:80:
> undefined reference to `rs_dns_lua_get_tx_id'
> |
> /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
> util-lua-dns.o: in function `DnsGetAnswerTable':
> |
> /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:125:
> undefined reference to `rs_dns_lua_get_answer_table'
> |
> /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
> util-lua-dns.o: in function `DnsGetAuthorityTable':
> |
> /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:133:
> undefined reference to `rs_dns_lua_get_authority_table'
> |
> /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
> util-lua-dns.o: in function `DnsGetQueryTable':
> |
> /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:117:
> undefined reference to `rs_dns_lua_get_query_table'
> |
> /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
> util-lua-dns.o: in function `DnsGetDnsRrname':
> |
> /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:69:
> undefined reference to `rs_dns_lua_get_rrname'
> |
> /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
> util-lua-dns.o: in function `DnsGetRcode':
> |
> /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:92:
> undefined reference to `rs_dns_lua_get_rcode'
> | collect2: error: ld returned 1 exit status
> | Makefile:2118: recipe for target 'suricata' failed
> | make[2]: *** [suricata] Error 1
>
>
>
>


Gary Huband
Sr. Software and Systems Engineer

Office: 434.284.8071 x720
Direct: 434.260.4995
Gary@MissionSecure.com

Follow Us!
LinkedIn<https://nam04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%=
2Fwww.linkedin.com%2Fcompany%2Fmission-secure-inc-&data=3D04%7C01%7Cgary%40=
missionsecure.com%7Cfdd7bb729dab4632afa508d9fe7da05d%7Cf0ca9611f13f4dc98e1b=
119172b8ec5d%7C0%7C1%7C637820637802108939%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiM=
C4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&sdata=3DOG=
%2F50BtrZR9AjIfTtJTuropOzChcINERZyhRWyWyLGA%3D&reserved=3D0>  |  Blog<https=
://nam04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.missions=
ecure.com%2Fblog%3Futm_source%3Demail-signature%26utm_medium%3Demail%26utm_=
campaign%3Dblog-email-sig&data=3D04%7C01%7Cgary%40missionsecure.com%7Cfdd7b=
b729dab4632afa508d9fe7da05d%7Cf0ca9611f13f4dc98e1b119172b8ec5d%7C0%7C1%7C63=
7820637802108939%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMz=
IiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&sdata=3Dpv1FQe%2F9E0oVWISZeGtO3DCs9=
jWOOyXFsH1kDtruQh4%3D&reserved=3D0>  |  Website<https://nam04.safelinks.pro=
tection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.missionsecure.com%2F%3Futm_sou=
rce%3Demail-signature%26utm_medium%3Demail%26utm_campaign%3Dweb-email-sig&d=
ata=3D04%7C01%7Cgary%40missionsecure.com%7Cfdd7bb729dab4632afa508d9fe7da05d=
%7Cf0ca9611f13f4dc98e1b119172b8ec5d%7C0%7C1%7C637820637802108939%7CUnknown%=
7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6M=
n0%3D%7C3000&sdata=3D9wovY4656fj9McZWqGJH3ZOerurcU2Mvsgdsfd%2FNU7M%3D&reser=
ved=3D0>

: : : : : : : : : : : : : : : : : : : : : : : : : : :

[MSi]

This email and any files transmitted with it are confidential and proprieta=
ry and intended solely for the use of the individual or entity to whom they=
 are addressed. Any dissemination, distribution or copying of this communic=
ation is strictly prohibited without our prior permission. If you received =
this in error, please contact the sender and delete the material from any c=
omputer.


-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
You automatically follow any topics you start or reply to.
View/Reply Online (#56375): https://lists.yoctoproject.org/g/yocto/message/=
56375<https://nam04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fl=
ists.yoctoproject.org%2Fg%2Fyocto%2Fmessage%2F56375&data=3D04%7C01%7Cgary%4=
0missionsecure.com%7Cfdd7bb729dab4632afa508d9fe7da05d%7Cf0ca9611f13f4dc98e1=
b119172b8ec5d%7C0%7C1%7C637820637802108939%7CUnknown%7CTWFpbGZsb3d8eyJWIjoi=
MC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&sdata=3DO=
NpB%2FpsQmxWo%2BNvNLypGYwSKYd6NG4b7RwhiK3KHVbo%3D&reserved=3D0>
Unfollow This Topic: https://lists.yoctoproject.org/unft/89556445/1997914<h=
ttps://nam04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.yo=
ctoproject.org%2Funft%2F89556445%2F1997914&data=3D04%7C01%7Cgary%40missions=
ecure.com%7Cfdd7bb729dab4632afa508d9fe7da05d%7Cf0ca9611f13f4dc98e1b119172b8=
ec5d%7C0%7C1%7C637820637802108939%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwM=
DAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&sdata=3DtklYKDpkWt=
EyC2zgY0PeEm7UAKEyvfRtFMnp%2BWwiWxU%3D&reserved=3D0>
Group Owner: yocto+owner@lists.yoctoproject.org<mailto:yocto%2Bowner@lists.=
yoctoproject.org>
Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub<https://nam04.saf=
elinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2=
Fg%2Fyocto%2Funsub&data=3D04%7C01%7Cgary%40missionsecure.com%7Cfdd7bb729dab=
4632afa508d9fe7da05d%7Cf0ca9611f13f4dc98e1b119172b8ec5d%7C0%7C1%7C637820637=
802108939%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBT=
iI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&sdata=3DfU5G6GNBdRofEwQAzrv%2BRB0%2FCgayOA=
eqGASOjWSsUU8%3D&reserved=3D0> [raj.khem@gmail.com<mailto:raj.khem@gmail.co=
m>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


Gary Huband
Sr. Software and Systems Engineer

Office: 434.284.8071 x720
Direct: 434.260.4995
Gary@MissionSecure.com

Follow Us!
LinkedIn<https://www.linkedin.com/company/mission-secure-inc->  |  Blog<htt=
ps://www.missionsecure.com/blog?utm_source=3Demail-signature&utm_medium=3De=
mail&utm_campaign=3Dblog-email-sig>  |  Website<https://www.missionsecure.c=
om/?utm_source=3Demail-signature&utm_medium=3Demail&utm_campaign=3Dweb-emai=
l-sig>

: : : : : : : : : : : : : : : : : : : : : : : : : : :

[MSi]

This email and any files transmitted with it are confidential and proprieta=
ry and intended solely for the use of the individual or entity to whom they=
 are addressed. Any dissemination, distribution or copying of this communic=
ation is strictly prohibited without our prior permission. If you received =
this in error, please contact the sender and delete the material from any c=
omputer.


--_000_MN2PR17MB39037D37E4C2FA650755EEADC3099MN2PR17MB3903namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
The problems is that the configure.ac file is hard coded for lua5.1.&nbsp; =
See<br>
<br>
<a href=3D"https://forum.suricata.io/t/lua-5-4-3-and-suricata-undefined-ref=
erence-error/1906/5" id=3D"LPlnk483815">https://forum.suricata.io/t/lua-5-4=
-3-and-suricata-undefined-reference-error/1906/5</a><br>
<br>
I created a patch to change configure.ac to use lua5.3 (I'm using Zeus). Bu=
t when I &quot;bitbake suricata&quot; I'm getting the same error because it=
's not updating the configure file.&nbsp; Do I also have to fix the configu=
re file or is there some way I can force a autoreconf?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Thanks</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Gary <br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Khem Raj &lt;raj.khem=
@gmail.com&gt;<br>
<b>Sent:</b> Saturday, March 5, 2022 2:55 AM<br>
<b>To:</b> Gary Huband &lt;Gary@MissionSecure.com&gt;<br>
<b>Cc:</b> akuster808 &lt;akuster808@gmail.com&gt;; yocto@lists.yoctoprojec=
t.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] suricata: enable lua support</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div class=3D"x_gmail_default" style=3D"font-family:monospace,monospace"><b=
r>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, Mar 4, 2022 at 6:23 PM Gary=
 Huband via
<a href=3D"https://nam04.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F=
%2Flists.yoctoproject.org%2F&amp;data=3D04%7C01%7Cgary%40missionsecure.com%=
7Cfdd7bb729dab4632afa508d9fe7da05d%7Cf0ca9611f13f4dc98e1b119172b8ec5d%7C0%7=
C1%7C637820637801952624%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjo=
iV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=3DFlf1GviaQggt7vND=
uC46swBvjTl1%2FJoaw4sVQ6RRDW4%3D&amp;reserved=3D0" originalsrc=3D"http://li=
sts.yoctoproject.org/" shash=3D"UlOvYHNLszF4BwWnPGxdlVp6SoglV5B/JlHL2U2s2Ng=
Dqn2Lt888q5l1i/rI3wdhSKjYCCmmBPkeH/Q8vslBE6IHG1hhL1eg64VuHsEEcV4vLjoq+XsFSH=
r5p7Xl6VWt40C7Cam2Whe1YbIFdkgwPrLBfDEhUmr/zkWGh7nOgSw=3D">
lists.yoctoproject.org</a> &lt;gary=3D<a href=3D"mailto:missionsecure.com@l=
ists.yoctoproject.org">missionsecure.com@lists.yoctoproject.org</a>&gt; wro=
te:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
The Suricata install site also says to install </div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<pre><span>liblua5</span><span>.</span><span>1</span><span>-</span><span>de=
v</span></pre>
Does this mean that Suricata needs lua 5.1 (which is very old)?? For Zeus t=
he lua recipe is 5.3.5.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Do I need to create a recipe for lua 5.1?</div>
</div>
</blockquote>
<div><br>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:monospace,monospace">se=
ems so, lua5.1 is not ABI compatible with newer Lua, so if an app needs thi=
s version then</div>
<div class=3D"x_gmail_default" style=3D"font-family:monospace,monospace">yo=
u will have to add it, perhaps see if you can just use internal version or =
something like that</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Gary<br>
</div>
<div id=3D"x_gmail-m_-5629631484321457538appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_-5629631484321457538divRplyFwdMsg" dir=3D"ltr"><font f=
ace=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>F=
rom:</b> akuster808 &lt;<a href=3D"mailto:akuster808@gmail.com" target=3D"_=
blank">akuster808@gmail.com</a>&gt;<br>
<b>Sent:</b> Friday, March 4, 2022 7:52 PM<br>
<b>To:</b> Gary Huband &lt;Gary@MissionSecure.com&gt;; <a href=3D"mailto:yo=
cto@lists.yoctoproject.org" target=3D"_blank">
yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctopro=
ject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
<b>Subject:</b> Re: [yocto] suricata: enable lua support</font>
<div>&nbsp;</div>
</div>
<div><font size=3D"2"><span style=3D"font-size:11pt">
<div><br>
<br>
On 3/4/22 15:02, Gary Huband via <a href=3D"https://nam04.safelinks.protect=
ion.outlook.com/?url=3Dhttp%3A%2F%2Flists.yoctoproject.org%2F&amp;data=3D04=
%7C01%7Cgary%40missionsecure.com%7Cfdd7bb729dab4632afa508d9fe7da05d%7Cf0ca9=
611f13f4dc98e1b119172b8ec5d%7C0%7C1%7C637820637801952624%7CUnknown%7CTWFpbG=
Zsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C=
3000&amp;sdata=3DFlf1GviaQggt7vNDuC46swBvjTl1%2FJoaw4sVQ6RRDW4%3D&amp;reser=
ved=3D0" originalsrc=3D"http://lists.yoctoproject.org/" shash=3D"UlOvYHNLsz=
F4BwWnPGxdlVp6SoglV5B/JlHL2U2s2NgDqn2Lt888q5l1i/rI3wdhSKjYCCmmBPkeH/Q8vslBE=
6IHG1hhL1eg64VuHsEEcV4vLjoq+XsFSHr5p7Xl6VWt40C7Cam2Whe1YbIFdkgwPrLBfDEhUmr/=
zkWGh7nOgSw=3D" target=3D"_blank">
lists.yoctoproject.org</a> wrote:<br>
&gt;<br>
&gt; Adding DEPENDS +=3D &quot;lua&quot;&nbsp; fixed that error.&nbsp; I'm =
assuming that allows <br>
&gt; the configure to find lua.<br>
&gt;<br>
&gt; Now I'm getting a compile error<br>
&gt;<br>
<br>
I added this to the recipe and it appears the liblua it&nbsp; is looking fo=
r <br>
does not exist.<br>
<br>
PACKAGECONFIG[lua] =3D &quot;--enable-lua <br>
--with-liblua-includes=3D${STAGING_INCDIR} <br>
--with-liblua-libraries=3D=3D${STAGING_LIBDIR}, --disable-lua,lua, lua&quot=
;<br>
<br>
Error:<br>
<br>
checking for luaL_openlibs in -llua5.1... no<br>
|<br>
|&nbsp;&nbsp;&nbsp; ERROR!&nbsp; liblua library not found, go get it<br>
|&nbsp;&nbsp;&nbsp; from <a href=3D"https://nam04.safelinks.protection.outl=
ook.com/?url=3Dhttp%3A%2F%2Flua.org%2Findex.html&amp;data=3D04%7C01%7Cgary%=
40missionsecure.com%7Cfdd7bb729dab4632afa508d9fe7da05d%7Cf0ca9611f13f4dc98e=
1b119172b8ec5d%7C0%7C1%7C637820637802108939%7CUnknown%7CTWFpbGZsb3d8eyJWIjo=
iMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdat=
a=3DIIiVAzlCWInZxopdvMsLgkyuDmB5YSRF%2Fa%2FCsQAl7r0%3D&amp;reserved=3D0" or=
iginalsrc=3D"http://lua.org/index.html" shash=3D"RvzwHsQiwKXK6aqBd0m+YI29tY=
mZ1PK3D8mHyGU+369K++p2zrjFsutyNBl8iqtpA4K2fy44PqofZF/YKK2CWg942w7JGYm79IH21=
VwLJi0nXueecgq6sWc1L64IH/0xhvF6O7OHGIEcgtYWrSSCRZC/zIcskUP7ELmu06IgVwo=3D" =
target=3D"_blank">
https://nam04.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Flua.org%=
2Findex.html&amp;amp;data=3D04%7C01%7Cgary%40missionsecure.com%7C7f9815dcc0=
c142b6d92d08d9fe4262cb%7Cf0ca9611f13f4dc98e1b119172b8ec5d%7C0%7C1%7C6378203=
83359878260%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJ=
BTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;amp;sdata=3DFdB7jyQwXX%2BVjjhLSDhKNS=
t41GUOgdg%2FG3ajSKIElo0%3D&amp;amp;reserved=3D0</a>
 or your distribution:<br>
|<br>
|&nbsp;&nbsp;&nbsp; Ubuntu: apt-get install liblua5.1-dev<br>
<br>
<br>
It may be&nbsp; the lua recipe.&nbsp; I only see the static lib 'liblua.a'<=
br>
<br>
-armin<br>
<br>
&gt; | <br>
&gt; /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
<br>
&gt; util-lua-dns.o: in function `DnsGetTxid':<br>
&gt; | <br>
&gt; /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:80:=
 <br>
&gt; undefined reference to `rs_dns_lua_get_tx_id'<br>
&gt; | <br>
&gt; /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
<br>
&gt; util-lua-dns.o: in function `DnsGetAnswerTable':<br>
&gt; | <br>
&gt; /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:125=
: <br>
&gt; undefined reference to `rs_dns_lua_get_answer_table'<br>
&gt; | <br>
&gt; /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
<br>
&gt; util-lua-dns.o: in function `DnsGetAuthorityTable':<br>
&gt; | <br>
&gt; /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:133=
: <br>
&gt; undefined reference to `rs_dns_lua_get_authority_table'<br>
&gt; | <br>
&gt; /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
<br>
&gt; util-lua-dns.o: in function `DnsGetQueryTable':<br>
&gt; | <br>
&gt; /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:117=
: <br>
&gt; undefined reference to `rs_dns_lua_get_query_table'<br>
&gt; | <br>
&gt; /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
<br>
&gt; util-lua-dns.o: in function `DnsGetDnsRrname':<br>
&gt; | <br>
&gt; /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:69:=
 <br>
&gt; undefined reference to `rs_dns_lua_get_rrname'<br>
&gt; | <br>
&gt; /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
<br>
&gt; util-lua-dns.o: in function `DnsGetRcode':<br>
&gt; | <br>
&gt; /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:92:=
 <br>
&gt; undefined reference to `rs_dns_lua_get_rcode'<br>
&gt; | collect2: error: ld returned 1 exit status<br>
&gt; | Makefile:2118: recipe for target 'suricata' failed<br>
&gt; | make[2]: *** [suricata] Error 1<br>
&gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
</div>
</span></font></div>
<br>
<div style=3D"font-family:Arial; font-size:12px; font-style:normal; text-tr=
ansform:uppercase">
<font color=3D"#595458"><b>Gary Huband</b></font></div>
<div style=3D"font-family:Arial; font-size:11px; font-style:normal"><font c=
olor=3D"#595458"><i>Sr. Software and Systems Engineer</i><br>
<br>
Office: 434.284.8071 x720 <br>
Direct: 434.260.4995 <br>
Gary@MissionSecure.com<br>
</font></div>
<br>
<div style=3D"font-family:Arial; font-size:12px; font-style:normal"><font c=
olor=3D"#595458"><b>Follow Us!</b>
<br>
<a href=3D"https://nam04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2=
F%2Fwww.linkedin.com%2Fcompany%2Fmission-secure-inc-&amp;data=3D04%7C01%7Cg=
ary%40missionsecure.com%7Cfdd7bb729dab4632afa508d9fe7da05d%7Cf0ca9611f13f4d=
c98e1b119172b8ec5d%7C0%7C1%7C637820637802108939%7CUnknown%7CTWFpbGZsb3d8eyJ=
WIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;=
sdata=3DOG%2F50BtrZR9AjIfTtJTuropOzChcINERZyhRWyWyLGA%3D&amp;reserved=3D0" =
originalsrc=3D"https://www.linkedin.com/company/mission-secure-inc-" shash=
=3D"cnuAuLMl7Mru6zEGBe7VVwAGB7HzgqgADh8E4mi8fsg6KZ9GRxmzUBD2eTktLn3c6rjFwz8=
HnGjYikTnKT9PzpEko3XcZ/C5JrhoZj9oAPouUEHGf2XrI7lF79qTMW8Xf+GqPwr5Pcvs4v7cco=
eE7LaHRTVsOl/hW4hLu25rnSQ=3D" target=3D"_blank">LinkedIn</a>&nbsp;&nbsp;|&n=
bsp;&nbsp;<a href=3D"https://nam04.safelinks.protection.outlook.com/?url=3D=
https%3A%2F%2Fwww.missionsecure.com%2Fblog%3Futm_source%3Demail-signature%2=
6utm_medium%3Demail%26utm_campaign%3Dblog-email-sig&amp;data=3D04%7C01%7Cga=
ry%40missionsecure.com%7Cfdd7bb729dab4632afa508d9fe7da05d%7Cf0ca9611f13f4dc=
98e1b119172b8ec5d%7C0%7C1%7C637820637802108939%7CUnknown%7CTWFpbGZsb3d8eyJW=
IjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;s=
data=3Dpv1FQe%2F9E0oVWISZeGtO3DCs9jWOOyXFsH1kDtruQh4%3D&amp;reserved=3D0" o=
riginalsrc=3D"https://www.missionsecure.com/blog?utm_source=3Demail-signatu=
re&amp;utm_medium=3Demail&amp;utm_campaign=3Dblog-email-sig" shash=3D"azmkS=
TpkOPqk2iXDm64wc0P7quamLHSY89+M8B9i464EfbIpA0oyxv2nbBS7nVrtt138gNzZ1G2IsNXL=
RD2hwH2isp19hAjMoA6eqiaUAmdunXUNxGnrsq/P4NnagM8t35QXb/iXiya/EWHR5aXAfxpM3Pg=
Ve997pOcOePkrcgI=3D" target=3D"_blank">Blog</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a =
href=3D"https://nam04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2=
Fwww.missionsecure.com%2F%3Futm_source%3Demail-signature%26utm_medium%3Dema=
il%26utm_campaign%3Dweb-email-sig&amp;data=3D04%7C01%7Cgary%40missionsecure=
.com%7Cfdd7bb729dab4632afa508d9fe7da05d%7Cf0ca9611f13f4dc98e1b119172b8ec5d%=
7C0%7C1%7C637820637802108939%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLC=
JQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=3D9wovY4656fj=
9McZWqGJH3ZOerurcU2Mvsgdsfd%2FNU7M%3D&amp;reserved=3D0" originalsrc=3D"http=
s://www.missionsecure.com/?utm_source=3Demail-signature&amp;utm_medium=3Dem=
ail&amp;utm_campaign=3Dweb-email-sig" shash=3D"xvFOaez3+iOAT1zn/5JjLw1LIUz5=
wxFVxsVvTfwSaalbd49luXPUk45+tnYTfJ+zga0N7t1qGe0Y1wTjt8yBscSTK0WgHH3Yt0GoBEd=
1LB2kg2CAiJS1lG7LD8CU27t+FoxDZRwsL07aDjI4fJ8ICzzMITndkvIwnZqLihb+asM=3D" ta=
rget=3D"_blank">Website</a>
</font></div>
<br>
<div style=3D"color:rgb(0,0,0); font-family:Helvetica; font-size:12px; font=
-style:normal; font-variant:normal; font-weight:normal; letter-spacing:norm=
al; line-height:normal; text-align:start; text-indent:0px; text-transform:n=
one; white-space:normal; word-spacing:0px">
: : : : : : : : : : : : : : : : : : : : : : : : : : : <br>
</div>
<br>
<div><img height=3D"44" width=3D"115" alt=3D"MSi"></div>
<br>
<div style=3D"font-family:Arial; font-size:11px; font-style:normal"><font c=
olor=3D"#595458">This email and any files transmitted with it are confident=
ial and proprietary and intended solely for the use of the individual or en=
tity to whom they are addressed. Any
 dissemination, distribution or copying of this communication is strictly p=
rohibited without our prior permission. If you received this in error, plea=
se contact the sender and delete the material from any computer.</font></di=
v>
<br>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#56375): <a href=3D"https://nam04.safelinks.protection.o=
utlook.com/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Fmessag=
e%2F56375&amp;data=3D04%7C01%7Cgary%40missionsecure.com%7Cfdd7bb729dab4632a=
fa508d9fe7da05d%7Cf0ca9611f13f4dc98e1b119172b8ec5d%7C0%7C1%7C63782063780210=
8939%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik=
1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=3DONpB%2FpsQmxWo%2BNvNLypGYwSKYd6NG4b=
7RwhiK3KHVbo%3D&amp;reserved=3D0" originalsrc=3D"https://lists.yoctoproject=
.org/g/yocto/message/56375" shash=3D"C3cHgUkz4vZEDIUBJrS5JFznbaCWQfQQ2/KQbK=
UP4JZ3m8SkT0zpoFY8GdBPr0GsYy82Y4D4gwHAFoMDLn6QKDRxIkBuN99OBY7g6xATbgxuzisPn=
MhG8O+dLUIxjdMXm7WLOSYHG4/CESc6ND3RExAOXLp5xmSHtuTASFVop7U=3D" rel=3D"noref=
errer" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/message/56375</a><br>
Unfollow This Topic: <a href=3D"https://nam04.safelinks.protection.outlook.=
com/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Funft%2F89556445%2F1997914=
&amp;data=3D04%7C01%7Cgary%40missionsecure.com%7Cfdd7bb729dab4632afa508d9fe=
7da05d%7Cf0ca9611f13f4dc98e1b119172b8ec5d%7C0%7C1%7C637820637802108939%7CUn=
known%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJ=
XVCI6Mn0%3D%7C3000&amp;sdata=3DtklYKDpkWtEyC2zgY0PeEm7UAKEyvfRtFMnp%2BWwiWx=
U%3D&amp;reserved=3D0" originalsrc=3D"https://lists.yoctoproject.org/unft/8=
9556445/1997914" shash=3D"t4bZQ8wFM2ImcyAfvLOnepA+V1OlQsYHbIPX/N/O5i20pJ8I8=
aB6aUMF/rrkATO3wjO1u+hLpC2X4V5n740vpZP723wWv3JS/Xzs4ItHq5IOnMEj9YOXq8+MrUkd=
QzNwRZhcrzjJbiUUUgF2uwL54zTweCeJ9fbpIIlqQqQyIJk=3D" rel=3D"noreferrer" targ=
et=3D"_blank">
https://lists.yoctoproject.org/unft/89556445/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">
yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://nam04.safelinks.protection.outlook.com/?url=
=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Funsub&amp;data=3D04%7=
C01%7Cgary%40missionsecure.com%7Cfdd7bb729dab4632afa508d9fe7da05d%7Cf0ca961=
1f13f4dc98e1b119172b8ec5d%7C0%7C1%7C637820637802108939%7CUnknown%7CTWFpbGZs=
b3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C30=
00&amp;sdata=3DfU5G6GNBdRofEwQAzrv%2BRB0%2FCgayOAeqGASOjWSsUU8%3D&amp;reser=
ved=3D0" originalsrc=3D"https://lists.yoctoproject.org/g/yocto/unsub" shash=
=3D"yvSljgtDTl4Isg/SpgfREU/i2cS38ESiiL8sX89+F51ClK6PvY/K8W1l88qZKDfQCGHdkTX=
S3Mv4d9jAbdpg9W42Xel+5H+mIOj1t8nw3ehb6s9Yr+VDgiEltUc/2+y2NFcrDr9AUxyYjRaGQT=
/sG4TYQQZ018kJuCzTvCuK9eM=3D" rel=3D"noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote>
</div>
</div>
</div>
<br>
<div style=3D"font-family: Arial; font-size: 12px; font-style: normal; text=
-transform: uppercase;">
<font color=3D"#595458"><b>Gary Huband</b></font></div>
<div style=3D"font-family: Arial; font-size: 11px; font-style: normal;"><fo=
nt color=3D"#595458"><i>Sr. Software and Systems Engineer</i><br>
<br>
Office: 434.284.8071 x720 <br>
Direct: 434.260.4995 <br>
Gary@MissionSecure.com<br>
</font></div>
<br>
<div style=3D"font-family: Arial; font-size: 12px; font-style: normal;"><fo=
nt color=3D"#595458"><b>Follow Us!</b>
<br>
<a href=3D"https://www.linkedin.com/company/mission-secure-inc-">LinkedIn</=
a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href=3D"https://www.missionsecure.com/blog?ut=
m_source=3Demail-signature&amp;utm_medium=3Demail&amp;utm_campaign=3Dblog-e=
mail-sig">Blog</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href=3D"https://www.missionse=
cure.com/?utm_source=3Demail-signature&amp;utm_medium=3Demail&amp;utm_campa=
ign=3Dweb-email-sig">Website</a>
</font></div>
<br>
<div style=3D"color: rgb(0, 0, 0); font-family: Helvetica; font-size: 12px;=
 font-style: normal; font-variant: normal; font-weight: normal; letter-spac=
ing: normal; line-height: normal; orphans: auto; text-align: start; text-in=
dent: 0px; text-transform: none; white-space: normal; widows: auto; word-sp=
acing: 0px; -webkit-text-stroke-width: 0px;" class=3D"">
: : : : : : : : : : : : : : : : : : : : : : : : : : : <br>
</div>
<br>
<div><img height=3D"44" width=3D"115" alt=3D"MSi" src=3D"http://www.mission=
secure.com/images/MSi_Logo_email.png"></div>
<br>
<div style=3D"font-family: Arial; font-size: 11px; font-style: normal;"><fo=
nt color=3D"#595458">This email and any files transmitted with it are confi=
dential and proprietary and intended solely for the use of the individual o=
r entity to whom they are addressed.
 Any dissemination, distribution or copying of this communication is strict=
ly prohibited without our prior permission. If you received this in error, =
please contact the sender and delete the material from any computer.</font>=
</div>
<br>
</body>
</html>

--_000_MN2PR17MB39037D37E4C2FA650755EEADC3099MN2PR17MB3903namp_--

