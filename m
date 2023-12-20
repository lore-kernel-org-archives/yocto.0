Return-Path: <john.klug@multitech.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D05C3DA6E
	for <webhook@archiver.kernel.org>; Wed, 20 Dec 2023 15:56:18 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (NAM04-DM6-obe.outbound.protection.outlook.com [40.107.102.134])
 by mx.groups.io with SMTP id smtpd.web10.25068.1703087771945524233
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Dec 2023 07:56:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@multitech.com header.s=selector1 header.b=UlB8sPx7;
 dkim=pass header.i=@multitech.com header.s=selector1 header.b=UlB8sPx7;
 dkim=pass header.i=@mail-dkim-us-east-2.prod.hydra.sophos.com header.s=v1 header.b=LZshGTsX;
 spf=pass (domain: multitech.com, ip: 40.107.102.134, mailfrom: john.klug@multitech.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=mr8j0QU0U7VcavdTXhGiSNCrTDC+MIXvh+MWntXXaPgfpZmFfBP6TB0h1hl+92gTQFIE3gEz2yM49UrP9R4U/fLkYUk+U6ZOM1DKziYh8EwyUocyt8Izd3qhsvuk18C8yfsOH2GkHW8B7NubPhPfzM6uR61tBqbtpW8NfCpb3JWnp53FHBkvaSdcvzUHouXmiMymChVLFCJJ5i+fxTAkSSD/PZ3iWeV+LQXbJtW9DSQL2hh0Q0zarwJTJQsXk/zb4T2QV7eBlDI+xZRB36RLGB2hNj5HWym0bIEVoEgD3MB7dtcBkHQUoBva2fxQXp3200FZGdFMjhCr0CbIBA91EA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=azivOOueOR4g+rMvXy0iyLl/lfvkEGaQ1B8BnUWvOUY=;
 b=d/7zZio48Fmz1r0KeoZFeEKXe0CNinGxegxR8AQYmocLEHK6tEKXULVghA9RscPYCG2rMDzJoQIG+/9QvZut+gyxB4IHJn9RTKzlj7jhSsZ7BrJHDh7rHJ5o6D3NSK6ng+lkmBXUYnD30HEXfghw5b6xAKn3ckaxHz5GzrmAp6mauJqx8Dm2jUZN4RmRLfwZlHFHRQzq6SadS10qKuDuxgEV+Z8neYCuNPyy2P3QDiimYk+Fnflz668fkxZAtVKBum5AY0/uvC8v+d35I37B0iKDnfXDpIJCnMJdzi6/n32AKYOZBMaV4CDYZz7dAjoiKRf348tUlsTKF83v8ACL1A==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 103.246.251.226) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=multitech.com; dmarc=bestguesspass action=none
 header.from=multitech.com; dkim=pass (signature was verified)
 header.d=multitech.com; dkim=pass (signature was verified)
 header.d=mail-dkim-us-east-2.prod.hydra.sophos.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=multitech.com] dkim=[1,1,header.d=multitech.com]
 dmarc=[1,1,header.from=multitech.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=multitech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=azivOOueOR4g+rMvXy0iyLl/lfvkEGaQ1B8BnUWvOUY=;
 b=UlB8sPx704ems+RDHPFs8t4UR5vrRdorzei9Pyz4LMr9GaSLKo74JG3fOKS+beQq/xStxS137di6Y60OFj0XEP/elLb2WGVr3Crx3+Cad5anESRs3eO9V/8HDmCuIWHkqemqo8DLbDD9c8hFh0lTLJanMWQFsRKf9yAmgfgqWSk=
Received: from CH0PR03CA0113.namprd03.prod.outlook.com (2603:10b6:610:cd::28)
 by PH8PR13MB6198.namprd13.prod.outlook.com (2603:10b6:510:25d::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.18; Wed, 20 Dec
 2023 15:56:08 +0000
Received: from DS2PEPF00003448.namprd04.prod.outlook.com
 (2603:10b6:610:cd:cafe::78) by CH0PR03CA0113.outlook.office365.com
 (2603:10b6:610:cd::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38 via Frontend
 Transport; Wed, 20 Dec 2023 15:56:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 103.246.251.226)
 smtp.mailfrom=multitech.com; dkim=pass (signature was verified)
 header.d=multitech.com;dmarc=bestguesspass action=none
 header.from=multitech.com;
Received-SPF: Pass (protection.outlook.com: domain of multitech.com designates
 103.246.251.226 as permitted sender) receiver=protection.outlook.com;
 client-ip=103.246.251.226; helo=mfod-use2.prod.hydra.sophos.com; pr=C
Received: from mfod-use2.prod.hydra.sophos.com (103.246.251.226) by
 DS2PEPF00003448.mail.protection.outlook.com (10.167.17.75) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7113.14 via Frontend Transport; Wed, 20 Dec 2023 15:56:07 +0000
Received: from ip-172-21-1-80.us-east-2.compute.internal (ip-172-21-1-80.us-east-2.compute.internal [127.0.0.1])
	by mfod-use2.prod.hydra.sophos.com (Postfix) with ESMTP id 4SwJ7q2BG0zCqjY
	for <yocto@lists.yoctoproject.org>; Wed, 20 Dec 2023 15:56:07 +0000 (UTC)
X-Sophos-Product-Type: Mailflow
X-Sophos-Email-ID: a19ed21becf740d9a235b075e8c89e0f
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2100.outbound.protection.outlook.com [104.47.58.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mf-outbound-us-east-2.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4SwJ7n6cLBz1xn0
 for <yocto@lists.yoctoproject.org>; Wed, 20 Dec 2023 15:56:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UNuDubhdA3qgZzH952Hfym4DHkioF0gpGacNA3JBqnxicgkWhhanLbSK+hIZpMs/ayiE4S/DYHMOk/15KOBkUCqk1WovNm37ShFbefqnYTT5Yb8sAluIhmvvEvbKkdFba7ujZYVs5FS9VYz2t2srhjXXvdNK5mu1tJ/Q3moifDRNqKUUKBgINlLJIW5uG+FyNjjQxnjo5oawDzcvHOfN4kcZDCw3LOdP6quhGpkVuPnI//DFZK/jU55/uPR+iSnmf13dV9Zhv+M3wvkQ42GR0kPLKeQLxhny/vWX5wOay19pOQIZ4cnf9G6QVEvxzOWRA+0hH3Bs4c6FClbHeXbCoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=azivOOueOR4g+rMvXy0iyLl/lfvkEGaQ1B8BnUWvOUY=;
 b=mpC1gWqDVbzgVFOCdJaOsgUJcu20/1C0ZTPumf/znrrCRAXZWlYx/xWpVW5jOeJIewitKVwyY1mx2FFJiT+qPl/ojPFroBi/0Q31PZJGTD43fJPWJ4AIL151nEzd5d/Mjb70XZ1hA4JZbs2v18Irv+9csgxaFQkxgd909sxynnYaI909M6P6j/z8ZxEBc/b8i+gBU3nPGwVKe+7U+N2NjfAGgwhoeUyRdmiOQvocQuTaa6USTvgjWC1E824ZIxlfiK5bPFrgr2Swqj1/hzt2b1ix/eyaR20ls1SKTE9OxUefPg3TVlFqf3pdUOxoUKLN1NsLkSi6pJMGGBkuZKb4Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=multitech.com; dmarc=pass action=none
 header.from=multitech.com; dkim=pass header.d=multitech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=multitech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=azivOOueOR4g+rMvXy0iyLl/lfvkEGaQ1B8BnUWvOUY=;
 b=UlB8sPx704ems+RDHPFs8t4UR5vrRdorzei9Pyz4LMr9GaSLKo74JG3fOKS+beQq/xStxS137di6Y60OFj0XEP/elLb2WGVr3Crx3+Cad5anESRs3eO9V/8HDmCuIWHkqemqo8DLbDD9c8hFh0lTLJanMWQFsRKf9yAmgfgqWSk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1703087762; 
 s=v1; d=mail-dkim-us-east-2.prod.hydra.sophos.com;
 h=Content-Type:Date:Subject:To:From;
 bh=azivOOueOR4g+rMvXy0iyLl/lfvkEGaQ1B8BnUWvOUY=;
 b=LZshGTsXAwimtLZ+ekJ99UUCnsITSbie9Boyv3c/ybUmyRA56e3T5DmCjbyPHeyB
 3VCW9kvzvzg1KmVBjcgjHELBQODnh1RF5ABxcdXfHZSNLhwKxfL4vmk3EKL4R0FJ9+h
 rYDb55oAbzCVVSRbtJh5mnhwBZqVfFsvwVQMIHpUV27suElq9NwKRgTuearRRwht9gX
 QyQvA6fL5vDC29EO1DZ4f6QvvtxCesYLGXqvcn6LmcJYNE5TFLwKQivzpPRJDvfaIRQ
 /ZUjk3VVOcp7iyqrCK7eUfodzyz9kuKmVRtqt2M3W5+apJLM4Ra85Rff5+s/O/DAXkl
 0jaAjZdtfw==
Received: from DM6PR13MB4540.namprd13.prod.outlook.com (2603:10b6:5:30::32) by
 CH0PR13MB5156.namprd13.prod.outlook.com (2603:10b6:610:f3::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7113.18; Wed, 20 Dec 2023 15:56:02 +0000
Received: from DM6PR13MB4540.namprd13.prod.outlook.com
 ([fe80::69ea:34fb:5237:83c5]) by DM6PR13MB4540.namprd13.prod.outlook.com
 ([fe80::69ea:34fb:5237:83c5%7]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 15:56:02 +0000
From: John Klug <John.Klug@multitech.com>
To: "\"yocto@lists.yoctoproject.org\"" <yocto@lists.yoctoproject.org>
Subject: INITRAMFS_IMAGE variable changing during kernel module build
Thread-Topic: INITRAMFS_IMAGE variable changing during kernel module build
Thread-Index: AQHaM1nTzuObvNmB1E+9WWd3cgbW6w==
Date: Wed, 20 Dec 2023 15:56:02 +0000
Message-ID: <DM6PR13MB454030C322F8867D6D32A504FE96A@DM6PR13MB4540.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=multitech.com;
x-ms-traffictypediagnostic: 
	DM6PR13MB4540:EE_|CH0PR13MB5156:EE_|DS2PEPF00003448:EE_|PH8PR13MB6198:EE_
X-MS-Office365-Filtering-Correlation-Id: 38f694d3-b15d-42ad-10ba-08dc01742e00
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 w3uoJRu84Yl+5t1mL2pab6hoSWES+8gX7WNTXGtoroWdiknd+Vl4ch/y4ib4NbJqal8yZsAtIiby13TFv/ovbGB8FLb90pFJTo8o+6cyu+cOFFUeJP/IFzvVVzuwJtcJAs6yYyuON8UBu577u7dMLW/Ovytq/zNFNFgr0c6sfOLQx4loKmldSjRpwnj4nWG8CiYAS6kih5KtqJAqg7Z3cPm+aAWcFZhjmmH+XeY02oNdtFX9B72WX5aSTZT/5/D6+kqnKd4ZpwPcVaFawuIBui8G4eGAljvbaQkLx1WIvWyIw3LdRo1AlHJ0w+Ie6FgXkR7uP8HmjeT4KmJj/irhNX81b4Il30Hgx529NaCMglsPpTKIJZqb8M5SyHiJ3FNuYJStxb6ZbGzQSwO1ePZkHrLd/1thxwUhNBoZWIPqdehXe0wymJYdfW+AiKks6Eu9A0CO+MxnU4+u0CKSL1zUbfDCBOYQy3Syj8+3jNyxoEjSTfmYrNziAQhVBwG5P66AQvBAKNQzb+/lKoVD8N3M1z1YU8pG28AhQ9/xZekOFUiRJ5QHcgu14dCs/6Io4oUrKS63KUrJXDku+y8GiD7yqzaY34hyzrlIKhpXN7/na0avIvC+2l2pElKDj0FtaUbl4On5KMS4ImaPXE/Hhgpu/tjYObXsSAVntuzLVFQs49iqVYwFrWV/hN36U8Fn74K6EHq3GhjN0iScKpQDh4y/5tuBp+SUvzWqw79FKnS/N7c=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:DM6PR13MB4540.namprd13.prod.outlook.com;
 PTR:; CAT:NONE;
 SFS:(13230031)(39850400004)(396003)(346002)(376002)(366004)(136003)(230173577357003)(230273577357003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(9686003)(86362001)(7696005)(6506007)(478600001)(6916009)(316002)(66556008)(66446008)(52536014)(66946007)(76116006)(66476007)(64756008)(91956017)(33656002)(71200400001)(83380400001)(122000001)(38100700002)(2906002)(8676002)(5660300002)(8936002)(38070700009)(55016003)(41300700001)(491001);
 DIR:OUT; SFP:1102; 
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR13MB5156
X-Sophos-Email: [us-east-2] Antispam-Engine: 5.1.4.1,
 AntispamData: 2023.12.20.153316
X-LASED-SpamProbability: 0.079439
X-LASED-Hits: BODYTEXTP_SIZE_3000_LESS 0.000000, BODY_SIZE_1300_1399 0.000000,
 BODY_SIZE_2000_LESS 0.000000, BODY_SIZE_5000_LESS 0.000000,
 BODY_SIZE_7000_LESS 0.000000, CTE_QUOTED_PRINTABLE 0.000000,
 DKIM_ALIGNS 0.000000, DKIM_SIGNATURE 0.000000, HTML_00_01 0.050000,
 HTML_00_10 0.050000, NO_CTA_FOUND 0.000000, NO_CTA_URI_FOUND 0.000000,
 NO_FUR_HEADER 0.000000, NO_URI_HTTPS 0.000000, OUTBOUND 0.000000,
 OUTBOUND_SOPHOS 0.000000, __ANY_URI 0.000000, __ARCAUTH_DKIM_PASSED 0.000000,
 __ARCAUTH_DMARC_PASSED 0.000000, __ARCAUTH_PASSED 0.000000,
 __ARC_SEAL_MICROSOFT 0.000000, __ARC_SIGNATURE_MICROSOFT 0.000000,
 __BODY_NO_MAILTO 0.000000, __BULK_NEGATE 0.000000, __CP_MEDIA_BODY 0.000000,
 __CT 0.000000, __CTE 0.000000, __CT_TEXT_PLAIN 0.000000,
 __DKIM_ALIGNS_1 0.000000, __DKIM_ALIGNS_2 0.000000, __DQ_NEG_DOMAIN 0.000000,
 __DQ_NEG_HEUR 0.000000, __DQ_NEG_IP 0.000000,
 __FROM_DOMAIN_NOT_IN_BODY 0.000000, __FUR_RDNS_SOPHOS 0.000000,
 __HAS_FROM 0.000000, __HAS_MSGID 0.000000, __HAS_X_FF_ASR 0.000000,
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000,
 __IMP_FROM_MY_ORG 0.000000, __IMP_FROM_NOTSELF 0.000000,
 __JSON_HAS_SCHEMA_VERSION 0.000000, __JSON_HAS_TENANT_DOMAINS 0.000000,
 __JSON_HAS_TENANT_ID 0.000000, __JSON_HAS_TENANT_SCHEMA_VERSION 0.000000,
 __JSON_HAS_TENANT_VIPS 0.000000, __JSON_HAS_TRACKING_ID 0.000000,
 __MIME_BOUND_CHARSET 0.000000, __MIME_TEXT_ONLY 0.000000,
 __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000, __MIME_VERSION 0.000000,
 __MSGID_32_64_CAPS 0.000000, __NO_HTML_TAG_RAW 0.000000,
 __OUTBOUND_SOPHOS_FUR 0.000000, __OUTBOUND_SOPHOS_FUR_IP 0.000000,
 __OUTBOUND_SOPHOS_FUR_RDNS 0.000000, __SANE_MSGID 0.000000,
 __SCAN_D_NEG2 0.000000, __SCAN_D_NEG_HEUR2 0.000000, __SUBJ_ALPHA_END 0.000000,
 __TO_MALFORMED_2 0.000000, __TO_NO_NAME 0.000000, __URI_NO_MAILTO 0.000000,
 __URI_NO_WWW 0.000000, __URI_NS_NXDOMAIN 0.000000, __X_FF_ASR_SCL_NSP 0.000000,
 __X_FF_ASR_SFV_NSPM 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-Sophos-Mailflow-Processing-Id: 1413dbfec5a54c6094bac3ff3314cd23
X-Sophos-MH-Mail-Info-Key: NFN3SjdxMkJHMHpDcWpZLTE3Mi4yMS4xLjgw
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DS2PEPF00003448.namprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	9ae6e495-e559-4708-1bd6-08dc01742ac2
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Sfqz7yLRgcrU6ZKgpJ2XB9u2uFkakmIBxZ030VkglstldpvL3cBR2/1itZjvbEbguvIVXBHILunll/0LpkAzuMM437uql+7WNknX3if1xeyahmMJ04vhxJZ/ewqbFPUtwda0VvyppQpFdRl1h8FURI7DXmd6mKg2PxfAYiTn/6uXjr3mB0sPsKtNguIA0dLqvqO9AEv9pu7vUD7DXa4cOnd12x54+xYOPLyBOii7UW31iEge0pGAbMW82G0N3b8AweB/ZyVkYUPvG7KBRa1MMbqZfxANz+uG+9qkliE3CwR5LVSOYVJTInIpesCWcgNAlWsfqNaN68G5ww/u4lYzPhZbfSD4/3c4i14xD3THKR9pI1t+z2BNOae5SMzftK5L9CQ4ODi4Lz2tWVI7zw9UT9VwQH0ZOre91XOAWaZrpnrsmQ80wbOGKTqAinXhCalWZLF8Xi22HzxZmICWved1+1GqZknmScFjyEAqqKQdf44W0+cEQ8WlvjpCNc1ePjiR4AujGSvqrE6wZG6JV0UTFqcUFmNk1hpbCkFOjzqQVHaXTzpP3B2iLLaiVsMIIbBDshPi2/ZnXsr9lTVkJeIYo+7mDjqYx9jqqtnuVZEdiZjTniKJ+SwTK4vPwpGM/A1y9jP44Znj/te0sXXZd4mamvjEYswOLqXZrIzljVBd9WTGi7KAtB8SKV5K/56UGVJESMowhTjzeK06EeKn1THd6EuAWuT3BoXRmmMD44XM4mre0ouXSuecBa/MakJUXsV2fh9h9OKRwD23Sdc/7Zaz3Drd4wSX1M5L1RUBZSHprB0KOE521A85xqrBbx7nDe1/
X-Forefront-Antispam-Report: 
	CIP:103.246.251.226;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mfod-use2.prod.hydra.sophos.com;PTR:mfod-use2.prod.hydra.sophos.com;CAT:NONE;SFS:(13230031)(376002)(346002)(39850400004)(396003)(136003)(230273577357003)(230173577357003)(230922051799003)(64100799003)(82310400011)(451199024)(186009)(1800799012)(36840700001)(46966006)(478600001)(70206006)(70586007)(316002)(6916009)(356005)(7636003)(82740400003)(41300700001)(86362001)(7596003)(7696005)(9686003)(6506007)(33656002)(5660300002)(26005)(83380400001)(336012)(36860700001)(8936002)(47076005)(8676002)(2906002)(52536014)(55016003)(40480700001)(491001);DIR:OUT;SFP:1102;
X-OriginatorOrg: multitech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2023 15:56:07.7795
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 38f694d3-b15d-42ad-10ba-08dc01742e00
X-MS-Exchange-CrossTenant-Id: f802e804-804f-4d1e-b625-870b4d57fd00
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f802e804-804f-4d1e-b625-870b4d57fd00;Ip=[103.246.251.226];Helo=[mfod-use2.prod.hydra.sophos.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DS2PEPF00003448.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR13MB6198
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Dec 2023 15:56:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61999

The configuration was specified in the build using "-R":=0A=
bitbake -R layers/meta-manufacturing/conf/iotr_rammfg.conf mlinux-iotr-ramm=
fg-image=0A=
=0A=
It is not obvious to me how an external kernel module will use INITRAMFS_IM=
AGE, but I am seeing this message when running diagnostics after an externa=
l kernel module build error:=0A=
=0A=
NOTE: Running task 2854 of 4859 (/home/jenkins/workspace/mlinux/iotr-iotrou=
ter/layers/meta-multitech-nxp/recipes-kernel/mxm-wifiex/mxm-wifiex_5.15.71.=
bb:do_fetch)=0A=
ERROR: When reparsing /home/jenkins/workspace/mlinux/iotr-iotrouter/layers/=
meta-multitech-nxp/recipes-kernel/mxm-wifiex/mxm-wifiex_5.15.71.bb:do_packa=
ge_qa, the basehash value changed from ...=0A=
=0A=
bitbake mxm-wifiex -cdo_package_write_ipk -Sprintdiff output:=0A=
=0A=
Variable INITRAMFS_IMAGE value changed from 'mlinux-iotr-rammfg-image' to '=
'=0A=
=0A=
The only value I can see for INITRAMFS_IMAGE:=0A=
iotr_rammfg.conf:INITRAMFS_IMAGE =3D "mlinux-iotr-rammfg-image"=0A=
=0A=
Despite the errors and a bitbake failure status, the IPK files for this ker=
nel module are created successfully, and the image is also created.=0A=
=0A=
Is there a way to exclude INITRAMFS_IMAGE from being considered when buildi=
ng my external kernel module?=0A=
=0A=
This is from Kirkstone:=0A=
=0A=
2022-04.14=0A=
=0A=
=0A=
=0A=
John Klug=

