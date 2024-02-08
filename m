Return-Path: <valeria.petrov@spinetix.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B761C4828F
	for <webhook@archiver.kernel.org>; Thu,  8 Feb 2024 16:28:48 +0000 (UTC)
Received: from CHE01-GV0-obe.outbound.protection.outlook.com (CHE01-GV0-obe.outbound.protection.outlook.com [40.107.23.100])
 by mx.groups.io with SMTP id smtpd.web10.21967.1707409724266428808
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Feb 2024 08:28:44 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@spinetix.com header.s=selector2 header.b=uzqmBgsJ;
 spf=pass (domain: spinetix.com, ip: 40.107.23.100, mailfrom: valeria.petrov@spinetix.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FRinIGYwbP1OiRTmnLS3CUzcha0lzJWCY8xOzAWJIcuLgrkxSUwacyS+y3ZklFF61Q0dlvltaal2nOWtvArky57e4KzBqIDBKWbyBAtUB/cHKhaLvG+7eF21a6ccN/WqktQouyWGJu930o6vItvpMRAX4UDo32aOu81vptqk+sjemF4EYXWw54TfcYimO5urMeXLlF4LwSvSzkNltSRURnvnaZbeU7nuhCzbVAQFLS0sEmeQtLotkVh+SiAsHPi5ZVzy44djbPz/sM1djUc+PGPHuatQW/geQKmL0sVFspou8d3+G9kqYR760OXXeutwNpIs57DPhbxiZx75GKz3ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1bfN6j2WtXFQUnYyOGwK6GzcvQRF2HnaXkHCqAdve5g=;
 b=NEgtzJVO2lIZYAQAFgFFVAmFWEc4SD+9V6dFPnUIRuHlna/TSlFhI5LgPMgVQTRKfsFrr68U9KcmuJJDpEh+M3T940U9EW1vqNmpve1FCqqEC9SGUoSYiqqmsa8DgaFELRfFzz48uiOWo9BkfDaI6fIC2e/k7fF33qXhi1JLv0WqcjQwBuR4AgTPTEufMPpLFBPgTbMxhNHgM14QCNkfHkyosl6vR8Ea+xOWFSho0ankmMsVNRJuFs/bO8vbKD/2Pu45ST0hsf7Y6Glsk9onAN0knJ8GJaxxhS5/JzhHxiL5FpH8T1PAXrlXkjzpJd/lFH4ofr68gGS65PZHhGLuVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=spinetix.com; dmarc=pass action=none header.from=spinetix.com;
 dkim=pass header.d=spinetix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spinetix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1bfN6j2WtXFQUnYyOGwK6GzcvQRF2HnaXkHCqAdve5g=;
 b=uzqmBgsJHU1T+rlj9q2qaHxxPP9PUA/E+u8UibZcfQE4usAcmY7pp9PUiQFGTxzgQoTqkAsg5UhhAahVk4KCkagnMrllIuRNtdf46StvQ6X2ZQeEYVejBItQkte/9rtwk+St+/40ZiVbz/xeW+2goeZLxNB4qJYr84cX5h9H0p0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=spinetix.com;
Received: from ZR0P278MB0379.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:30::12)
 by ZRAP278MB0947.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:49::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.24; Thu, 8 Feb
 2024 16:28:41 +0000
Received: from ZR0P278MB0379.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9bb9:40ae:c5dc:348e]) by ZR0P278MB0379.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9bb9:40ae:c5dc:348e%3]) with mapi id 15.20.7249.039; Thu, 8 Feb 2024
 16:28:41 +0000
From: Valeria Petrov <valeria.petrov@spinetix.com>
To: yocto@lists.yoctoproject.org
CC: Valeria Petrov <valeria.petrov@spinetix.com>
Subject: [meta-security][PATCH] meta-tpm: fix sanity check
Date: Thu,  8 Feb 2024 17:27:32 +0100
Message-ID: <20240208162732.15507-1-valeria.petrov@spinetix.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-ClientProxiedBy: ZR2P278CA0058.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:53::18) To ZR0P278MB0379.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:30::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZR0P278MB0379:EE_|ZRAP278MB0947:EE_
X-MS-Office365-Filtering-Correlation-Id: 175049a8-225c-4af9-00aa-08dc28c302c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	tYki1Fam/2hcJPwrIuYODpEU5HAgXgHpRKUBIL0bmVKk7OHSHOemPjWECRokRZ5jhNeDky/x9L0L9czHFHSP6Z0qTlcaFwcMJDqKLNoeP0TOaOEPcKvusoVTbDzPE9KDLlOkJJicLMaEjbohyE+DwDfci2mqVB0VBIYI1INGJFpBqMc2cQka5vsWrHwA8aXQyjUjnFM0nPnp8DmN0UOT5lNISvV12GwCQaWSS7IqXkwD/dHpFbb+PxRH8rZ2wtgETAImjdkFP5O/mjBI8jqMKBUSSAxHQPCX9wcoRFI+9M+eMXJ3xE0OI9Sn7IpBDVFbpaspbRBar2YXn79QUaK414uQk4aWebfb9NvlaWAR/mwf52i0A5/1GaobVR+uZDI29ut2HmidXUXusV8Yc3tMbS6VoQY3ek2i2QpgNl375Kwg9mMo4gMIQ0eHVNuMIWooTgy+u4z8JRRI+2BHWEDXnlyzS8C0ANL1T6qt2uwG3WA6tQNYpb0PYC3TgHvGGhjecFekhiYEFDdGEsZU3HQ+4IUOEzUwxtxWQeYRiu4GH0s2rAQH7qHl4ZVim/t6Nj5J3rEKWs3z6BnmBY9SbrBKBTzI3oq9zT53YpmBfEBNM0GaYYpcHN4gLe3Zkyvbt7Z4
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZR0P278MB0379.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(136003)(396003)(346002)(376002)(39840400004)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(83380400001)(86362001)(6666004)(6486002)(6916009)(316002)(52116002)(107886003)(38100700002)(66556008)(66946007)(66476007)(2616005)(1076003)(26005)(6506007)(478600001)(6512007)(36756003)(38350700005)(41300700001)(5660300002)(44832011)(8936002)(4326008)(2906002)(8676002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?/B4YfcYLQDukMnsjVBmfMQRqFqyvwqOoBzBSMuA2mSBU7vYmi61k9ML+VSs3?=
 =?us-ascii?Q?+087tRHtLT6Z5YAwMjRV91Rx10u7Pc+8XvPFUYbmRo8l69ycaaQerMqiek/P?=
 =?us-ascii?Q?lh7n0OFkAcXtAD6SoMNAdT/ckj8/J6a6Hh8h06MJJAFtUju3fRDFGRyKQ+2k?=
 =?us-ascii?Q?F45UVasVEEwWYKYrIl/CPTrI7TaUJJjGqOZuT4h4oXeFJHfZ4VxuslVOEYAO?=
 =?us-ascii?Q?BRlZe7XKx/UQo5BbcIkJLKOFokMp5flA1vSunVYnJMbyJlVClPgTJEcyWt/+?=
 =?us-ascii?Q?HXNNL9F3xU87p4BxBUPySPLPHoecJl6FrsePToFxDDV9NNW+dbrzloNwCI1x?=
 =?us-ascii?Q?5U5z97T6P1usbSmDEnwjLLtV+cnR3s8xsyH9YLehfn9Zxm0CRoPzy3wrUmPm?=
 =?us-ascii?Q?sCNgW9xrGUihKTR8+kmoQdRyKxLLZSTumwSIxqas8yWMKS+dxw6mvv7ai/Tt?=
 =?us-ascii?Q?QzNEM03Nkr1+wyhC0PpgZCKRLWc4i+RFVW6QDXK5x0Z7udS4EBPsLpUG6pIl?=
 =?us-ascii?Q?A1OqnGWDi2hr/nY/qKdRYuySbex+518mk9FYO5D+pne/viV9v37/UJCwJtGy?=
 =?us-ascii?Q?QY59/GGRD7aRaR0mh6Ssl8wNyVXRLdzhvkgvpChlHxoBJVW9ppVaWV89jCP4?=
 =?us-ascii?Q?J5WdJ2KpoIFfEa1OMokK3as0JmBxT0F5jd0C+kHjd3J3pcYimpvRwWf6BPTV?=
 =?us-ascii?Q?0m08YExiUT+1biPoZX10ENty7+kke92O5s7RlTxxCGZJI9TMwBouU6zEOkkN?=
 =?us-ascii?Q?GZW28QQCazjFdzh1H4EViwsoSKEtncuaoVveLfWx6HMp23YYRiy/GI/E5IQl?=
 =?us-ascii?Q?hEnm766U9k392iaIRSvWpVBcTp+/ffgKEROMQxZxvRtuZd8AjpAddgrU+eoa?=
 =?us-ascii?Q?N05Hr8VkPc6mUyL+GSJ8+a84gveFuJHA33kEwH67OHaZ6FXC+BMd6zLARD7+?=
 =?us-ascii?Q?EaNIqJevUf105khy5VMFiLdxJIlPR54A2BRfDwcfpiAWjhTgegJqckve/ny3?=
 =?us-ascii?Q?pkzdNyAkUIv0VtMPMJiiL3J5lDusylyIOMsw287xmIRQPplHKpWN3ZMoTvSl?=
 =?us-ascii?Q?YzJO/Gqaf62oTIxBGpx+SoN2m/euuFPkI9R2pLR/C/sWGMvDI9Y9g7+FEvAo?=
 =?us-ascii?Q?q2x8X4v8m0LA0rqsZt9d/+eMa0Zryldhb1f3q1hfk2xHDhRry5INYQOhf+V1?=
 =?us-ascii?Q?0hwy6HBQhlrbC49he5VHrv3ykMnI+zS1nGbfwyFDwUvOOrwzJXYoeh5pe3yA?=
 =?us-ascii?Q?iCXEvLYY6T8RctpBGnyqz+DNdC6D8pOdwlR930y9MUscnzo4hTxR0wecdTDX?=
 =?us-ascii?Q?8VQmA3tB8qIhwOujRPIoN8S3HOWmD9hCw26LtjPAEIHggcS0Oo0oTYh/1SI5?=
 =?us-ascii?Q?cFu2vsUjoW1L0aM+4F/eV2Inl+1Zi4GlyCD3IC0FHIHVojrdqFnVf3WgiyHR?=
 =?us-ascii?Q?aIbMhzLu6lpVSWLTDRLgsiWNWX3lGJmI+mEgVt+525ME7D3vDTVxr/8/SnnX?=
 =?us-ascii?Q?rxaERvuob0bS2atvXCZtjmBD/kvECbWwU84iSzh+aZxP6xxLGYT8aSji6l3M?=
 =?us-ascii?Q?AO3RCUNSIrnbRK0q//Q7xItacFBXy48EUy9+m5yW1J13tFgSMyT/beUV1O1l?=
 =?us-ascii?Q?mQ=3D=3D?=
X-OriginatorOrg: spinetix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 175049a8-225c-4af9-00aa-08dc28c302c1
X-MS-Exchange-CrossTenant-AuthSource: ZR0P278MB0379.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2024 16:28:41.0751
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5f4034fa-ed2d-4840-a93f-acb1e9633b93
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wi67sH5kRSYNmiaNbjg3qP0sSeMu98VCVoHB9UJ/p7pH8jFfkTIyie4xFeucEzMZ+pKcywqRt/JS5h4DRb7W/1r0MPHZktPFExnN6MkVnew=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZRAP278MB0947
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 16:28:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62434

Add tpm2 condition to the sanity check. This issue is already fixed on
the master and langdale branches, see commit 7628a3e9.
This commit addresses the specific issue related to the tpm2 sanity
check, isolated from other modifications introduced in the commit
7628a3e9.

Signed-off-by: Valeria Petrov <valeria.petrov@spinetix.com>
---
 meta-tpm/classes/sanity-meta-tpm.bbclass | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-tpm/classes/sanity-meta-tpm.bbclass b/meta-tpm/classes/sa=
nity-meta-tpm.bbclass
index 2f8b52d..1ab03c8 100644
--- a/meta-tpm/classes/sanity-meta-tpm.bbclass
+++ b/meta-tpm/classes/sanity-meta-tpm.bbclass
@@ -2,7 +2,9 @@ addhandler tpm_machinecheck
 tpm_machinecheck[eventmask] =3D "bb.event.SanityCheck"
 python tpm_machinecheck() {
     skip_check =3D e.data.getVar('SKIP_META_TPM_SANITY_CHECK') =3D=3D "1"
-    if 'tpm' not in e.data.getVar('DISTRO_FEATURES').split() and not skip_=
check:
+    if 'tpm' not in e.data.getVar('DISTRO_FEATURES').split() and \
+       'tpm2' not in e.data.getVar('DISTRO_FEATURES').split() and \
+       not skip_check:
         bb.warn("You have included the meta-tpm layer, but \
 'tpm or tpm2' has not been enabled in your DISTRO_FEATURES. Some bbappend =
files \
 and preferred version setting may not take effect. See the meta-tpm README=
 \
--=20
2.25.1


