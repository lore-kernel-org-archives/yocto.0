Return-Path: <nags@mysmindia.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E9ECA0EC0
	for <webhook@archiver.kernel.org>; Mon, 11 Aug 2025 09:27:15 +0000 (UTC)
Received: from MA0PR01CU012.outbound.protection.outlook.com (MA0PR01CU012.outbound.protection.outlook.com [40.107.57.133])
 by mx.groups.io with SMTP id smtpd.web11.44006.1754904427773070634
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Aug 2025 02:27:08 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@mysmindia.com header.s=selector1 header.b=p4Bhy6Aj;
 spf=pass (domain: mysmindia.com, ip: 40.107.57.133, mailfrom: nags@mysmindia.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uJPqO1175yZ1QDeVN/u7vr65jMS9Hs4ogDZP/Mc2o2vTsWOXC3TGC6UZ/zMXnnxYWYYf9FJXdaxq4iC9mFKOMi/m7jxqW3ycCdLrUvRddhQuR2JxcNI+gg5G63ijTVoL/8qd/f3FN/Kk7nhW/A4hqijA1u4EeTnXKqZAomkqUUXNKOBzn/0UeEyzSlpiWZVW6ZY70/2SarVk7so81zO7fKx1XEY+5cgyW2onivCrgdkISuxzklepAVAphQuBGRJU0FlYY/xqGgRBFDlJeD12DndhONmGqgUqbN47RFEp4HVGJaUib75YM2Y2zfW6db2+TejpL01v1ZL7bf6uvjT8fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vWw1yH65qAnSBmtEpYuUXwBOXgZ6+NkekqxDI25jJIg=;
 b=RJ5KZ8q/BkC9ZVb5qBMD6cdpKKw43lN3bZ1ITSVlZMftE1d2WFvJOlXgwbW/QHHcPnBMIuMymHLtcT5z4o5xbRjPaG3Snohmsrc55sTYnCg/1jkR3x+z0jtMUgkCDZqoKhsPb5IrB4ngKw5LHn0uZFIeeWTmRB32rNieA/rgwUpwx7SnQ4WyOpNlMedBi0AVkLQ+WmPaqpkdpL1jBQdJpFaDRH+pFjvvp2XEXUSneNFVbjKVorb8wLtVmBXIlCdqMlGCcPiMoK2v4SVZC+p5T9F6QmvIr1J7tdM+5DQ6o9vOJgxukjT3hb762boWX+1x4KF1RzNORK6nIbrO8YzPJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mysmindia.com; dmarc=pass action=none
 header.from=mysmindia.com; dkim=pass header.d=mysmindia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysmindia.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vWw1yH65qAnSBmtEpYuUXwBOXgZ6+NkekqxDI25jJIg=;
 b=p4Bhy6AjhZyBj2wbarVSoawrL0LH4uSwu2ORkptmx7AyzE4ow6zR/hbyUWQDqIA1i/pPSt4d1/qJbwbbTMoCdoaDKTk9xY4gC8tCYwqwP2Eye1xqR95+qoALTG+JVnl+V4KB48r47HPwNeEobPKxF3MK1lGSfy0Yt1KuYwVeMEQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mysmindia.com;
Received: from MAZP287MB0076.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:47::9) by
 PN0P287MB1508.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:17d::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9009.21; Mon, 11 Aug 2025 09:27:02 +0000
Received: from MAZP287MB0076.INDP287.PROD.OUTLOOK.COM
 ([fe80::c24d:1f4e:2c00:e8aa]) by MAZP287MB0076.INDP287.PROD.OUTLOOK.COM
 ([fe80::c24d:1f4e:2c00:e8aa%5]) with mapi id 15.20.9009.018; Mon, 11 Aug 2025
 09:27:02 +0000
Message-ID: <c1743239-9065-4957-9ece-cf384c0fba2d@mysmindia.com>
Date: Mon, 11 Aug 2025 14:57:00 +0530
User-Agent: Mozilla Thunderbird
To: yocto@lists.yoctoproject.org
Content-Language: en-US
From: Nagaraja <nags@mysmindia.com>
Subject: QT6.8.3 build error on Renesas-SDK using yocto vlp4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: PN2PR01CA0194.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::19) To MAZP287MB0076.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:47::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MAZP287MB0076:EE_|PN0P287MB1508:EE_
X-MS-Office365-Filtering-Correlation-Id: bc69d45c-642b-4794-2e37-08ddd8b93a6e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?sBuuTR6NmhBj1kYRSL8ypcq9XCSGxDhUyY2ofP8KQPm7/feshQ87jsps3v4Y?=
 =?us-ascii?Q?l2USY5CVyGEfgy6mi9pWJ5ZY5wo48ctyjlK0Q4psKKY9AV7LFxzL+bU70bFO?=
 =?us-ascii?Q?OKgP14kAIrwN+L30nj4EDJjo+6B2+ZjsfPPPrxM4txk046wvcZ1fFEt6pmkm?=
 =?us-ascii?Q?EETAauH0RI7nxEN/FG0gvuCrpA1S+5FKFw8ZBCw7EZvoPedTMSdHGwbKmRcj?=
 =?us-ascii?Q?wz+kv11cURB5NlQ8NR3ipE1bhI+EHVhKlxMjw7NaZVMSaXTrairomUaAW8pg?=
 =?us-ascii?Q?qha3/jswVqOr1IKP5ayYSn3WFE8aVg6qJrrPYT6jhcXFDRnvDf2HDDwi0xQE?=
 =?us-ascii?Q?XP8TUg9A62grrzrLhIV0D+bQI8diOPtfAakcWwkkAk1cavo/TVikrSVI3In5?=
 =?us-ascii?Q?/pTOYaILK7I8JBEqfyf+9wSDn1agbe2p/OusV1gnRKLMmWHRwY5M8adTjV/q?=
 =?us-ascii?Q?CqnP/b5SVkX4kUoCblDDkoR1GNIw/fOayjwgB6GD6KVbrc7/15bgHHgSJT+d?=
 =?us-ascii?Q?ksVOu4yqe0rXtJdyfzOyb5kLGGWuEDkFEqfY5QaTkAN05+C7ZzPgApvW2OOU?=
 =?us-ascii?Q?XPHyFGFAdqHIdRSSh8ICW41/LMQVRRFahKgh4OKQQqNe47YFAryOTD0ACCRE?=
 =?us-ascii?Q?5EhqRhk7ZQCkfn/Pr0aYYEIhXnNKKNFuFPhluKL7SaYTClsRXYexcUtxWYWa?=
 =?us-ascii?Q?jhKMvx1NFT5RU387t68s+ekQZQiPKGDS2FMfymOg9ERuqiXZW3o/7Bh3RpED?=
 =?us-ascii?Q?Cw4H6FNqYz2bX1T4FOZpw8zZdrGtM5o2TCshWLuuqpvypAAYHnbeb7kdPp0j?=
 =?us-ascii?Q?mjQ0o6K8Nk1ppKQswfuZhMO9l1iSnfSAPInxxNTuzwBsS9GNzT8THDO36MpK?=
 =?us-ascii?Q?VuzD0gE8ZPjPD1FFE/4iU25ZgohaGYTRxjQ/FUmqKJMCHEGu5EATM/UFEGSb?=
 =?us-ascii?Q?rM/ubpumqjoF58WfnrmA8RlGuN23Jvl8lLNpKmvKJc+JzW0P+ohdNZPzgawC?=
 =?us-ascii?Q?UIY+kxhCceKSXiN+x8jd4HOjmYzjxXr1LpcRO4yV8TMBihZ9SSoKgIv1UR7O?=
 =?us-ascii?Q?h+x/MlTBWNW1g7fw2Jx/Rc+4rPEXZnH8QSOOhdH49GkJzYUDJ2CpCtBLWLkL?=
 =?us-ascii?Q?ZMnk1dSRldDxWYFfKHySpuC1PTqlaO6vet0hgfh46952qHxGbEZ5CEanBx8a?=
 =?us-ascii?Q?kYWZpGsWgmAh/NIDdKnKYTrkiC8uQMqwzeNKzKD9EeIp3U8jny+TxxKllpHi?=
 =?us-ascii?Q?Rkl8WGyCn+61HUTK5wthCJX0NKbQWGRkFEKYwkdWBexZQKxDl0c3KXXybUaF?=
 =?us-ascii?Q?bIkZspytiAqA5WxjnnyY6XHW4R9JbQ/sMazeheL1DAGSTa8b5k/6n9I778pb?=
 =?us-ascii?Q?ndTCtQ/TJtEGMpgK6ToEjvo4zko7tXrcZTZqWzBwwNYbmkkpQ6PQsI3eojX1?=
 =?us-ascii?Q?ZW+5a+j5fgg=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MAZP287MB0076.INDP287.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?xOVF6URMCxLfQnsuYcifR8GjzasqoQQp8o7GXIAuWutB5qR5EBtHyQnjOivR?=
 =?us-ascii?Q?lAFj8ydzCpiuy7My9fETz8WZ2gymJE11izqwM/V3SudXl2O1P7iNEaHxc+tG?=
 =?us-ascii?Q?ybbUM+jUdYr0zmbpa5c6BAuu9hn5Cufihbg2ozmgRLEKMQbLEjo8xgws+GV2?=
 =?us-ascii?Q?IH9UnLfjRaFFME48DHM8nxCKrxzEeirOGSgOjvuSpfgEnHc8Bbj4+jB6qG4V?=
 =?us-ascii?Q?MYsim/7QoNzyAimJuvIEW6GdhOreFY9+rj1lsA9/e+rB5eqrpa0L6xBa4Sp6?=
 =?us-ascii?Q?0Wc1UH4471gEH0vdamMP43bNvLIj227Pr4MdAEZnYL09n9b9/rBWgFiaO/8z?=
 =?us-ascii?Q?zgQErWQmy3x+KTwu8G7rFbo8/aEDlerZbQV4ofw3Hq9Mri54rxJx+nWM2oFw?=
 =?us-ascii?Q?T4K60LEsbrZn8SdhNuQr9qpfDbA+xmKxKcPcw+1nwrqOP75lOMY+Ytihj5/a?=
 =?us-ascii?Q?TDo7VxMKQcUfec8SjQMGu5ZdcaXflcYvkL0/hEgp7TaQ8CC4iox5tO8trLyK?=
 =?us-ascii?Q?xCN6bdX9GC/1B67vAB+5yMeHe/XHaoU9KB79/ypNeHLCSD6xgZqxUvAeGPCx?=
 =?us-ascii?Q?jeLJXCeEGEdN1CtUqNT5sYSK8CM2z4co6qGTLXBx4B0oI1ZUgBWdmFTnyIFn?=
 =?us-ascii?Q?N+JGERXhd0pGVcNk0TQl+Ku1EWwpn7Abxn4lkQEQjm99x52EUDHotZ7pYiN5?=
 =?us-ascii?Q?7OKWGutUNVx8FeEFsbpW+hSz8O5sk7D85r7xp9OwJuwXA8TmPbv8QGxhSPIt?=
 =?us-ascii?Q?dCswXus+e+8iCqss1CTuq7yGU0bUk7lU0EnKREA50oE9bouYKYwyN/LAkpOh?=
 =?us-ascii?Q?JGDxxVF4WPysBnJHprpjF9Hya89HLUhhiwKglePZboEwkTc9b4uNIpZwaM8T?=
 =?us-ascii?Q?CLhmHC9y1Yr7L0+lzoNbdYBdG6tSzp4VOhYgXgDgrDoPkxcYeWSmOOiY6Pig?=
 =?us-ascii?Q?D9H/wOLcrsvl/p9Jl0o9lsBuuZG1yVkTiJfJ6ZhXsYgEbozPxgLhROskwNwn?=
 =?us-ascii?Q?UxZRWoXc2orv0BDpHy2RW6EifJiCrIu67+2hx9TXdtszTSpavbZltqYZbzZY?=
 =?us-ascii?Q?1EEb/6BREuRPZsQbWHQ1Lit6tpiKGVUlroxwT7KdV7NkYv7lu0upGCrf5xDb?=
 =?us-ascii?Q?jZ4S7uW/o6YyXkKGQvCT56TcivTsmnmBXEnByz7AePeEcjKVh5W/pevwi3Ha?=
 =?us-ascii?Q?aEnSQbgxpYM3gDKBk7ZIPlUJzK+/MbkYZy7P6rIb2MJxsDZ+s7rcPAWiEW8b?=
 =?us-ascii?Q?dgmUi6QbOSBnPPMIYzjtQQXl0LbDrJbYXQx0SonSCoqNVUq9Su+6DsCHtJ8A?=
 =?us-ascii?Q?hbvPKIJCh7hVmpQjH+0b60ydagAIWhY5+7642PIjoWcwjYRIPTJz9lTHxrXg?=
 =?us-ascii?Q?Sq4QTcZIRpcjBS4QqWhsXBz8GZ80ZjNzb2BzWUMs9EhHNaZu2u0oyekHqh+t?=
 =?us-ascii?Q?QaqbSTvLvNBLsIW7VyUZ2jLMiS9eQ2E4OfL3FHbhIrGqa2hRux7CWOT1mGpe?=
 =?us-ascii?Q?t2HIB18znQ10kGfV2d3tVOAhZD+cblSWDCAMLx5XtI5Bqa+Hpni4QM/q/9a4?=
 =?us-ascii?Q?DC3OAXpZSgShoC/Zffhp0ffayXgi5SDM9Tdr7i+m?=
X-OriginatorOrg: mysmindia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc69d45c-642b-4794-2e37-08ddd8b93a6e
X-MS-Exchange-CrossTenant-AuthSource: MAZP287MB0076.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2025 09:27:02.0065
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b550b06d-31f8-4ca1-9e5d-ebcb6ad9aea3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AgUpxUyr6cEE4vRvrI4NTB3wf2GYau+H3JZnPZYaDm8ZPGPWYsOkpm0I6E8jLKZiNXlKpw0Gqu+1uVsGGpC3zw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN0P287MB1508
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Aug 2025 09:27:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65746

Hi Team,


I am trying integrate Qt6.8.3 package using yocto build on Renesas-vlp4=20
package. when I run bitbake core-image-qt structup with the below error.

Sstate summary: Wanted 3283 Local 1 Mirrors 0 Missed 3282 Current 2364=20
(0% match, 41%=20
complete)################################################################=20
| ETA:=C2=A0 0:00:00
Initialising tasks: 100%=20
|##########################################################################=
###########################################################################=
|=20
Time: 0:00:05
NOTE: Executing Tasks
ERROR: qt5compat-6.8.3-r0 do_unpack: Bitbake Fetcher Error:=20
UnpackError('No up to date source found: clone directory not available=20
or not up to date:=20
/media/nags/nags/Workarea/latest-rzg3e/user_work/build/downloads/git2/code.=
qt.io.qt.qt5compat.git;=20
shallow clone not available:=20
/media/nags/nags/Workarea/latest-rzg3e/user_work/build/downloads/gitshallow=
_code.qt.io.qt.qt5compat.git_00aa589-1.tar.gz',=20
'git://code.qt.io/qt/qt5compat.git;name=3Dqt5compat;branch=3D6.8;nobranch=
=3D1;protocol=3Dgit')
ERROR: Logfile of failure stored in:=20
/media/nags/nags/Workarea/latest-rzg3e/user_work/build/tmp/work/cortexa55-p=
oky-linux/qt5compat/6.8.3/temp/log.do_unpack.88951
ERROR: Task=20
(/media/nags/nags/Workarea/latest-rzg3e/user_work/meta-qt6/recipes-qt/qt6/q=
t5compat_git.bb:do_unpack)=20
failed with exit code '1'
Waiting for 1 running task to finish.


Please guidme what am I missing here and how do I go about resolving=20
this error.


Thanks and regards,

Nagaraja


