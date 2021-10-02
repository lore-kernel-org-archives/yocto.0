Return-Path: <thore.boeckelmann@inoex.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20347C433EF
	for <webhook@archiver.kernel.org>; Sat,  2 Oct 2021 15:10:42 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.76])
 by mx.groups.io with SMTP id smtpd.web12.11879.1633187439494603439
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 Oct 2021 08:10:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@inoex.onmicrosoft.com
 header.s=selector2-inoex-onmicrosoft-com header.b=MvXrUjjV;
 spf=pass (domain: inoex.de, ip: 40.107.6.76,
 mailfrom: thore.boeckelmann@inoex.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inoex.onmicrosoft.com;
 s=selector2-inoex-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VxxYZ7EU15a+N3Lpzk8SINjWPxyXnbiXrFoByVao5FU=;
 b=MvXrUjjVLPhz8G7VqjGMSpKOY5pFg/lJXvS4EqTTdjmoLB3QUfqg4wXE54zpeCxPMaaxWuc13Ii+6z9e/TcB1ykZ3hwrjsCrhPbMHOetAkxBR1wqbM+mqZBWB8QOVWyPKpX25Fg+jtvf+WoAFx6cFfski/rJxw1yc8BKaYOXonI=
Received: from AS9PR06CA0249.eurprd06.prod.outlook.com (2603:10a6:20b:45f::22)
 by DU2PR02MB7775.eurprd02.prod.outlook.com (2603:10a6:10:2e6::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.16; Sat, 2 Oct
 2021 15:10:35 +0000
Received: from VE1EUR03FT024.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:45f:cafe::73) by AS9PR06CA0249.outlook.office365.com
 (2603:10a6:20b:45f::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14 via Frontend
 Transport; Sat, 2 Oct 2021 15:10:35 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.93.157.195)
 smtp.mailfrom=inoex.de; lists.yoctoproject.org; dkim=none (message not
 signed) header.d=none;lists.yoctoproject.org; dmarc=bestguesspass action=none
 header.from=inoex.de;
Received-SPF: Pass (protection.outlook.com: domain of inoex.de designates
 20.93.157.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.93.157.195; helo=westeu11-emailsignatures-cloud.codetwo.com;
Received: from westeu11-emailsignatures-cloud.codetwo.com (20.93.157.195) by
 VE1EUR03FT024.mail.protection.outlook.com (10.152.18.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.14 via Frontend Transport; Sat, 2 Oct 2021 15:10:34 +0000
Content-Type: multipart/alternative;
	boundary="_000_DB3PR0202MB3579B581674E3551EFA0B1328FAC9DB3PR0202MB3579_"
Received: from EUR03-VE1-obe.outbound.protection.outlook.com (104.47.9.53) by
 westeu11-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12)
 via SMTP; Sat, 02 Oct 2021 15:10:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TusI0dCjCQ9eVfX8XJC6I59usi693TRk0Fq2xdFRIkSZh0cOcByScLrn1YuEw+bGy0NrPdJP1n3W3Gm/PtPe6jkjkuOWLyrY1L4iED3EFH+YZQG9TL6LHW9/wegdAB7QIG8DzYWnACu0JX19IJK5OVkN+8aHwneX6wD/zTctgeTrHS5xHUtqJsvyCrdeIFM6rSyqLj9Wg5uhmB7RoNQLMfrV7bUi4pIxqR0QvIhWEXLVN2NJGvrff1+0KqyWbukfeDnhl3JmIPQ+5mV+4YsZb+qaw7ks7YTv1Fku2CZ+8u/iN+lCQT8iT4YqgDsmxq4sEeahHVIqQcYQn1llG2VmUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EBnxbm3apL+Eqcw9r0JSAuP2VAWB7/c5KfgLhQ7rOrg=;
 b=Y452Vh7POty8TIAPHTRL9hl5iEUvuybHaE8hD3z4u4wN0TFEcMAwkNiWIMfeLRv6d37lwsQ7VY3hwztwOtHndDzpCRcilcf6DFERIQ1LHJwd348/mWP1iMS+pr2ND9KdKSCz00ervcZjY8FgQgakk6wufcciSVuA742KTdrbTw1NqrQU6fbGPOua6pdZBLxZFj3g3Sc/P42fvPsGCw5S0Hh9gzqMxweArP7JJxeR4kLFkvsAXVsKRjSzaEC9KUFV3ZRsbIsoDv3vcPA9+ShobUxV3yrIyaiSHU2dhfC22hwXyBYldRVrBP2wKPbfYTcSxXXKiKy3EWLuHocKGXWq9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=inoex.de; dmarc=pass action=none header.from=inoex.de;
 dkim=pass header.d=inoex.de; arc=none
Received: from DB3PR0202MB3579.eurprd02.prod.outlook.com (2603:10a6:8:a::27)
 by DB7PR02MB5322.eurprd02.prod.outlook.com (2603:10a6:10:74::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.15; Sat, 2 Oct
 2021 15:10:31 +0000
Received: from DB3PR0202MB3579.eurprd02.prod.outlook.com
 ([fe80::553b:5554:9382:93b6]) by DB3PR0202MB3579.eurprd02.prod.outlook.com
 ([fe80::553b:5554:9382:93b6%7]) with mapi id 15.20.4544.026; Sat, 2 Oct 2021
 15:10:31 +0000
From: =?iso-8859-1?Q?B=F6ckelmann=2C_Thore?= <thore.boeckelmann@inoex.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: How to include PostgreSQL development stuff in SDK?
Thread-Topic: How to include PostgreSQL development stuff in SDK?
Thread-Index: AQHXt5wHImWg/1oCDEahDamXCyM0nQ==
Date: Sat, 2 Oct 2021 15:10:30 +0000
Message-ID: 
 <DB3PR0202MB3579B581674E3551EFA0B1328FAC9@DB3PR0202MB3579.eurprd02.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 03cee560-a13f-b367-42e0-cfac605429ba
Authentication-Results-Original: lists.yoctoproject.org; dkim=none (message
 not signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=inoex.de;
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 9aa32d7a-947f-4535-c129-08d985b6c8bc
x-ms-traffictypediagnostic: DB7PR02MB5322:|DU2PR02MB7775:
X-Microsoft-Antispam-PRVS: 
	<DU2PR02MB7775D7468473CE6C01239F8B8FAC9@DU2PR02MB7775.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:2958;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 dPiM61ycXqV3pq042PLgm53I9IUKYzPCFj4ZsFcqYtvO3C1kQtu6eCEbnX41NvHQvK0kkE+jRm3c30jLlH1AjssYOpaoeeXpmX8DoaRCDOI2QJeIMBTodg1KftWC8kXYs0OnGJM5FkfWjvHGN8MuJqlHhp48FEpE2oO3xAgiBe4ekMXNhFAnhuIwHbMQHVNoB24C3lBVbjofnB2fVLEHzVZcwF3VWBenkTOGV910PQ9ZoGtDdzKAIuBMQpoCznWaSkYd9cN89PZUO8xR/jxagooebsUghQn0NpgN9qU0V1FoeBKyldV2ihQYKXNcWm8ig2Pv11pqKgA4jCOGH/bq1iZcN53ambBCX0sRTxut/NVXtTmdyUJyIbisAv7LNDVXjipSjL0wuxDduHlICMjY6XqWdUMWSCLZKDUF2+hXoQJAFCoj24BvYvFgHmWaIm72kcdzV5Y268twV1XMCdEUeCX98iHfP1IYYNT+QTXlaBm6X1hel1XhuvxgJ+u5xwMvjRebuXvM1NyDU1MPMsObUd7osIS0kd+OXvHe3jai8zAEt/jTbfqNflsQZmytfu1gs6L3QJb8/07wXr8VaZrjn3NV4MAfyzkndoTabbuxhWURTnP8Uojr7w+9PO8kGAZoCp/hPEMoRSSHQJdAm/lfPXorbt2ZlV+LoyRNM0jCEYz1zToI68GhMjmoioavPcQjfsMuFIQCDi29j3RtsWrocAksVcCfO3Ly13KUGB75udc7I6ZlY5uCqoBQHrUfr/GFB1ExJk4Tyy/95CfsybJZug==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB3PR0202MB3579.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(39830400003)(366004)(396003)(346002)(136003)(376002)(6916009)(38100700002)(66476007)(508600001)(71200400001)(66574015)(122000001)(76116006)(19627405001)(91956017)(66946007)(83380400001)(64756008)(66446008)(66556008)(38070700005)(33656002)(316002)(8676002)(7696005)(55016002)(186003)(52536014)(9686003)(5660300002)(2906002)(86362001)(6506007)(8936002)(473944003)(414714003);DIR:OUT;SFP:1101;
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR02MB5322
X-CodeTwo-MessageID: 
 7169eac0-a2db-4768-b8cc-77ccc615925b.20211002151033@westeu11-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
References: 
 <ed7dbfe9-1861-4e5b-9954-03bf8404920a.970c85df-582b-4473-a7de-31be6a2b58c9.bad7271b-9402-4063-9c2a-53976b0200b9@emailsignatures365.codetwo.com>
 <ed7dbfe9-1861-4e5b-9954-03bf8404920a.5f629621-7c71-47da-aee6-727c8a7b4e6a.e03f83ea-5384-400d-ba55-4389a8976c6f@emailsignatures365.codetwo.com>
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR03FT024.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	c28a2339-07d5-41c3-a6e5-08d985b6c68a
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	M9kNbzb+1P4UM+OAkaciYBqurZQ1Q3b3IHreIv2FZPnXi/KWcP75bqpSvvl7fvR84o5h/go5lCrhwa7BcGlDY5ulMGCx8SYyizZS00+U0+/WdjQt/d9clSM9cRIjhhk49zIFTRxp9k+Ea1KNBkMAs0CbBURagdfzjpnUPqI4BgW3Xx0FVb8AVc2fkrclrt5vwyTZ89RONZeyhw0QLlmyYHAJKM1AuWskfTbVvGu/qedD54NBuYcKFa+5jrpC9XtMvEtDEHfXNPxAg2RxHiFbSvEcdUX0XVNcdK3VifREK/YgHa6CPAG2Gr24/U/j9dodU2uV/9Re9Ai1Kz0Fx3WYiQG3GZXGbI9Ntyl4MBsxY9EMLJhOksdg33wQzs9zCXE6HGJzzVix9cd9QsHVaz3bqZZZsJqUvM+E+1VfywrGXG4HWqWEt2guyM3pSg9uYPwZhCOAIGNapNe4ettLU7A6RVbU8EWBBWRFeBeTpzt6LrgqGmN5Q+I0GgmWh44wBNNjIQdHa0I9i+Wxxf71iucfhgVoqBQrmcciJOPdWKoaTeDof3flQG3oRgr9Vu/hHjhD+XDAvGFYw2TZwew4nrOsgifD5oz7xV0qETJHwcyUxKhFBb5kASUzgafOeaMedMmJC/PuB2Vgfk5Q9mTzcAQrBwUNSHynDSoNBxSgL+Xf75gGFkfnv6y+98TAirhzFAvsWs9Swmpqu3U6iEco8currIM5jwVRL1B8swdTVeJOxAhCFjmXePr3l7TiVKvsyx/rf74oXITblVYLBPDU+hvK3Gmbb28VenV2pCceQmivEW7jE2wUqGLcpEHB7Ad8WCEe/mdoxELrrhePJOEPkZWE7Q==
X-Forefront-Antispam-Report: 
	CIP:20.93.157.195;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu11-emailsignatures-cloud.codetwo.com;PTR:westeu11-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(376002)(39830400003)(396003)(136003)(346002)(36840700001)(46966006)(8936002)(33656002)(66576008)(70206006)(9686003)(2906002)(86362001)(7696005)(83380400001)(36860700001)(70586007)(336012)(5660300002)(82310400003)(6506007)(19627405001)(15974865002)(47076005)(52536014)(66574015)(8676002)(45080400002)(316002)(7596003)(186003)(508600001)(7636003)(16799955002)(6916009)(356005)(26005)(166002)(55016002)(473944003)(414714003);DIR:OUT;SFP:1101;
X-OriginatorOrg: inoex.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2021 15:10:34.7441
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 9aa32d7a-947f-4535-c129-08d985b6c8bc
X-MS-Exchange-CrossTenant-Id: 88e9bc80-08e4-421f-a315-f919d3626921
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=88e9bc80-08e4-421f-a315-f919d3626921;Ip=[20.93.157.195];Helo=[westeu11-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR03FT024.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR02MB7775
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 02 Oct 2021 15:10:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54930

--_000_DB3PR0202MB3579B581674E3551EFA0B1328FAC9DB3PR0202MB3579_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi everybody!

I successfully built an image for an ARM based system running a PostgreSQL =
server and client by adding the packages "postgresql" and "postgresql-clien=
t". However, so far I failed to make the development stuff (libpq-fe.h, pg_=
config, etc) available in the generated SDK.

Usuallly one uses pg_config to obtain the required include path (pg_config =
--includedir), the required compiler flags for C and C++ (pg_config --cflag=
s and pg_config --cppflags) as well as the required linker flags (pg_config=
 --libdir and pg_config --ldflags). However, I get the warning during compi=
lation of my own programs:

cc1plus: warning: include location "/usr/include/postgresql" is unsafe for =
cross-compilation [-Wpoison-system-directories]

Obviously the native pg_config binary of my Ubuntu system is called and hen=
ce causes references to the local installation of the libpq-dev package of =
my Ubuntu system instead of a pg_config binary provided by the SDK. Even wo=
rse, the SDK just includes the pg_config binary for the ARM platform, but n=
ot for x86_64.

The only way to silence these warnings is to include -Wno-poison-system-dir=
ectories in my compiler flags. But this is something I really like to avoid=
. Who knows whether the PostgreSQL development stuff of my local Ubuntu sys=
tem will always be compatible to the one for the ARM system?

Unfortunately I had no luck including the PostgreSQL development stuff in t=
he SDK. I already tried 'TOOLCHAIN_HOST_TASK_append =3D " nativesdk-postgre=
sql"', but this ends in an error message like this:

ERROR: Nothing RPROVIDES 'nativesdk-postgresql' (but /opt/PHYTEC_BSPs/yocto=
_imx7/sources/poky/meta/recipes-core/meta/buildtools-tarball.bb, /opt/PHYTE=
C_BSPs/yocto_imx7/sources/poky/meta/recipes-core/meta/uninative-tarball.bb =
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'nativesdk-postgresql' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['nativesdk-postgresql']
ERROR: Required build target 'fsl-image-qt5' has no buildable providers.
Missing or unbuildable dependency chain was: ['fsl-image-qt5', 'buildtools-=
tarball', 'nativesdk-postgresql']

Adding 'PACKAGECONFIG_append_pn-nativesdk +=3D " postgresql"' also does not=
 cause the x86_64 binary of pg_config to be included in the SDK. I assume t=
his causes the ARM binary to be included, but this cannot be used on an x86=
_64 system.

I searched lots of sites for a solution already, but so far I only found hi=
nts how to add packages in general, but nothing in respect to this specific=
 issue.

Can anybody please point out what I am doing wrong or what I need to change=
 to solve this issue?

Many thanks in advance!

Mit freundlichem Gru=DF
best regards

iNOEX GmbH
Thore B=F6ckelmann
Software Design

Mit freundlichen Gr=FC=DFen / Kind regards
i. A. Thore B=F6ckelmann



iNOEX GmbH | Maschweg 70 | 49324 Melle | Germany | www.inoex.de<http://www.=
inoex.de/>

Dipl.-Inform. Thore B=F6ckelmann
Software Engineering
thore.boeckelmann@inoex.de<mailto:thore.boeckelmann@inoex.de>

FON +49 5422 60507-958<callto:+49%205422%2060507-958> | FAX +49 5422 60507-=
101<callto:+49%205422%2060507-101>



Follow us on  [cid:signatur_linkedin_612a1331-e3ca-46d8-92e7-c497d1f53ff6.p=
ng] <https://www.linkedin.com/company/3911295>   <https://plus.google.com/1=
13636118318392148063> <https://plus.google.com/113636118318392148063>

[cid:signatur_inoex_890ef8cb-96e8-4640-bcd9-a6be63c22320.jpg]



________________________________

iNOEX GmbH
Innovationen und Ausruestungen fuer die Extrusionstechnik

Geschaeftsfuehrer / Managing Director: Martin Deters, Jan Lohoff
Sitz der Gesellschaft / Headquarter: Maschweg 70, D-49324 Melle
Registergericht / Register: Amtsgericht Osnabr=FCck
Handelsregisternummer / Registration number: HRB 207338

Bitte beachten Sie die Datenschutzinformationen <https://www.inoex.de/index=
.php?id=3D642#6510>

--_000_DB3PR0202MB3579B581674E3551EFA0B1328FAC9DB3PR0202MB3579_
Content-Type: multipart/related;
	boundary="_e0d64d44-bb45-4741-8cba-0cf8359a7238_"

--_e0d64d44-bb45-4741-8cba-0cf8359a7238_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi everybody!</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I successfully built an image for an ARM based system running a PostgreSQL =
server and client by adding the packages &quot;postgresql&quot; and &quot;p=
ostgresql-client&quot;. However, so far I failed to make the development st=
uff (libpq-fe.h, pg_config, etc) available in the generated
 SDK.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Usuallly one uses pg_config to obtain the required include path (pg_config =
--includedir), the required compiler flags for C and C++ (pg_config --cflag=
s and pg_config --cppflags) as well as the required linker flags (pg_config=
 --libdir and pg_config --ldflags).
 However, I get the warning during compilation of my own programs:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
cc1plus: warning: include location &quot;/usr/include/postgresql&quot; is u=
nsafe for cross-compilation [-Wpoison-system-directories]</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica,=
 sans-serif; font-size: 12pt;"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica,=
 sans-serif; font-size: 12pt;">Obviously the native pg_config binary of my =
Ubuntu system is called and hence causes references to the local installati=
on of the libpq-dev package of my
 Ubuntu system instead of a pg_config binary provided by the SDK. Even wors=
e, the SDK just includes the pg_config binary for the ARM platform, but not=
 for x86_64.</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
The only way to silence these warnings is to include&nbsp;<span style=3D"co=
lor: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica, sans-serif; font=
-size: 12pt;">-Wno-poison-system-directories in my compiler flags. But this=
 is something I really like to avoid. Who
 knows whether the PostgreSQL development stuff of my local Ubuntu system w=
ill always be compatible to the one for the ARM system?</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica,=
 sans-serif; font-size: 12pt;"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica,=
 sans-serif; font-size: 12pt;">Unfortunately I had no luck including the Po=
stgreSQL development stuff in the SDK. I already tried '</span><span style=
=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica, sans-serif=
; font-size: 12pt;">TOOLCHAIN_HOST_TASK_append
 =3D &quot; nativesdk-postgresql&quot;', but this ends in an error message =
like this:</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica,=
 sans-serif; font-size: 12pt;"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica,=
 sans-serif; font-size: 12pt;">ERROR: Nothing RPROVIDES 'nativesdk-postgres=
ql' (but /opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/recipes-core/meta/bu=
ildtools-tarball.bb, /opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/recipes-=
core/meta/uninative-tarball.bb
 RDEPENDS on or otherwise requires it)
<div>NOTE: Runtime target 'nativesdk-postgresql' is unbuildable, removing..=
.</div>
<div>Missing or unbuildable dependency chain was: ['nativesdk-postgresql']<=
/div>
<div>ERROR: Required build target 'fsl-image-qt5' has no buildable provider=
s.</div>
<span>Missing or unbuildable dependency chain was: ['fsl-image-qt5', 'build=
tools-tarball', 'nativesdk-postgresql']</span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica,=
 sans-serif; font-size: 12pt;"><span><br>
</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica,=
 sans-serif; font-size: 12pt;"><span>Adding 'PACKAGECONFIG_append_pn-native=
sdk +=3D &quot; postgresql&quot;' also does not cause the x86_64 binary of =
pg_config to be included in the SDK. I assume
 this causes the ARM binary to be included, but this cannot be used on an x=
86_64 system.<br>
</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica,=
 sans-serif; font-size: 12pt;"><span><br>
</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica,=
 sans-serif; font-size: 12pt;">I searched lots of sites for a solution alre=
ady, but so far I only found hints how to add packages in general, but noth=
ing in respect to this specific issue.</span></div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Can anybody please point out what I am doing wrong or what I need to change=
 to solve this issue?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Many thanks in advance!</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div class=3D"BodyFragment"><font size=3D"2">
<div class=3D"PlainText">Mit freundlichem Gru=DF<br>
best regards<br>
<br>
iNOEX GmbH<br>
Thore B=F6ckelmann<br>
Software Design</div>
</font></div>
</div>
</div>
</div>
=0A=
<P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL"><SPAN style=3D"FONT-SIZE: =
11pt">Mit =0A=
freundlichen Gr&#xFC;&#xDF;en / Kind regards</SPAN>&nbsp;<BR style=3D"FONT-=
SIZE: 11pt"><SPAN =0A=
style=3D"FONT-SIZE: 11pt">i. A. Thore B&#xF6;ckelmann</SPAN> </P>=0A=
<P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL">&nbsp;</P>=0A=
<P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL"><FONT color=3D#6a6a6a><STR=
ONG><SPAN =0A=
style=3D"FONT-SIZE: 11pt">iNOEX GmbH</SPAN></STRONG>&nbsp;<SPAN =0A=
style=3D"FONT-SIZE: 9pt">| Maschweg 70 | 49324 Melle | Germany | <A =0A=
title=3D"iNOEX Homepage" =0A=
href=3D"http://www.inoex.de/">www.inoex.de</A></SPAN></FONT></P>=0A=
<BLOCKQUOTE style=3D"MARGIN-RIGHT: 0px" dir=3Dltr>=0A=
  <P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL"><FONT =0A=
  style=3D"BACKGROUND-COLOR: white"><SPAN style=3D"FONT-SIZE: 11pt">Dipl.-I=
nform. Thore B&#xF6;ckelmann</SPAN> <BR>Software Engineering <BR></FONT><A =
=0A=
  href=3D"mailto:thore.boeckelmann@inoex.de"><FONT =0A=
  style=3D"BACKGROUND-COLOR: white">thore.boeckelmann@inoex.de</FONT></A> <=
/P></BLOCKQUOTE>=0A=
<P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL" dir=3Dltr><FONT =0A=
color=3D#6a6a6a><SPAN style=3D"FONT-SIZE: 9pt">FON</SPAN> </FONT><A =0A=
style=3D"FONT-SIZE: 9pt" href=3D"callto:+49 5422 60507-958"><FONT =0A=
color=3D#6a6a6a>+49 5422 60507-958</FONT></A><FONT color=3D#6a6a6a> | <SPAN=
 =0A=
style=3D"FONT-SIZE: 9pt">FAX</SPAN> </FONT><A style=3D"FONT-SIZE: 9pt" =0A=
href=3D"callto:+49 5422 60507-101"><FONT color=3D#6a6a6a>+49 5422 60507-101=
</FONT></A><FONT =0A=
color=3D#6a6a6a> </FONT> </P>=0A=
<P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL" dir=3Dltr>&nbsp;</P>=0A=
<P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL" dir=3Dltr>Follow us on&nbs=
p; <A =0A=
class=3DsocialLink href=3D"https://www.linkedin.com/company/3911295"><IMG =
=0A=
class=3DsocialLink border=3D0 =0A=
src=3D"cid:signatur_linkedin_612a1331-e3ca-46d8-92e7-c497d1f53ff6.png"></A>=
&nbsp; <A =0A=
class=3DsocialLink href=3D"https://plus.google.com/113636118318392148063"><=
/A><A =0A=
class=3DsocialLink href=3D"https://plus.google.com/113636118318392148063"><=
/A></P>=0A=
<P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL" dir=3Dltr><IMG border=3D0 =
=0A=
src=3D"cid:signatur_inoex_890ef8cb-96e8-4640-bcd9-a6be63c22320.jpg"></P>=0A=
<P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL" dir=3Dltr>&nbsp;</P>=0A=
<P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL">=0A=
<HR>=0A=
=0A=
<P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL"></P>=0A=
<P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL"><FONT color=3D#6a6a6a>iNOE=
X GmbH =0A=
<BR>Innovationen und Ausruestungen fuer die Extrusionstechnik </FONT></P>=
=0A=
<P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL"><FONT =0A=
color=3D#6a6a6a>Geschaeftsfuehrer / Managing Director: Martin Deters, Jan =
=0A=
Lohoff&nbsp;<BR>Sitz der Gesellschaft / Headquarter: Maschweg 70, D-49324 M=
elle =0A=
<BR>Registergericht / Register: Amtsgericht Osnabr&#xFC;ck <BR>Handelsregis=
ternummer =0A=
/ Registration number: HRB 207338</FONT> </P>=0A=
<P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL">Bitte beachten Sie die <A =
=0A=
title=3D"" =0A=
href=3D"https://www.inoex.de/index.php?id=3D642#6510">Datenschutzinformatio=
nen =0A=
</A></P></P></body>
</html>

--_e0d64d44-bb45-4741-8cba-0cf8359a7238_
Content-Description: 
 signatur_linkedin_612a1331-e3ca-46d8-92e7-c497d1f53ff6.png
Content-Type: image/png;
	name="signatur_linkedin_612a1331-e3ca-46d8-92e7-c497d1f53ff6.png"
Content-Disposition: inline;
	filename="signatur_linkedin_612a1331-e3ca-46d8-92e7-c497d1f53ff6.png"
Content-Transfer-Encoding: base64
Content-ID: <signatur_linkedin_612a1331-e3ca-46d8-92e7-c497d1f53ff6.png>

iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAAH6ji2bAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAAFiUAABYlAUlSJPAAAAKUSURBVDhPpVTNb0xRFD+pRCOCSLTYWjQ+/gBb
9qysLBBfQ6s+UrxW46PBpqEbYsFSQmk70w5vKG2iLLDSqEFiUklXOqVp8147Ohkzx/md+25nHjOV
xkl+99x737m/e77uI2p2W6g54SkwsEhD7APPLyC6UAQbrBNqiBXtRBdhNyF0LGY0Nv/CzvvDvOPe
u/DxVZeeMzX2ctrPmqMtT5hWXHzGdKKPP6V9TqY9piM9xc3RyVmFbpLj/oRv226/kdt7w9ylkMGD
4eo2uU9YaE+nYTjQxRQRfdYtGuIqdUYMrdCuu5zLF8xcry5j+HnC11RBQ6whkyPAAuFBI5+YQ2N9
TuZiOAXWBeEkbhC1PuWlgmXn+5la5WRppBZOYpZo7wP1A4J5WUOwEpgOdxtfsIn0IE1Ho0z7Hxr/
1FActrL+6qDq5Lf5DmDap7eIoRTVm8spai4P6MfGeJK33nqt87qOV5UNqemRArLx+ssFDE8/VkBC
htlfeUVtGcNNHdYQFUCEgCMNYKMHMC9pCjNBspGWg9I1x0VXSv6/IIMHohrxAF0O+TqZ4TVSVSUu
d6gyJBQMcnCtFHJsKqOE4/4cr8OrkXz8ccA05BkJz4YYRkAoJai+0M+R6Ajv7hzmQz0jemC57LUN
fFFsv/OWq07FuX1olAdT37nv4zhHut+bR4WkhwjFE7wZlBACrWkIqlQqKemq4L2pZHJ5roa3J+OL
I5yYyZoU4AHURzn1Yyb4wrwFXQhPF0OIglGThIbHKyHa1w7RJjRtFBDKX2mlEBYKJhZoENZeKRKO
TWdMruoNIdZWNoc8xKOWHFRJ29RdG9LboNG8S+SJYg1saH9hKox8icbafsOPQyvvuL546N4UTCv7
/8JJdP0G2WASO1h9jmMAAAAASUVORK5CYII=

--_e0d64d44-bb45-4741-8cba-0cf8359a7238_
Content-Description: signatur_inoex_890ef8cb-96e8-4640-bcd9-a6be63c22320.jpg
Content-Type: image/jpeg;
	name="signatur_inoex_890ef8cb-96e8-4640-bcd9-a6be63c22320.jpg"
Content-Disposition: inline;
	filename="signatur_inoex_890ef8cb-96e8-4640-bcd9-a6be63c22320.jpg"
Content-Transfer-Encoding: base64
Content-ID: <signatur_inoex_890ef8cb-96e8-4640-bcd9-a6be63c22320.jpg>

/9j/4AAQSkZJRgABAQEAZABkAAD/2wBDAAMCAgMCAgMDAwMEAwMEBQgFBQQEBQoHBwYIDAoMDAsK
CwsNDhIQDQ4RDgsLEBYQERMUFRUVDA8XGBYUGBIUFRT/2wBDAQMEBAUEBQkFBQkUDQsNFBQUFBQU
FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBT/wAARCABeASwDASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDz7VP2
nPitHqd4ieO9YVFndVAlGAAxAHSm2P7T3xWe+tlbx5rDK0qgjzRyMj2rzPV/+Qtff9fEn/oRpunf
8hC1/wCuyf8AoQr4xVal/iZ/aEspy72TfsIbfyr/ACP3ftmLW8RPJKg/pUtRWv8Ax6xf7g/lUtfZ
H8Yy3Z5P+0V4j1Pwz4W02fSr6awmkvNjSQtgldjHH5gV8+/8LY8Y/wDQx33/AH8/+tXuH7U//Im6
V/1/j/0W9fMdWjM9L8D/ABz8QaD4it59W1K41TTWPlzwzHdhSfvL7j9elfWWn6hb6rY295aSrPbT
oJI5FPDKRkGvgKvaf2fvir/wj96vhzVJsaddP/o0rniGQn7p/wBlv0P1oGj6doooqRnyN8QviX4q
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
u45jDJMWbLlAEz930UUwP//Z

--_e0d64d44-bb45-4741-8cba-0cf8359a7238_--

--_000_DB3PR0202MB3579B581674E3551EFA0B1328FAC9DB3PR0202MB3579_--

