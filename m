Received: from NAM02-SN1-obe.outbound.protection.outlook.com (NAM02-SN1-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web12.6099.1614675156084576918
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 00:52:37 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=TgTLdpxG;
 spf=softfail (domain: windriver.com, ip: <nil>, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z0p7pSACxMe4Igz+hVmnZz6ZxvjGJv99PWrxHjzNiXBBEzfzJshWBeOd6+OGnITNacRk9Wy7/yvR9fb3vzpAIOlR/fMhT/tV3YRSePBcSHuSEO0ub7MXBNts1YsFp09fKlgWUVKY+996n9WXBZatkRaQJkkMimHWOn+LNQQk1A0tveFEHPvWEOA1wrAe4eN0QU4iKbhL8gbBbUiyqfuVAOQHj5DqD4e2j2qqKXibYTmJZApNWS6w+P4gO00qA47xP69tYirA8nAc5tpBSa8vf+zvEavGjvEgEGh7xwb+DsVIQt+kBbn4ZcCIRy03wlmjClR+LyxsgwyUpjvrrikBwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+RQRwhObzEph8HJqBAYJPVCBTvHOa1kqSo2yF6eEGC8=;
 b=UxWmLaaWZnbhg5nn6dGh1iZWcrMwQPS36aQW+AsmxXiMDgL4mZpHw05NyR9wP8RywM6pk+YywpZBPpMEnAfWFuyq3eCe+TRCIB3TzEoGQ3rlLe6C9JNWgxQeI4ove1J/9s8rq24l9fEKsN5m5QoPOpTOEfekNxJ2haDLsV9RrpFKQ1aG7bURFVhWxo9+JgM2tfk4ez2Dt5lb9NFJQEkicgO7NmbqesXew9Uo2hf1Lc9ufdWkCYkjMh90VXm2mD+9ryUB3o3qDfsERS0T4lTC2GqfQN1NvYtnZLhIgvHXbvAOgRvIZXB/9HsTgIJTbLlcDQT6IBKovc2TL9wDaQVIZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+RQRwhObzEph8HJqBAYJPVCBTvHOa1kqSo2yF6eEGC8=;
 b=TgTLdpxG5xONRiA6KhCAG8wuUQ0guG89I8j2o9+NfxTgrcRvz/vxruGxhxBvpwkPwScS6VFoqwddBUA1YpaR1W3P8MbrNt5aE0sEXDlwnD4AdepOE47yfzGJ8lL45jBN4kbQmlbqiAV3eZK2t8Vfe78/0x6SveY3LktQSXxQvxg=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4804.namprd11.prod.outlook.com (2603:10b6:303:6f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Tue, 2 Mar
 2021 08:52:31 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3890.023; Tue, 2 Mar 2021
 08:52:31 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 6/7] initscripts: restore security contexts after running populate-volatile.sh
Date: Tue,  2 Mar 2021 16:52:05 +0800
Message-ID: <20210302085206.56794-7-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210302085206.56794-1-yi.zhao@windriver.com>
References: <20210302085206.56794-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2P15301CA0009.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::19) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2P15301CA0009.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.8 via Frontend Transport; Tue, 2 Mar 2021 08:52:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e284d2a8-4d73-4908-16b9-08d8dd5883fa
X-MS-TrafficTypeDiagnostic: CO1PR11MB4804:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB480483EEDC98E7D5AFF207A5F9999@CO1PR11MB4804.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:348;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	o/rsj1B8oF42jm7ksKV1JfcQBGjjQRW1njN2IRxg4fOxthmnSgCqoEx8tbR1I4vzUIKDOIpW1HFtBdZnQUBtWDBV5imtI7pBdYBVRKqUZF6R8OphyE7n4cneec5y0+vlhm6H635z0b/oSQy9gJUgx3ZWvlTsQvLmZunFOdP0pupoQ/vAyhE497uAwDIlF2lNogQ5ubEMIWi4GSx/lkNmLYNlcdR15anWjwd0ZWtFoSB8Q4DoUAue+tQCTBvL80fXWTXGNsI0OvvP1jZhBhhvvP3r16iLEGxiNs5BKtZhaCbvVo4/poR5NHrErIXCEOI5rlRUupxhkS5BE/sW9cn3fjhmUcVG//LK858nMw6nyH9m30wiijCcQ/pCqSaYqHsLkTBEP/CPprzBAw8oG+Q6/COtNhn3ReO9dqcOlK5y/Jv1HlqUGRCpbcowlhmpnEN/xAdlqC/JN25vv6qwB1fb198LClUDRZRg6+zNR47pPsH8O0nkWjcnXjwICf3dIQSE+0uJuXL4DMtf31DOUGsa8g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(366004)(136003)(39850400004)(376002)(66946007)(83380400001)(6506007)(2906002)(66476007)(66556008)(8676002)(186003)(15650500001)(6666004)(956004)(478600001)(316002)(1076003)(2616005)(16526019)(5660300002)(86362001)(6512007)(6486002)(8936002)(36756003)(52116002)(44832011)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?7YHxcfUxqCX5mrd4Yl2uOIYfsE5oCRACp8luXGjHMzSq8XqMfNHAgycGSBLA?=
 =?us-ascii?Q?0JI4f6BtD5DPH1smAVOGD9Kr7XM1S54BPCofgdEu9wE0OlKv7DVEQ6VumEXd?=
 =?us-ascii?Q?dwbEAPmX5PeIvT1xJcvE5Rj8aIT12YMIoNnZGsRZVPA8tvGhUhacODLCHTpQ?=
 =?us-ascii?Q?6UzAfxbnCBC5Lr2LLQ/8+j3kbIGWAw31sj7vO5whsSqJrs+JxnksXHjQEVNN?=
 =?us-ascii?Q?itfWcCkadIZ1V60ns78qy/iO8ijxw5Jid5Q9QyKDmomhHFaFHcPDrsnJNDQB?=
 =?us-ascii?Q?SDMwoXR6mFBFyQWgMdXDSFfbs71/dnXrxWk8lCNfIhuK0LdLiums/4Llownm?=
 =?us-ascii?Q?Qz7oeyeJYim0nGMpjdv0ORcbGAmP+ndnHlI5K71gqX3qdWZovmbWkTDWu7ie?=
 =?us-ascii?Q?D6ZEEpyQHCzsWja1rvr/K0njmZOqUVzfIdYT9uYdxqU9v1Uy+gvu5ilKlgMe?=
 =?us-ascii?Q?HudNF/rw0eMqVlvSUkadl0Dvm5+bHMyISPxNbCcogUe7l62KW2rp4YhUN1Hw?=
 =?us-ascii?Q?HGvceiNj5tnCFmfGjYUTMsR+lpAcbpfxRjSWY1o/sal2ods4I7ZM3pH4ovho?=
 =?us-ascii?Q?/63ZOoClJwlOyyFiPMZQAfgJI1J8fOwOJpiapqnmvs0/lGvGp7PTRs3FpU15?=
 =?us-ascii?Q?0tq38JLRgp7G5uL1h6hRtJv+XpAHTJAg3KwbrHs6DKXUvYOuP0OGYxDOv9XZ?=
 =?us-ascii?Q?WY1/UGmXLt6u4rfXW9ZDnTLszT4vYvlikUuxbHn2aODr95ukkvEdlQdqGXX4?=
 =?us-ascii?Q?xkMmWQvdhB/6xdSNxzcttmwzbdUmqC7JyJNKsNwkZrNgsv4Y8+RG0fcGErvl?=
 =?us-ascii?Q?8dOA5ao6rZmgI9czojuEhxDr4+6M7ZHuz0EZP7qTyH7EtlcoNgurXeSA6nP8?=
 =?us-ascii?Q?1w44BZsbJBSUp4p8UV/IxctiKH0bEQ8jpOpvy09UMC5LM+SPN2RTnb5l6OVH?=
 =?us-ascii?Q?ix5G8kR5wMo/zArUU5yXQeiPUVjYpuDgrgO7xBE0f3sdPpeKaaQU3HnKLft3?=
 =?us-ascii?Q?/5iwsLjz6bY5OxQU9H07m/cnq70Urn86EpvDDBPSIwYDARjSz1q873C/Yj07?=
 =?us-ascii?Q?x35FG70Pjkam6dv7+UqNT7MD1bY1fHPhgrw3ITIABjvfy4pz3BJZm1AQb+XG?=
 =?us-ascii?Q?OJp7BRLt3kDOtf1cVJOXUbC/7B6lp6i5iwOL6blNgVYIi/KOyx2k6WxMMgCN?=
 =?us-ascii?Q?pQsbSctdNEONBuy1WMgZqw3twq3eyUVIhr/fLQXufVyI3Palw/NhVXD7t9Ad?=
 =?us-ascii?Q?BUTXkHfpB/Fnm99QteDkGWJQm71tgN+NUzvLu4dYZdVprqAQDs9/2IzrJ4xx?=
 =?us-ascii?Q?CLcqf6j2s9+UlEMUme8ffoOr?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e284d2a8-4d73-4908-16b9-08d8dd5883fa
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2021 08:52:31.6111
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xTHVaHQB8yWkXQO+UUWu2q7jxiwIhSaeBzjnHZTaktDzcsrzkybnfc/t9sKs5Qt+dQUVOaP4RrEY8dboVzTGyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4804
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Some directories are created by populate-volatile.sh. We need to restore
their security contexts.

Before the patch:
$ ls -dZ /tmp /var/tmp /var/lock /var/run
system_u:object_r:root_t /tmp
system_u:object_r:var_t /var/lock
system_u:object_r:var_t /var/run
system_u:object_r:var_t /var/tmp

After the patch:
$ ls -dZ /tmp /var/tmp /var/lock /var/run
system_u:object_r:tmp_t /tmp
system_u:object_r:var_lock_t /var/lock
system_u:object_r:var_run_t /var/run
system_u:object_r:tmp_t /var/tmp

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-core/initscripts/initscripts-1.0_selinux.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/initscripts/initscripts-1.0_selinux.inc b/recipes=
-core/initscripts/initscripts-1.0_selinux.inc
index 6e8a9b6..bf798e7 100644
--- a/recipes-core/initscripts/initscripts-1.0_selinux.inc
+++ b/recipes-core/initscripts/initscripts-1.0_selinux.inc
@@ -4,7 +4,7 @@ do_install_append () {
 	cat <<-EOF >> ${D}${sysconfdir}/init.d/populate-volatile.sh
 touch /var/log/lastlog
 test ! -x /sbin/restorecon || /sbin/restorecon -iRF /var/volatile/ /var/li=
b /run \
-    /etc/resolv.conf /etc/adjtime
+    /etc/resolv.conf /etc/adjtime /tmp /var/tmp /var/log /var/lock /var/ru=
n
 EOF
 	sed -i '/mount -n -o remount,$rootmode/i\test ! -x /sbin/restorecon || /s=
bin/restorecon -iRF /run' \
 	    ${D}${sysconfdir}/init.d/checkroot.sh
--=20
2.25.1

