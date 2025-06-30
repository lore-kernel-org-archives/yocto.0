Return-Path: <Logan.Grosz@b9c.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A198C8302D
	for <webhook@archiver.kernel.org>; Mon, 30 Jun 2025 16:28:51 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.116])
 by mx.groups.io with SMTP id smtpd.web10.45390.1751300924781309946
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Jun 2025 09:28:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@b9c.com header.s=selector1 header.b=QoFc8CIZ;
 spf=pass (domain: b9c.com, ip: 40.107.220.116, mailfrom: logan.grosz@b9c.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PRRiHjW7/WL7f55qVDNL71IBZtweMBwGL9N1rcycbqqJwVVKFjmwsx1By22e/ZYGYdwFb0jJB4q3BbEAuHgJTE8ylFf0rvMD8MAkrONQ+DEqoIT95kBNMa2W5pxtCI1pjuc3q+OM7r6reuFV5H7SvFZgjjoXIVGPw9K+ZeA5J0acP9JulAN+zO/S5rmbpcbyRvKlgwnCL/OP92Qh8HpPVtRf1OvV0QfkFb6Y4DjjsH/9gIabE55aIS6czL1BCeKPX/vYUJNiRhQy1kiHY/xJQb25oDzzsZ3GvW9bRsMYaFAW0Yzrc4VsI7pfDHZ0BzGnW67WfzeWw/NUmB1aXc+oVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DFfDTDR9PbTpmHMKj9NJ0UGpOlRuhM0kixAVPEsuRf4=;
 b=kLydKJ3/8BiMjCOrVrA87wknQA1JEPsmExmJsZuNRItbqlKXraoDn2Pw06Azwciph+J1XMa/XA4EjrM7f7WLuJ1icDmaoQsUym1dljqvXIGYu2UD7jbuitmZW4kC1+zJYu9WV8FDwWan6BRsv3irVf528PLmT9BH5p2KdDqWzyYTwatQKXtnr7TBNJHQgF3LUntNjC/Ip5wyDR9gpNRaCbr3qV4bBWv8Kae9J6LXjYeTYxkpKXLoGFWJOObQZ37CBs5Me+0Hec52/noyWlvBdP7ujI2QR7NJNkKRqUn10hLN446hMOLtsoihpHXy7I1xh30bTrlsCLXWwD6MVNoCnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=b9c.com; dmarc=pass action=none header.from=b9c.com; dkim=pass
 header.d=b9c.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=b9c.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DFfDTDR9PbTpmHMKj9NJ0UGpOlRuhM0kixAVPEsuRf4=;
 b=QoFc8CIZJGW5smOOuQ3pT722iyNYsnRbzDGvYkylzCTIjUwzb2t0f5g/7IC+AhSvjTai9ZQ6mok54kSgcMTaov7OBaL3wmF8CWkS8yCxg5ywXcLuQ1xAP4e7A68YBSlaFIO5H+oBEVVnOp3ElnJBvAsZ5o7TCFhkztbL8ODrhNs=
Received: from MW4PR16MB5087.namprd16.prod.outlook.com (2603:10b6:303:1be::18)
 by PH0PR16MB4277.namprd16.prod.outlook.com (2603:10b6:510:58::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.32; Mon, 30 Jun
 2025 16:28:41 +0000
Received: from MW4PR16MB5087.namprd16.prod.outlook.com
 ([fe80::dd82:bdb7:3ca1:2b8]) by MW4PR16MB5087.namprd16.prod.outlook.com
 ([fe80::dd82:bdb7:3ca1:2b8%3]) with mapi id 15.20.8857.026; Mon, 30 Jun 2025
 16:28:41 +0000
From: Logan Grosz <Logan.Grosz@b9c.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, Logan Grosz
	<Logan.Grosz@b9c.com>
Subject: Re: Bitbake getting stack overflows with 405 responses
Thread-Topic: Bitbake getting stack overflows with 405 responses
Thread-Index: AQHb5uVyS36JsGsCG02s49gZtq6kb7Qb6KHE
Date: Mon, 30 Jun 2025 16:28:41 +0000
Message-ID: 
 <MW4PR16MB508736875E5E14A493B84836BB46A@MW4PR16MB5087.namprd16.prod.outlook.com>
References: <184CB6E7C5A6FAD5.20652@lists.yoctoproject.org>
In-Reply-To: <184CB6E7C5A6FAD5.20652@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=b9c.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR16MB5087:EE_|PH0PR16MB4277:EE_
x-ms-office365-filtering-correlation-id: 81739b89-2805-48a9-3c22-08ddb7f32cca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|19092799006|376014|8096899003|38070700018|7053199007;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?iePaXh37etTC9UDDQ9V5UfTfnl1FjpXQqi778mVCfqgs8WnjJudidYvDsb2W?=
 =?us-ascii?Q?7mGLqTUwKGVz+yzbj0I6/LJ9rs8zNuPQrQ38deWNnUBja0tYX4CO8/dvgMHB?=
 =?us-ascii?Q?4UWZS58Y6zfEWr45Jfwy9JkmyHAqaGPj2/edJR20SF3J3q8W9P0OK5s0wVN0?=
 =?us-ascii?Q?lG+vjgmjCU9dZq4RkREGTj9hAiDlvU9ABd23Kttq2HjbutiLl4frBrpTgt9V?=
 =?us-ascii?Q?o/Li4/T68eDaOJG+Cs55YM/bi3zoQXnAKYmINkUPz7Qi43OkVB83SHyxafQB?=
 =?us-ascii?Q?jLBhX3TvWogHJ8Br10GKqfaWl7KVLVGR2l5d8aNwKMqf6rGHFmd8Fc7+TTbz?=
 =?us-ascii?Q?2gz0lDhoUgBeWZsC87PrKDlA+4MsN+MyRkVmxm/MtYF34lXcR1+SF4g6y/xQ?=
 =?us-ascii?Q?6yDIS+3H7JF//yeu7SeZ6rDMNTVtYM3bO5uIsXDppXuAyzsAEpE6ohUZHO1M?=
 =?us-ascii?Q?+JcBPQoSIJGSjdHmKV8/V8Tb4Alc/tiepMGNGadRcgnWvyR58UgPjxT1ptz0?=
 =?us-ascii?Q?dlS+6N/YTUWcBcXB9T+obiVVQZVZDjIxbXrIRPkONRpbpOru27OS/pLOJkLc?=
 =?us-ascii?Q?lk83Stp9Dq+PfEhGeSsdcdguWhu1+hRDGpD/EqkRtFQfrP5sbK5WE010bajn?=
 =?us-ascii?Q?y0hRB1GUE4XpyucUexmawNALk/f7DhpGcGIByUNtTTJZK/14uQ1l49PYDL9c?=
 =?us-ascii?Q?F5Qjf0lqkuWNkHh3Im5dyItYUbU225ncOS18tVXFHBZ+zXOeVfw4tAbTAspm?=
 =?us-ascii?Q?NXGhKCtdEpNRFu4Npt80MzCRuyphTKeQkFk6xYb96vHxh+ePfkIf5FcR2Xe9?=
 =?us-ascii?Q?GXtMgodmu+Nyft8vkin7OY6cT4i0TS6J1kAmb6jr7/FgCEc8YNnjHknkcWSY?=
 =?us-ascii?Q?i62tAK39fJ/WDnin4xEyVcR5lo2uIeZuWZWsNPNLtHUQIfBhMp+9MgQfovRD?=
 =?us-ascii?Q?GAGSA9F7Te7cbSmRY084WCxtzFGU1cTIryE9u1MEjwkTI/ibYo/6lX2rawgw?=
 =?us-ascii?Q?xKPXfBrwDumV/lxj3BRihoL5HIkNGUIMVGsDQnt1cW4VtAve7FFGSiineMKd?=
 =?us-ascii?Q?6AC2dceZLYvMMkvt5vrMQS6IzEv+CBTDYoSOZqoLK1aPThO6qhMzr1clRA+F?=
 =?us-ascii?Q?Kwn/oatiK6592lHVsk979YwzZHz7CFDKAE5E3dgf3K9wN4znphYQiG31rz49?=
 =?us-ascii?Q?ZG59/BfFWxOYexi7vNVypSFTcFZwAKr+tUffxxN8FU4ouQ4MpUtb0HCqOzlP?=
 =?us-ascii?Q?1xcwi43IdXUQZfMjvFMxdARBRM3slZrp6c9rkZ7/kctWyaLhEEChjqBTnofF?=
 =?us-ascii?Q?PK5k+0sq2tRM+2BrV9wLS959KYCQzpW0O+hXS5Ov/HC0ADSxwRfvrhfLKRDz?=
 =?us-ascii?Q?aD5decDgi+uzAQgJCuS/5wYxxEqUSURWoITwRgU81LCKAfVcu6wZxPFfldNk?=
 =?us-ascii?Q?F/mnylrjB88Y53+8jiR9lSuWMDTVGDTPbVci75UsbG2GSrVznjV8x8zRGdnt?=
 =?us-ascii?Q?sEuzbdafS38L/p0=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR16MB5087.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(19092799006)(376014)(8096899003)(38070700018)(7053199007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?/nqL57qWbnu15ZPVhLrGbyyvSy8thBaBAGfqOQRQ53ODLLaBeoGQ2O6x0SI4?=
 =?us-ascii?Q?mnxzFnYl9uO/0YCvvgBQkeAGc/5ed5OTWFDXgu+VrPpRlNkp5spkKSGNBTfk?=
 =?us-ascii?Q?hDDB8WipRbC1wc64BW/aQCUqW1PrPGVzgqFwz2CnpPnaViDVCzMp3/HIri7h?=
 =?us-ascii?Q?AFvGRi9QC/CiqBswnkPOCiPkvc8Zq2dO5h1ZnZ1XjIANWiPIWPnutzmRItN+?=
 =?us-ascii?Q?rx9VPXOp6mziM8Tp1j55lj+E5o6qNBJX0pDrAb1QfVh/Sb2/Dp1ABOIYs2gQ?=
 =?us-ascii?Q?bYGBNnGXRPigRM1jINHxV1SJ6spjKkdrX9MPNJY3RgbuWdVFzRxwRmahvnCX?=
 =?us-ascii?Q?GH5xTUNqyVFoqwAZLXacGyaRONJQXH86AQ400f5MVpdHKyE2huZJxwLMoH9J?=
 =?us-ascii?Q?e7zef4IS1GP0FxtvstQFP1Nz1vX3Tla2SbeRaE+sTrFC4YGEU/lmieSutpJG?=
 =?us-ascii?Q?1X0yhvFgSirhiIH/45CzrN4VMQhZKpGh7YBtw11Ci4GkjNr3JUFIDvvGXI/f?=
 =?us-ascii?Q?9VxtRaeuUsi2zycBP9ZvpabJT0NvcVHAGAU8ME70C8VqSuL1TW23ytxb35vA?=
 =?us-ascii?Q?Xmhs+X++UoQWuwi9c4o/3RneO/jyg0Thx6tHn9xX5XTcRovB/t89nO67Fog3?=
 =?us-ascii?Q?mx81E7kfWwg4tS7r3emkCLYx73F81lXVRmX+8Yt1AKyX/VOxgaHk04kPRsuF?=
 =?us-ascii?Q?vctDNwYXEiSCDnVBqc8iamFgRi5H2XBVqdSixVbA5HvShjdnePWeDKpJk6gS?=
 =?us-ascii?Q?2H5HUeTt+TSbd+po39kHYp7pRNjqaZc6GYufOUm29/MxJiLWRPehgg4jRqGn?=
 =?us-ascii?Q?T5BpGxRP7SgeqF3TRxXFtJjPXmrTcN1g27u2PvTDTy8Ts1qctcaRQbyMK9qo?=
 =?us-ascii?Q?WmRVUw5+eC1UJDQPl7m96IaeaTSKvIXikBtK6t52UxB1k2YQ+QBbeTlMEv0b?=
 =?us-ascii?Q?QWsl7aICGiRWuJexOu+kNRQNFAwtQfjscUrlRUlFDaTvTgKee0PR3yT9wamD?=
 =?us-ascii?Q?VVJIO6p+V7zVKgvvlwarqnukA5VhbSLN1O+3mfHnuz2hO+hd+DzWb7OTH6m4?=
 =?us-ascii?Q?3xEb15p7sMaclZCpMC3nZdQVw+KQ4bw/gIDBC4xTOIDSn0fb9pNPHgZlP/hN?=
 =?us-ascii?Q?5OQ9XJZd7EqIx7ctrLVp5VuPmUqeGWkyIDby0eyaVyK0qhQCVbpGzH6ZE4KR?=
 =?us-ascii?Q?m0ElwV4ghy0K1gy/jKLBTTLMcrbAV+rTN47Nq8+fdsZSwk/syyjbUn4Yf5he?=
 =?us-ascii?Q?j6LU32tolx0Q1ozjkVFSP40yTZNnedikTCgTj9svmqizk2W6LVlL1RKDlQKg?=
 =?us-ascii?Q?pfyyw2N178LLrUuDNsMt4F3kJVoKEfh+dM4RB2IeGgwrGr3E04HX8ACo/N5e?=
 =?us-ascii?Q?1sVRIUMrq4y+CZe+hit0EZwM+y4u3E81I2Q5EC8RrhzpgA1sFth3MfZu40SN?=
 =?us-ascii?Q?kVHuo/NpRNX419mGl0ke6++975Zet5BpYtK6Yrkx5L2HrUxh46Bz7yXB1g/Y?=
 =?us-ascii?Q?DiSpoX5FAvYVus+nPfYdyfB8Uk3TbYUOPnShdlTNBR9QMkBFVt6vvtvh4qDr?=
 =?us-ascii?Q?iVAuG45ukOPFJek+ykU6IV1aZNbJt9aawIAt5tm6?=
Content-Type: multipart/alternative;
	boundary="_000_MW4PR16MB508736875E5E14A493B84836BB46AMW4PR16MB5087namp_"
MIME-Version: 1.0
X-OriginatorOrg: b9c.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR16MB5087.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81739b89-2805-48a9-3c22-08ddb7f32cca
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2025 16:28:41.2743
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3ace18e3-3825-4b3e-be2a-b5c73f048d39
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TZ3/g3APcrNWhtGSGo8TgEarVlU7+7NsIAxvoQA8HcoiJDs2guRmbJ35RwXTCTtajYhXxheiYAwLGhalf0HDpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR16MB4277
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Jun 2025 16:28:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65568

--_000_MW4PR16MB508736875E5E14A493B84836BB46AMW4PR16MB5087namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

My issue appears to be fixed by `1a4e4fb6b0a9d54641bd4193e95311d1f822a9ca`,=
 contained in release Zeus 3.0.1 and later.. why this started occurring, I =
still don't know. Looks like I'll be working off a fork until I can pull up=
.

Thank you,
Logan
________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Logan Grosz via lists.yoctoproject.org <Logan.Grosz=3Db9c.com@lists.yoc=
toproject.org>
Sent: Thursday, June 26, 2025 4:04 PM
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: [yocto] Bitbake getting stack overflows with 405 responses

Hi,

I am using Yocto Sumo (I am very aware of how out-of-date our project is, I=
 am in the process of upgrading to Kirkstone) and suddenly I've started get=
ting stack overflows in Bitbake alongside some 405 responses. This seems to=
 happen during sstate cache parsing and/or task initialization. Previously,=
 it was just happening when I'd specify -c package, which was inconvenient,=
 but I figured I could deal with it.. but now it's happening for every task=
 I start. Below are some logs from bitbake-cookerdaemon.log. What else shou=
ld I be looking at to diagnose this issue?

Running command ['updateConfig', {'server_timeout': None, 'force': False, '=
profile': False, 'verbose': False, 'debug': 0, 'dump_signatures': [], 'pref=
ile': [], 'abort': True, 'extra_assume_provided': [], 'invalidate_stamp': N=
one, 'debug_domains': [], 'dry_run': False, 'postfile': []}, {'DISTRO': 'b9=
-core-5', 'OLDPWD': '/project', 'LANGUAGE': 'en_US:en', 'PWD': '/project/bu=
ild-b9-imx8mq', 'BBPATH': '/project/build-b9-imx8mq', 'MACHINE': 'b9-imx8mq=
', 'SHLVL': '1', 'LC_ALL': 'en_US.UTF-8', 'HOME': '/home/chef', 'HOSTNAME':=
 'b9-linux', 'BUILDDIR': '/project/build-b9-imx8mq', '_': '/project/sources=
/poky/bitbake/bin/bitbake', 'BB_ENV_EXTRAWHITE': 'ALL_PROXY BBPATH_EXTRA BB=
_NO_NETWORK BB_NUMBER_THREADS BB_SETSCENE_ENFORCE BB_SRCREV_POLICY DISTRO F=
TPS_PROXY FTP_PROXY GIT_PROXY_COMMAND HTTPS_PROXY HTTP_PROXY MACHINE NO_PRO=
XY PARALLEL_MAKE SCREENDIR SDKMACHINE SOCKS5_PASSWD SOCKS5_USER SSH_AGENT_P=
ID SSH_AUTH_SOCK STAMPS_DIR TCLIBC TCMODE all_proxy ftp_proxy ftps_proxy ht=
tp_proxy https_proxy no_proxy ', 'TERM': 'xterm', 'PATH': '/project/sources=
/poky/scripts:/project/sources/poky/bitbake/bin:/usr/local/sbin:/usr/local/=
bin:/usr/sbin:/usr/bin:/sbin:/bin', 'LANG': 'en_US.UTF-8'}, ['/project/sour=
ces/poky/bitbake/bin/bitbake', 'b9-image']]
Running command ['getVariable', 'BBINCLUDELOGS']
Running command ['getVariable', 'BBINCLUDELOGS_LINES']
Running command ['getSetVariable', 'BB_CONSOLELOG']
Running command ['getUIHandlerNum']
Running command ['setEventMask', 1, 20, {}, ['bb.runqueue.runQueueExitWait'=
, 'bb.event.LogExecTTY', 'logging.LogRecord', 'bb.build.TaskFailed', 'bb.bu=
ild.TaskBase', 'bb.event.ParseStarted', 'bb.event.ParseProgress', 'bb.event=
.ParseCompleted', 'bb.event.CacheLoadStarted', 'bb.event.CacheLoadProgress'=
, 'bb.event.CacheLoadCompleted', 'bb.command.CommandFailed', 'bb.command.Co=
mmandExit', 'bb.command.CommandCompleted', 'bb.cooker.CookerExit', 'bb.even=
t.MultipleProviders', 'bb.event.NoProvider', 'bb.runqueue.sceneQueueTaskSta=
rted', 'bb.runqueue.runQueueTaskStarted', 'bb.runqueue.runQueueTaskFailed',=
 'bb.runqueue.sceneQueueTaskFailed', 'bb.event.BuildBase', 'bb.build.TaskSt=
arted', 'bb.build.TaskSucceeded', 'bb.build.TaskFailedSilent', 'bb.build.Ta=
skProgress', 'bb.event.ProcessStarted', 'bb.event.ProcessProgress', 'bb.eve=
nt.ProcessFinished']]
Running command ['getVariable', 'BB_DEFAULT_TASK']
Running command ['setConfig', 'cmd', 'build']
Running command ['buildTargets', ['b9-image'], 'build']
Fatal Python error: Cannot recover from stack overflow.

Thread 0x0000761fe9600700 (most recent call first):
  File "/usr/lib/python3.5/socket.py", line 575 in readinto
  File "/usr/lib/python3.5/http/client.py", line 515 in _read_next_chunk_si=
ze
  File "/usr/lib/python3.5/http/client.py", line 555 in _get_chunk_left
  File "/usr/lib/python3.5/http/client.py", line 572 in _readall_chunked
  File "/usr/lib/python3.5/http/client.py", line 469 in read
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 245 in d=
o_open
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 157 in h=
ttp_open
  File "/usr/lib/python3.5/urllib/request.py", line 444 in _call_chain
  File "/usr/lib/python3.5/urllib/request.py", line 484 in _open
  File "/usr/lib/python3.5/urllib/request.py", line 466 in open
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 279 in h=
ttp_error_405
  File "/usr/lib/python3.5/urllib/request.py", line 444 in _call_chain
  File "/usr/lib/python3.5/urllib/request.py", line 504 in error
  File "/usr/lib/python3.5/urllib/request.py", line 582 in http_response
  File "/usr/lib/python3.5/urllib/request.py", line 472 in open
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 279 in h=
ttp_error_405
  File "/usr/lib/python3.5/urllib/request.py", line 444 in _call_chain
  File "/usr/lib/python3.5/urllib/request.py", line 504 in error
  File "/usr/lib/python3.5/urllib/request.py", line 582 in http_response
  File "/usr/lib/python3.5/urllib/request.py", line 472 in open
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 279 in h=
ttp_error_405
  File "/usr/lib/python3.5/urllib/request.py", line 444 in _call_chain
  File "/usr/lib/python3.5/urllib/request.py", line 504 in error
  File "/usr/lib/python3.5/urllib/request.py", line 582 in http_response
  File "/usr/lib/python3.5/urllib/request.py", line 472 in open
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 279 in h=
ttp_error_405
  File "/usr/lib/python3.5/urllib/request.py", line 444 in _call_chain
  File "/usr/lib/python3.5/urllib/request.py", line 504 in error
  File "/usr/lib/python3.5/urllib/request.py", line 582 in http_response
  File "/usr/lib/python3.5/urllib/request.py", line 472 in open
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 279 in h=
ttp_error_405
  File "/usr/lib/python3.5/urllib/request.py", line 444 in _call_chain
  File "/usr/lib/python3.5/urllib/request.py", line 504 in error
  File "/usr/lib/python3.5/urllib/request.py", line 582 in http_response
  File "/usr/lib/python3.5/urllib/request.py", line 472 in open
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 279 in h=
ttp_error_405
  File "/usr/lib/python3.5/urllib/request.py", line 444 in _call_chain
  File "/usr/lib/python3.5/urllib/request.py", line 504 in error
  File "/usr/lib/python3.5/urllib/request.py", line 582 in http_response
  File "/usr/lib/python3.5/urllib/request.py", line 472 in open
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 279 in h=
ttp_error_405
  File "/usr/lib/python3.5/urllib/request.py", line 444 in _call_chain
  File "/usr/lib/python3.5/urllib/request.py", line 504 in error
  File "/usr/lib/python3.5/urllib/request.py", line 582 in http_response
  File "/usr/lib/python3.5/urllib/request.py", line 472 in open
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 279 in h=
ttp_error_405
  File "/usr/lib/python3.5/urllib/request.py", line 444 in _call_chain
  File "/usr/lib/python3.5/urllib/request.py", line 504 in error
  File "/usr/lib/python3.5/urllib/request.py", line 582 in http_response
  File "/usr/lib/python3.5/urllib/request.py", line 472 in open
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 279 in h=
ttp_error_405
  File "/usr/lib/python3.5/urllib/request.py", line 444 in _call_chain
  File "/usr/lib/python3.5/urllib/request.py", line 504 in error
  File "/usr/lib/python3.5/urllib/request.py", line 582 in http_response
  File "/usr/lib/python3.5/urllib/request.py", line 472 in open
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 279 in h=
ttp_error_405
  File "/usr/lib/python3.5/urllib/request.py", line 444 in _call_chain
  File "/usr/lib/python3.5/urllib/request.py", line 504 in error
  File "/usr/lib/python3.5/urllib/request.py", line 582 in http_response
  File "/usr/lib/python3.5/urllib/request.py", line 472 in open
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 279 in h=
ttp_error_405
  File "/usr/lib/python3.5/urllib/request.py", line 444 in _call_chain
  File "/usr/lib/python3.5/urllib/request.py", line 504 in error
  File "/usr/lib/python3.5/urllib/request.py", line 582 in http_response
  File "/usr/lib/python3.5/urllib/request.py", line 472 in open
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 279 in h=
ttp_error_405
  File "/usr/lib/python3.5/urllib/request.py", line 444 in _call_chain
  File "/usr/lib/python3.5/urllib/request.py", line 504 in error
  File "/usr/lib/python3.5/urllib/request.py", line 582 in http_response
  File "/usr/lib/python3.5/urllib/request.py", line 472 in open
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 279 in h=
ttp_error_405
  File "/usr/lib/python3.5/urllib/request.py", line 444 in _call_chain
  File "/usr/lib/python3.5/urllib/request.py", line 504 in error
  File "/usr/lib/python3.5/urllib/request.py", line 582 in http_response
  File "/usr/lib/python3.5/urllib/request.py", line 472 in open
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 279 in h=
ttp_error_405
  File "/usr/lib/python3.5/urllib/request.py", line 444 in _call_chain
  File "/usr/lib/python3.5/urllib/request.py", line 504 in error
  File "/usr/lib/python3.5/urllib/request.py", line 582 in http_response
  File "/usr/lib/python3.5/urllib/request.py", line 472 in open
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 279 in h=
ttp_error_405
  File "/usr/lib/python3.5/urllib/request.py", line 444 in _call_chain
  File "/usr/lib/python3.5/urllib/request.py", line 504 in error
  File "/usr/lib/python3.5/urllib/request.py", line 582 in http_response
  File "/usr/lib/python3.5/urllib/request.py", line 472 in open
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 279 in h=
ttp_error_405
  File "/usr/lib/python3.5/urllib/request.py", line 444 in _call_chain
  File "/usr/lib/python3.5/urllib/request.py", line 504 in error
  File "/usr/lib/python3.5/urllib/request.py", line 582 in http_response
  File "/usr/lib/python3.5/urllib/request.py", line 472 in open
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 279 in h=
ttp_error_405
  File "/usr/lib/python3.5/urllib/request.py", line 444 in _call_chain
  File "/usr/lib/python3.5/urllib/request.py", line 504 in error
  File "/usr/lib/python3.5/urllib/request.py", line 582 in http_response
  File "/usr/lib/python3.5/urllib/request.py", line 472 in open
  File "/project/sources/poky/bitbake/lib/bb/fetch2/wget.py", line 279 in h=
ttp_error_405
  File "/usr/lib/python3.5/urllib/request.py", line 444 in _call_chain
  File "/usr/lib/python3.5/urllib/request.py", line 504 in error
  File "/usr/lib/python3.5/urllib/request.py", line 582 in http_response
  File "/usr/lib/python3.5/urllib/request.py", line 472 in open
  ...

Thank you,
Logan

--_000_MW4PR16MB508736875E5E14A493B84836BB46AMW4PR16MB5087namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
My issue appears to be fixed by `1a4e4fb6b0a9d54641bd4193e95311d1f822a9ca`,=
 contained in release Zeus 3.0.1 and later.. why this started occurring, I =
still don't know. Looks like I'll be working off a fork until I can pull up=
.</div>
<div id=3D"Signature" class=3D"elementToProof">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Thank you,</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Logan</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto@lists.yoctoproj=
ect.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Logan Grosz via l=
ists.yoctoproject.org &lt;Logan.Grosz=3Db9c.com@lists.yoctoproject.org&gt;<=
br>
<b>Sent:</b> Thursday, June 26, 2025 4:04 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> [yocto] Bitbake getting stack overflows with 405 responses<=
/font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Hi,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
I am using Yocto Sumo (I am very aware of how out-of-date our project is, I=
 am in the process of upgrading to Kirkstone) and suddenly I've started get=
ting stack overflows in Bitbake alongside some 405 responses. This seems to=
 happen during sstate cache parsing
 and/or task initialization. Previously, it was just happening when I'd spe=
cify <code>
-c package</code>, which was inconvenient, but I figured I could deal with =
it.. but now it's happening for every task I start. Below are some&nbsp;log=
s from bitbake-cookerdaemon.log. What else should I be looking at to diagno=
se this issue?</div>
<div id=3D"x_Signature" class=3D"x_elementToProof">
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Running command ['updateConfig', {'server_timeout': None, 'force': False, '=
profile': False, 'verbose': False, 'debug': 0, 'dump_signatures': [], 'pref=
ile': [], 'abort': True, 'extra_assume_provided': [], 'invalidate_stamp': N=
one, 'debug_domains': [], 'dry_run':
 False, 'postfile': []}, {'DISTRO': 'b9-core-5', 'OLDPWD': '/project', 'LAN=
GUAGE': 'en_US:en', 'PWD': '/project/build-b9-imx8mq', 'BBPATH': '/project/=
build-b9-imx8mq', 'MACHINE': 'b9-imx8mq', 'SHLVL': '1', 'LC_ALL': 'en_US.UT=
F-8', 'HOME': '/home/chef', 'HOSTNAME':
 'b9-linux', 'BUILDDIR': '/project/build-b9-imx8mq', '_': '/project/sources=
/poky/bitbake/bin/bitbake', 'BB_ENV_EXTRAWHITE': 'ALL_PROXY BBPATH_EXTRA BB=
_NO_NETWORK BB_NUMBER_THREADS BB_SETSCENE_ENFORCE BB_SRCREV_POLICY DISTRO F=
TPS_PROXY FTP_PROXY GIT_PROXY_COMMAND
 HTTPS_PROXY HTTP_PROXY MACHINE NO_PROXY PARALLEL_MAKE SCREENDIR SDKMACHINE=
 SOCKS5_PASSWD SOCKS5_USER SSH_AGENT_PID SSH_AUTH_SOCK STAMPS_DIR TCLIBC TC=
MODE all_proxy ftp_proxy ftps_proxy http_proxy https_proxy no_proxy ', 'TER=
M': 'xterm', 'PATH': '/project/sources/poky/scripts:/project/sources/poky/b=
itbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
 'LANG': 'en_US.UTF-8'}, ['/project/sources/poky/bitbake/bin/bitbake', 'b9-=
image']]</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Running command ['getVariable', 'BBINCLUDELOGS']</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Running command ['getVariable', 'BBINCLUDELOGS_LINES']</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Running command ['getSetVariable', 'BB_CONSOLELOG']</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Running command ['getUIHandlerNum']</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Running command ['setEventMask', 1, 20, {}, ['bb.runqueue.runQueueExitWait'=
, 'bb.event.LogExecTTY', 'logging.LogRecord', 'bb.build.TaskFailed', 'bb.bu=
ild.TaskBase', 'bb.event.ParseStarted', 'bb.event.ParseProgress', 'bb.event=
.ParseCompleted', 'bb.event.CacheLoadStarted',
 'bb.event.CacheLoadProgress', 'bb.event.CacheLoadCompleted', 'bb.command.C=
ommandFailed', 'bb.command.CommandExit', 'bb.command.CommandCompleted', 'bb=
.cooker.CookerExit', 'bb.event.MultipleProviders', 'bb.event.NoProvider', '=
bb.runqueue.sceneQueueTaskStarted',
 'bb.runqueue.runQueueTaskStarted', 'bb.runqueue.runQueueTaskFailed', 'bb.r=
unqueue.sceneQueueTaskFailed', 'bb.event.BuildBase', 'bb.build.TaskStarted'=
, 'bb.build.TaskSucceeded', 'bb.build.TaskFailedSilent', 'bb.build.TaskProg=
ress', 'bb.event.ProcessStarted',
 'bb.event.ProcessProgress', 'bb.event.ProcessFinished']]</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Running command ['getVariable', 'BB_DEFAULT_TASK']</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Running command ['setConfig', 'cmd', 'build']</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Running command ['buildTargets', ['b9-image'], 'build']</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Fatal Python error: Cannot recover from stack overflow.</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Thread 0x0000761fe9600700 (most recent call first):</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/socket.py&quot;, line 575 in readinto<=
/div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/http/client.py&quot;, line 515 in _rea=
d_next_chunk_size</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/http/client.py&quot;, line 555 in _get=
_chunk_left</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/http/client.py&quot;, line 572 in _rea=
dall_chunked</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/http/client.py&quot;, line 469 in read=
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 245 in do_open</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 157 in http_open</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 484 in _=
open</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 466 in o=
pen</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp; ...</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Thank you,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Logan</div>
</div>
</div>
</body>
</html>

--_000_MW4PR16MB508736875E5E14A493B84836BB46AMW4PR16MB5087namp_--

