Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B95A0C4332F
	for <webhook@archiver.kernel.org>; Tue, 31 Oct 2023 15:00:07 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.54])
 by mx.groups.io with SMTP id smtpd.web10.868.1698764397480826559
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Oct 2023 07:59:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Vin86xMJ;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Vin86xMJ;
 spf=pass (domain: arm.com, ip: 40.107.22.54, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=h3un53x60sDnmtupknFwP0sWdJMHAAGh9+eMhSqB68e6CcVOJVq0VCmvB/8lV1O6MwSAkcUgZn7wuyqG/Dske4iM0nPp4hw10ME2TEYjobVqu4jQSS9P0ZkwhKNzg9aHO7GUIhHQ5OS38DG2fBoFFHtyIsQoUxUoUhiqaaAh8MziH3EC6wA9PLAC2MlRuEerYq1Fe8jViB4VSXt1e2N4peb1S8e9r619y/eghdVxd65z/jQBYbeKOMER4gMz/6IxxHPKdO2/Gv7IgzZ22OToRiUOgSdrrRp6eukCjJB4v6WyuVZ+iBoY2VxmgkcEpM0ZkPbI30PtZPvBTMkLA2tnoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=642GSzQVO6o3eXrugW8l5swRZ9zddv3TisaONLXGO0A=;
 b=aFGBc43W3mYhhZSn+XuwScZmk/ccNJJpqz8QoRonUo3ew/amQRuXhMER3b9FOnMRRvsFWOuUCByeCI4yOhG+NMgUP2rrAUHAsTs9v/26xNqE7AYSkTb0XYCcci1QeBrmr/00dGpYx/UC2iVGkVZCL6smdRrYoTRKvSh6e0Zcchqj/q/8lDCzY2U8uSknxGJLehTpxjkhD+CkgJUUd7dDy5lTo3hRpczQN8iLLX75NrLIvEzt0YCXInJHZmWycYbU2mbBEGs7stpeNJvb6Z/RR6Dd7qmwEsBguyHlrPcuyTqsJH5LNSJoNQtup7RMy34mIVFBh3RiCaNcj+NW6Gh4wQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=642GSzQVO6o3eXrugW8l5swRZ9zddv3TisaONLXGO0A=;
 b=Vin86xMJS9x0hbhG5otTE4YaVZp/j4Zkxyci09Bf59zbFn5wQzGMogNtOErQweCBl+bjyvbUhdCG1x8GQW+KAbRROWtEYjT8zZrcYeOz5smhKjUcZobjxBhUD1SMlu6HUwDN29wB9Ca7O1uRJJTru54xtugxvk+ug9Fz6U/TOI4=
Received: from DB7PR03CA0101.eurprd03.prod.outlook.com (2603:10a6:10:72::42)
 by GV1PR08MB8378.eurprd08.prod.outlook.com (2603:10a6:150:a7::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.29; Tue, 31 Oct
 2023 14:59:51 +0000
Received: from DU6PEPF00009523.eurprd02.prod.outlook.com
 (2603:10a6:10:72:cafe::cb) by DB7PR03CA0101.outlook.office365.com
 (2603:10a6:10:72::42) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.28 via Frontend
 Transport; Tue, 31 Oct 2023 14:59:51 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU6PEPF00009523.mail.protection.outlook.com (10.167.8.4) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6954.19 via Frontend Transport; Tue, 31 Oct 2023 14:59:51 +0000
Received: ("Tessian outbound 7671e7ddc218:v228"); Tue, 31 Oct 2023 14:59:51 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ce4c95775a04b86f
X-CR-MTA-TID: 64aa7808
Received: from 0e8d6182815b.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 474F1EE3-375D-45F7-A5DB-4076B935AB80.1;
	Tue, 31 Oct 2023 14:59:44 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 0e8d6182815b.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 31 Oct 2023 14:59:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iPi03sODzT37iMFJjhJv5fCDMBUBT6k6vhG/8y2E5TMI3fILqeHJ5MV1ChNIcOBZ27oUogR0f8/Bl5akseyEFPZZXYCP1FDiTa/FwxtFQdvTaGOnvOb1CV/YE83id94jSjK3tCjY4AUZaz1phBS8xAMTJ/NoDIpPfktARN0UQ2e9BkXyNqtrfU9ld6+Tu1bhEHBMOYx1QYeg8XkCfrQSr/jXbN6NR38dGRvno5gocqpBW9QSnYu8NPH9LQ+6ZRaBiY5JwK981h1uu9hMzRJ49Dxwhb2bGEFVMn3H5dHQIyvJpsKrzh0PkvvDwLOkjKzYiI3T1I95KdXvJj5t7AgORA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=642GSzQVO6o3eXrugW8l5swRZ9zddv3TisaONLXGO0A=;
 b=lc7TYtnH8I+EGivjZC4ezPFEOppfQezuP5458rJeepzBsr61LTkLKLpw420Ha6T/6vGCaS/d57lioNPi18ZXfEe/KN7mOzjhO47F9RBkExvWsxD6jRXXRx6h6AzzuFYKt4wWBqlExQvCbvnVlND3+7NGplIlmpO7BVA5JEYO9fKCPzvGXcy29N11TFt9+8LVVfdyOSBN+V7n6n4YFX9mL4Fx+BTha43evGjXDrzhnfsbbE28CIR3+t+rL0WojwuAzW0hEQ+CelGdP2r3lixo3XX4V3AcrKgXq9sR0MyRPabqGMPUgS4eu0ioJY4m+BjBoNFC9UZRbnsxP2+GI4ZhbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=642GSzQVO6o3eXrugW8l5swRZ9zddv3TisaONLXGO0A=;
 b=Vin86xMJS9x0hbhG5otTE4YaVZp/j4Zkxyci09Bf59zbFn5wQzGMogNtOErQweCBl+bjyvbUhdCG1x8GQW+KAbRROWtEYjT8zZrcYeOz5smhKjUcZobjxBhUD1SMlu6HUwDN29wB9Ca7O1uRJJTru54xtugxvk+ug9Fz6U/TOI4=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS1PR08MB7514.eurprd08.prod.outlook.com (2603:10a6:20b:481::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.28; Tue, 31 Oct
 2023 14:59:42 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::d066:526c:84ed:fb05]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::d066:526c:84ed:fb05%5]) with mapi id 15.20.6933.028; Tue, 31 Oct 2023
 14:59:42 +0000
From: Ross Burton <Ross.Burton@arm.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>, nd <nd@arm.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 1/2] Rewrite
 metrics-gathering scripts
Thread-Topic: [yocto] [PATCH yocto-autobuilder-helper 1/2] Rewrite
 metrics-gathering scripts
Thread-Index: AQHaDAmSBSOLO6X6DkmU5XHRKvBim7Bj/aGA
Date: Tue, 31 Oct 2023 14:59:42 +0000
Message-ID: <26F60732-62A0-478A-88FB-2E2332EC8D31@arm.com>
References: <179338AD5C8C9C12.17388@lists.yoctoproject.org>
In-Reply-To: <179338AD5C8C9C12.17388@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS1PR08MB7514:EE_|DU6PEPF00009523:EE_|GV1PR08MB8378:EE_
X-MS-Office365-Filtering-Correlation-Id: fb51ff4d-1e65-4e3c-d741-08dbda22089e
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 f0mMxAC1d6wjYanabEJnoy93YtrbPnuUI2B9aXWxwkgLsNYnANPwlTHm+EWpy/Pwo3Nzef/zuO/Yc7Ci4gPhpen4NZtDs98qY4mYxqJfE+H7MfDVQ9t9YItmD34p5oYvNHL/o6m1/XZ7X5bir88S59rH+ezFYy7Z5s3SgWWmEWlMmItFFlz5GoofdTVjgHc0JkMhLdBejUn4vrLToB+XTZwdQEJzRHREs3/apUE/xcf77SqsSlsAroGVemJVpOjk4zhPsVKeLxoM1aSFCZOx3xtq3CwZJZxEvoe3PKGwwzC3V9LvxQaZYCmJi74q8t8WTjRhhot1SBeYaDnhD9On3Xe5oP2dSs76es2zW1/fILNdHMD8LAyKAjYYAhdJhDWFF9E8B6k3SN1pnCS7JDnMBOuLp8pxEyZIpiacAscU1lsJMQhabK1Ddcy3hhZ0Grc/EG3v8mRNqIUv6iPsyOJR1AWHXIf/6rBmev17ai517TaNIAdr8MMuHS/kaub0k13fB+Dsfha/+LVuHNvs3jd/Cz+oalbMS41X8oWsbzQPXB/hJ8nHjBEs0t0ar6tzFpHHRD4SgL8YAWB8SqyR4w3nnRwxgANPe1HfJGYcvsxUWb8VosUAdg2zkBvRk4P3xQW2nAPj90I5fvRt60bfbE49hfrTtiN3FuhMppcvPFZimJXwTBdtqpo8Lsf5XN0+ziljV0xQpfULCuP6/C1OTvwM+eZAncRzaRXZGmDRg/F3Zzw=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(136003)(396003)(366004)(376002)(346002)(230922051799003)(109986022)(186009)(451199024)(1800799009)(64100799003)(41300700001)(91956017)(64756008)(54906003)(316002)(66556008)(66446008)(66476007)(66946007)(26005)(76116006)(4326008)(8936002)(8676002)(6486002)(30864003)(2906002)(966005)(5660300002)(38070700009)(478600001)(6506007)(71200400001)(66899024)(53546011)(6512007)(36756003)(2616005)(38100700002)(83380400001)(86362001)(33656002)(122000001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <6809F149C0879441A875DE4A039D441B@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR08MB7514
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF00009523.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	e3037f87-2cda-48e5-a251-08dbda22033b
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	lrQGVs3DNYha27KOJ2xqhreZyAyabdNY+eD5s+209HHNdsRVCZzgrcztRYwoFLF78YRq3Ety1neDLzxEPvQ4Wgy+RGNWaRdbEcwU52Jcfto08mFWqz7vme1L8Qxsw9gSR9uigAM1/wP5mVX4xr6WBZn3LraWuWp4DgcHl7HcPQd7IC56fnBhVa/Epsc0VWEhNY1/ncjQvGaXC1aCpfO9Qt6DY/N0N4F9/PbaZZOHAoknlIzSZ/EqJE+U1eCFxnFseplsexZz2xGtqznr7X7mQENA/ZfP4jeVv7tG1KZaEW2SNSvsV7kCMkuz+sqmskkVpa+MiZaWpZ7LADKpLxC/V2m9v6yqJuMduquh29yTBdIaPWrMUA/IxMa5VKOxVGmVJOnXOZoKz4Rz0rh+2L2M9Y4Ai9v9JmMr9mryvJBWfur7Fmc8TAV23G/lM2W+vvtFr10O4mKTARjxuBuSHqGLdzbmC28NLRPxaJweg/5nzJ4Jr2UKjh9Guw8AB7q6GZAxRa+lhSe4L84X0Vzs0sQSMsxlfzgMTSisAIsmwoYzO31m71QAMGknrqOUqpMTFUeGEBRAy7aW8vEvWpTIxVZmW/LfuBbSv8YxyaEdWRwBcjAnxBHSkygcxdmr2rE5ujrSm/feF3uTyEzH48m1rwMd64tYSQYiYPqaMeTwq3d7M5KQyptdHmara4ir/h59IsW15B7ia4I1xVLTg8EQPAqZANILFFqM7LwRPC57YdwlVA9OP0zEzEauobvxY5dygWHn4OFNk6m8B5lYurGdyJfUZA==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(136003)(39860400002)(396003)(376002)(346002)(230922051799003)(109986022)(1800799009)(64100799003)(82310400011)(186009)(451199024)(46966006)(40470700004)(36840700001)(41300700001)(316002)(54906003)(8936002)(8676002)(70586007)(70206006)(5660300002)(4326008)(66899024)(40480700001)(40460700003)(30864003)(82740400003)(81166007)(356005)(47076005)(83380400001)(478600001)(2906002)(966005)(6486002)(26005)(36756003)(6506007)(53546011)(33656002)(336012)(6512007)(86362001)(2616005)(36860700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2023 14:59:51.1271
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fb51ff4d-1e65-4e3c-d741-08dbda22089e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF00009523.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB8378
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 15:00:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61534

Props to Yoann Congal for an early version of this work, review, and fixes.

Ross

> On 31 Oct 2023, at 14:49, Ross Burton via lists.yoctoproject.org <ross.bu=
rton=3Darm.com@lists.yoctoproject.org> wrote:
>=20
> From: Ross Burton <ross.burton@arm.com>
>=20
> Rewrite the scripts that gather the metrics to be more generic.
>=20
> Extract the metrics repository cloning out so that we don't have to
> repeatedly clone it.
>=20
> Make the scripts parse their arguments using getopt and be more specific
> about what they're passed.  In particular, this means that for the patch
> review run we pass the _repository_ that we're scanning so we can do git
> operations on it, and the base of the _layers_ (either a layer, or a
> directory containing layers) so we know what to scan.
>=20
> Be more clever when identifying what commits we need to analyse for
> patch review: instead of iterating through a set randomly, we can keep
> the revision list sorted and the checkout operations are a lot faster.
>=20
> Remove the commit/file count metric addition as patchreview itself does
> that now.
>=20
> Add an explicit --push option so it's easy to test the scripts in
> isolation without pushing.
>=20
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
> config.json                    |  14 +++--
> scripts/cve-generate-chartdata |   8 ++-
> scripts/patchmetrics-update    | 109 +++++++++++++++++---------------
> scripts/run-cvecheck           | 106 +++++++++++++++++++++++--------
> scripts/run-patchmetrics       | 110 ++++++++++++++++++++++++++++-----
> 5 files changed, 251 insertions(+), 96 deletions(-)
>=20
> diff --git a/config.json b/config.json
> index 918cf08..f3a4ee7 100644
> --- a/config.json
> +++ b/config.json
> @@ -1208,12 +1208,18 @@
>                 "BB_SERVER_TIMEOUT =3D '0'"
>             ],
>             "step1" : {
> -                "shortname" : "Generating patch metrics",
> -                "EXTRACMDS" : ["../../yocto-autobuilder-helper/scripts/r=
un-patchmetrics ../ ../meta/ ${HELPERRESULTSDIR}/../../patchmetrics . ${HEL=
PERBRANCHNAME}"]
> +                "shortname" : "Fetching metrics repositories",
> +                "EXTRAPLAINCMDS" : [
> +                    "git clone ssh://git@push.yoctoproject.org/yocto-met=
rics"
> +                ]
>             },
>             "step2" : {
> -                "shortname" : "Running CVE checks",
> -                "EXTRACMDS" : ["../../yocto-autobuilder-helper/scripts/r=
un-cvecheck ../ ../meta/ ${HELPERRESULTSDIR}/../../patchmetrics . ${HELPERB=
RANCHNAME}"]
> +                "shortname" : "Generating patch metrics for Poky",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/run-patchmetrics --poky ..=
/ --metrics ../yocto-metrics --repo ../ --layer ../meta --branch ${HELPERBR=
ANCHNAME} --results ${HELPERRESULTSDIR}/../../patchmetrics --push"]
> +            },
> +            "step3" : {
> +                "shortname" : "Running CVE checks for Poky",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/run-cvecheck --metrics ../=
yocto-metrics --branch ${HELPERBRANCHNAME} --results ${HELPERRESULTSDIR}/..=
/../patchmetrics --push"]
>             }
>=20
>         },
> diff --git a/scripts/cve-generate-chartdata b/scripts/cve-generate-chartd=
ata
> index 95d12ff..dbbbe82 100755
> --- a/scripts/cve-generate-chartdata
> +++ b/scripts/cve-generate-chartdata
> @@ -11,8 +11,12 @@ args.add_argument("-j", "--json", help=3D"JSON data fi=
le to use")
> args.add_argument("-r", "--resultsdir", help=3D"results directory to pars=
e")
> args =3D args.parse_args()
>=20
> -with open(args.json) as f:
> -    counts =3D json.load(f)
> +try:
> +    with open(args.json) as f:
> +        counts =3D json.load(f)
> +except FileNotFoundError:
> +    # if the file does not exist, start with an empty database.
> +    counts =3D {}
>=20
> lastyear =3D {}
>=20
> diff --git a/scripts/patchmetrics-update b/scripts/patchmetrics-update
> index 65d351e..2fa7e4a 100755
> --- a/scripts/patchmetrics-update
> +++ b/scripts/patchmetrics-update
> @@ -1,65 +1,76 @@
> #!/usr/bin/env python3
> -import json, os.path, collections
> -import sys
> +
> +import json
> +import pathlib
> import argparse
> import subprocess
> import tempfile
> +import sys
> +
> +# Given a git repository and a base to search for layers (either a layer
> +# directly, or a directory containing layers), run the patchscript and u=
pdate
> +# the specified JSON file.
>=20
> args =3D argparse.ArgumentParser(description=3D"Update Patch Metrics")
> -args.add_argument("-j", "--json", help=3D"update JSON")
> -args.add_argument("-m", "--metadata", help=3D"metadata directry to scan"=
)
> -args.add_argument("-s", "--patchscript", help=3D"review script to use")
> -args.add_argument("-r", "--repo", help=3D"repository to use")
> +args.add_argument("-j", "--json", required=3DTrue, type=3Dpathlib.Path, =
help=3D"update specified JSON file")
> +args.add_argument("-s", "--patchscript", required=3DTrue, type=3Dpathlib=
.Path, help=3D"patchreview script to run")
> +args.add_argument("-r", "--repo", required=3DTrue, type=3Dpathlib.Path, =
help=3D"repository to use (e.g. path/to/poky)")
> +args.add_argument("-l", "--layer", type=3Dpathlib.Path, help=3D"layer/re=
pository to scan")
> args =3D args.parse_args()
>=20
> -status_values =3D ["accepted", "pending", "inappropriate", "backport", "=
submitted", "denied", "inactive-upstream", "malformed-upstream-status", "ma=
lformed-sob"]
> -
> -print("Running patchmetrics-update")
> -
> -with tempfile.TemporaryDirectory(prefix=3D"patchmetrics-") as tempdir:
> -    subprocess.check_call(["git", "clone", args.repo, tempdir])
> -    repo_revisions =3D subprocess.check_output(["git", "rev-list", "--si=
nce", "1274625106", "origin/master"], universal_newlines=3DTrue, cwd=3Dtemp=
dir).strip().split()
> -
> -    with open(args.json) as f:
> -        data =3D json.load(f)
> +if not args.repo.is_dir():
> +    print(f"{args.repo} is not a directory")
> +    sys.exit(1)
>=20
> -    seen =3D set()
> -    for i in data:
> -        if "commit" in i:
> -            seen.add(i["commit"])
> +if not args.layer.is_dir():
> +    print(f"{args.layer} is not a directory")
> +    sys.exit(1)
>=20
> -    needed_revisions =3D set(repo_revisions) - seen
> +if not args.patchscript.is_file():
> +    print(f"{args.patchscript} is not a file")
>=20
> -    print("Need to scan revisions %s" % str(needed_revisions))
>=20
> -    print("Needed %s revisions (%s and %s in data sets)" % (len(needed_r=
evisions), len(seen), len(repo_revisions)))
> +print("Running patchmetrics-update")
>=20
> -    for rev in needed_revisions:
> +if "meta-openembedded" in args.layer.name:
> +    # 2023-01-01, arbitarily chosen
> +    epoch =3D "1672531200"
> +else:
> +    # 2011-04-25, Yocto 1.0 release.
> +    epoch =3D "1301074853"
> +
> +with tempfile.TemporaryDirectory(prefix=3D"patchmetrics-") as tempname:
> +    tempdir =3D pathlib.Path(tempname)
> +    layerdir =3D tempdir / args.layer.relative_to(args.repo)
> +
> +    # Create a temporary clone of the repository as we'll be checking ou=
t different revisions
> +    print(f"Making a temporary clone of {args.repo} to {tempdir}")
> +    subprocess.check_call(["git", "clone", "--quiet", args.repo, tempdir=
])
> +
> +    # Identify what revisions need to be analysed. If we reverse the lis=
t, keep
> +    # order, and remove in-place, then iterating through a large number =
of
> +    # commits is faster.
> +    repo_revisions =3D subprocess.check_output(["git", "rev-list", "--re=
verse", "--since", epoch, "origin/master"], universal_newlines=3DTrue, cwd=
=3Dtempdir).strip().split()
> +    revision_count =3D len(repo_revisions)
> +
> +    if args.json.exists():
> +        with open(args.json) as f:
> +            data =3D json.load(f)
> +
> +        seen =3D set()
> +        for i in data:
> +            try:
> +                repo_revisions.remove(i["commit"])
> +            except ValueError:
> +                pass
> +
> +    new_count =3D len(repo_revisions)
> +    print("Found %s, need to scan %d revisions:\n%s" % (revision_count -=
 new_count, new_count, str(repo_revisions)))
> +
> +    # Run the patchreview script for every revision
> +    for rev in repo_revisions:
>         print("Processing %s" % rev)
> -        subprocess.check_output(["git", "reset", "--hard", rev], univers=
al_newlines=3DTrue, cwd=3Dtempdir).strip()
> -        subprocess.check_call([args.patchscript, os.path.join(tempdir, o=
s.path.relpath(args.metadata, args.repo)), "-j", args.json])
> -
> -    newdata =3D []
> -    with open(args.json) as f:
> -        data =3D json.load(f)
> -
> -    for i in data:
> -        if "commit" not in i:
> -            print("Ignoring data with no commit %s" % str(i))
> -            continue
> -
> -        if "commit_count" not in i:
> -            i['commit_count'] =3D subprocess.check_output(["git", "rev-l=
ist", "--count", i['commit']], universal_newlines=3DTrue, cwd=3Dtempdir).st=
rip()
> -        if "recipe_count" not in i:
> -            subprocess.check_output(["git", "reset", "--hard", i['commit=
']], universal_newlines=3DTrue, cwd=3Dtempdir).strip()
> -            i['recipe_count'] =3D subprocess.check_output(["find meta -t=
ype f -name *.bb  | wc -l"], shell=3DTrue, universal_newlines=3DTrue, cwd=
=3Dtempdir).strip()
> -
> -        #print(i['commit_count'] + " " + i['recipe_count'])
> -
> -        newdata.append(i)
> -
> -    with open(args.json, "w") as f:
> -        json.dump(newdata, f, sort_keys=3DTrue, indent=3D"\t")
> +        subprocess.check_call(["git", "checkout", "--detach", rev], cwd=
=3Dtempdir)
> +        subprocess.check_call([args.patchscript, "--json", args.json, la=
yerdir])
>=20
> print("Finished patchmetrics-update")
> -
> diff --git a/scripts/run-cvecheck b/scripts/run-cvecheck
> index 6294fe6..711bec2 100755
> --- a/scripts/run-cvecheck
> +++ b/scripts/run-cvecheck
> @@ -2,48 +2,102 @@
> #
> # SPDX-License-Identifier: GPL-2.0-only
> #
> -PARENTDIR=3D`realpath $1`
> -TARGETDIR=3D`realpath $2`
> -RESULTSDIR=3D`realpath -m $3`
> -BUILDDIR=3D`realpath $4`
> -BRANCH=3D$5
> -OURDIR=3D`dirname $0`
> +
> +set -eu
> +
> +ARGS=3D$(getopt -o '' --long 'metrics:,branch:,results:,push' -n 'run-cv=
echeck' -- "$@")
> +if [ $? -ne 0 ]; then
> +    echo 'Cannot parse arguments...' >&2
> +    exit 1
> +fi
> +eval set -- "$ARGS"
> +unset ARGS
> +
> +# Location of the yocto-autobuilder-helper scripts
> +OURDIR=3D$(dirname $0)
> +# The metrics repository to use
> +METRICSDIR=3D""
> +# Where to copy results to
> +RESULTSDIR=3D""
> +# The branch we're building
> +BRANCH=3D""
> +# Whether to push the metrics
> +PUSH=3D0
> +
> +while true; do
> +    case "$1" in
> +        '--metrics')
> +            METRICSDIR=3D$(realpath $2)
> +            shift 2
> +            continue
> +        ;;
> +        '--branch')
> +            BRANCH=3D$2
> +            shift 2
> +            continue
> +        ;;
> +        '--results')
> +            RESULTSDIR=3D$(realpath -m $2)
> +            shift 2
> +            continue
> +        ;;
> +        '--push')
> +            PUSH=3D1
> +            shift
> +            continue
> +        ;;
> +        '--')
> +            shift
> +            break
> +        ;;
> +        *)
> +            echo "Unexpected value $1" >&2
> +            exit 1
> +        ;;
> +    esac
> +done
>=20
> TIMESTAMP=3D`date +"%s"`
>=20
> +if ! test "$METRICSDIR" -a "$BRANCH" -a "$RESULTSDIR"; then
> +    echo "Not all required options specified"
> +    exit 1
> +fi
> +
> #
> # CVE Checks
> #
> -if [ ! -e $PARENTDIR/yocto-metrics ]; then
> -    git clone ssh://git@push.yoctoproject.org/yocto-metrics $PARENTDIR/y=
octo-metrics
> -fi
> -
> if [ ! -d $RESULTSDIR ]; then
>     mkdir $RESULTSDIR
> fi
>=20
> -mkdir -p $PARENTDIR/yocto-metrics/cve-check/$BRANCH/
> cd ..
> +set +u
> . oe-init-build-env build
> +set -u
> bitbake world --runall cve_check -R conf/distro/include/cve-extra-exclusi=
ons.inc
> +
> if [ -e tmp/log/cve/cve-summary.json ]; then
> -    git -C $PARENTDIR/yocto-metrics rm cve-check/$BRANCH/*.json
> -    mkdir -p $PARENTDIR/yocto-metrics/cve-check/$BRANCH
> -    cp tmp/log/cve/cve-summary.json $PARENTDIR/yocto-metrics/cve-check/$=
BRANCH/$TIMESTAMP.json
> -    git -C $PARENTDIR/yocto-metrics add cve-check/$BRANCH/$TIMESTAMP.jso=
n
> -    git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder adding new =
CVE data for branch $BRANCH"
> -    git -C $PARENTDIR/yocto-metrics push
> +    git -C $METRICSDIR rm --ignore-unmatch cve-check/$BRANCH/*.json
> +    mkdir -p $METRICSDIR/cve-check/$BRANCH/
> +    cp tmp/log/cve/cve-summary.json $METRICSDIR/cve-check/$BRANCH/$TIMES=
TAMP.json
> +    git -C $METRICSDIR add cve-check/$BRANCH/$TIMESTAMP.json
> +    git -C $METRICSDIR commit -asm "Autobuilder adding new CVE data for =
branch $BRANCH" || true
> +    if [ "$PUSH" =3D "1" ]; then
> +        git -C $METRICSDIR push
> +    fi
>     $OURDIR/cve-report.py tmp/log/cve/cve-summary.json > $RESULTSDIR/cve-=
status-$BRANCH.txt
> fi
>=20
> if [ "$BRANCH" =3D "master" ]; then
> -    mkdir -p $PARENTDIR/yocto-metrics/cve-check/
> -    $OURDIR/cve-generate-chartdata --json $PARENTDIR/yocto-metrics/cve-c=
ount-byday.json --resultsdir $PARENTDIR/yocto-metrics/cve-check/
> -    git -C $PARENTDIR/yocto-metrics add cve-count-byday.json
> -    git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder updating CV=
E counts"
> -    git -C $PARENTDIR/yocto-metrics push
> -
> -    cp $PARENTDIR/yocto-metrics/cve-count-byday.json $RESULTSDIR
> -    cp $PARENTDIR/yocto-metrics/cve-count-byday-lastyear.json $RESULTSDI=
R
> -fi
> +    mkdir -p $METRICSDIR/cve-check/$BRANCH/
> +    $OURDIR/cve-generate-chartdata --json $METRICSDIR/cve-count-byday.js=
on --resultsdir $METRICSDIR/cve-check/
> +    git -C $METRICSDIR add cve-count-byday.json
> +    git -C $METRICSDIR commit -asm "Autobuilder updating CVE counts" || =
true
> +    if [ "$PUSH" =3D "1" ]; then
> +        git -C $METRICSDIR push
> +    fi
>=20
> +    cp $METRICSDIR/cve-count-byday.json $RESULTSDIR
> +    cp $METRICSDIR/cve-count-byday-lastyear.json $RESULTSDIR
> +fi
> diff --git a/scripts/run-patchmetrics b/scripts/run-patchmetrics
> index 391ac45..a75cf52 100755
> --- a/scripts/run-patchmetrics
> +++ b/scripts/run-patchmetrics
> @@ -2,34 +2,114 @@
> #
> # SPDX-License-Identifier: GPL-2.0-only
> #
> -PARENTDIR=3D`realpath $1`
> -TARGETDIR=3D`realpath $2`
> -RESULTSDIR=3D`realpath -m $3`
> -BUILDDIR=3D`realpath $4`
> -BRANCH=3D$5
> -OURDIR=3D`dirname $0`
>=20
> -TIMESTAMP=3D`date +"%s"`
> +set -eu
> +
> +ARGS=3D$(getopt -o '' --long 'poky:,metrics:,repo:,layer:,branch:,result=
s:,push' -n 'run-patchmetrics' -- "$@")
> +if [ $? -ne 0 ]; then
> +    echo 'Cannot parse arguments...' >&2
> +    exit 1
> +fi
> +eval set -- "$ARGS"
> +unset ARGS
> +
> +# Location of the yocto-autobuilder-helper scripts
> +OURDIR=3D$(dirname $0)
> +# Where Poky is (for patchreview.py)
> +POKYDIR=3D""
> +# The metrics repository to use
> +METRICSDIR=3D""
> +# Where to copy results to
> +RESULTSDIR=3D""
> +# The branch we're building
> +BRANCH=3D""
> +# The layer/repository to scan
> +LAYERDIR=3D""
> +# Whether to push the metrics
> +PUSH=3D0
> +
> +while true; do
> +    case "$1" in
> +        '--poky')
> +            POKYDIR=3D$(realpath $2)
> +            shift 2
> +            continue
> +        ;;
> +        '--metrics')
> +            METRICSDIR=3D$(realpath $2)
> +            shift 2
> +            continue
> +        ;;
> +        '--layer')
> +            LAYERDIR=3D$(realpath $2)
> +            shift 2
> +            continue
> +        ;;
> +        '--repo')
> +            REPODIR=3D$(realpath $2)
> +            shift 2
> +            continue
> +        ;;
> +        '--branch')
> +            BRANCH=3D$2
> +            shift 2
> +            continue
> +        ;;
> +        '--results')
> +            RESULTSDIR=3D$(realpath -m $2)
> +            shift 2
> +            continue
> +        ;;
> +        '--push')
> +            PUSH=3D1
> +            shift
> +            continue
> +        ;;
> +        '--')
> +            shift
> +            break
> +        ;;
> +        *)
> +            echo "Unexpected value $1" >&2
> +            exit 1
> +        ;;
> +    esac
> +done
> +
> +if ! test "$POKYDIR" -a "$METRICSDIR" -a "$REPODIR" -a "$LAYERDIR" -a "$=
BRANCH" -a "$RESULTSDIR"; then
> +    echo "Not all required options specified"
> +    exit 1
> +fi
>=20
> # We only monitor patch metrics on the master branch
> if [ "$BRANCH" !=3D "master" ]; then
> +    echo "Skipping, $BRANCH is not master"
>     exit 0
> fi
>=20
> #
> # Patch Metrics
> #
> -if [ ! -e $PARENTDIR/yocto-metrics ]; then
> -    git clone ssh://git@push.yoctoproject.org/yocto-metrics $PARENTDIR/y=
octo-metrics
> +
> +set -x
> +$OURDIR/patchmetrics-update --patchscript $POKYDIR/scripts/contrib/patch=
review.py --json $METRICSDIR/patch-status.json --repo $REPODIR --layer $LAY=
ERDIR
> +set +x
> +
> +# Allow the commit to fail if there is nothing to commit
> +git -C $METRICSDIR commit -asm "Autobuilder adding new patch stats" || t=
rue
> +
> +if [ "$PUSH" =3D "1" ]; then
> +    git -C $METRICSDIR push
> fi
> -$OURDIR/patchmetrics-update --repo $PARENTDIR --patchscript $PARENTDIR/s=
cripts/contrib/patchreview.py --metadata $TARGETDIR --json $PARENTDIR/yocto=
-metrics/patch-status.json
> -git -C $PARENTDIR/yocto-metrics commit -asm "Autobuilder adding new patc=
h stats"
> -git -C $PARENTDIR/yocto-metrics push
> +
> +#
> +# Update the results
> +#
>=20
> if [ ! -d $RESULTSDIR ]; then
>     mkdir $RESULTSDIR
> fi
>=20
> -$OURDIR/patchmetrics-generate-chartdata --json $PARENTDIR/yocto-metrics/=
patch-status.json --outputdir $RESULTSDIR
> -cp $PARENTDIR/yocto-metrics/patch-status.json $RESULTSDIR
> -cp $PARENTDIR/yocto-metrics/patch-status/* $RESULTSDIR
> +$OURDIR/patchmetrics-generate-chartdata --json $METRICSDIR/patch-status.=
json --outputdir $RESULTSDIR
> +cp $METRICSDIR/patch-status.json $RESULTSDIR
> +cp $METRICSDIR/patch-status/* $RESULTSDIR
> --=20
> 2.34.1
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61532): https://lists.yoctoproject.org/g/yocto/messag=
e/61532
> Mute This Topic: https://lists.yoctoproject.org/mt/102298518/6875888
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/leave/11272023/687588=
8/1499996064/xyzzy [ross.burton@arm.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


