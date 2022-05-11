Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1778C433F5
	for <webhook@archiver.kernel.org>; Wed, 11 May 2022 14:15:33 +0000 (UTC)
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (EUR02-HE1-obe.outbound.protection.outlook.com [40.107.1.74])
 by mx.groups.io with SMTP id smtpd.web10.12082.1652278529497435645
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 May 2022 07:15:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=3DFbMo2q;
 spf=pass (domain: arm.com, ip: 40.107.1.74, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=Ffk0ysLPg3tWqA8GVgKoyy8vvD4nzjbt5boDXW+UxTZsb+PMJaieehQgmIGniF5srSJ6FI6tsiDeoJNTNnkOPwHzJg//gvxQAz6wKls02h60nb80kl0jgUDLQM2qxgB0XdKvNSoXViJ+9/VonFAEJu+kQ0T3yHkpgSNPIZXBCX98LoJO5cNerBZuCXq9kDFT1n7LSmLhIYC5KfzVQQe/pZmvnBhhJas5yV6LKoGXqETYcdgDKAjgU4HdPkmrde7JWmlHSXQoFcM+utRKULwBmWMvsimOLSOryeP9CmgOjgu4X4RgkQK89VEn1lat/8fr/bIfqVWLSZCPFlnxw91LAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VVZQYiacMnnoCNG+4E9jPChTMS1Pid7gCDWQx/McgZQ=;
 b=GTlzhatlGJwXkf/EYlT5M64K1TBPKDx/r7bJDoanWJPdVb1LXsVrn/682kHuJqww5Xz+2LC13Taqn8ofbjrGCo3pfSmnq13b8ndcdomfwjMYw6scmLtHvblfWyF2NoGzq9XW1DGoNRkNvcJjxGDwyfhsPEn74wJP9VRdMlly21atpW7kL31/lCw/t2rbLi5l6uSBOUWeHmYGdwYKrnm0ZuM0XD8oMamraVMmCHNvKD2QEB5xAz5C0b8tRWaaLq9/R654nhUweLbY/hqcNFn8EUv6twH93bIoxKjV5WId1hAJmALeyQNRIxouoOTLgIdJ2THiKd5G3eEKLoO0DPwz8Q==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VVZQYiacMnnoCNG+4E9jPChTMS1Pid7gCDWQx/McgZQ=;
 b=3DFbMo2qKrMQVOlPUi3IqOx46pDl84WvmdFTY3zF9Q5vp9PThHnYo40w2WLT6ZWLV8X3NzDr5wCwJriR2f0e0HjLzNE7yLYb+KF5IlArVmLhP88f61rVZIYZrkhEM7mLt8qIeP7m96ZgQJk7+IzhN10ZbKiaq2EvAtw7rIaIfCo=
Received: from AM6P193CA0087.EURP193.PROD.OUTLOOK.COM (2603:10a6:209:88::28)
 by VI1PR08MB3487.eurprd08.prod.outlook.com (2603:10a6:803:88::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.13; Wed, 11 May
 2022 14:15:18 +0000
Received: from AM5EUR03FT006.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:88:cafe::23) by AM6P193CA0087.outlook.office365.com
 (2603:10a6:209:88::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.13 via Frontend
 Transport; Wed, 11 May 2022 14:15:18 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT006.mail.protection.outlook.com (10.152.16.122) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5250.13 via Frontend Transport; Wed, 11 May 2022 14:15:18 +0000
Received: ("Tessian outbound 6580ae46f51e:v119");
 Wed, 11 May 2022 14:15:18 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: de0b019a1edb3a21
X-CR-MTA-TID: 64aa7808
Received: from 894cfde63409.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 83A77E9D-08A3-468C-A5BF-EF85161CBBDF.1;
	Wed, 11 May 2022 14:15:11 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 894cfde63409.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 11 May 2022 14:15:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B0gEoGRJsnC7kfdHv890WgdmWWD9p3Jm651Gz6zFXf1Isviq8XXgBfW0z4+2EV35zZXmNrss+KqEsdbtoSWlKu+hLP7RVX2BaDnPu0KIeN85Qg3Etp9jQdPsh4U4b2InHnrZVsHe/Uuo8REBDJ1WD+PtuDnmGt6vFjo+ySYrnMVdXhZnLjgvXYFR6gLfzLztMoSlSQm6Fhj4boCajeDFzWYUvjcxlDflq4C/GWEIEXYscSPyEmx2fdV7GYtAajbvi3G9fi7l0utAJ9HP0dcrVbriU4iK6edjLSupEFwdxitishL/wkPiFfSikWutHAc/nTyn0r7CHliFRCXQmC/VOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VVZQYiacMnnoCNG+4E9jPChTMS1Pid7gCDWQx/McgZQ=;
 b=Ap45IoUwRGaAEd1Em/VfcWTzbH7A5x3RdlDTKPlBkBbRYvdljOpE7lZgzyTFnDWlrvB98UIDeXxKSO3F9JZ8CJEEB9pk/Pat+Q1uY07sTYtf7Em0How8FBX4hKGrHRhaojHpr2RvutoqvYv41A4P9jrFgR+nEFPD/4VbY4iJyjMkOt9xNotCjJk3jIvNOsuYADEcFdy0TVS1iO0MnME0EaGcON4ZGBFQTSS9qx+DGuvC0ZewvG6JdtYkUYl9jfreqkdnhRqBIVUcThirMVdoA1qSnpTyIc8gVjUt9uYEu18hhKB5XhtwKBYq0JzPBQ60CNpA7B/n+48iYRsW13dcnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VVZQYiacMnnoCNG+4E9jPChTMS1Pid7gCDWQx/McgZQ=;
 b=3DFbMo2qKrMQVOlPUi3IqOx46pDl84WvmdFTY3zF9Q5vp9PThHnYo40w2WLT6ZWLV8X3NzDr5wCwJriR2f0e0HjLzNE7yLYb+KF5IlArVmLhP88f61rVZIYZrkhEM7mLt8qIeP7m96ZgQJk7+IzhN10ZbKiaq2EvAtw7rIaIfCo=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM6PR08MB4881.eurprd08.prod.outlook.com (2603:10a6:20b:c8::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.20; Wed, 11 May
 2022 14:15:10 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::6c2b:5021:db9a:bf6d]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::6c2b:5021:db9a:bf6d%8]) with mapi id 15.20.5250.013; Wed, 11 May 2022
 14:15:09 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "rustyhowell@gmail.com" <rustyhowell@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] SSTATE cache getting huge. Delete or use
 sstate-cache-management.sh
Thread-Topic: [yocto] SSTATE cache getting huge. Delete or use
 sstate-cache-management.sh
Thread-Index: AQHYZLrmFgl6oIaZ3UWEmro78BElva0ZuUXh
Date: Wed, 11 May 2022 14:15:09 +0000
Message-ID: 
 <PA4PR08MB74116AA974F43BF6A2A93591E8C89@PA4PR08MB7411.eurprd08.prod.outlook.com>
References: 
 <CAE+BM3ku0_4Vmq30e49cMzPp8Bvmitc7fNs8trF2q1UukEaxqA@mail.gmail.com>
In-Reply-To: 
 <CAE+BM3ku0_4Vmq30e49cMzPp8Bvmitc7fNs8trF2q1UukEaxqA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-MS-Office365-Filtering-Correlation-Id: 0999202c-1e28-45d3-9902-08da3358ad45
x-ms-traffictypediagnostic: 
	AM6PR08MB4881:EE_|AM5EUR03FT006:EE_|VI1PR08MB3487:EE_
X-Microsoft-Antispam-PRVS: 
	<VI1PR08MB3487D074EE126730B86739C3E8C89@VI1PR08MB3487.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 fMosVcVcf064adJkGb/pokBPl24YG/cuxwPtLzstIBuizV0/g++bIeKP4rLLNvleooVyWyvhruvPxTTehJQB04K8uUTTgehkMLGg/pmBX3gJ+xIk1l0vQBHzkZTa9yiDFkX8jxnDbqx60P1v8cRJh1JFM34hH1ZrkkRXYsQdRA9VufLcSST0FwUhY5VfzqDRT+lpAZS9vGTkg6BnHLig7DCzLuexydsR8cC+mFzQewTwnUjykGnr4Xho8aVdczZt4K93kOkXECh2BiXl325KgmnukiIje4zJcBm8g2dIMjJ3qojYlZfL/kxmfqFUcQ+LBwbRG0Tawy4J8YwPn/ccLkHPuBvSruUtCvB4WUMyVDTnRyL/6irnVdSgzcnG2OFuFuUtsS7WC5b2x+yuqAUQ3LRDuFRJrYSlo7b0f/104+hpURlo+M6MNTIYQH7TFoUj76i1YcY28DgLSBhhn2sFn2ZmLBljNyS5oLXpHFCZJ4YF/X1gnoXCYg5to3phj/52W1y90W0Rp7iS09Jb9Y7jONnMTbiZvhXBWhlEfw0Ihft3Y07O/auwEPoTJbESmNU6r9WzUhKQAzXojbTQbY223ka6D4h3l6tn559d+se0FzBeq2xZbSaRH20yFDthp9siR0c7vaTDnFoMv3nli5qbHboA7VDWB9CKZ39LCa1AKuO1TWQdLjSesr1IfrfZD8LABaURnPfI/ZGqKxbP1Xt0i5R10pPREsf8qr6r8RGifYk=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(38070700005)(52536014)(83380400001)(64756008)(38100700002)(91956017)(76116006)(2906002)(66556008)(66476007)(66446008)(8676002)(66946007)(316002)(508600001)(7696005)(33656002)(55016003)(110136005)(6506007)(71200400001)(9686003)(26005)(5660300002)(186003)(86362001)(122000001)(8936002)(14583001);DIR:OUT;SFP:1101;
Content-Type: multipart/alternative;
	boundary="_000_PA4PR08MB74116AA974F43BF6A2A93591E8C89PA4PR08MB7411eurp_"
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4881
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM5EUR03FT006.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	74728355-990a-44e1-7ef0-08da3358a843
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	g0s6mglDL2QE6GZl+zv9rSVvjAjmKmBqbstgqabfqwV6GGjSx+4E6rJQwG9GuyZdq2DYDtjd1+ocBDW/tUbpsTZ57ZJVkoYt/hOM1Qz9UfC6Fj7lQe30DtBOLVpEP3KOmEe6oFCh4Xs8WItjTSgoygMvYl2ls0xou4wfZEXLLjIqoMqLK2APW44JKhrnUVBmXXJqhX27I7ITFg7MnK900beiNj1LXn3Vnpa7ZxWRQTjI7q0odo7DKIPvcS9BDJbxWcvfA2K+jBU2DXZ1gG/mI/Mpdd/j5qF2s/ZNNlXObfMzrUFuUpb39TWpAmbPGTlMLJFkKaXwuh4aWimisO9U5wygKQVRhxr/JhUajyDlLdpF/k7fCehke2yKNaXyKB6tJEYp7XA3My2s0rdPeNeSaUjck038JHdJznpoTjL+3ZHezM+nRUeoGAXCB4Dc+xbTnD/EILg+DwBWgIYT6YAjWudVR2z8nKroVQD8RUueUo55BEukYMRscwTyQm8OSHpBqWyczYHmfitanG6kXnXCfPW+trgVSp/GzvqTsM8EqRCnYbDN2ZcYxB0JXorqk5LXup/VA9nvWo6dSTPFASOW43wWNg9qhemo70eO6HhRKsU/oINvUQOsH0PYFFYtScGJjIseJRdGbtMoynrGPJAsRWvxxKmPEnGnbVEk3wQMW8ahA+L45qJbeMTELQPecDiVDL6C3Ob/k7hPc7FcxYLFRg==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230001)(4636009)(40470700004)(46966006)(36840700001)(70206006)(70586007)(2906002)(36860700001)(55016003)(508600001)(86362001)(9686003)(316002)(8676002)(33656002)(336012)(6506007)(356005)(83380400001)(81166007)(40460700003)(52536014)(26005)(5660300002)(8936002)(110136005)(186003)(47076005)(82310400005)(7696005)(14583001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2022 14:15:18.2723
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 0999202c-1e28-45d3-9902-08da3358ad45
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM5EUR03FT006.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3487
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 May 2022 14:15:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57056

--_000_PA4PR08MB74116AA974F43BF6A2A93591E8C89PA4PR08MB7411eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Personally, I just delete all files that haven=92t been accessed in a month=
, using find:

find $SSTATE -type f -atime +30 -delete

Ross

From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Rusty Howell via lists.yoctoproject.org <rustyhowell=3Dgmail.com@lists.=
yoctoproject.org>
Date: Tuesday, 10 May 2022 at 23:11
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: [yocto] SSTATE cache getting huge. Delete or use sstate-cache-mana=
gement.sh
A few weeks ago, our NFS-mounted sstate-cache was about 748 GB in size. I r=
an the script "sstate-cache-management.sh".  It took a very long time (abou=
t two hours) but was able to free up 307 GB of space.

What is the benefit to running that script vs just deleting the sstate-cach=
e directory entirely?  I know the first build after a delete will take a lo=
ng time. But that's offset because just deleting the directory as a whole d=
oesn't take more than about a minute.

Does deleting the sstate-cache affect the preserv and the autoinc values it=
 is returning?

Rusty
IMPORTANT NOTICE: The contents of this email and any attachments are confid=
ential and may also be privileged. If you are not the intended recipient, p=
lease notify the sender immediately and do not disclose the contents to any=
 other person, use it for any purpose, or store or copy the information in =
any medium. Thank you.

--_000_PA4PR08MB74116AA974F43BF6A2A93591E8C89PA4PR08MB7411eurp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">Personally, I just delete all files that haven=92t been accessed in=
 a month, using find:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">find $SSTATE -type f -atime +30 -delete<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">Ross<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">yocto@lists.yoctopr=
oject.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Rusty Howell vi=
a lists.yoctoproject.org &lt;rustyhowell=3Dgmail.com@lists.yoctoproject.org=
&gt;<br>
<b>Date: </b>Tuesday, 10 May 2022 at 23:11<br>
<b>To: </b>yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject: </b>[yocto] SSTATE cache getting huge. Delete or use sstate-cac=
he-management.sh<o:p></o:p></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A few weeks ago, ou=
r NFS-mounted sstate-cache was about 748 GB in size. I ran the script &quot=
;sstate-cache-management.sh&quot;.&nbsp; It took a very long time (about tw=
o hours) but was able to free up 307 GB of space.&nbsp;
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">What is the benefit=
 to running that script vs just deleting the sstate-cache directory entirel=
y?&nbsp; I know the first build after a delete will take a long time. But t=
hat's offset because just deleting the directory
 as a whole doesn't take more than about a minute.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Does deleting the s=
state-cache affect the preserv and the autoinc values it is returning?<o:p>=
</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Rusty<o:p></o:p></s=
pan></p>
</div>
</div>
</div>
IMPORTANT NOTICE: The contents of this email and any attachments are confid=
ential and may also be privileged. If you are not the intended recipient, p=
lease notify the sender immediately and do not disclose the contents to any=
 other person, use it for any purpose,
 or store or copy the information in any medium. Thank you.
</body>
</html>

--_000_PA4PR08MB74116AA974F43BF6A2A93591E8C89PA4PR08MB7411eurp_--

