Return-Path: <jan.kiszka@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BE45C433EF
	for <webhook@archiver.kernel.org>; Sun,  9 Jan 2022 11:16:51 +0000 (UTC)
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (EUR02-HE1-obe.outbound.protection.outlook.com [40.107.1.45])
 by mx.groups.io with SMTP id smtpd.web10.16967.1641727009683706638
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Jan 2022 03:16:50 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@siemens.com
 header.s=selector2 header.b=NI7uqZ9c;
 spf=pass (domain: siemens.com, ip: 40.107.1.45,
 mailfrom: jan.kiszka@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k71F/j5igLzQb3DGtKxYXILbhfiWPXUPLGnH8V6tHzYPshgdX8YVzNa/OA4N0Rvj0d2nzu7fB+ryVW8Pi/KKf0yRes66QsklBlCorGxKPb+zQgV7qaoOKFxUp3XgBUpb2ZwQ6tAhSd3RfjZM/EDfrHF8bpBzEWIZ0ywRhbugzgvbnFuJAUwh2MYkOhI/bTYPJZ6qmYZ+03xdjOOGz0HtGOt9G1+lYolvY/ZlJNQ8JUaQkLN9xry2lpY9w71s8P7u9Z3FDeiHBzw7lJyW/DSw9VEjG1ryn+SCuHImp/Qfk5VFh5O1W4wtT+SdVA90nSNocTgCLFc0c2e0bYIHZcUzcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JjmhYug4K/GDMRpEyMhj3IYa41MZbHnhZmlVvr9V72A=;
 b=AzXa+YJiJ8KIKmDSWbBzHeDsVwO1A48XjQbxF6noi7iFniQnoKGX6YNlsTaQbg1NrLdWYMsw56qk4BHHnMmR/x2MSsWq82lLoau+DTVEAVFORuVgnhib3u1AweUZ1YQ1loCust3mxXYQdRTeFwtH6CpZyOeIYtAE+3CZdfDjcAJwrF/qLBVln8OJSQPLmqiXbvZnG7ycwaHmn0hbED2kQu72XjLjkNL8JLOHbhaO4udlwb3o9CUA+WvEi7iiASkX+HOHxV39aXd/hq+DqLtJSM1pUIycyxHvxJlnBY1WnBznQmga2Hy0YmgaublXQr3n8Rsk5y7KBihyVBNhKoGPjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 194.138.21.71) smtp.rcpttodomain=gmail.com smtp.mailfrom=siemens.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=siemens.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JjmhYug4K/GDMRpEyMhj3IYa41MZbHnhZmlVvr9V72A=;
 b=NI7uqZ9cYoWatR9JwhqYlBRt/DwtoZxdkCyMweVArSGLmWAyn4BzHkOGr381B7wSkPF94IWwcakCd1pqBLwMOpNsrUicJKq9SlROzsQpDnEuZNJEF+jxbVGbRbWkP7D8XaNzjMz33+UzapzvGfBitXGhb2Lf3/0oumW1yqSxYxcHr14YKaiTefXYTnRyCFzDYS+FgutfvyyzgIoqF3DoX7bPPTxMd/1Y8rNzDUsCK7THd7rpNPLQdFhSdVeXmZSmaQ0jEXt7dDtRK5SnfbdY+bNCMfrNVlyZ7RFcScdzR9nFzx9yKfNZjW9jIcW6Vc05eYSkPQrG4Xg2tx6bIB0LzQ==
Received: from DU2PR04CA0185.eurprd04.prod.outlook.com (2603:10a6:10:28d::10)
 by AM7PR10MB3270.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:10f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.9; Sun, 9 Jan
 2022 11:16:46 +0000
Received: from DB5EUR01FT058.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:10:28d:cafe::1e) by DU2PR04CA0185.outlook.office365.com
 (2603:10a6:10:28d::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.9 via Frontend
 Transport; Sun, 9 Jan 2022 11:16:46 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 194.138.21.71)
 smtp.mailfrom=siemens.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=siemens.com;
Received-SPF: Pass (protection.outlook.com: domain of siemens.com designates
 194.138.21.71 as permitted sender) receiver=protection.outlook.com;
 client-ip=194.138.21.71; helo=hybrid.siemens.com;
Received: from hybrid.siemens.com (194.138.21.71) by
 DB5EUR01FT058.mail.protection.outlook.com (10.152.5.46) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4867.7 via Frontend Transport; Sun, 9 Jan 2022 11:16:46 +0000
Received: from DEMCHDC8A0A.ad011.siemens.net (139.25.226.106) by
 DEMCHDC9SKA.ad011.siemens.net (194.138.21.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Sun, 9 Jan 2022 12:16:45 +0100
Received: from [167.87.72.6] (167.87.72.6) by DEMCHDC8A0A.ad011.siemens.net
 (139.25.226.106) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.17; Sun, 9 Jan
 2022 12:16:45 +0100
Message-ID: <b6e6216d-eebb-485a-35ba-e2e18f527721@siemens.com>
Date: Sun, 9 Jan 2022 12:16:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [yocto] pseudo error building master with kas-container
Content-Language: en-US
To: Trevor Woerner <twoerner@gmail.com>, Quentin Schulz <foss+yocto@0leil.net>
CC: <yocto@lists.yoctoproject.org>, kas-devel <kas-devel@googlegroups.com>
References: <20220104192528.GA25696@localhost>
 <5A44F13B-F383-449C-8FB9-87BEBEF1272D@0leil.net>
 <20220106135047.GA15963@localhost>
 <E46D1565-EFA6-448E-95EC-DBB010C444BE@0leil.net>
 <20220107201240.GA13417@localhost>
 <2AF48BF0-EE03-4443-878C-EB2CB52C8E64@0leil.net>
 <20220108021317.GA38052@localhost>
 <B1F8C02E-93E0-42E4-88EF-02F78F8F834C@0leil.net>
 <20220108191515.GA21494@localhost>
From: Jan Kiszka <jan.kiszka@siemens.com>
In-Reply-To: <20220108191515.GA21494@localhost>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [167.87.72.6]
X-ClientProxiedBy: DEMCHDC89YA.ad011.siemens.net (139.25.226.104) To
 DEMCHDC8A0A.ad011.siemens.net (139.25.226.106)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 50f3d7e6-bd7e-4460-a8e2-08d9d361860a
X-MS-TrafficTypeDiagnostic: AM7PR10MB3270:EE_
X-Microsoft-Antispam-PRVS: 
	<AM7PR10MB32703AA280E4630698F3E15D954F9@AM7PR10MB3270.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:2089;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3IzanxFOQQgGP5ORID3OQG2+8mTLuATFhDHPOd59Bz7cg3C8210r9yW4G1lxPQS+bQaPACb60Rh3gQWRM7AmbCcn5mhuL7I6LpRfPjmKC/fHvie4UX1WW8jLjZW5vL/f2L7lS6vnn57b2T5o24H1mdU+f0Gje+27tbfgD65JoT4moMdcUKUck5bMr9O6ED0gaRjZrEdGIK64h908coXsynDdbfSRHDQXiuie2ycHMgFPrkyGn6J9TKmh4Usu6pKyLVa/f+p6Sgorcb4Dt0zgHSjTQSj9mCePfGPPuH5CoKLjSIosqelGWId1M0EJLhL9TR3UEHcg6RggC5lDugCAa5IhoirGpq1W+oKzNxzXs9ENcbOO/qTzg1GR+xozoXfdJWVxjHLl0fN3WId8lazQAWZ/Z+suedOUYgUpV3H1R3aa6YeKpepPtQmsKRQmI2eyPyRHQLHKfGOkGtwgqHyOV9wOLSvVTuswJwm/XKfhMJKd+Q1SmN7udjPA6cRjLp98UELuVhGJof/F2rMVv+bNXt4vnUgxlGChl75Nit00TpKvuU4Ojr61ZIQ2NKxeF93WuH7iLqQc2n4Cq8RJ1kgkMfGHfcfygRlhOXgjYQkbKQWyIEQqAPuQyM/GgIX2X6oufvJBAhDWwT/OPvXCTTh193TFWx6qS7f8OB51R/g/EAzGUtnUEhYOoSpyqHpVnDRf+mtTuEh3onnRlCfhR7XaF+9wiS1gBJt25BX147i12PFbLxEzD66jinVwQeLS0VST/2pGKP+Nhv6UwPD+MxuuhsD8nc9d/QZvnvXc5qiX8CLXN6SEJo7qYbo1jD5pWzucTlVCyIJqV2C04VC2YwCRT09XcI1QyNpNzBeizERJbKWzVeJ6q+PAxR6da7CWVKP8tG8IBhpKFPRw5QwN8X54LtWWM6qqrQy8R6oWgYnVIgl8JUC01XzVvqWDeak+HGN2
X-Forefront-Antispam-Report: 
	CIP:194.138.21.71;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:hybrid.siemens.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(4636009)(40470700002)(46966006)(36840700001)(16576012)(53546011)(47076005)(2906002)(82310400004)(40460700001)(36860700001)(8936002)(16526019)(81166007)(82960400001)(336012)(86362001)(5660300002)(316002)(186003)(70586007)(356005)(2616005)(70206006)(956004)(44832011)(31686004)(8676002)(6706004)(26005)(36756003)(508600001)(966005)(4326008)(110136005)(54906003)(31696002)(83380400001)(3940600001)(43740500002)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2022 11:16:46.3144
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 50f3d7e6-bd7e-4460-a8e2-08d9d361860a
X-MS-Exchange-CrossTenant-Id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;Ip=[194.138.21.71];Helo=[hybrid.siemens.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5EUR01FT058.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR10MB3270
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 09 Jan 2022 11:16:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55766

On 08.01.22 20:15, Trevor Woerner wrote:
> On Sat 2022-01-08 @ 04:32:21 PM, Quentin Schulz wrote:
>> On January 8, 2022 3:13:17 AM GMT+01:00, Trevor Woerner <twoerner@gmail.=
com> wrote:
>>> On Fri 2022-01-07 @ 11:21:38 PM, Quentin Schulz wrote:
>>>> On January 7, 2022 9:12:41 PM GMT+01:00, Trevor Woerner <twoerner@gmai=
l.com> wrote:
>>>>> In my experiments it seems like all I need is the update to kas-conta=
iner to
>>>>> add "--tmpfs /tmp" to KAS_RUNTIME_ARGS (around line 125). Are you goi=
ng to
>>>>> submit a patch to kas upstream?
>>>>
>>>> Feel free to do it, I don't use kas-container, I use the kas container
>>>> from ghcr.io directly so this won't impact me and I wouldn't be able t=
o
>>>> "maintain" this part and see if something breaks it. I anyway have as =
many
>>>> clues as you have on why this fixes pseudo issues so I wouldn't be abl=
e to
>>>> write a better commit log than you'd do.
>>>
>>> Okay. Can I add your SOB line to the patch?
>>
>> Thanks for asking. I wouldn't have minded were you to send this patch
>> without my SoB but if you want you can use foss+yocto@0leil.net.
>>
>> The important being that it's fixed =E2=98=BA=EF=B8=8F
>=20
> I wouldn't do something like that on purpose :-)
> Let's see where this goes:
> 	https://github.com/siemens/kas/pull/76/commits/eb8f5c90804dee5a1a649883e=
1d400d1058639b3
>=20

Could you send your patch to the kas mailing list for discussion? It
will probably just need a bit tuning on the reasoning:

Rootless podman uses fuse-overlayfs for the rootfs, and that seems to be
incomplete or otherwise incompatible with pseudo. When starting in
--isar mode, thus privileged, a real overlayfs is used, and that works.
And the build folder is not affected by this as it is mounted from the host=
.

Jan

--=20
Siemens AG, Technology
Competence Center Embedded Linux

