Return-Path: <john.klug@multitech.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37C68CE79A1
	for <webhook@archiver.kernel.org>; Mon, 25 Sep 2023 18:45:35 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.106])
 by mx.groups.io with SMTP id smtpd.web10.69055.1695667530480686249
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Sep 2023 11:45:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@multitech.com header.s=selector1 header.b=lYC+dGaW;
 dkim=pass header.i=@multitech.com header.s=selector1 header.b=lYC+dGaW;
 dkim=pass header.i=@mail-dkim-us-east-2.prod.hydra.sophos.com header.s=v1 header.b=R+EE9d6X;
 spf=pass (domain: multitech.com, ip: 40.107.92.106, mailfrom: john.klug@multitech.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=multitech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nu/yNT7yD1OudKNWDGZsiE0se5R+NrA1kcGg9okaFTk=;
 b=lYC+dGaWyNezQcWR8Y4R/P5x+D23Octp5Af1M895lyg8NA8y9QrsE2gXm/Xzt/Id0c5VsIXCd9nflX+u7x7EQzyvs1gcjxi/waT3bcyMxLW/CfX4Rhz3EQXUjYNRndF6cEQJDd6ikE91a6e39wLnYG/jo2EPCGV/Umh78sItyyI=
Received: from DM6PR02CA0086.namprd02.prod.outlook.com (2603:10b6:5:1f4::27)
 by BY3PR13MB5059.namprd13.prod.outlook.com (2603:10b6:a03:36e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Mon, 25 Sep
 2023 18:45:27 +0000
Received: from DS2PEPF00003443.namprd04.prod.outlook.com
 (2603:10b6:5:1f4:cafe::2a) by DM6PR02CA0086.outlook.office365.com
 (2603:10b6:5:1f4::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.35 via Frontend
 Transport; Mon, 25 Sep 2023 18:45:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 103.246.251.226)
 smtp.mailfrom=multitech.com; dkim=pass (signature was verified)
 header.d=multitech.com;dmarc=bestguesspass action=none
 header.from=multitech.com;
Received-SPF: Pass (protection.outlook.com: domain of multitech.com designates
 103.246.251.226 as permitted sender) receiver=protection.outlook.com;
 client-ip=103.246.251.226; helo=mfod-use2.prod.hydra.sophos.com; pr=C
Received: from mfod-use2.prod.hydra.sophos.com (103.246.251.226) by
 DS2PEPF00003443.mail.protection.outlook.com (10.167.17.70) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.14 via Frontend Transport; Mon, 25 Sep 2023 18:45:26 +0000
Received: from ip-172-21-2-151.us-east-2.compute.internal (ip-172-21-2-151.us-east-2.compute.internal [127.0.0.1])
	by mfod-use2.prod.hydra.sophos.com (Postfix) with ESMTP id 4RvWyt2wNxzgY8Q
	for <yocto@lists.yoctoproject.org>; Mon, 25 Sep 2023 18:45:26 +0000 (UTC)
X-Sophos-Product-Type: Mailflow
X-Sophos-Email-ID: 1e5e626f45a24e7da8264941160743e1
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2175.outbound.protection.outlook.com [104.47.55.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mf-outbound-us-east-2.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4RvWyr6ZxNzgY8J; Mon, 25 Sep 2023 18:45:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dE15s7rDZH44RHisUzBgvjh4CQe6ifEduU/uUnJ59bdjj8mmtS99XIfhXPATQui5+1djEQ1NQjBB2hs1J08GWDzPC8zIV3g82TyOBnoHckHrW8OA4Ivkvy4hZLYMOy7Vk0PSkduHiCyKCvXofX25gdkCH5nEC5NKkNlzXpA5I0LanijgAuowRK5jVyc+O9wGIN0uZVOBdx4cCEhl6beZZ6xXI6nSEFZvvvWpVFwfeSeS3EcICDrvobhNgEhOSXTSeo035hdE5yH4rsIyfl7OJuJJZgVbk8c82zOtDlCZLvZ9qnZq6v7cR+wOp8XnjbU1ysD1fZ1hIcjaFHdKIAxENg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nu/yNT7yD1OudKNWDGZsiE0se5R+NrA1kcGg9okaFTk=;
 b=ZXqJdadKQPjKwsysU5IQXYLUFBXksBwANrYazTrrefcYSQV/vNSIt7Zob8stxNmZ+aKnT7ycdyRM0wj8gMPU91/2rFBTpaL9sxo27KQ6qwGPiMrGjOB6wxUhW/70nelN6gtZUPSCz2Hfg9TqiLDrrGnz0/zbhlkUS8uIu21PO+LN7f5MJg+cWTyW8skP3AJouGBcM5L6H/F00CuWik39ieZwwHhXf4cAFXh+7Jv0oAfBZtY4X+Ts0GXEZaYc/p9oiHagU9q+UYjvCKIlrkJ/qdinD4wlB7B1GMpIF757w/8rAfttaEGt+YriMtjHib8E3VSrwJE1ntpBBvai4S/kEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=multitech.com; dmarc=pass action=none
 header.from=multitech.com; dkim=pass header.d=multitech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=multitech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nu/yNT7yD1OudKNWDGZsiE0se5R+NrA1kcGg9okaFTk=;
 b=lYC+dGaWyNezQcWR8Y4R/P5x+D23Octp5Af1M895lyg8NA8y9QrsE2gXm/Xzt/Id0c5VsIXCd9nflX+u7x7EQzyvs1gcjxi/waT3bcyMxLW/CfX4Rhz3EQXUjYNRndF6cEQJDd6ikE91a6e39wLnYG/jo2EPCGV/Umh78sItyyI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1695667522; 
 s=v1; d=mail-dkim-us-east-2.prod.hydra.sophos.com;
 h=Content-Type:Date:Subject:CC:To:From;
 bh=nu/yNT7yD1OudKNWDGZsiE0se5R+NrA1kcGg9okaFTk=;
 b=R+EE9d6X9GSniX0BxR3rXIkswHtVk+e+WUdm/N5+Xygf8aGwNIogOdBoaZz9pLkZ
 q79aQZWzi+RotlYe1FvkjQomA415Uui9oIWJK9sm/HUHehiz3MY7jLGrSRKbZLSCttH
 /kbKD4nocRkBN973EdM4M+DaYu3coCmS4EHVNk/vXVt2UieS6QvYnEGD1ppMxpN+Rgm
 JHBL5e8m4zUjGhPYg8TpCZPBc8kkms/3LDYX8O+EE/OaewV7yySscg4LIhI1rT/Rj7c
 4E3a2lS3KLCnzX+MrUvJgMB5i3rsdEHuwBtnNZmO6XitILLGUMsPcFxpdC9nJ0a8jY0
 MzRbKt+w7g==
Received: from CO3PR13MB5799.namprd13.prod.outlook.com (2603:10b6:303:174::19)
 by BL3PR13MB5228.namprd13.prod.outlook.com (2603:10b6:208:347::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Mon, 25 Sep
 2023 18:45:23 +0000
Received: from CO3PR13MB5799.namprd13.prod.outlook.com
 ([fe80::9601:44bd:83b4:d6ef]) by CO3PR13MB5799.namprd13.prod.outlook.com
 ([fe80::9601:44bd:83b4:d6ef%3]) with mapi id 15.20.6813.018; Mon, 25 Sep 2023
 18:45:22 +0000
From: John Klug <John.Klug@multitech.com>
To: Yoann CONGAL <yoann.congal@smile.fr>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] bbappend not working for recipe with git in name
Thread-Topic: [yocto] bbappend not working for recipe with git in name
Thread-Index: AQHZ72pkHk0omTzx7kCXl6TUBVDQOLAr28aAgAAFQU4=
Date: Mon, 25 Sep 2023 18:45:22 +0000
Message-ID: <CO3PR13MB57993A6FD0D1AD75E2C03F7CFEFCA@CO3PR13MB5799.namprd13.prod.outlook.com>
References: <CO3PR13MB57996BD3F7D1ACA647B214D3FEFCA@CO3PR13MB5799.namprd13.prod.outlook.com>
 <CAMSfU+7586KbwUnC_E9eTRcfMNZUpxmWWX3yY6u_TzJzy3Zzgg@mail.gmail.com>
In-Reply-To: <CAMSfU+7586KbwUnC_E9eTRcfMNZUpxmWWX3yY6u_TzJzy3Zzgg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=multitech.com;
x-ms-traffictypediagnostic: 
	CO3PR13MB5799:EE_|BL3PR13MB5228:EE_|DS2PEPF00003443:EE_|BY3PR13MB5059:EE_
X-MS-Office365-Filtering-Correlation-Id: be6fbafc-1892-42fe-b8f9-08dbbdf795cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 53ELB/rsXqQv7IKS6zcaWsiGXFPYh+XQwdb1WaYjdB5jnyHAgcsMqCH3zpSv377oL1upGDQGptH8OsxeJPVMv4u2ulymnqsxoaA92ZwnUOuQN6qxdqo+Mu15bF2+I6VAAIa/k6DswiuXLd1aUsQWKoeBfbqOX974T9B9v6Y6dDsIvBLlWSogGw/2ErJHPdY1+DTdw/ndW7ccjOn5C/1Xsk/iWVvEEJMOMTzxQLuLDyYyFZDZ2KZvBIh1bpOYRxpzYna2Rr/mMV6Y3XBWtyTGzp+95UBcytwALne5B1FqPdAaCeW1hIRAcL8EckJB3NfGaduavQ5avlRwvJEwgmEUsYoWYrPX3TbQeGECh2VWS6t3s+wWH5dol+hFIgqI1dG8DPPcEQ5Qe2zn86HmyebDn1luxDDuhxvk1O63idwG8lC2yXNwkVCdWmXUpjNsb6t0+/bdijHjaBMHQ4KAr8Sq+p0KdBC9tVf1gtkq0nt5esUfxvvZwjHkOPdHOJRiDNhLhzmpcYzRzDWvIMUBdSPPVXOMvRLGoEnLILLEUjr84phWaDr0WrUOOpPA+0x8z0curq23+lLkGFe/2F6FOg90LgSR2slj0QqhEjsUl0sCOvoOvwcX1gkSro+J7/sEQyHBZj896wdfdgauNp/guAA6puhiposuceBTDz7QrQ1xJxQ=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:CO3PR13MB5799.namprd13.prod.outlook.com;
 PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(396003)(346002)(39850400004)(366004)(230922051799003)(1800799009)(451199024)(186009)(41300700001)(55016003)(8936002)(8676002)(4326008)(66476007)(66446008)(66556008)(64756008)(66946007)(6916009)(316002)(26005)(52536014)(76116006)(91956017)(86362001)(4744005)(2906002)(122000001)(478600001)(33656002)(38070700005)(83380400001)(71200400001)(38100700002)(6506007)(5660300002)(7696005)(9686003);
 DIR:OUT; SFP:1102; 
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR13MB5228
X-Sophos-Email: [us-east-2] Antispam-Engine: 5.1.3,
 AntispamData: 2023.9.25.180921
X-LASED-SpamProbability: 0.079439
X-LASED-Hits: BODYTEXTP_SIZE_3000_LESS 0.000000, BODY_SIZE_1000_LESS 0.000000,
 BODY_SIZE_2000_LESS 0.000000, BODY_SIZE_400_499 0.000000,
 BODY_SIZE_5000_LESS 0.000000, BODY_SIZE_7000_LESS 0.000000,
 CTE_QUOTED_PRINTABLE 0.000000, DKIM_ALIGNS 0.000000, DKIM_SIGNATURE 0.000000,
 HTML_00_01 0.050000, HTML_00_10 0.050000, IN_REP_TO 0.000000,
 LEGITIMATE_SIGNS 0.000000, MSG_THREAD 0.000000, MULTIPLE_REAL_RCPTS 0.000000,
 NO_CTA_FOUND 0.000000, NO_CTA_URI_FOUND 0.000000, NO_FUR_HEADER 0.000000,
 NO_URI_FOUND 0.000000, NO_URI_HTTPS 0.000000, OUTBOUND 0.000000,
 OUTBOUND_SOPHOS 0.000000, REFERENCES 0.000000, SUSP_DH_NEG 0.000000,
 __ARCAUTH_DKIM_PASSED 0.000000, __ARCAUTH_DMARC_PASSED 0.000000,
 __ARCAUTH_PASSED 0.000000, __ARC_SEAL_MICROSOFT 0.000000,
 __ARC_SIGNATURE_MICROSOFT 0.000000, __BODY_NO_MAILTO 0.000000,
 __BOUNCE_CHALLENGE_SUBJ 0.000000, __BOUNCE_NDR_SUBJ_EXEMPT 0.000000,
 __BULK_NEGATE 0.000000, __CC_NAME 0.000000, __CT 0.000000, __CTE 0.000000,
 __CT_TEXT_PLAIN 0.000000, __DKIM_ALIGNS_1 0.000000, __DKIM_ALIGNS_2 0.000000,
 __DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000, __DQ_NEG_IP 0.000000,
 __FROM_DOMAIN_NOT_IN_BODY 0.000000, __FUR_RDNS_SOPHOS 0.000000,
 __HAS_CC_HDR 0.000000, __HAS_FROM 0.000000, __HAS_MSGID 0.000000,
 __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000,
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000,
 __IMP_FROM_MY_ORG 0.000000, __IMP_FROM_NOTSELF 0.000000, __IN_REP_TO 0.000000,
 __JSON_HAS_SCHEMA_VERSION 0.000000, __JSON_HAS_TENANT_DOMAINS 0.000000,
 __JSON_HAS_TENANT_ID 0.000000, __JSON_HAS_TENANT_SCHEMA_VERSION 0.000000,
 __JSON_HAS_TENANT_VIPS 0.000000, __JSON_HAS_TRACKING_ID 0.000000,
 __MIME_BOUND_CHARSET 0.000000, __MIME_TEXT_ONLY 0.000000,
 __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000, __MIME_VERSION 0.000000,
 __MSGID_32_64_CAPS 0.000000, __NO_HTML_TAG_RAW 0.000000,
 __OUTBOUND_SOPHOS_FUR 0.000000, __OUTBOUND_SOPHOS_FUR_IP 0.000000,
 __OUTBOUND_SOPHOS_FUR_RDNS 0.000000, __REFERENCES 0.000000,
 __SANE_MSGID 0.000000, __SCAN_D_NEG 0.000000, __SCAN_D_NEG2 0.000000,
 __SCAN_D_NEG_HEUR 0.000000, __SCAN_D_NEG_HEUR2 0.000000,
 __SUBJ_ALPHA_END 0.000000, __SUBJ_ALPHA_NEGATE 0.000000, __SUBJ_REPLY 0.000000,
 __TO_MALFORMED_2 0.000000, __TO_NAME 0.000000,
 __TO_NAME_DIFF_FROM_ACC 0.000000, __TO_REAL_NAMES 0.000000,
 __URI_NO_MAILTO 0.000000, __X_FF_ASR_SCL_NSP 0.000000,
 __X_FF_ASR_SFV_NSPM 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-Sophos-Mailflow-Processing-Id: 54136349b5ec4e2d91ddf7dd17cbb34a
X-Sophos-MH-Mail-Info-Key: NFJ2V3l0MndOeHpnWThRLTE3Mi4yMS4yLjE1MQ==
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DS2PEPF00003443.namprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	5c8448a2-e406-47a0-5695-08dbbdf7933a
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jE9Fh9WZg4IsDh7AQFnso/lMZlZVgACRf1YHZnILOnJPVBnUquebodizRtg1Iyvltvj6a1cCGVnvGWS07QLzVnmMjRIeKtwcCWNoHB8nOYOEEV/OQicMiJl0hKfiAhuTALc9P68xT1PSJXFWcz9xO8Su+Wg8qhjsIpfATlBfBA2EkMKPqN5qTtpKdDmLGakWtK3BbQ6ixa7LdaEXKxr9UpZ67A4IQnrebRqRFoLWXzTD9YhKPw7BkRHVcOXAKhGf7da5yw3ruiA1foCK2GKUyWVZUMkl15N1kM3DfZfaMhcjDZjEwcaXo/Ral3wXCNhv7xz0HXdr/XZeBXIZjCP5cuNSL9JnWPNkPfEKozrj2WP5AbkwshbXq/UCR493u5mS3uPDC1dESxuMnsLYJxJocuFrzaOvMbdmGQjccC/kp4HmsKWnSOhccmz7VnUVv0viWOd8ZvyfNWyXQfP3YpjvFO/3hKvK83Bs3wlqSP/G6ES9H9aygfjnBbBbgtffYAh2WSiDGO30Mj0cqUPo/qIdhvozseFeOMj36NVlfXd4Up7XU3TSvwlneg7lEi6sRCyzg2wahi73zjrvSjCUND/StDlCU48BAJ9sFJa/CMTz3TFOTi2gVR8YiqOrcVfOg5f2QaKvw1IJcCI/o02l+2mqx1nIuGJMFv3KTwkWhtR4cFuhGg2b1BzzZAIFZmwwxZWyGZhG5F3e8bmwLCcpCWSruQwmAY0/B3WT8soK8YqpOXxy5wLLrWBPBEb/N8azejrr
X-Forefront-Antispam-Report: 
	CIP:103.246.251.226;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mfod-use2.prod.hydra.sophos.com;PTR:mfod-use2.prod.hydra.sophos.com;CAT:NONE;SFS:(13230031)(396003)(376002)(136003)(346002)(39850400004)(230922051799003)(1800799009)(451199024)(186009)(82310400011)(36840700001)(46966006)(41300700001)(55016003)(6862004)(8936002)(4326008)(8676002)(36860700001)(70206006)(70586007)(316002)(26005)(52536014)(336012)(86362001)(4744005)(2906002)(356005)(7636003)(82740400003)(7596003)(478600001)(40480700001)(47076005)(33656002)(83380400001)(5660300002)(9686003)(6506007)(7696005);DIR:OUT;SFP:1102;
X-OriginatorOrg: multitech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2023 18:45:26.9353
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: be6fbafc-1892-42fe-b8f9-08dbbdf795cd
X-MS-Exchange-CrossTenant-Id: f802e804-804f-4d1e-b625-870b4d57fd00
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f802e804-804f-4d1e-b625-870b4d57fd00;Ip=[103.246.251.226];Helo=[mfod-use2.prod.hydra.sophos.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DS2PEPF00003443.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY3PR13MB5059
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Sep 2023 18:45:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61105

Yoann Congal wrote:=0A=
>I may be wrong but it looks like you have 2 kernel-module-nxp89xx recipes =
: =0A=
>* one called kernel-module-nxp89xx_git.bb which is bbappended in you layer=
=0A=
>* another one called kernel-module-nxp89xx.bb (no PV in filename), which i=
s preferred over the _git one.=0A=
=0A=
This is indeed the case, and removing _git in the bbappend file name cured =
the problem.  Thanks.=0A=
=0A=
John Klug=

