Return-Path: <fknorr@neuroloop.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C036C433F5
	for <webhook@archiver.kernel.org>; Fri, 13 May 2022 10:33:20 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.129])
 by mx.groups.io with SMTP id smtpd.web09.6668.1652437997846561940
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 May 2022 03:33:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@neuroloop.onmicrosoft.com
 header.s=selector2-neuroloop-onmicrosoft-com header.b=KDjoXwYg;
 spf=pass (domain: neuroloop.de, ip: 40.107.8.129,
 mailfrom: fknorr@neuroloop.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LIpDMw6pwWHWszEfDnV2HLQ8EqI4UpSPXlalvVCLFLwdH5UJwBEkwq/TFyhbg1DzBF/ZedvvlZZZAsjfFMPmBQUREHVl2fB8z62axna7RkZwgY3OcLoXwETTP2A+0CVnoZ0NuD/0/+hKl18hZFV9zkmmHTZJumNSER7M8tJYnwdJo5SOT0RW1H4GFrn72o33LRftGz/oLaD6e0jS4d05WFEIVQA5xHPsh2LyvrVI7B88AuDGUIFDsyJoD6Yc9YhY+O8zWHt1mYrpFuM5SGz3pM9vmXPWA2EecOPLL0IRP72q3MzP4E1IbB57Ngb3nkjQBE9KhYHZMOmewP6UBmNaKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WRbgJqLXD/l4HEYDj3MyC7eRVcLlKz364HYbt7M51j0=;
 b=HlcSUOXZwf/9bFxHY5ZqPx2enqamZS+5bR1lDljeME1zDWCdnzKH1EyalAdu8IZs6iHQooq7n7vJupqstzALxJMoNOcwGFW37QVFTWByP6hbwMladdRd0a8Q7X7xPPz7jcXz0TyzXuuhJywLAN3hT41rycVeiC1hJVESR8h824v0so40hPbtZO76Sjxd6wyhyUCixFnwza01KndVsT53A2OmF787dosaYZ0bODXxi/tlxRyYszdkswHAAYy1Cp8FPUmwZ7d3SvWHEVp9ap8zYKjOU0ePSOGyN2SStbo6IM3cwegJU7dqbx/7EMF8ecjdQWb2qgu11roAAJ2g65Xf9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 213.164.76.146) smtp.rcpttodomain=theobroma-systems.com
 smtp.mailfrom=neuroloop.de; dmarc=bestguesspass action=none
 header.from=neuroloop.de; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=neuroloop.onmicrosoft.com; s=selector2-neuroloop-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WRbgJqLXD/l4HEYDj3MyC7eRVcLlKz364HYbt7M51j0=;
 b=KDjoXwYgd1/Eypu68AeCGrUey/m7Ps952QrtlzDmO0rp9Hp1QU46oNtWas+PbR56ei8uD22CwzLiwbC7q4/6lyNFdcezhyQBPYEstXJYM07mIXKolZSClNvui4jssGbl48vFnEYVzY/lhbIcK1ql4BN9idNiRbPwem3MWyVix20=
Received: from AM7PR03CA0019.eurprd03.prod.outlook.com (2603:10a6:20b:130::29)
 by VI1PR04MB6045.eurprd04.prod.outlook.com (2603:10a6:803:f2::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.14; Fri, 13 May
 2022 10:33:14 +0000
Received: from VE1EUR02FT094.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:130:cafe::3b) by AM7PR03CA0019.outlook.office365.com
 (2603:10a6:20b:130::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.15 via Frontend
 Transport; Fri, 13 May 2022 10:33:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 213.164.76.146)
 smtp.mailfrom=neuroloop.de; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=neuroloop.de;
Received-SPF: Pass (protection.outlook.com: domain of neuroloop.de designates
 213.164.76.146 as permitted sender) receiver=protection.outlook.com;
 client-ip=213.164.76.146; helo=mail.neuroloop.de;
Received: from mail.neuroloop.de (213.164.76.146) by
 VE1EUR02FT094.mail.protection.outlook.com (10.152.13.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5250.13 via Frontend Transport; Fri, 13 May 2022 10:33:13 +0000
Received: from srvexc1.neuroloop.local (10.136.17.20) by
 srvexc1.neuroloop.local (10.136.17.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Fri, 13 May 2022 12:33:13 +0200
Received: from srvexc1.neuroloop.local ([fe80::10ec:631:7447:2833]) by
 srvexc1.neuroloop.local ([fe80::10ec:631:7447:2833%10]) with mapi id
 15.02.0986.014; Fri, 13 May 2022 12:33:13 +0200
From: Felix Knorr <FKnorr@neuroloop.de>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>, Alex Kiernan
	<alex.kiernan@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Problems with recipe for our Rust-Software
Thread-Topic: [yocto] Problems with recipe for our Rust-Software
Thread-Index: 
 AQHYZgGLsWOXeMJMDEikgnq0DMWt7a0bGriAgAE1vgCAAAHogIAAFtGAgAAFRwCAAA2wAA==
Date: Fri, 13 May 2022 10:33:13 +0000
Message-ID: <3ad31be8-f34a-14c4-4f93-ae525251692a@neuroloop.de>
References: <e1f7dbc8-c091-5891-2d1e-d1fb22ada352@neuroloop.de>
 <CAO5Uq5TnUuDo1uC40qjOkGrVWfjDG98XbxchQ86wpVAXCch_eg@mail.gmail.com>
 <d613b978-e8fa-ffcc-77de-87f1415bfdb9@neuroloop.de>
 <a1d712e5-4b88-1a77-9b77-d6bb652f3add@theobroma-systems.com>
 <3f911b42-7879-a3e4-002d-2b7a6d360d3a@neuroloop.de>
 <5953a052-4457-c109-460a-adaa4f0d15b7@theobroma-systems.com>
In-Reply-To: <5953a052-4457-c109-460a-adaa4f0d15b7@theobroma-systems.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [213.164.93.30]
Content-Type: text/plain; charset="utf-8"
Content-ID: <B796D64D599B2542A6DBEDDEC868D05A@neuroloop.local>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 390592b8-54a6-40b4-1984-08da34cbfc20
X-MS-TrafficTypeDiagnostic: VI1PR04MB6045:EE_
X-Microsoft-Antispam-PRVS: 
	<VI1PR04MB6045B02C730CBD936BEE0C77A6CA9@VI1PR04MB6045.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gXgOGBdwn9eHkAHfPAfhyzccsx+gHgEEwkBgHVYf7e0fWtWp1oJD3oedTEKLbH3er0vTy5uzvGXoAxnDb9wHB8F+ldUHZPtqnvZOS4GSSXji6CyJpMaOUaalj9R8naaxTE6m5wugxqaZcGrDNAbzYRe/UEyuHG4gJBUo6q7iHAmqR9qPCEBE8qPfb1ICxXjOTr8J6Zy8jJro25ZL1u0dB+Xop7SOW3QuBqs+qR1PTGovBaeolI++xs8jk8dNN3VfujBe6Z8ivhf9KANUF6PJBR+jR5FKZusaWIti5RhGiVHnlCDtvZ4sT+YP+qbUuv3pp22Qcl2wSR5OIwek8KeLd4/nLIt+sCw2P5BdZ9/KcYHEumN7h4WNtxz3vDkyCbbdaqYFkKHIZ83yl7u0N3qj7Lr0F6EAbrQdwWpYcBganBVuf+iXUkD7rYVBwByI++6NEN6OPAsDrZithvkmXjxxp3J1SGQL4Bnqg/bB4hzwlVFofvmkN79wlWglTBXWpjHb0+vZ75wIz0aZDOKkkOysXrXYt6SywX4xFDdBUmbB8JlaBJ34fd2Et1Wnr+eVi+4HIuTjwAI2JavZgSZfAZ7DrWO3MczCIXjsVrviT3pCtM3RThPBg8yx12I15MQciqGdflORs0ozUN0DAaOIdmxoLweUjRRp7AbCVcp7oV0XmInrVy1vZ5Y1BcP194rflk5Ka5GlrmEhkEA8ZPjlvGVPFQ==
X-Forefront-Antispam-Report: 
	CIP:213.164.76.146;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.neuroloop.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230001)(346002)(136003)(39830400003)(396003)(376002)(36840700001)(46966006)(31686004)(558084003)(36860700001)(508600001)(336012)(47076005)(19618925003)(186003)(36756003)(70206006)(82310400005)(40480700001)(5660300002)(316002)(4270600006)(26005)(4326008)(8676002)(70586007)(8936002)(2616005)(86362001)(31696002)(81166007)(110136005)(356005)(2906002)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: neuroloop.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2022 10:33:13.8845
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 390592b8-54a6-40b4-1984-08da34cbfc20
X-MS-Exchange-CrossTenant-Id: 7ccfa2e6-da67-443f-b0dd-3ff5292e0ffa
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=7ccfa2e6-da67-443f-b0dd-3ff5292e0ffa;Ip=[213.164.76.146];Helo=[mail.neuroloop.de]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR02FT094.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6045
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 May 2022 10:33:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57092

SGV5LA0KDQp0aGFua3MgZm9yIHRoZSBncmVhdCBleHBsYW5hdGlvbiENCg0K

