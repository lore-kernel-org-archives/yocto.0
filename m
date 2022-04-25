Return-Path: <Vasyl.Vavrychuk@opensynergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D8C54F46
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:13 +0000 (UTC)
Received: from repost01.tmes.trendmicro.eu (repost01.tmes.trendmicro.eu
 [18.185.115.31])
 by mx.groups.io with SMTP id smtpd.web11.26600.1650873648824108110
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 01:00:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@opensynergy.com
 header.s=tm-dkim-20210503141657 header.b=UzlKymVK;
 spf=pass (domain: opensynergy.com, ip: 18.185.115.31,
 mailfrom: vasyl.vavrychuk@opensynergy.com)
Received: from 104.47.14.54_.trendmicro.com (unknown [172.21.182.42])
	by repost01.tmes.trendmicro.eu (Postfix) with SMTP id 62C4310000BA7
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:47 +0000 (UTC)
X-TM-MAIL-RECEIVED-TIME: 1650873620.486000
X-TM-MAIL-UUID: 6c1eab33-8446-4f78-bc18-582d07d31d01
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (unknown
 [104.47.14.54])
	by repre01.tmes.trendmicro.eu (Trend Micro Email Security) with ESMTPS id
 76C7B10001769
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LIlyhd0oNDcBSWnmOUwqpZgh/o6i9Zx1ee4TbAR7VZ+Vi8fTJnbgCaWrFzhd8BJMYgzFagO1ZeD/Yv5bqdGT1pvkESdtILy2qh66V9nbglbW6XcHjRRN8jkxG77N+6JJinoBMqr7QCM3X9D2zbRPGQqAtW2QGwSGDMY/AbGfWc8nNHEqZi9OOQu3uxzA6HKoGd4bklK6v7KruW3atatHlUrPCxXNr3bmKgm0ZZhvkUgYtEW/hyXBm5u7eq1T7V7ddAJb0DXTgLtYFBo6e62TR7WJOSq/8MT90kBINDQnp5h8ns+KzWYMofKSkDxt1cNqJ42S58v2dNwWcA95UlAakg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dPLJB2ofTSmRjXmq1rXPZVSXItHvLjQ27T/r2vEP4Mc=;
 b=O6xenVrTAcXYix8/ycfq5HRU1TErgPU4hujCtdLQgoAGQauK4vRbWPujYrhmhhSH5cHw1rGoCeIWlSOmI51euMBi/NdTI25g6F0XKgOxrUGLb9o9xIgSJ70MZgvAtyl8D3gczkvQNJRfdnpQlUPkOhPbWla2NAeCytprEf78itAwCh+4yUNNKtgw/XLbynKXpIwlvCexLAzmygyS0RDM2RTGHowkW7iwR18GMJRDSWY8SXaRvMayWCIgeneAlyPidR99GsWNVwd5YKZwFU7xQfIZg5dhjfqvxiT6+bfNw2oyaXiVHEMEqxHnCxmg/XXyQGMyLIqGXIr/Y5iWmjN7yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 217.66.60.4) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=opensynergy.com; dmarc=pass (p=none sp=none pct=100)
 action=none header.from=opensynergy.com; dkim=none (message not signed);
 arc=none
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 217.66.60.4)
 smtp.mailfrom=opensynergy.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=opensynergy.com;
Received-SPF: Pass (protection.outlook.com: domain of opensynergy.com
 designates 217.66.60.4 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.66.60.4; helo=SR-MAIL-03.open-synergy.com;
From: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
To: yocto@lists.yoctoproject.org
Cc: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
Subject: [psplash][RFC PATCH 00/14] Implement DRM backend
Date: Mon, 25 Apr 2022 10:59:40 +0300
Message-Id: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: f027c315-b5ed-4d09-524c-08da2691a42d
X-MS-TrafficTypeDiagnostic: AM9PR04MB8873:EE_
X-Microsoft-Antispam-PRVS: 
	<AM9PR04MB88735F8E4E2AC85F2E09F7D1ECF89@AM9PR04MB8873.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	x8OZ5ss3s/xb6Ox3fPMtBvTghBYLsaE0YpAh36bzMYRHlFMo8Rzj2Op1ZCA5iK1N99NBeqUZkZWNeaymMxMcQm4m+lt8o1dvrQUoUSYvH8Z3A5qVQkYHyPwWVMgUyDn/6X8EwOZ5F3/tw/B45cdqWW/Qix9/wQAHr+mNbFYm/6j5wOB+DY6NzIj67IYTwB5LN0xAjTXztSxqVnshtThWvnrYsqqI23HvUgw5K/m4p6TK+++Wp8zFQkQCSpnzFtNvoNbkn7hD5AVwTOAEsAeTcuRX71y1Ba+1evH/6W7K9UaSB2sjd/HgZDrESE6DegmhTWpbvfN0gnupD84vl+v9l0tBec+/8bpdqPzxW720v3C8QEteJOuiltP1s8Zbnr79qDgfAfLC9USPso5VQs/Nq9zo0loSzVMc6bnzXPL0tRosSAyL23EDUczyFCQn7v0Zy1RpR+GF3za0PaYqYywqMYEp6piuNosyussJAyG/JL/FxEKZ2rNYU7hrkRZkhRVKLb5cc/RzpgMHsBiQwsm1rcvR2oTYvRZuaGcnJrx8n5kkRtXiclAPsVuXGBC5x9NwQZCiEKPzpvucGx9T+3yJ+/qGYr1dDSoK7M7LW+OxoONzgV2A9sIVTlhKfigBk7ktImSA/vupMoaVyogQ7hkdHuFzY2UZjbhhtr0PnfdUJe06Lkbajl3tl9Da/lSzVAX3GdvAiZY8dqR7ITDoxfQYQQsnjQdghLDdXZG3QVMm0x/fLogWXRFUWTI1vyhoZcGmVub+pYYnJ4f00dTbiHuhIA==
X-Forefront-Antispam-Report: 
	CIP:217.66.60.4;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SR-MAIL-03.open-synergy.com;PTR:mx1.opensynergy.com;CAT:NONE;SFS:(13230001)(396003)(346002)(136003)(376002)(39830400003)(36840700001)(46966006)(36860700001)(47076005)(2616005)(81166007)(966005)(86362001)(1076003)(83380400001)(336012)(186003)(40480700001)(8676002)(2906002)(70586007)(107886003)(4326008)(508600001)(36756003)(70206006)(6916009)(26005)(316002)(82310400005)(42186006)(5660300002)(8936002)(44832011);DIR:OUT;SFP:1102;
X-OriginatorOrg: opensynergy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2022 08:00:19.2268
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 f027c315-b5ed-4d09-524c-08da2691a42d
X-MS-Exchange-CrossTenant-Id: 800fae25-9b1b-4edc-993d-c939c4e84a64
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=800fae25-9b1b-4edc-993d-c939c4e84a64;Ip=[217.66.60.4];Helo=[SR-MAIL-03.open-synergy.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM6EUR05FT005.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8873
X-TM-AS-ERS: 104.47.14.54-0.0.0.0
X-TMASE-Version: StarCloud-1.3-8.8.1001-26854.006
X-TMASE-Result: 10-2.278700-4.000000
X-TMASE-MatchedRID: Qx3J0Ej+Sj6GmBkCWMWDE67i5EFUmYlsfsCnTPmvY76GD9O3ui1h2Jsw
	ZoshJMQR2kxqyz95wrq4V/5VEBnHsDNKys8wS1RvKsurITpSv+NVxJia/7DuCNgJ+YNQuvvyuYq
	W/cruW8KbdkS3XqJhMIUzg4Dpk4bh9IaoJGJ/0Iu5x7uAXGEprfoMe2Os6+g5hPuUhjYIMUecOy
	yg3Ong9OLzNWBegCW2lYPkMMCo9p18nn9tnqel2LI7zVffJqTziG1FDcJuy7GDb8FcqB/BqdF5g
	utZpoUOWn6oa/ntO0otVjfEaDCtG37cGd19dSFd
X-TMASE-XGENCLOUD: 2fbf3c17-e03d-4def-b8b0-41b5f2df3b3b-0-0-200-0
X-TM-Deliver-Signature: 78359CD32A7C973DC65579DE205523D0
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=opensynergy.com;
	s=TM-DKIM-20210503141657; t=1650873647;
	bh=Eg/d2erZsntZ8WAdKikvJRI2j2K7wEPbxXBYEhujNzM=; l=1759;
	h=From:To:Date;
	b=UzlKymVKp0uaGgEueQBGahxSwWco4GqhrJKKsN4PlM4FWv7WdtjvBGe825MVFWHIo
	 YkJexCO485TwGAd5kGtcdL3Qj5u/LOA0Hqt4Woc18j0PatUE0hqdAqv6rA1VyhP5r0
	 fl/BfCblZlaW+tlJeMq5LfUyUHU8i9UWSP5gs74c1WGR8membk9n+Te5xuce3IsPxA
	 us59zO8ngww4sT6x3ph4KImFweOzw/3tsdTWhw9QAzLZd7Yv/hO+SHwC38zx2xlYbH
	 NC4mNnDeBOp0J1vm/geawyW3mI6Lb1ufCiizgIZ9kXG3nwnwXJmbsxWfd3EHRTWPZZ
	 YsgZvZZ5jhxBA==
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56871

It is needed in case display does not support FB.

The missing part is drawing splash screen over all connected displays. I =
think
there should be loop somewhere for this, but I am not sure which level is=
 the
best to put it.

https://github.com/r1mikey/psplash-drm/blob/drm/implement-drm/psplash-dra=
w.c has
psplash_draw_initial(_one), psplash_draw_msg(_one) and
psplash_draw_progress(_one) implementing loop over scanouts. I am think a=
bout
doing the same.

Vasyl Vavrychuk (14):
  Trim trailing spaces
  Fix 'unused-result' warnings
  Remove unused save_termios
  Remove 'psplash-fb.h' from 'psplash.h'
  Extract plot pixel from psplash-fb
  Extract draw rect/image from psplash-fb
  Extract draw font from psplash-fb
  psplash.c: Make psplash_draw_{msg,progress} independent of FB
  Rework flip as function pointer
  Import drm-howto modeset.c as psplash-drm.c
  Implement drm backend
  Reverse modeset_list
  psplash-drm.c: Allocate resources only for the first connector
  psplash-drm.c: Implement double buffering

 Makefile.am       |  15 +-
 configure.ac      |   9 +
 psplash-console.c |  34 +-
 psplash-console.h |   8 +-
 psplash-draw.c    | 295 +++++++++++++++++
 psplash-draw.h    |  81 +++++
 psplash-drm.c     | 787 ++++++++++++++++++++++++++++++++++++++++++++++
 psplash-drm.h     |  17 +
 psplash-fb.c      | 371 +++-------------------
 psplash-fb.h      |  74 +----
 psplash-systemd.c |  36 ++-
 psplash-write.c   |  37 ++-
 psplash.c         | 186 ++++++-----
 psplash.h         |   7 +-
 14 files changed, 1446 insertions(+), 511 deletions(-)
 create mode 100644 psplash-draw.c
 create mode 100644 psplash-draw.h
 create mode 100644 psplash-drm.c
 create mode 100644 psplash-drm.h

--=20
2.30.2


