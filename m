Return-Path: <rasmus.villemoes@prevas.dk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6BE9E936E7
	for <webhook@archiver.kernel.org>; Wed,  4 Oct 2023 20:51:30 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.107])
 by mx.groups.io with SMTP id smtpd.web11.5902.1696452686020847680
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Oct 2023 13:51:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@prevas.dk header.s=selector1 header.b=jZrBvJAy;
 spf=pass (domain: prevas.dk, ip: 40.107.7.107, mailfrom: rasmus.villemoes@prevas.dk)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FSWyiBh9rHKLOhut9lwToPBwQBR52GaIBLtEaS4Nb2tyZJWrmgaw1wu+jd0Ht4e4BSoM8un2kjyX4FCaQrnVOtyecssgVs/LNZG5l/XL0du7qfaqQTm2D+erA01t6r4tawdsADWFj2uAF0lAergEdo0K0v8lf56YglTuE2x9pX2tubgcI//ncIDjhPL048EIPDQu8BRNyIeRKfsL0IvdidvC8wHYVqA4IDiRhL6KMxjF0b/lKqn++fv18ErYd9wGAYCVA3/+AQY781fkCIobUX0kKd8H5Jd/3FZ8IEkclvGt/D78EwXYGfLDCaU02prHR3KJh3UJzDTu1DwD1Mn+EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SlXs3LlmTrf60LZMdEE8daeDqx3f1jiKp607WlVxPiI=;
 b=VWKLktRkUkpSXnlShz7XX6aMpq6UuKUQiVEwBKO27gYhLPBWm3uG4pEqy3NQKRvcc1Ye+jbAdBrwCdo+Yp7T1tnEc/hIo894AnySMt3MQUj/NvrbjuD4kHiWpstwvKM6QON6Gq0ukiIFvMpCwv/8BVCGiv7YQqIuOejd5ndSvvgAs8GjGu1Lpqq9W3pjIw4AxTxFSVai01zVFxYGyC2fINZEhpIX4ZePJ+7QrMSdMbmGHBGjyiiV/pMRmnZvsdPL87wniFFo6blkw7hMtCiDuDj/5DXhKnhUf/c4BxgnxAPBocdeYt7wfbIRgV4QXxwBo9lVaAdod0KPKTWiepuq0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=prevas.dk; dmarc=pass action=none header.from=prevas.dk;
 dkim=pass header.d=prevas.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SlXs3LlmTrf60LZMdEE8daeDqx3f1jiKp607WlVxPiI=;
 b=jZrBvJAytX3I1dIMVwtrB1TM0kaghkWGH8DlDOPoUB/RHC3EbiXklh+kCGJotLF2/A3cl3gLTZNOmxtxDWTQUrCILdYPsSUsm4zh3bs7zbG/N83ohgnalhMt9q2JuF9r6pnZ9Nidc4GGyhmk3aLv0lJOsANFActrnY/epuxkEOI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=prevas.dk;
Received: from DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:45a::14)
 by DU0PR10MB7566.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:402::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.33; Wed, 4 Oct
 2023 20:51:21 +0000
Received: from DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::52ba:4d74:6ab:aa5]) by DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::52ba:4d74:6ab:aa5%7]) with mapi id 15.20.6838.033; Wed, 4 Oct 2023
 20:51:21 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: yocto@lists.yoctoproject.org,
	akuster808@gmail.com
CC: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
Subject: [meta-security][PATCH 0/3] fail2ban improvements
Date: Wed,  4 Oct 2023 22:51:08 +0200
Message-ID: <20231004205111.443943-1-rasmus.villemoes@prevas.dk>
X-Mailer: git-send-email 2.40.1.1.g1c60b9335d
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-ClientProxiedBy: MM0P280CA0019.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:190:a::11) To DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:10:45a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9PR10MB7100:EE_|DU0PR10MB7566:EE_
X-MS-Office365-Filtering-Correlation-Id: 652ffb5a-cb53-44d9-9865-08dbc51ba9f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	vPNsoUVDfH1hiRwVng6xU6Tt87oqDJtSHOpnOiMg21Fr7CgwXXUz/vu8MbC0nw2Ui0IPS01MGOCfkZTkc9A1coQkYm+G9ph3vZ2vWaDFgwhQQQvR7Zq3w3+ScPuszMTDfn/SPzV1JfCT14vkVc02I9sQxWvJ+L1EbT4cylA/V/Qk6Ebtj4f8QE+R3t35tlPDrLpRVHf1bvl4uUyj7hjD1nuqpXl9YzWFe117sQmrEkh97vFA1d+lkf+zKxdKWS+ZzABQk0kolKIFS5Yh6OM1sTae5oG1owJQ1OHP1am69E1gvv0irGBdki1Lo6nNY1TA1hGk1bUJKpvOJu3tlOzd+4TKx+RmfhBZ+pa+KKaJMLU2yW3CBIngk5ZoKcx2MkDO/tLSov1HYBBRZWimHFFn3hWL5t3YRdtA08L07Bqa1YUh1sQmvwYWq8oWgNLEqHwu+AnRdP/Un01J068/Zsno+Ska17tAkS+zIzLB9X1K5k6YOuz9P4K8/E28RMpiMgEwDxHBbjmvD0HshISy4PEjGZ2mpwkHNL2DXfofx13PnLddUfnN5ZnRI8pFLoM42bfvaHhE7HRwpViicU+Y3n+W+50JoESkjrkHX0/cS68rT6WspUrDtX0S/s/RcPrep+pN
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(136003)(376002)(346002)(39850400004)(366004)(396003)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(26005)(2616005)(1076003)(2906002)(107886003)(38100700002)(38350700002)(8976002)(52116002)(8936002)(4326008)(8676002)(41300700001)(6512007)(478600001)(316002)(6506007)(86362001)(6486002)(5660300002)(44832011)(66946007)(66476007)(36756003)(4744005)(83380400001)(66556008)(6666004);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?//NZgknGZq78FuU5/gmUkS0vk+79CIVN5kBF7QAyMQu/iCZJnbwPzM3pipbL?=
 =?us-ascii?Q?pvTecbrfOEAjegx+VbXqH2EgS7PfUTcX2n2DAlEoLVX6srmmTaaDD/5HZZxt?=
 =?us-ascii?Q?LSDoUp7d5MqXu22hw3yjG3e+JI3fTVpLuc0SQWktXSZawPn/9mYQui5EgVKO?=
 =?us-ascii?Q?hfxccVOytai3iAgu8Z2AZwk5GWcZHDeykL5mDW9p974xVvnet4WdvJHI8Wtv?=
 =?us-ascii?Q?5prmAcYw/O2WS9fcD3RQQFBnybowQCEYzIwOXHuzOS13rlLF/YFIBRQdhs1D?=
 =?us-ascii?Q?BCaazt2Ur64Pos6gjEh6ibKq/+BpsnIztO8CzFSSuecrCvwq1lJCCliMhRS2?=
 =?us-ascii?Q?/DlmGUSE1dID47HfAqrjj8OqPQEd4zFMaWppQ3KL6qtQ9X8XsBoZfen8jBc7?=
 =?us-ascii?Q?05XFG2/2KbgGY1d6IqPJvcGHUIAi4VnrlCBGxkaF6MGW4w84xxCTMp/i59hl?=
 =?us-ascii?Q?9X+l+a6MhaxBAT2O6EBmuH1X0K0NyyT8BY40AdVL+gGQVcZ9q5OfriREJh5I?=
 =?us-ascii?Q?BtT81gALacmYyO6+iBo3K5KxC1k3fCcr/Eu1kVVELwBtz3Yo6YReLtWZp060?=
 =?us-ascii?Q?NVROQyhP9xGsTzWRrgsjSsrejKu11WxNRL5jAo9IONl6llYSAqgv8gLM72ei?=
 =?us-ascii?Q?lt5DWCSDN0eOPnhyNJHQLopue6bEl5tVoOiDW6f6YZ6GC8facazEMOThJBKv?=
 =?us-ascii?Q?A/v64IEAi/C8Zn7FGGjECXXLAEtapmrFAdPMpjtif2ivXyirSuGu8GxqZ75i?=
 =?us-ascii?Q?K+ju3c2ifO3ikbt2cx8zZZJ8W5g74Kc6DPiAnV5H+ccElZ+fRP0PDO61Q3el?=
 =?us-ascii?Q?VR++oTcnzn4IGZToVRskemSHXOF0zJy1XVzFRkVHToUGHYg0yP7PkbzdBZwk?=
 =?us-ascii?Q?psUgyl6i8zvmYsTsnWEysnyhuF1an+WABrCbJIeTjDJ8ooXHiwq91oe7A+lR?=
 =?us-ascii?Q?XjmZwDhddVsdY1Z/HoTeadS3T/UlPxaChOqrAvjx6fqppcl0O8gb0HkKabLg?=
 =?us-ascii?Q?Ph0kxBP4psNgIwEs3mKdiNWINE1eIFeGK7mCjC22nTvLXmJRh4H80ZEW3KVf?=
 =?us-ascii?Q?5kgbDBf3IIyDjQe43KKTjvWqwnh/vgpXT2QhdWjBne7D0wSJcWnWQT9Nb9up?=
 =?us-ascii?Q?WkjVH0mZea43vuTdmxQd+9mO3cD5CN8lTCg2rE7Zufe9JdQ87RusWn6V9+7n?=
 =?us-ascii?Q?XNi3BoomZTA2MRlIcWlHHhukXEugcJAyDaNxuk3J0Q8KMxo/2JaPetWy38n7?=
 =?us-ascii?Q?yAvdxMMZpu2/+zlOHY2hQMM3uK+5l4PJTvyVhYGk14r4RVeMoINYFg6ah9Nq?=
 =?us-ascii?Q?v6EURBnWqYDQghIn4TFziEzG/GO88B4tVG+BRq5EijyF1Bxay6VktibK28VG?=
 =?us-ascii?Q?/TrwyjSBBbLq11OmZIfVHMGBC6h5VGmHU4xPSQIZisCz6ltmroUYES3pCxhh?=
 =?us-ascii?Q?vdllc0SW1lN/w0Ah7sTl1My9y5ICVP29h63FbEossFq3xrYoAa7UD95rCSXr?=
 =?us-ascii?Q?L1RKTM5J8zIfDpV0Ccr97JCtV9vlBtlOVfUkR8rYfV+QAQRXeU0YtcqDgtDv?=
 =?us-ascii?Q?/fftbzFlHw5zgzegMF/333fYNIBl89Sd6w1pRWh9G2H68fI8Mp5pfcx21r4q?=
 =?us-ascii?Q?uw=3D=3D?=
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 652ffb5a-cb53-44d9-9865-08dbc51ba9f1
X-MS-Exchange-CrossTenant-AuthSource: DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 20:51:21.0561
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sd5fLBsI/TjI8vQfQ/s2u8FMgZqHSFTShVaDKm3scP8iFjiMOJkvSQuu0UjUiZQDu6/y8NoLNyVZCRwPS0b9HrVZrwAdcaf2F1naUNGtptg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR10MB7566
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 20:51:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61242

Add systemd support, fixup the sqlite dependency, and add some
recommendations - perhaps the latter should be proper dependencies,
IDK.

Rasmus Villemoes (3):
  fail2ban: add systemd support
  fail2ban: change sqlite3 dependency to python3-sqlite3
  fail2ban: add useful recommendations

 .../fail2ban/python3-fail2ban_1.0.2.bb            | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

--=20
2.40.1.1.g1c60b9335d


