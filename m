Return-Path: <Logan.Grosz@b9c.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B087C7EE33
	for <webhook@archiver.kernel.org>; Thu, 26 Jun 2025 22:04:22 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (NAM12-DM6-obe.outbound.protection.outlook.com [40.107.243.119])
 by mx.groups.io with SMTP id smtpd.web11.8070.1750975461156639299
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Jun 2025 15:04:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@b9c.com header.s=selector1 header.b=WUFZ7YrD;
 spf=pass (domain: b9c.com, ip: 40.107.243.119, mailfrom: logan.grosz@b9c.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kQN/j1+JI063GF75T1bzYbspaqkR83WaEh/f3aUXs3jgJaAv9slDLmddamWFkDcar/+zwcpdLEHmML8MZKgKUCG0Msp+bp3WcK1ysNzv5V4byUer1QtqlhM8kdvpMIpCwOejcTcZ3kKhEOlBTi0rgR9v+oMp8KNMn5xj1ZZvFwcy5vhOwlDekbev8HiKm0GclI4zdADRcFenZGIXISi+NZOt+EKsO4DSNyJy/GgLmPHHGzgcDbacuKqG/BhvV2663cBUidiK35mpfPZlCiXUL7FOf2LwDkRLp6N2OqkbxqOr/FD3BA8jonCiR/VscnFGJHyUWzEfDS3UpN0qAtFmWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rPtB9chw/p40Euv8YJTRFSiRq6UaC90bUHqe/VTeGNI=;
 b=JvqOH87az41WYNTTW6er05cwlnHFEk59PGkgovQaHJbQuHN9TK3I+0cG69zrJmwWxos6RtonTEA9NNjk2QY9p/05XdMyg/Ou23B2tt4B2sZ0LVJdrXMdKiWYusQrefTx3iGTt6sfOvjw3IbelwlQtpQZak2fgYtH5JKjgwKhdrzKTBxXhgp6osKegiFWnHNdYSe8ajmk/PAUphDR72/1JWNAUe3wIY2df8Bs+hAzPaR+uqD7huvCT7GRDYBQs+jpnwhXEmQQ1Aizl/Gh1HIrqjDVUIL4Lye/INQMCGETMrk/0oRbUzICsTq72jxsfVL+bgAV7Ie0220x6NwZ3d4//A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=b9c.com; dmarc=pass action=none header.from=b9c.com; dkim=pass
 header.d=b9c.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=b9c.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rPtB9chw/p40Euv8YJTRFSiRq6UaC90bUHqe/VTeGNI=;
 b=WUFZ7YrDsM04+Pp6taw+H9iaME1vjDtTYnv0l7nwok8zaOL5SbfQnUPzjfjGj6VgXdeJYqadnmW1YC6AXaN8pB/WJ6nyIXHiX+l9RIo8EV7P+fMOG1Jz8Voijzu9iF9Rac2qpP3G8jlNGSacoIYEm9rUtA8rS9YWJkD0lJVkXFk=
Received: from MW4PR16MB5087.namprd16.prod.outlook.com (2603:10b6:303:1be::18)
 by SN7PR16MB5179.namprd16.prod.outlook.com (2603:10b6:806:355::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.21; Thu, 26 Jun
 2025 22:04:18 +0000
Received: from MW4PR16MB5087.namprd16.prod.outlook.com
 ([fe80::dd82:bdb7:3ca1:2b8]) by MW4PR16MB5087.namprd16.prod.outlook.com
 ([fe80::dd82:bdb7:3ca1:2b8%3]) with mapi id 15.20.8857.026; Thu, 26 Jun 2025
 22:04:17 +0000
From: Logan Grosz <Logan.Grosz@b9c.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Bitbake getting stack overflows with 405 responses
Thread-Topic: Bitbake getting stack overflows with 405 responses
Thread-Index: AQHb5uVyS36JsGsCG02s49gZtq6kbw==
Date: Thu, 26 Jun 2025 22:04:17 +0000
Message-ID: 
 <MW4PR16MB508741BB656E2244208A47FFBB7AA@MW4PR16MB5087.namprd16.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=b9c.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR16MB5087:EE_|SN7PR16MB5179:EE_
x-ms-office365-filtering-correlation-id: 8bc93e0e-8d67-411e-8246-08ddb4fd657b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700018|8096899003;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?kGiEy2SEsFLkalh6mEe04DN7uGESQgtaoJFF7ydtJTdXQ13kKU2zHdiB3N?=
 =?iso-8859-1?Q?mqQ5dwkggIFrsN8eEYQ9sIo1PxFc7gxZ0F0k7OAkPBcJhDCvYWroWvvJvT?=
 =?iso-8859-1?Q?NVi72m5qDJmo5iNjt++oGyXRXL46QxSyeXBcChf8fnE9abam+LhoCsINml?=
 =?iso-8859-1?Q?LoZBHl6ODb5KIpoikng9aMRV7v8ZCPMDkVpZ1dRkrOizaWeMThdlzVPaz5?=
 =?iso-8859-1?Q?1OZgE3JIeMKg6sqzc8pw2n6KLNgVmX+nRoj4Xx5VCJxe4p/ZkGltixi1is?=
 =?iso-8859-1?Q?3HTiVzBoMWiewu3TU0pZH+jhkVm+F1ubK2fr00iM4gClknaQ+moGeNMdlS?=
 =?iso-8859-1?Q?RaZ/2lxshMzHiCz31QjPle5qmzzrQP3QqcfpSbpTq5mejtSAI55p3jnA4X?=
 =?iso-8859-1?Q?QUGTLafBmP/qKsCsWaTcEiD+304ndNqjVDEiV8qi7EsOOuyzAprbEMSEIe?=
 =?iso-8859-1?Q?jytFY633Odi0kMshOMvWQyH8W0XSG1whF7g5MzaDZJ2Uesh5ZldLf5reQa?=
 =?iso-8859-1?Q?jnv63WcjdZzCPATNWKjSIU0oL2DT3nn9d/ZoHaEMUsiWIfIkhdSwbsMA2c?=
 =?iso-8859-1?Q?Hr2X6Lhm7uY0otfHTXTMz3HQxSX89e4Nbw+nyWswiPGPg3E0uAXargZOCU?=
 =?iso-8859-1?Q?rybawGWrEJoKvEKAGtO2cvjUEQ80cogH4LXMJ51VSWFXiCJpfTkg04ahbf?=
 =?iso-8859-1?Q?MoV6cIWBfOA63eTHycteWrja/NkIPLLb/a8k/Z/VG44o4dW0/+cz65ivpk?=
 =?iso-8859-1?Q?waS975N1FpGkAp5tQUiTpCYIsgq7ndFi1ts2IlddJDFZoEx7TNV/ANx7PK?=
 =?iso-8859-1?Q?2KAmybnx+U44vfGYItTELoPYoggHWIB6IrBDx3Sne0SyeIaGHKK7ypzEKe?=
 =?iso-8859-1?Q?1LhZNzFUHZDZVXclylkvcSbQO3NpVw+hvYndPpxENrLi/5HGwk1yQIh2ZW?=
 =?iso-8859-1?Q?kyUnbo6Wqd9DDnSc7q9f4Ao8odPaOY3jryIgrQVPBXrpDLU3QalRcqGaTc?=
 =?iso-8859-1?Q?t79vpi+MBeVOFa0j29Xm9m7wWEyYE0iouoVRzXiV9HZD31R3Zbbp1N+1oo?=
 =?iso-8859-1?Q?tDshegKJ68arB/ZET6NPVeB7npdiN2wyVzlX4mlw+ouI1a7QBgZ8PEKa78?=
 =?iso-8859-1?Q?+q9n9lOoh5i9ncx0u4Vpyg6IqoSRF8EXy/vRzApQeQrWlbL5o7GJW+5hLz?=
 =?iso-8859-1?Q?jqzAybxV3nLZM4hmuKSuf+nJVl+plYc0z53hcZNfexvL8nJ3L4ywT5cL3K?=
 =?iso-8859-1?Q?XaUaj4biMGMugnSwASnMUnU70p3lDiXOUflINTF98zf6+JwuQTiFN+6EdJ?=
 =?iso-8859-1?Q?kluloL+EoG/LcjTVYZpAFOpbfWr9JN+YZiEvMJTTFdJJ//8O6iqHSpz+AJ?=
 =?iso-8859-1?Q?pjP+Kyq8IGvIiGs4ZQmBQGJPj8oyTlD4/u1kxd/gmbG3RVDkn32OZziPrl?=
 =?iso-8859-1?Q?2ovLdmSxBFbhv3Y/9Mn0CkeBEbalf3xefKwToMm1kNm76bRtKu6Q81+O/4?=
 =?iso-8859-1?Q?bzjywWr0szk/0eCn0IuOrIzUNanBcz6F389SRP2NKMfg=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR16MB5087.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(8096899003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Aw03w63RsyclXn40gphtdBwng2ag7MqZfmzpeNX22H5FxlZOfl2gfFFxmn?=
 =?iso-8859-1?Q?S1wmBxlV5Ugt8lSErwuoij9iYBpCmMIKK+h3MYEKbGYLwinVYK+iSw4haA?=
 =?iso-8859-1?Q?TtGmDH76LKVngsOgS0r+i/u/Z+3eNSvU143To6du4cQgWVILkuVnj97mhs?=
 =?iso-8859-1?Q?mX8A0Lf6/1M9MnyE4iqP5TrkVfKVz62LE51rSiwK1xjArwlF54EqTHD2YC?=
 =?iso-8859-1?Q?HZY7+vTSNNAaV9N3I/oOnUilRGCylA2Q7wT/ef+y6df5+a8Q87bngLAEyn?=
 =?iso-8859-1?Q?v59p67AOgOlIReH2Wd6HggpecUFvSYBMM37XAr0nn9zEEiS8HDw5SRhJaL?=
 =?iso-8859-1?Q?Zid9LvLdgGKlcTo3luGskwiItTTaKOsvBEiyWm4njY28uzLuCLT5xnKOEg?=
 =?iso-8859-1?Q?nloLUXdogpwWYn5UsT8VGEkfJcHsuiwvHwfjN0l8fHu5Lfi71dzHPKA/hL?=
 =?iso-8859-1?Q?s+MKrn6dCXV18fo/jkPsc3Ze8mT2ijSyGtlrJT2pjQMD9ZklM1BXhEJulF?=
 =?iso-8859-1?Q?er7xoEMxT1WzFqARK+Q5J5awmDPwQ3UHaWgW+3bj1hgBqa+iCm9N+YEu3Q?=
 =?iso-8859-1?Q?jt1ZcGro1sG0aiUc3biO8WJ8YxSRaSnPAZvVPOw4NYhzlXxSjFihvlOt5w?=
 =?iso-8859-1?Q?lzWBajXisbMESjwBgMi6ChZSeY30JNb4evGTefYj/yHZUnd8HqTO3MZdvM?=
 =?iso-8859-1?Q?+pMJ22hzKDCCjLNi3oQnIw/A+t/++lEH8nH9pXGV/ufJe+Oi1Ayu0T1kXz?=
 =?iso-8859-1?Q?auT9tizq2PwvkQA7nZBcVXqUZ97FuG6xaPNJZS5dW5G04ayxK0WYGsIboM?=
 =?iso-8859-1?Q?ldmFjRgzg/EjtgLJA1n+P1M3agn1GAIAuO9gXUUL/mhcSmTGqUbpQGYWmc?=
 =?iso-8859-1?Q?vLaHTIDm8HDa+Ro00IgMKmPRry+FnhZyqOcsPEiKtQSdNTZiWNUjhc+RA8?=
 =?iso-8859-1?Q?m/qoK9XkXsOIqABJrrM3a5zKNhauLoVx40CR+MKFMxY7HH7HmHQAU/XgCU?=
 =?iso-8859-1?Q?EKRkUZw5y4MzIYIBCCbtfGi9tWEXk/IbGHN/ErzsxoaTkfVtMbH1otINMJ?=
 =?iso-8859-1?Q?pmXKm4tdO92skC3++U+M/TZgLdlqwNzEtsq9woCD8HhgaU6WOdzwzgelaP?=
 =?iso-8859-1?Q?h3UhCxH3c1a6zZoO2ID6xqH5KLJQVgz+ll/J3bX6ifEjJLoCXfe3su/v37?=
 =?iso-8859-1?Q?JpxsL5cdV9YywvHSWv6aP4Q32OoCvynZaGlN/VfpXTuaYWLmOVWODdxmzF?=
 =?iso-8859-1?Q?ZW4g9SCT0wgyfltuKCY3SrOhkA1svX2lgyesoGug92uRgeKOQYpCQsq+X7?=
 =?iso-8859-1?Q?9+skt7dSHw3D7RA4f0bBOCZi1M0qzoyygzFl0UnaGHPIkEt5NSF++MIg3O?=
 =?iso-8859-1?Q?U2tUoyBA5zSGl+uwI4nrVyGQ/UGTmeBbG9RCXTnqpsiO9k2r8sDqlZsORQ?=
 =?iso-8859-1?Q?8lFlqOw8JawUhpeoVjgsM0pmTQaGA9hXKNTELPSPAZK7gqOeOrejzVLSPk?=
 =?iso-8859-1?Q?YwIEdVa/ws/X8L03oghiM+ezI3MKaFesYmsBhAHEafrDTtf1OUg1bEUKTj?=
 =?iso-8859-1?Q?solCowLbHbWRI50vEzcUyIno3BiQgwtFppOqjnPmvGB9tINIJKw9LMqJN8?=
 =?iso-8859-1?Q?Xtfj1r0P585SmZS5y8msvblEHDyNb2XIfT?=
Content-Type: multipart/alternative;
	boundary="_000_MW4PR16MB508741BB656E2244208A47FFBB7AAMW4PR16MB5087namp_"
MIME-Version: 1.0
X-OriginatorOrg: b9c.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR16MB5087.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bc93e0e-8d67-411e-8246-08ddb4fd657b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2025 22:04:17.8534
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3ace18e3-3825-4b3e-be2a-b5c73f048d39
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3LbiCuvFyKEoqIrz1pvV0qtiQF4rQLVUdNmaW32QPpcZWTx9SEnuk/VRuZrGI7IPvIriNg9SHAaXQK7ESv2uEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR16MB5179
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Jun 2025 22:04:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65552

--_000_MW4PR16MB508741BB656E2244208A47FFBB7AAMW4PR16MB5087namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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

--_000_MW4PR16MB508741BB656E2244208A47FFBB7AAMW4PR16MB5087namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
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
<div id=3D"Signature" class=3D"elementToProof">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Running command ['getVariable', 'BBINCLUDELOGS']</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Running command ['getVariable', 'BBINCLUDELOGS_LINES']</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Running command ['getSetVariable', 'BB_CONSOLELOG']</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Running command ['getUIHandlerNum']</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Running command ['getVariable', 'BB_DEFAULT_TASK']</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Running command ['setConfig', 'cmd', 'build']</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Running command ['buildTargets', ['b9-image'], 'build']</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Fatal Python error: Cannot recover from stack overflow.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thread 0x0000761fe9600700 (most recent call first):</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/socket.py&quot;, line 575 in readinto<=
/div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/http/client.py&quot;, line 515 in _rea=
d_next_chunk_size</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/http/client.py&quot;, line 555 in _get=
_chunk_left</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/http/client.py&quot;, line 572 in _rea=
dall_chunked</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/http/client.py&quot;, line 469 in read=
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 245 in do_open</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 157 in http_open</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 484 in _=
open</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 466 in o=
pen</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/project/sources/poky/bitbake/lib/bb/fetch2/wget.py&quot;=
, line 279 in http_error_405</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 444 in _=
call_chain</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 504 in e=
rror</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 582 in h=
ttp_response</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; File &quot;/usr/lib/python3.5/urllib/request.py&quot;, line 472 in o=
pen</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp; ...</div>
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
</body>
</html>

--_000_MW4PR16MB508741BB656E2244208A47FFBB7AAMW4PR16MB5087namp_--

