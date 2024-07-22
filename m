Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93392C3DA59
	for <webhook@archiver.kernel.org>; Mon, 22 Jul 2024 08:14:23 +0000 (UTC)
Received: from DUZPR83CU001.outbound.protection.outlook.com (DUZPR83CU001.outbound.protection.outlook.com [52.101.67.110])
 by mx.groups.io with SMTP id smtpd.web11.13700.1721636053976012217
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jul 2024 01:14:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=XjSgSjJ5;
 spf=pass (domain: cherry.de, ip: 52.101.67.110, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WWCrrGmcFO6s6kHDMf680ihqXMb+yUvgo6mItlASV35tkHSmUrW54lDpZXzfCjFVOzByA3JjsA6krF8NTT8Q/YZptiYO3VFKQX97F18piN2eQZflCQnjR9s0L+rLObmV/LDCMcuoSwxEevFu6YNIRxulrGqT+yEe/9O3BUZel3q2cRTlhD9vkd2SEk+YDlnrbXaJRr8copjaoGDLLOOC8HLOk3skZEDYpq3kmWpC3zFJ188jej33d990i78MEZAcmrfohI6QwaJmHo81YkDhRG86zUkQb2QVDZPkipVg/huEcENXEdLA5B++2NMFCynylnHYsgoNH3i0PERlRXwCow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jLYNkP2haOcog0443UCr8Mjy6gsIKLO6Py7pYJmqo1A=;
 b=k+QhavKhOR9OjbnrTqLuwTxgQ1+oh+aeNjmsBKRi+4ZPS9VxYfHKYVwr0Qbcxjnlvx2lVk9Dsi9M4Nw6C5398ojm7aP3K8X4kCGv5nkB//igIQR2UPOj+C3bTzQr5QyoINQPtQv/ZtSUQj/o7E4elgTMbemhh2QH28LETcANQGwLsYDeSuQbo+YVXgONcMdDNJSJrtFsmXlbtNltecnrHZnyjrC2xge/YSSJyfUKTHtXSRdNGLv4gxr7o+4sFd9lGQWbcgMeRlN675IIxDOCbKLHFAj/0HBQI3tpuGm1fzlzBWTT3aDzzyXpNaYBLWtgPgWfeHABgZnEHsAfza9J2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jLYNkP2haOcog0443UCr8Mjy6gsIKLO6Py7pYJmqo1A=;
 b=XjSgSjJ5N8kIxNtRacgfmweehimaHaw7rjq+WnYhFY7heFKoswCbqLAgtlK/SurEFHe4sY8FoqhOXKJMIbx9xKfnBg56M/6kONIX6ODHs3Wk69rYsn11VSYZ/5M3YfzmSbjokJeerSVsQkd5m/e3Y+E28xUug5NHcZc/DBg7yKc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com (2603:10a6:20b:409::9)
 by DB9PR04MB9752.eurprd04.prod.outlook.com (2603:10a6:10:4c2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.18; Mon, 22 Jul
 2024 08:14:10 +0000
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea]) by AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea%3]) with mapi id 15.20.7784.016; Mon, 22 Jul 2024
 08:14:10 +0000
Message-ID: <37c5d66c-c075-44c8-9fc2-73b1813548b8@cherry.de>
Date: Mon, 22 Jul 2024 10:14:08 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Add qtbase and qtwayland to core-image-minimal
To: yocto@lists.yoctoproject.org, poornesh.g@mindteck.com
References: <z6d3.1721630447110602383.yp5L@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <z6d3.1721630447110602383.yp5L@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR04CA0068.eurprd04.prod.outlook.com
 (2603:10a6:802:2::39) To AM9PR04MB8906.eurprd04.prod.outlook.com
 (2603:10a6:20b:409::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8906:EE_|DB9PR04MB9752:EE_
X-MS-Office365-Filtering-Correlation-Id: 89947c9d-f594-42b4-bdaf-08dcaa2643b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SGMweXFUdTU1R1dHR3ZJdFJWMU4xK0hsM3hOYVdIMUFPQmllNUNZVHRSYnA3?=
 =?utf-8?B?ZFdhV2FIVDJFUHR6U1hGaU91Ykd0NnN0eC9UQlAyelJsTHlNamtZOXh0WVBT?=
 =?utf-8?B?L0xVZ2xUeFVOZUI3MHFvVTVXMkhLZEs2a0VPZm1ydzcwcjd2L3h6Mks1M0dO?=
 =?utf-8?B?elI3cHRkcFBTQlpLY0F0RmN3K0pxRnlBQWpIRDZJa2tKUU9hWGFyNTN6ZjZU?=
 =?utf-8?B?SW5FWEpoSXBTWDFWdHNPUWR4MTNuMGNaRmd6UEIrYThZYWlLRFNpTG1zRFBR?=
 =?utf-8?B?Tk1tMlRvTFJ6Q3ZPK1kyb3F5MmRHTnNoMUNWV3pRN3BROVdUR3R2VWhRYXhr?=
 =?utf-8?B?Tm5iUE5GbG5GbW83UWJCUTcyUi9UKzEwd1JLL2Y4d1d4YUg1dHJUY0VTaEtJ?=
 =?utf-8?B?Sk1HcE5aTEt4TzY3YjFtZTRaM00vMkxXNEZSWXgrY0dRM0d1MkpMWEk3OUhL?=
 =?utf-8?B?QkM5Q0xyMGQ1SzdHRHNJYklSMVJXNkZSUWVQN3NzaTRGVjJiWWhQNWRUSUJI?=
 =?utf-8?B?eUI1bXdFaFFUM01JR3Y2THVTWGhOelR6STZ5ODJDQ3hKOUpGMmFXcE9xR0JI?=
 =?utf-8?B?Q0NGWjlHV1J6UnJmeC8xN2dRT04xZjJtVzNNWWRpcUJiRlBtaGhSM0c5dmlq?=
 =?utf-8?B?U3VHTlRIcFNmbGtjU1JZOVRqbjFxTm9aNTQzaVlLTVlKejNscW1RdnV2ZXNQ?=
 =?utf-8?B?SXJFMjRBQVhnaFIxWE15TXZTSEcxZ2Rzc0o3NWRVRjRpWVY4Q05sc1JhdlZr?=
 =?utf-8?B?ZkUxMGFJU1ZNclRyM3BVdG1ISDIvU3dTam82NXUzK0xmOTluYnFnSUdpTXhD?=
 =?utf-8?B?ZWEwc0o1bnFqOGxNQjIzSjIvNStwMnRWTU1RZFdiR3pRbVhUcWNyUERIc29K?=
 =?utf-8?B?bm5pRmV5MDNTRk5GQWlxUThQUFJsTFZUczZsQ2VwV2N3b0pjdUVxNmw5Z0tJ?=
 =?utf-8?B?dUhjK1FDRG9wdlhLNHlxRmM0VWl6K1VwWjloM1NHcE8wS0QyVEg4VXp6bjdD?=
 =?utf-8?B?WkRTaU94SW01c3hzVHZNMEFKWTE2UkQ4S0M0Vm91TXNVUmlpQm1uOUprd0t5?=
 =?utf-8?B?MnJucW9uNlFNOUd4SVRZbWdWejh0VFZ1U01tblltOXc1UTZlY3UrZU1aVFRj?=
 =?utf-8?B?UkhGWXhzVEVXamNuQ1lqd1RiRXp0dmxXOStVNVVCUkY0MTZienJWdzVCVWI3?=
 =?utf-8?B?WHFWdlRkSnlDd1ZYbTNTWWsycHdTU1hEY2I0cVlRYmVpdDRUbUN5MVFoa3Vm?=
 =?utf-8?B?MjkweVRSVTJyMWVJMmxuOThPeENKenkvdXg0eklMSTdZYUtWL1g4WWFlMGFU?=
 =?utf-8?B?ZkNISGVLejZ0RE13K0huLytwN3J4a3gzM05TN0JoVzNZWVB6OVN5dThYU0Yz?=
 =?utf-8?B?eDQvc1Y2VG10TFo4N0cvdTVLcFliMVJST3FEd3VmSWdBYXovSmR2M29mNTI5?=
 =?utf-8?B?R1Evd2hHT2lzeEpZMlpmUWh5aHlBNjhkSWFyRjBTYnY0YjYwTTREbmUzRUli?=
 =?utf-8?B?WitTRmNvaFl5ZUZQMVZpalRjSEhFN0VHdld0ZEFEWUhISkp5TG4rQWh3aXox?=
 =?utf-8?B?a3hHaHAvRVNOUGdPb3JBb3crRmlSazZNU2txcVpPV093b2hZZUNNWDVEa1Nt?=
 =?utf-8?B?RzhDM045N2F4TWV1QVR0OTl2Z1JPc1Z3R0phdnBtczM2aEwrNm5IQ1RnS3lU?=
 =?utf-8?B?c3p1Wk9zZlNlL05yY2Y4SmtqVHQyajdwL0srMk5ZOWd2OHVQQzQ1ZDB1SjVV?=
 =?utf-8?B?YWwvMERQVnZ5OXh5RDNKeU9wQ0Y1ZXI3K2FOVVIyMG02NHdNV0xvMllKVU5R?=
 =?utf-8?B?eVo4Z01hWnVhL2oxcXl3QT09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8906.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?R1FsSHR0NUppYlU3YmlUaERSd2xKVldONFY3L1h3QW56NE92RXA0OGpCM3Rr?=
 =?utf-8?B?VGZOMzVTelJZSlMwcXhpU2h6RFp3NmFTWUhvb2JpMHh1TU42c3ZoK2hYaVNl?=
 =?utf-8?B?ZHI3QTd4ekp0MzVIOVVYY0g2Z0lFVkhObG1YbURhaHNlV2pudkV2cEZsci9H?=
 =?utf-8?B?RW0xMnFxSzd3QTVsaFhoaXlWWHBjRlM4OVNYamlrTDRDQWp2bHNXbjBPWlFu?=
 =?utf-8?B?U0NhTU4zd3NHbGJFT3hLVFVSM281TEJUaS9CZ1dKWEdPczBwMmpYb2I2dGE2?=
 =?utf-8?B?ZitROWxmNFFnWXdJSlJiVUcwTUhudEFMNGVMaTRQaURNZGRBOTU3eDJBZ01U?=
 =?utf-8?B?dStIUHVoTm5PbndkZ1FxaHVRb2xYMWZvb3R1TUlCQkJPa3ZoSVp0RjVEV2hY?=
 =?utf-8?B?S0tCRkRDZ0piQ0pkb1M1Vi8vekF6c1owaG5KQkdPbDliUGxpb1dVOWRHNUNQ?=
 =?utf-8?B?M2ZUYzZSZ1JaMmRFeGZqM0lVTis2L1NDK1RyR0FxK25Hb2ZOSHVMUTEwWStX?=
 =?utf-8?B?OGErS2g3N2xwd1RzazlHUzg3d1FRaWlSb3l4d0JVSUIxbUZVMmR4cktPWGZV?=
 =?utf-8?B?d3BvUnVucmhHMVZTczlaSk1xMGdsWlVaRVpWV3RFdXhNZmhlcGdaelBiRHJB?=
 =?utf-8?B?QkpuK2QrcUp0dnNqdXNReFkzd3o4aU15WTQ1c1ZqeHVoN2M3Z3NmTU00bXRx?=
 =?utf-8?B?b255enp5VkNuaG1OaUgxbVRZTHdJdElMaU5ITmtLNytPUjBZRzRKeDdSSk5Y?=
 =?utf-8?B?R2xqNm50WTJRVERnVGxTRlRQc0JXOUVmOVFXZG9Kd2FRV0Jhc3lPSkNRcjR5?=
 =?utf-8?B?RmxobVFDWDI2T0pGeTJCVGxmSk44bHdqNXdVbDl1cVhZdHozdmtvakpvNGxu?=
 =?utf-8?B?dTh0MkltM21uOWszazNCSW5ETHNLcWl6OEp1R3NtRTUraTBCTEI4ZEUxMGZz?=
 =?utf-8?B?ejBDd0R5NGlJNXhLNHZnbmkxOUZUOC9kZHJkVm9QT1UrZG1VY0VpcUNYcWFo?=
 =?utf-8?B?eU1mamhQd1hlT24zQS9mS0JYNHpiRWdma0FIclJPNm5yZTM0c1oxM1AzcGhW?=
 =?utf-8?B?Y2ZlUW9zVDFpS0ZFS2RESzlOQkpTQmlZUHlYc0lJWHJoU2NkVEFpOFlvUE5H?=
 =?utf-8?B?a3Q5aVlHYjR1eHE3NEVFaUpiYlhhQjNXSnQ2QWZoRmtFakJYWWx1eTAwRmwz?=
 =?utf-8?B?WFBOQmpYd3VYeWFVdDRVRDZNUXVEcmQrN1pMc2Y3cnNVSWR3UXF0U0g5WDRF?=
 =?utf-8?B?UGlYaVZzc1BJSlJ2a3IwcjNXWkllcjl1eElIbHBJb2tPY0NrV0tnYmd2bzRt?=
 =?utf-8?B?NndDdUtuZlVNOU1wYXJrakNDQkt5NE1BQWtTZERXalYxclY0bVJjbHpsdE8v?=
 =?utf-8?B?SXgzbDR5eTdQMDZ6SWFmZzFkWVczck1mQ2VFeUpnSktYc3RjOGRIN21oUkk0?=
 =?utf-8?B?b0tqRGxuVkxoTmtsaWRQcnJleGRtc0VzOEVoRlJ0S3c5bTQxTHBXN2MraU83?=
 =?utf-8?B?ZUx2ZzhoNHVYSEJ3M09nU3p5UmVoZ2NlaU1sN3JIV3AxUFI4SmVZRFdUbFJ5?=
 =?utf-8?B?YTZ3N3dCUXQ1VWlkNENXaE5uRGZnbEI4Y0tDQXZMeTZibENaWjRZbXIrTUtJ?=
 =?utf-8?B?dzRkc3hoK3J1Mk9sQjdIZmFiQ0RCVkFabmlPWW5qMXZOTmU3OUtFaWFoZm4r?=
 =?utf-8?B?cmc5ek9yVEJHcXlLWmwwcm5HMHFtQmNSV2tCblc5cVZ0NEczRTBIZzRhbm5Z?=
 =?utf-8?B?MkxzTWtXdXBIRzFXcm5vMjl4a25iNFdCQ2pCV3JUdUtqRFkyS2ZrVC9SSjJ4?=
 =?utf-8?B?UWVBZitzWjlpcEJsTVIvV3VUOWF1Z3JGbXp5b3hpZHFCSHlNUTd4V3ZGQXJ3?=
 =?utf-8?B?SndHWWUwQlVKTVpQcFYvNXRvdzJtdWtuSStnTWVvT2Q3d250Nk0zOWZZVFRV?=
 =?utf-8?B?aFJnOFhxZUxJUk1pN1BpR2JvblVCR3F6aGhzMEFZRnpxOU1WNGZwY3Rvdkpo?=
 =?utf-8?B?RVBid1RucnN6RTN2TDFUTU1tN1hBbTZkbXJZZHV6bU9GREdWWkhUc1FyMHdV?=
 =?utf-8?B?L0x4VzAybFJzRXM3TXNYTitiOG54OGpSQS9FUHJEbjlUL0lWUnRkK2pyUTVN?=
 =?utf-8?B?WUVTeW1XVkJ3bW5WSjcyalFLaUFxZmNiMzVESGJmZEdCdEFqV05rSUFFUmVO?=
 =?utf-8?B?a3c9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 89947c9d-f594-42b4-bdaf-08dcaa2643b5
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8906.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2024 08:14:10.2623
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hUhIwp/6FwImUEygs7B1VoNjnMBXiyDOA1aa+uU9ch7shDpw/NO4EWcOpzuN5MEwdc1gGM/ZCPQ5tN5rEUtikdDFJvfGmqFL5VoGeN8RCwQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9752
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Jul 2024 08:14:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63547

Hi,

On 7/22/24 8:40 AM, Poornesh G ( India - Bangalore ) via 
lists.yoctoproject.org wrote:
> You don't often get email from poornesh.g=mindteck.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> Greetings !
> 
> I have built a yocto for RK3568 (scarthgap) with core-image-minmal. I have LCD in my custom carrier board , I have enabled wayland & weston by adding the below lines in local.conf.
> 
> # For weston
> DISTRO_FEATURES:remove = "x11 "
> DISTRO_FEATURES:append = " wayland pam"
> IMAGE_INSTALL:append = " wayland weston weston-init weston-examples rockchip-libmali"
> 
> After this I could successfully see display . Now I need to add Qt into the source , can anyone suggest me to include QT without having any conflict with Wayland / Weston.  I am getting the below error in my case.
> 
> 
> -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
> | QPA backends:
> |   DirectFB ............................... no
> |   EGLFS .................................. no
> |   LinuxFB ................................ no
> |   VNC .................................... yes
> | Qt Sql:
> |   SQL item models ........................ yes
> | Qt Widgets:
> |   GTK+ ................................... no
> |   Styles ................................. Fusion Windows
> | Qt PrintSupport:
> |   CUPS ................................... no
> | Qt Sql Drivers:
> |   DB2 (IBM) .............................. no
> |   InterBase .............................. no
> |   MySql .................................. no
> |   OCI (Oracle) ........................... no
> |   ODBC ................................... no
> |   PostgreSQL ............................. no
> |   SQLite2 ................................ no
> |   SQLite ................................. no
> |     Using system provided SQLite ......... no
> |   TDS (Sybase) ........................... no
> | Qt Testlib:
> |   Tester for item models ................. yes
> |
> | Note: -hostbindir is not a subdirectory of -hostprefix.
> | Note: -hostlibdir is not a subdirectory of -hostprefix.
> | Note: -hostdatadir is not a subdirectory of -hostprefix.
> |
> | WARNING: No QPA platform plugin enabled! This will
> | produce a Qt that cannot run GUI applications.
> | See "Platform backends" in the output of --help.
> |
> | ERROR: Feature 'opengl-desktop' was enabled, but the pre-condition '(config.win32 && !config.winrt && !features.opengles2 && (config.msvc || libs.opengl))
> |                           || (!config.watchos && !config.win32 && !config.wasm && libs.opengl)' failed.
> |
> | ERROR: The OpenGL functionality tests failed!

You're likely missing some opengl distro feature?

Cheers,
Quentin

