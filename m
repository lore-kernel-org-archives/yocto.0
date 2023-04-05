Return-Path: <john.klug@multitech.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17D97C7619A
	for <webhook@archiver.kernel.org>; Wed,  5 Apr 2023 14:47:19 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (NAM12-BN8-obe.outbound.protection.outlook.com [40.107.237.126])
 by mx.groups.io with SMTP id smtpd.web11.132127.1680706030411417329
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Apr 2023 07:47:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@multitech.com header.s=selector1 header.b=RmUPed2s;
 spf=pass (domain: multitech.com, ip: 40.107.237.126, mailfrom: john.klug@multitech.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=multitech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IbmAMhvXt3uHpXZT3nUxTtcsci78QdKmBagVAmu3/ao=;
 b=RmUPed2sj4XtIbun0HTXirVfIFculcruHSxLtHMp/PvwhGCtcMvSsy814r+NyEdX2ibB6I6LShCjeVVGzX07x2wTROcTZijCiotnzwZqS+lELyqWj0fbSC+wYVEjrnGO9idwx1KCrMGM4eaoSI9SaOc/HSc/RIRXb1uviK2qEmE=
Received: from DM6PR03CA0043.namprd03.prod.outlook.com (2603:10b6:5:100::20)
 by MW3PR13MB3977.namprd13.prod.outlook.com (2603:10b6:303:53::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.35; Wed, 5 Apr
 2023 14:47:05 +0000
Received: from DM3NAM02FT008.eop-nam02.prod.protection.outlook.com
 (2603:10b6:5:100:cafe::22) by DM6PR03CA0043.outlook.office365.com
 (2603:10b6:5:100::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.30 via Frontend
 Transport; Wed, 5 Apr 2023 14:47:05 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 103.246.251.227)
 smtp.mailfrom=multitech.com; dkim=fail (body hash did not verify)
 header.d=multitech.com;dmarc=bestguesspass action=none
 header.from=multitech.com;
Received-SPF: Pass (protection.outlook.com: domain of multitech.com designates
 103.246.251.227 as permitted sender) receiver=protection.outlook.com;
 client-ip=103.246.251.227; helo=mfod-use2.prod.hydra.sophos.com; pr=C
Received: from mfod-use2.prod.hydra.sophos.com (103.246.251.227) by
 DM3NAM02FT008.mail.protection.outlook.com (10.13.5.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6254.9 via Frontend Transport; Wed, 5 Apr 2023 14:47:04 +0000
Received: from ip-172-21-0-115.us-east-2.compute.internal (ip-172-21-0-115.us-east-2.compute.internal [127.0.0.1])
	by mfod-use2.prod.hydra.sophos.com (Postfix) with ESMTP id 4Ps6sh3JVSzWf16
	for <yocto@lists.yoctoproject.org>; Wed,  5 Apr 2023 14:47:04 +0000 (UTC)
X-Sophos-Product-Type: Mailflow
X-Sophos-Email-ID: af7d2cbdf85349fb8ce0a969b9bff583
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam04lp2045.outbound.protection.outlook.com [104.47.74.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mf-outbound-us-east-2.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4Ps6sf6v84zKm4j
 for <yocto@lists.yoctoproject.org>; Wed,  5 Apr 2023 14:47:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=coYkaGhWRxYYTS0yKzNoR957zSXlRyfQ+vOpGJP0CuPp4scH3L1ukikPWYFF23TAwIKaoiH+n/oEv6l8uErVrMhoLFqoiTiBo7ugMLMZxJYeTgXzpwmPHe3mYP717lNFt6a2IBLaN2givD1W2qeMpMphFBkdUc4weIOOZ73ZDxUkAIDLsfBY0yoI8J8ftpBP1IL+65uGs10cFim3TDVUgfuOyyHp7Uq32nfCt0fjh6M6KERSEoLyjUeRdMFq1Ufst+ZdIyQexX37QPHlP9I09t6nLyZp7FAS7hIw6GNaMy3qow90LmVv0BP+6iNU9gDQbISlnYr5f6KFmdf7ooh7gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ye4T0guY+ZHbsoT4oEhhaXCT6MyrzptlDklJYhizObA=;
 b=bIWJs3WcFtI7QWcNMx22lIGKz51E6jlTPck7jtf6umhNX3Zi15Bkaz2yki0XmeMVP6+bm6fN2OhKiBDfcXOVZEjMA2ZY4xTuWrGImtBujR7lNEtlhsqTxNRr6NWX9GPwkRdIzKPDuFySlkTGeF33Qjp8N2iMvO5kb7JadqnYyZ/0fTbgda7pi/5yIhI08T2/u6FGa80oSB4aD3W75riCv4ynsDYTY1yn6/1zhZz1h3knHnRVCJo320evcrEw6XImpMKV0P0Ym+y2OLZYpxEC/rmNdxpNW+j5R+a/4hzuN6Dmr29und0+tlYKnD4M7OTYcQHXIIyAyA2P9w2qbeoyAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=multitech.com; dmarc=pass action=none
 header.from=multitech.com; dkim=pass header.d=multitech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=multitech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ye4T0guY+ZHbsoT4oEhhaXCT6MyrzptlDklJYhizObA=;
 b=gTirD9sWApeyKrG4LUbmh1QV4Khgwy/dnmQX+uM5BLw9uId6+TSyB8byZhtvKKE5Z535p1lycZ+ytyLO6YnBv2DdQ4cR2z/7LWPsT4qnNudIrwr0ImhvwrAPzw+Xiyxmkk2RqpBdADh0iq3FWteVOcaPxOdl8M901C+JdsHR3g8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1680706019; 
 s=v1; d=mail-dkim-us-east-2.prod.hydra.sophos.com;
 h=Content-Type:Date:Subject:To:From;
 bh=Ye4T0guY+ZHbsoT4oEhhaXCT6MyrzptlDklJYhizObA=;
 b=OE9HYr2ir/O/9n14trnvvf1keeKt+47RI+R0ildEZc+LfEkoMUwUhKnkU22e1BrI
 m4qadRvYprzoBmQ5s5MRbs/XvMY57uVZLEmP9xc3DaCrvCkPzB5JSRP6D8xeSfXIUgN
 xdObLUgHA2siHtUs9T8HcbeXSHfhW6l7+0YPAjEMeNBkEA2C2RMTAkZzJbnKUI2J/zF
 hCjp9oguC5Ucze9LdIe6tQPtF+MRvvsYoUeOcPdiF5HeSCdCo0qDBANsAnjRnNs3M+E
 21NRVowdpREcgGd56WNWGqaOjZ9iuAqqZ0YqVK8c4YIcUbRyWOtbQthfoGjmwYvfeAJ
 bYm3P+pfow==
Received: from DM8PR13MB5111.namprd13.prod.outlook.com (2603:10b6:8:10::21) by
 CO3PR13MB5750.namprd13.prod.outlook.com (2603:10b6:303:178::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.35; Wed, 5 Apr
 2023 14:47:00 +0000
Received: from DM8PR13MB5111.namprd13.prod.outlook.com
 ([fe80::82f0:6c8d:fb79:42f4]) by DM8PR13MB5111.namprd13.prod.outlook.com
 ([fe80::82f0:6c8d:fb79:42f4%8]) with mapi id 15.20.6254.035; Wed, 5 Apr 2023
 14:46:59 +0000
From: John Klug <John.Klug@multitech.com>
To: "\"yocto@lists.yoctoproject.org\"" <yocto@lists.yoctoproject.org>
Subject: oe-rootfs-repo missing external kernel module rpm
Thread-Topic: oe-rootfs-repo missing external kernel module rpm
Thread-Index: AQHZZ8Ybf2ELbT97Mk+5dMv+DV6EMg==
Date: Wed, 5 Apr 2023 14:46:59 +0000
Message-ID: <DM8PR13MB51110BFC46E590A37AF2D8F1FE909@DM8PR13MB5111.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=multitech.com;
x-ms-traffictypediagnostic: 
	DM8PR13MB5111:EE_|CO3PR13MB5750:EE_|DM3NAM02FT008:EE_|MW3PR13MB3977:EE_
X-MS-Office365-Filtering-Correlation-Id: ca84c3da-6551-4415-8d8b-08db35e49fb2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 1v+oCcydDDp0M4un0+4rs3++uClH1zvGnXBoMXR/BoXC/N+DRKREIIpAdR2hQ2ZhP1N8I8xjxTCe82phQipkWBzX7KFwjUm9oVpeHUh42MWpJRtk5/FWy1wPziREBmU70p9EGG0hDTsJ66FL3ESuF1QSMr1fFOqwYfHMkNEHwatrxY8R7zQteV/VFMlz8b2KZ8b4KdUjYzInVcljbD3xPHPv0hsWD24JWizPwGB4qgwCgPFyEy49lWVQGWrmOHF+TPnsDKMvFa96nka1vQsyvNM51DSmkJRFaqIl4lbGhEdBGoPUynQxlcY+5l/9TVarpiICO0qa31W+WPyEjCaIqYpIZjsJ59ercJM+vKlnzU3h/ZLYyfQ0iJtcMgVB/2owOZQu1nKiG/FY/Shdspef8aBcUmeFxs+87onG00FYAO83Xl13w76CBE//x5n7CZ2m8B8EF8phADzi1IIFZ+oB7cwixZcqrfp9px7LbDchZLRhE2tQ12jw4KWfJwoRZ/0H5X4PcPtZ90hvhwpFcOIMqcUZIGr46ZelH0BMgfTzotZGbPc37jS0sEfncksP96BLf7tbmwie1xvrNVU6M9kKLrlVXJiUfF41aq1mmPJ2+4vwD6d7YkVBAZFgTEz7Ndkz8VpHZLmgFVxtKp/3bHH8GY4OqwsaawxeIQXC5Zr9eCNF2jeaT+V4OUEu6Gd1+Spe
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:DM8PR13MB5111.namprd13.prod.outlook.com;
 PTR:; CAT:NONE;
 SFS:(13230028)(39850400004)(376002)(346002)(136003)(366004)(396003)(451199021)(9686003)(2906002)(38070700005)(26005)(6506007)(55016003)(86362001)(41300700001)(122000001)(7696005)(33656002)(6916009)(8676002)(478600001)(38100700002)(64756008)(66446008)(316002)(76116006)(66556008)(66476007)(66946007)(71200400001)(186003)(52536014)(8936002)(5660300002)(491001);
 DIR:OUT; SFP:1102; 
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO3PR13MB5750
X-Sophos-Email: [us-east-2] Antispam-Engine: 5.1.3,
 AntispamData: 2023.4.5.142716
X-LASED-SpamProbability: 0.079439
X-LASED-Hits: BODYTEXTP_SIZE_3000_LESS 0.000000, BODY_SIZE_1400_1499 0.000000,
 BODY_SIZE_2000_LESS 0.000000, BODY_SIZE_5000_LESS 0.000000,
 BODY_SIZE_7000_LESS 0.000000, CTE_QUOTED_PRINTABLE 0.000000,
 DKIM_ALIGNS 0.000000, DKIM_SIGNATURE 0.000000, HTML_00_01 0.050000,
 HTML_00_10 0.050000, NO_CTA_FOUND 0.000000, NO_CTA_URI_FOUND 0.000000,
 NO_FUR_HEADER 0.000000, NO_URI_HTTPS 0.000000, OUTBOUND 0.000000,
 OUTBOUND_SOPHOS 0.000000, __ANY_URI 0.000000, __ARCAUTH_DKIM_PASSED 0.000000,
 __ARCAUTH_DMARC_PASSED 0.000000, __ARCAUTH_PASSED 0.000000,
 __ARC_SEAL_MICROSOFT 0.000000, __ARC_SIGNATURE_MICROSOFT 0.000000,
 __BODY_NO_MAILTO 0.000000, __BULK_NEGATE 0.000000, __COURIER_PHRASE 0.000000,
 __CP_MEDIA_BODY 0.000000, __CT 0.000000, __CTE 0.000000,
 __CT_TEXT_PLAIN 0.000000, __DKIM_ALIGNS_1 0.000000, __DKIM_ALIGNS_2 0.000000,
 __DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000, __DQ_NEG_IP 0.000000,
 __FRAUD_MONEY_CURRENCY 0.000000, __FRAUD_MONEY_CURRENCY_DOLLAR 0.000000,
 __FROM_DOMAIN_NOT_IN_BODY 0.000000, __FUR_RDNS_SOPHOS 0.000000,
 __HAS_FROM 0.000000, __HAS_MSGID 0.000000, __HAS_X_FF_ASR 0.000000,
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000,
 __IMP_FROM_MY_ORG 0.000000, __IMP_FROM_NOTSELF 0.000000,
 __JSON_HAS_SCHEMA_VERSION 0.000000, __JSON_HAS_TENANT_DOMAINS 0.000000,
 __JSON_HAS_TENANT_ID 0.000000, __JSON_HAS_TENANT_SCHEMA_VERSION 0.000000,
 __JSON_HAS_TENANT_VIPS 0.000000, __JSON_HAS_TRACKING_ID 0.000000,
 __MIME_TEXT_ONLY 0.000000, __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000,
 __MIME_VERSION 0.000000, __NO_HTML_TAG_RAW 0.000000,
 __OUTBOUND_SOPHOS_FUR 0.000000, __OUTBOUND_SOPHOS_FUR_IP 0.000000,
 __OUTBOUND_SOPHOS_FUR_RDNS 0.000000, __SANE_MSGID 0.000000,
 __SCAN_D_NEG2 0.000000, __SCAN_D_NEG_HEUR2 0.000000, __SUBJ_ALPHA_END 0.000000,
 __TO_MALFORMED_2 0.000000, __TO_NO_NAME 0.000000, __URI_NO_MAILTO 0.000000,
 __URI_NO_WWW 0.000000, __X_FF_ASR_SCL_NSP 0.000000,
 __X_FF_ASR_SFV_NSPM 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-Sophos-Mailflow-Processing-Id: 2d3f22ef6a964540b718ef9beb221cd7
X-Sophos-MH-Mail-Info-Key: NFBzNnNoM0pWU3pXZjE2LTE3Mi4yMS4wLjExNQ==
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DM3NAM02FT008.eop-nam02.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	d18e640c-5361-4efc-e4f0-08db35e49c83
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	tL2hUctphP7r8ClO7N8xY+TFAT22Dj7VUOP7F78DCeetBcbe//8ziPdbJw8FqAg3iMD/FKrCBNaBCRtFRS61DtyZsJT2KkYbQBqAKRlrR77cIJoLh3v/4P9S4WksNAimEzf85P6gEaba4EYgZxdfHrSzLVDig7XrQWs25xYnm7KmBycrs8zWYRu6hsz5nQmrbaekdbiUefxoShnr6XpyhjZy5mbjdC0eB1xZ+DyciGaJevgNwkpKpla4sEvXzrLkydgysVlbnckngUlNtxJ8y9AfFEH0M6WDm0P0wV2VZ1Yo9I+H08olC3WtHhc/ItqxATDBi8vgiY+6EskKANSLgk2Q7M36ZmKxfbpu+89eA5OsfuZvA9yIGM7ISPGy1Kze3Qwr8rFKmRJCIL3yhQejJGSjheFP7Idi0pXASmZxrvGPdD9oGh000mA/4S9AsxtQ2wSr5nNRIg9DHMGYbjvcQEY7SKdPCvHybjPly4G5AAuysW1prmid0E4keHUnYFbxmQ+5/qe9I21QFSQquXLNW3GhPlC7HuzIC+Yn8qgMaeXe+7raxcYTxLDtxm4yZbOdcllG/tVmsedT1DruGumO4IigbD3xbcXKlJxfZRcxWKmKZsRiRLtI3QlP3vlr6UVjUMRXIJK5yfYN1y5N0Xs3JxNDbZ15ypWMf7W4q8JU7Hla6FpDwImpEJWALiH9WhJHo5r+k6zmabL0HPu3JeIVmLck269Nk2hcbA4K83/yYfIB8AbVIka+gZHhmY8lkNfbq+vzgZ+1+o6eAkUv3iHwhQ==
X-Forefront-Antispam-Report: 
	CIP:103.246.251.227;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mfod-use2.prod.hydra.sophos.com;PTR:mfod-use2.prod.hydra.sophos.com;CAT:NONE;SFS:(13230028)(376002)(136003)(346002)(396003)(39850400004)(451199021)(46966006)(36840700001)(40470700004)(2906002)(36860700001)(40480700001)(55016003)(336012)(478600001)(47076005)(40460700003)(5660300002)(7696005)(6506007)(82310400005)(41300700001)(9686003)(8936002)(356005)(7636003)(7596003)(26005)(186003)(33656002)(86362001)(316002)(52536014)(82740400003)(8676002)(6916009)(70586007)(70206006)(491001);DIR:OUT;SFP:1102;
X-OriginatorOrg: multitech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2023 14:47:04.9433
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ca84c3da-6551-4415-8d8b-08db35e49fb2
X-MS-Exchange-CrossTenant-Id: f802e804-804f-4d1e-b625-870b4d57fd00
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f802e804-804f-4d1e-b625-870b4d57fd00;Ip=[103.246.251.227];Helo=[mfod-use2.prod.hydra.sophos.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DM3NAM02FT008.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR13MB3977
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Apr 2023 14:47:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59619

This causes my image build to fail.=0A=
=0A=
I even tried the hello-mod recipe.  I am using kirkstone.=0A=
=0A=
>build/conf$ tail -1 local.conf=0A=
>CORE_IMAGE_EXTRA_INSTALL =3D "imx-firmware kernel-module-hello-mod"=0A=
=0A=
>build/tmp/deploy/rpm/imx6ullevk$ ls -l kernel-module-he*=0A=
>-rw-r--r-- 3 jklug jklug 14534 Apr  4 11:25 kernel-module-helene-5.18.5-fs=
lc+g73d0438b03fe-5.18.5+git0+1d6b3055ae-r0.imx6ullevk.rpm=0A=
>-rw-r--r-- 2 jklug jklug  8546 Apr  5 08:43 kernel-module-hello-5.18.5-fsl=
c+g73d0438b03fe-0.1-r0.imx6ullevk.rpm=0A=
=0A=
>build/tmp/work/imx6ullevk-fslc-linux-gnueabi/core-image-base/1.0-r0/oe-roo=
tfs-repo/rpm$ ls -l imx6ullevk/kernel-module-he*=0A=
-rw-r--r-- 3 jklug jklug 14534 Apr  4 11:25 imx6ullevk/kernel-module-helene=
-5.18.5-fslc+g73d0438b03fe-5.18.5+git0+1d6b3055ae-r0.imx6ullevk.rpm=0A=
=0A=
Why is the rpm not copied?=0A=
=0A=
>From bitbake -e:=0A=
>CORE_IMAGE_BASE_INSTALL=3D"    packagegroup-core-boot     packagegroup-bas=
e-extended         imx-firmware kernel-module-hello-mod     "=0A=
>CORE_IMAGE_EXTRA_INSTALL=3D"imx-firmware kernel-module-hello-mod"=0A=
>export PACKAGE_INSTALL=3D"    packagegroup-core-boot     packagegroup-base=
-extended         imx-firmware kernel-module-hello-mod      run-postinsts "=
=0A=
RDEPENDS=3D"     packagegroup-core-boot     packagegroup-base-extended     =
    imx-firmware kernel-module-hello-mod      run-postinsts  locale-base-en=
-us locale-base-en-gb "=0A=
=0A=
=0A=
John Klug=

