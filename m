Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 272B3C43334
	for <webhook@archiver.kernel.org>; Thu,  9 Jun 2022 07:33:01 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.70])
 by mx.groups.io with SMTP id smtpd.web08.7896.1654759978395734096
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jun 2022 00:33:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=qW+ynStt;
 spf=pass (domain: arm.com, ip: 40.107.7.70, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=i9XphlJF07vLllv8hjlDPAhRkNYHJ0oBEAguNAHTOh1s6Ha8ynGqH8gMi1Cy+M6u46BajPb0rkes1VzMtTu1ZAED15gheMDspcoRUOTS8dvKnmxylYWMJ6D3TRNneHJ05KyL0LW0DEHTfGy4CnCyTaj4PMCuJf2SqH654KgWYoC3XxVkD0zP0By0BZMQ9F0MN9wOsrLZSgimxJU26fNrgMZmUXpJOAgzwrNrPKqLU5OsmztSPQ+C9ZYxegK1wOaP/0nb/O+lLfRtTCWaI/jZThpqWbHlzo/KQyU5NbQspk9uydY5yCG+srmJS7mjgcQyxZr83OGUlsNVyBweteidRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e7t3DFAftOIEaCRXQ2dhWCc4ekFjxoiAWMBBOtkXQIA=;
 b=Ux1QOzsc0qGThl2vmasEUth+QVmLQWzgE6Sf4jcKmfUz35TfjJX2m+6BzYhL/aEIwyyKA98k+EBXZM4gCRsFeSWj+thCV9ufQYiinWYQPw9P8i7P/W2lDbESY9vxjpuf6D+iaJPZI3rPr6arV6rSO4Poup6d8cZG+bpL7PWGf+gGktD66co9TLwi26aulRc6K296sKnxxk1AxxTXo/gxv7f1YFtF6KoyFpExlmpcX1e5V8ATll5aJsMGd2254k4sqpkijO11DQuBKAb/WwZSJSLnDilOreRrDcR/jiJ9HZJu39ZajAQvM7kVAcvVDPOx9R+uveu4Yml6IacPKVQI0w==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e7t3DFAftOIEaCRXQ2dhWCc4ekFjxoiAWMBBOtkXQIA=;
 b=qW+ynSttvITj9UUgdeqkiepjvZOWHe1FQyljx/PuMoyZq9wUvkAYlTr9ZujiD4ICwSX51+PligLIH3r5OE+76jqrkev9y9sEe/UUYJgFSQ7SwFoiStdb+MGNGAIqHu50qtAAzT2xLSWDeh8V84At6TODemfASqVxQVtH3dLOPKA=
Received: from AM6P191CA0068.EURP191.PROD.OUTLOOK.COM (2603:10a6:209:7f::45)
 by VE1PR08MB4893.eurprd08.prod.outlook.com (2603:10a6:802:aa::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.13; Thu, 9 Jun
 2022 07:32:53 +0000
Received: from VE1EUR03FT029.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:7f:cafe::20) by AM6P191CA0068.outlook.office365.com
 (2603:10a6:209:7f::45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.12 via Frontend
 Transport; Thu, 9 Jun 2022 07:32:53 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT029.mail.protection.outlook.com (10.152.18.107) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.12 via Frontend Transport; Thu, 9 Jun 2022 07:32:52 +0000
Received: ("Tessian outbound 5b5a41c043d3:v120");
 Thu, 09 Jun 2022 07:32:52 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e484583125b3cab5
X-CR-MTA-TID: 64aa7808
Received: from b3240cf33c28.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 C221678E-B871-4DB8-9091-E8E75E269F9A.1;
	Thu, 09 Jun 2022 07:32:45 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 b3240cf33c28.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 09 Jun 2022 07:32:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ekUn8kUpoROLLKOIkOuJ0eE6FVXSXQqzg80dqg7j5kaOtHbFVu3ZApgFqyt1k5+bulTJRf1afXsKbVaG0dlgUz78Lja4GXh0jIfK9bFSVwcmtrxLg0Yw9yhq1BD976nwuxNZtgJbN1AypsH032EcaZm2buICUr3CUF05kbsgWCiDvrjqjVAH9K/kZ+96y1p//rwKraCIsOJGFo+MjTH1uE3adE5qfrgXMCKVv1GHIOYop0w4eoIXBwURbEaMGcMN91R0QxcAB1CG93CVCJytXoGf3ur8CTBAlvl4TFbzhhbksjBQz8K1Z3E96pGN/kaR1foYkzjugjT7b90BLjDJzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e7t3DFAftOIEaCRXQ2dhWCc4ekFjxoiAWMBBOtkXQIA=;
 b=UwjtZSMvIDjujLOhZ1fhZrEruVSmwrIEmCLws6n9zDM+rhxSbqxbwFO8cQU23hwLws8V61CncxrDHAfGFikeDyJu71z4kWxxKjELTqRJ1SCl2fX/T7oGFPvlVmTEzr5O/Dc2105ctNipvGRlB20yqSqzxiv21govTcysoR6O+v0z8ibtht4VkjmAjtMes++I0gz5QW+9/ZulwVIoJLA/eoEeOzjegtfhap7C46LbWJ7W5/T6s46bKlvU/4gNRP/rhEnU4Fr/RU4ST3qHx29Tw9woTiG1FoRCVu6iUsQRo+Yife10lxWmG4aWDq/yq5dfBYph66Hm9RcFjr/18fZVVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e7t3DFAftOIEaCRXQ2dhWCc4ekFjxoiAWMBBOtkXQIA=;
 b=qW+ynSttvITj9UUgdeqkiepjvZOWHe1FQyljx/PuMoyZq9wUvkAYlTr9ZujiD4ICwSX51+PligLIH3r5OE+76jqrkev9y9sEe/UUYJgFSQ7SwFoiStdb+MGNGAIqHu50qtAAzT2xLSWDeh8V84At6TODemfASqVxQVtH3dLOPKA=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PA4PR08MB7620.eurprd08.prod.outlook.com (2603:10a6:102:261::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.14; Thu, 9 Jun
 2022 07:32:43 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::6c2b:5021:db9a:bf6d]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::6c2b:5021:db9a:bf6d%8]) with mapi id 15.20.5332.011; Thu, 9 Jun 2022
 07:32:43 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Vinothkumar Eswaran <evinoth1206@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to remove the python3 from Yocto SDK
Thread-Topic: [yocto] How to remove the python3 from Yocto SDK
Thread-Index: 
 AQHYelOqKBg64Mb6mUWzB0PyvAA2Ca1Du+aAgAAEZYCAAAWFAIAAF+SAgAAaaoCAArkWrA==
Date: Thu, 9 Jun 2022 07:32:43 +0000
Message-ID: 
 <PA4PR08MB7411FC7CFC3E76DB1FCF1782E8A79@PA4PR08MB7411.eurprd08.prod.outlook.com>
References: 
 <CANNYZj9pQhqgTnxhLqNUReNWdGGHPouaiLcBU7ShWCF9bV8Oxw@mail.gmail.com>
 <9515.1654604517673689637@lists.yoctoproject.org>
 <CANNYZj_u=Vmj7D0rsdTsWwMWn+yXSjxT7wikabDFNu5e73rhjQ@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_u=Vmj7D0rsdTsWwMWn+yXSjxT7wikabDFNu5e73rhjQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-MS-Office365-Filtering-Correlation-Id: 88cb13a9-624f-4f3d-ed43-08da49ea4359
x-ms-traffictypediagnostic: 
	PA4PR08MB7620:EE_|VE1EUR03FT029:EE_|VE1PR08MB4893:EE_
X-Microsoft-Antispam-PRVS: 
	<VE1PR08MB489359A193BF7C515DEC5E68E8A79@VE1PR08MB4893.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 H5ts7FkjTp5stnsVKkTb+T1eX0IT4pnCTjOkcZGr58vYXHRdBwexqL/hzvw1r2EZ7HbZj2R/4YDne+/NrvcSlJ/rwK6t5bst/0dK1ygI4ZWpCi1wp2KNk66jBocKYtAVoXpti3Z/YshIUCX1yx3lZc9oF9mnC1ue8JDrk9vgzIt4JdxqqJaysRDDHWX5Mh37Z/w8cYQwKGSO93nVSSbMM4DBv0fXDBZhIbC/xInVFGJoX0lrOxJtHs/3aPJTWTa+SLoOKWGfubkCiLV5MgVWnp5QSNqhcqluPe6v6nGn6eRxm+pPfkcVcYVQsNJulFYs/fOvzT3Vp6Anr/pxi/1nNJV5Wxuh+Fc4lTzQoU7DxFbOSYCbpAmFVw4alvRVLgDJmJ/fjkqAtW1tduum09qsEx5PQ7mnXApQhWstpQcPp1JzzyyZFaq5A73vCyRkRLdwuoQk1UeV7g2Jh/F5k1z4/yO/11ytfMUT6JfupWep/N8PK0BdxYz5VnMWStBAp8G6wrcCv6U52cvYGwLgJQJh0320UcJJPVlntpEH22uLzjBVlb92oM4PxvgZHjxjiVUofEKQXT7Y25PPE+4G59hiLGDDwM+c8X3tyHML+zN3upAeEVqnvZJ9tu0gjCrCH3TKFBfskJATBcTFWUuZIllD8+3vQ75MPV5MVpT2d4LKdavG5DN5ZACqYz3vlKZVpNcIM6qnBwFwUwFnZM3JVCLGlg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(86362001)(38070700005)(33656002)(66446008)(5660300002)(52536014)(76116006)(4326008)(91956017)(38100700002)(316002)(83380400001)(66556008)(66476007)(64756008)(66946007)(122000001)(8676002)(8936002)(26005)(186003)(9686003)(7696005)(6506007)(508600001)(55016003)(6916009)(2906002)(71200400001);DIR:OUT;SFP:1101;
Content-Type: multipart/alternative;
	boundary="_000_PA4PR08MB7411FC7CFC3E76DB1FCF1782E8A79PA4PR08MB7411eurp_"
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR08MB7620
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR03FT029.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	95f75473-51a3-4dd7-3949-08da49ea3dd5
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hH6XY1c2KTYt6zGyVrbT/WQr6adH4R1DYaNktbdCgIH3uFzG3qelKCwl+Sj8gYCw25ry1XyL8CsFByxWfXuUkMn+6YlfEwP+s0T8g59MTXm02uxdmEShho8cuY4w7kTEdJ6E+M2aPtDj+4ipkGwKVuEorTphMY4Ys7UEAu3XWpOEW8c+fxweqt1AO10WSQ/CzqSJnL3bRTvMFwNnbzZAzmATb/8umMCcJ61opnEFCF78RuqsovboAS6hTQOYE54WBQQ1MKjXau9k9b4d7wrNmk1hGMTLjeEHHMwueHybR4MEQDNOazrljnrCBty63zMPsjYJVYeUbnEJ9YKpfU/fHzr0nfPuCECkK6/9byLkCsXwPDwKwu+ziD6pceZBRuURSzEUwDuG4pVlYKxIK26S/Xzgdz6Zf3KC8iuUffVgksSJCXjj7zGXlXieIl2ZzND8Z4PA93Vu5cCsvHwOfqbKufqmbZB8fzrbnPD/LFOEMyQaW04iRgZWiESZB/VREd95S5qFllWfyW1xh3FyTlCxzUzgetdAubgnvFyVxrcJS/j3GPgdZz2gpQjVjs6nLB6ZWjL4EtiJ1hR3owzf4BOQs4G/cHrzCBRstvcYtBHtsI/yn+nnVLKnZtWsT40Wu3GqpRLz5m6WLMIAkG36VRsDtUigQhBi2IfrXHb8DriHdqGlUZu84QLIWOIlx41WBVXt
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230001)(4636009)(46966006)(36840700001)(40470700004)(336012)(356005)(40460700003)(33656002)(26005)(55016003)(2906002)(81166007)(9686003)(82310400005)(6506007)(316002)(83380400001)(36860700001)(86362001)(6862004)(47076005)(7696005)(8676002)(4326008)(186003)(70206006)(70586007)(508600001)(5660300002)(52536014)(8936002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2022 07:32:52.5925
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 88cb13a9-624f-4f3d-ed43-08da49ea4359
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR03FT029.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4893
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Jun 2022 07:33:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57308

--_000_PA4PR08MB7411FC7CFC3E76DB1FCF1782E8A79PA4PR08MB7411eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

It would be fairly simple to make a =91dummy=92 python3 recipe, like there =
already is for perl, which you can explicitly add to the SDK to use the hos=
t python. This would break anything inside the SDK which is a Python module=
 with a C extension, as those need to be build against the right python.

Ross

From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Alexander Kanavin via lists.yoctoproject.org <alex.kanavin=3Dgmail.com@=
lists.yoctoproject.org>
Date: Tuesday, 7 June 2022 at 14:56
To: Vinothkumar Eswaran <evinoth1206@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to remove the python3 from Yocto SDK
Python3 isn't directly pulled into the SDK, but is a runtime
dependency of other items, such as meson. You can check that by

$ bitbake core-image-minimal -g -c populate_sdk

and reading/grepping the .dot file for nativesdk-python3.

Meson in turn is pulled in by the sdk packagegroup:

$ grep nativesdk-meson task-depends.dot |grep packagegroup
"nativesdk-packagegroup-sdk-host.do_package_write_rpm" ->
"nativesdk-meson.do_packagedata"

I guess if you drop all python consumers from packagegroups, then
python won't get pulled in either, but that is swimming in uncharted
waters, and you'll need to ensure replacements from the host are
available.

Alex

On Tue, 7 Jun 2022 at 14:21, Vinothkumar Eswaran <evinoth1206@gmail.com> wr=
ote:
>
> Hi Alex,
>
> yes the absolute path works. May I ask why python3 is part of the SDK and=
 is it possible to remove it from the SDK ?
>
> regards,
>
> Vinothkumar
>
>
>
>
IMPORTANT NOTICE: The contents of this email and any attachments are confid=
ential and may also be privileged. If you are not the intended recipient, p=
lease notify the sender immediately and do not disclose the contents to any=
 other person, use it for any purpose, or store or copy the information in =
any medium. Thank you.

--_000_PA4PR08MB7411FC7CFC3E76DB1FCF1782E8A79PA4PR08MB7411eurp_
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
span.EmailStyle19
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
:EN-US">It would be fairly simple to make a =91dummy=92 python3 recipe, lik=
e there already is for perl, which you can explicitly add to the SDK to use=
 the host python. This would break anything
 inside the SDK which is a Python module with a C extension, as those need =
to be build against the right python.<o:p></o:p></span></p>
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
oject.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Alexander Kanav=
in via lists.yoctoproject.org &lt;alex.kanavin=3Dgmail.com@lists.yoctoproje=
ct.org&gt;<br>
<b>Date: </b>Tuesday, 7 June 2022 at 14:56<br>
<b>To: </b>Vinothkumar Eswaran &lt;evinoth1206@gmail.com&gt;<br>
<b>Cc: </b>Yocto-mailing-list &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject: </b>Re: [yocto] How to remove the python3 from Yocto SDK<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Python3 isn't direc=
tly pulled into the SDK, but is a runtime<br>
dependency of other items, such as meson. You can check that by<br>
<br>
$ bitbake core-image-minimal -g -c populate_sdk<br>
<br>
and reading/grepping the .dot file for nativesdk-python3.<br>
<br>
Meson in turn is pulled in by the sdk packagegroup:<br>
<br>
$ grep nativesdk-meson task-depends.dot |grep packagegroup<br>
&quot;nativesdk-packagegroup-sdk-host.do_package_write_rpm&quot; -&gt;<br>
&quot;nativesdk-meson.do_packagedata&quot;<br>
<br>
I guess if you drop all python consumers from packagegroups, then<br>
python won't get pulled in either, but that is swimming in uncharted<br>
waters, and you'll need to ensure replacements from the host are<br>
available.<br>
<br>
Alex<br>
<br>
On Tue, 7 Jun 2022 at 14:21, Vinothkumar Eswaran &lt;evinoth1206@gmail.com&=
gt; wrote:<br>
&gt;<br>
&gt; Hi Alex,<br>
&gt;<br>
&gt; yes the absolute path works. May I ask why python3 is part of the SDK =
and is it possible to remove it from the SDK ?<br>
&gt;<br>
&gt; regards,<br>
&gt;<br>
&gt; Vinothkumar<br>
&gt;<br>
&gt;<br>
&gt; <br>
&gt;<o:p></o:p></span></p>
</div>
</div>
IMPORTANT NOTICE: The contents of this email and any attachments are confid=
ential and may also be privileged. If you are not the intended recipient, p=
lease notify the sender immediately and do not disclose the contents to any=
 other person, use it for any purpose,
 or store or copy the information in any medium. Thank you.
</body>
</html>

--_000_PA4PR08MB7411FC7CFC3E76DB1FCF1782E8A79PA4PR08MB7411eurp_--

