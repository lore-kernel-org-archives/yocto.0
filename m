Return-Path: <sandeep.gundlupet-raju@amd.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28D29CCA470
	for <webhook@archiver.kernel.org>; Wed,  1 Oct 2025 21:59:04 +0000 (UTC)
Received: from DM5PR21CU001.outbound.protection.outlook.com (DM5PR21CU001.outbound.protection.outlook.com [52.101.62.16])
 by mx.groups.io with SMTP id smtpd.web11.612.1759355939979746968
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Oct 2025 14:59:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amd.com header.s=selector1 header.b=wNGE2wHD;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: amd.com, ip: 52.101.62.16, mailfrom: sandeep.gundlupet-raju@amd.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ia+HWvJ4z8VGuvwEQnB1Oyat9ZLkuAkfaEyaCzqejGU2ArGnKAW+wFMcxhri9wli1X8uN87OpzdJofsUNJDHc6ZRJ7DlTlsYx2aNPPl4zid0tFi8T/sj4QrS3IrheAZrzK9EZMiEKWx6QG/9KPzKVoFnt/V8b41VoaNr/TIQxUC9SnXQQlWp7vLxzQK3m4HgjCQXaI6wbHqzn5fnbWjSZp+9GZhdYlrYeYXW2KjdTXMaP8d94kzhO8UxNn+BAP0/eKjh68f0zlJ1c8dMAX3vSRpc4Snw+h0u6LHJJOORB9OAaDS2vMj9NMIru2xKLCOn3N7S1Dcc5VX3Hsz67z9MPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xkbsfA4DyFJqYW17ocMGFW2SQ1Ru7INDembsda0Vd1A=;
 b=mxOn9+MIVcBbEBKaUobNyZQqQ/Edo6YVr6k8lfNqnP8u7+MikIxU7mEH+M3lAw/9J3Vq1cOCIgiC1Cx0Rsy5C51pf42ufRmcsxJF7oSKobrHZtt0Ztf5Cc8ucZXVwdIWSlaJrFHlUYiSUiXO4gqqinJVMzc5Y3IFhukGlhmLk/Zd/TcLgiefY1A3gdIUQU4nk/sgmL3lVQNEBZ30QiG1k0dorv+5/RL1cYe33WBtyq5iSQEuwLXiwBf0mFK48Qjw3P1cWyEkboTc5N6Tr91cFBLBB6u2b1ENyGpL4bagQZcFkQ/D+eukhRCwX4NBygFXwpFwtiSKGU0bk3chILpSzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xkbsfA4DyFJqYW17ocMGFW2SQ1Ru7INDembsda0Vd1A=;
 b=wNGE2wHDL6UqxSgMDRdZKn92MJJWmbhtOdJL5ClmwetENfP/lZudrGN2/temoRHSwGIQ1SdIIivVxw65jPheGBdFNLGnEZEXIx5SrhxTsUVbueVpwh/V+Ajstqrf9hqQzrHcuq0Lxot4y/j5WQMgAbPDwCdOWUT3FiSXL5CIl8Y=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB8778.namprd12.prod.outlook.com (2603:10b6:510:26b::16)
 by PH0PR12MB7905.namprd12.prod.outlook.com (2603:10b6:510:28b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Wed, 1 Oct
 2025 21:58:57 +0000
Received: from PH7PR12MB8778.namprd12.prod.outlook.com
 ([fe80::936f:22dd:d75c:188c]) by PH7PR12MB8778.namprd12.prod.outlook.com
 ([fe80::936f:22dd:d75c:188c%5]) with mapi id 15.20.9160.017; Wed, 1 Oct 2025
 21:58:57 +0000
Message-ID: <7d479171-ff95-4473-b420-b168dca2b7d8@amd.com>
Date: Wed, 1 Oct 2025 15:58:54 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: "Gundlupet Raju, Sandeep" <sandeep.gundlupet-raju@amd.com>
To: yocto@lists.yoctoproject.org, JPEWhacker@gmail.com
Subject: Run weston as custom user and non-root
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH2PR03CA0010.namprd03.prod.outlook.com
 (2603:10b6:610:59::20) To PH7PR12MB8778.namprd12.prod.outlook.com
 (2603:10b6:510:26b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB8778:EE_|PH0PR12MB7905:EE_
X-MS-Office365-Filtering-Correlation-Id: 2b707585-1d7c-4c08-cdef-08de0135b838
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bzdDYnI4cmpjUXlVc1ZXOEZVZ0d1T0tlUnErVjc4RHF6RUdhZ3F3WGdMQ0Fm?=
 =?utf-8?B?enlOUy9aSzRqYUM3U3dyc0VyZUp6VFRJSXV4clkraG5sQ2pWUWhYRnFZbjQ2?=
 =?utf-8?B?clFQZEZpSlpma1dzczRmcmNUczdLNFpDZFUyNU9lQnZhMnFZVFNxYUY4dVhj?=
 =?utf-8?B?cUF3c1ZzQmpBKzBwa01yNWl4SWFraUIxaytDclB5YlN5TFFwazkzTnQ1bjhj?=
 =?utf-8?B?VnJ6ZUM0LzhzNDZvU1NnUWRpU0k0R0MwNjc4VWVlV3hvK0Fha3p1QTlRYmJn?=
 =?utf-8?B?djVNaVVHc1FvWTFLbmU3R1dNNDlYNDdtTENVVnJDQzRHMU4wK2ljSjhqcEtr?=
 =?utf-8?B?ajZDeVJjWWs2YlU4aWhhZ2hieGdMeG93eU1ZVW5NbUV5WlJlaXFCcDhNM05q?=
 =?utf-8?B?TTJUQVVScWQ1UFZoby9RanFDNkxIdktERDdVbnVROEY4MXNMbE05MFRqcVdF?=
 =?utf-8?B?Z0J1bitydElJaVBuOHBWQnpvVkZiRzFlbEZoVDhSMHB5dVJGdjB4SkVPbFRz?=
 =?utf-8?B?Ym1tTmFCbGhWNEpQM0ZiMGZOV2JteVoxQVRpYkVQUlJPMVltVHM4cjFHcjRo?=
 =?utf-8?B?K3VVQnV0WGc1UnUrb3R1YnArdEt3Vlh3TzFUWjNWbzNCNzVNaG83L21uU0NW?=
 =?utf-8?B?b3JySmJmQmpFUTZzd010ckFBNDlxd3FvT1hUUXhJenhUSXcyTERtNG1uS2NY?=
 =?utf-8?B?eXNoU0l0azJvM2hsTG1BRWVKcU1TNGw1VU5RTUFGZXBaSjA0eDJmR3ZiY3FI?=
 =?utf-8?B?VzU3bGZiS1ZXcm5TN1ZubEY1RTl3MDBGMGVOTEJ2NjkzTG1GMmZiVXJSVSto?=
 =?utf-8?B?RmN2cW0vaHlMc2ZHSloyeTA4NTNRb2ZRNVZpTzZoaENBanBNVytQSjMxeFl6?=
 =?utf-8?B?VVlvS1NJRUROWm5qdUFveUhRYWthZFV6TGJoNkVseVBDbTRzWTF1dHJwQSsz?=
 =?utf-8?B?YjcwU2NDdlFKZHE4V1dPV0ViTTIyajFXYkp6N05IVjZnajExbDdMdU4xZkMz?=
 =?utf-8?B?NzNsNFZuQmpHRlMxeGNueVFNZGV4MU15Mk1SOEVwNklDUTR4VC9LQVF5US9M?=
 =?utf-8?B?YVBCZ1UwckpkajhtcW10UjJyR3BIMi9KMVUxSFUvQnRnV1ZkalRQOE51M0Nh?=
 =?utf-8?B?M2tuV0ppS0tlcC9ianlhWTFLbFIrcEUwRTdrZDBOTjBIVXNwMjhnK3pHT2xm?=
 =?utf-8?B?UEo4T0M1Tk1DRzhseWd4Rm9qNUQ2YXlCY0xBTFhXZU9MaXc2S0RYNzYzbjJu?=
 =?utf-8?B?R1pBNU9ncy85NkVXaHpKcTVWZkdPa3RuSjd6VC9lRTVwREljZlpuNEdDUVZK?=
 =?utf-8?B?a2VvcEtaeFZ6eUVZVzJVWGUrTk5SUG1NZjJuMkNBaFppYWRINFVwUmEzRUtW?=
 =?utf-8?B?cU82ME9pT1dlY2NTRnFQWnNUWnl5N244eGNYVU5vNUErb0VEMkNuRmxVMmUr?=
 =?utf-8?B?aFdSQ1B3aDA3cS9BQWw3aFU1ZVN2RUJYSk95NEY5c29ReXQrR1VVdXdmajh2?=
 =?utf-8?B?bUJWWDJBNHBHWEFxRzRyVFBSaWJLNDNVN0JXTFJiSlEvd2g3azQxL2x2S0tQ?=
 =?utf-8?B?V2llNy9wZmtrT0NGbU96UTNTVmpzeTdIbnVPZmZrZFdLM0piYlBQQjdhQnZY?=
 =?utf-8?B?M2FVUlpQUk5qNldzSklmc3AwT3pER2p0d28rUnR6blZHK0hOdVhBSXFhcmV6?=
 =?utf-8?B?cjVuNitvSnJacEc1dTdib1Y1dDJOWTBnZjIyQ3poSmM4cHJFS1ArU3htR0RT?=
 =?utf-8?B?Rm9ESVJVbTZXSm1ISDFzelVzd0lzakdVbk8vMWZpTnY2L096cjBibkViZWJ5?=
 =?utf-8?B?YzlEVHMzbzZoWS9rMklUU2F0RFlKd25yb1oyL09TTnBrZjhuOGE2UzdaMGxp?=
 =?utf-8?B?bmJSd0lrR3daeHZ5MUUvMjloVWdWZ0p6TG5GOElmN2lOTHMxV2FLSmZHWlkz?=
 =?utf-8?Q?f5XkCwj0iKNjY7aBaL3lNDJHIIxB7IMi?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB8778.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Sjlkc2dTdmlJakVrNXd1Z20yb25jejVkQ2lUNUh1Y3YrTXF2bWdRMzhML3Fx?=
 =?utf-8?B?WFlHL25Gc25pSXh5OEt0QTFTRWFOcVNwSlY3TDBrbXJqWG44OEh3TkQ3Nmhu?=
 =?utf-8?B?UVZxOFFmNkJYdEprNHBpUXdJRERodGJhOFRkZHZKMExoTmx3ekRSa0QrL2RH?=
 =?utf-8?B?VkpPM1BtaVZScnMvOWI5aW5mYUtiUDFoaklSbTQ5Z2xJRk1vVERHQm5PRWhT?=
 =?utf-8?B?WUFDTFFKMFZlY0dSVFU2c21POFdZZTk1YkVrM1VrNkR0NWErL0xzQlpYSnNq?=
 =?utf-8?B?cndoZ1FUaEhhZEZRbjJDL0NGZEtQWFhDbWgrTTFjWEV0NHVmTkprRzk4N1ov?=
 =?utf-8?B?RGZ0THBFZU94dmVMd2lSZmdPb2tkb09Ianp0UTN1L0ZpaGY2KzdzUk5oT0py?=
 =?utf-8?B?MGQ5SGZQTS8xNkxDU0ZNM2xRUHNyZ3dXK2s0N1Vncnc0T0NsNGpZekQrWmJ5?=
 =?utf-8?B?ZjNyLzB4b3hoZDFlQUZQaE4zYzd6ZUtQSDltVkRDYWM0cHpldWl1WkpQVkdD?=
 =?utf-8?B?Q2tqRTljRHk4Z21zWHMrZkZrakpucWhCckdFV1Q4VUZzSXRnY01LNE9XTEtR?=
 =?utf-8?B?WWl2ZnZiY2c0SHdtSkh6WTI5TlBickVxM2VKZkprVzlWZDNKbGVEN2lNbHRT?=
 =?utf-8?B?QlRBK2NrTTB4a0wyeEtQT0g1L2lNMEpObm9YSWxkcU5qUldRZ2JQb0ErNHN5?=
 =?utf-8?B?UVVia2tRN1FKQkdkbkNsZEYzV0xyWEpldWRyZE5LY3AvZW9wbHRseTdpMlBX?=
 =?utf-8?B?YkMzZXkyZm1VZXdvWEdDWWszMnBpQ0toYzdiajJnRENReVZoMEN0bWZ3U3Vw?=
 =?utf-8?B?NmV0NStONVBaOHNpOUQ0SWxIbTRtV0RYRStQRW9vc20xMlhnVnJyaUFSWEdr?=
 =?utf-8?B?NXZHMnRmUEh3RTkxQjhOT2I2cDFjY0xoWm9Mbnc0bTZrUmo1VzRmNUtOTzFp?=
 =?utf-8?B?VjVMeGJiTFlFTitNdUt1ejdzbzRweE9uZzZ6TE5paCs1M2RUR05iKzQ1N0ZW?=
 =?utf-8?B?akpTUXBDV3hjaTZzaGhvRUU1R1l3T2J3ems4QThzOXZUUkxyNk1Db0FYRXpi?=
 =?utf-8?B?aW11OER2dUl0d2gzdmVZR1huQWRxU2tLN0JwTXYyV0NDSmE3NU5zendTYkJm?=
 =?utf-8?B?endaeVJXY0JvOXNjZi9tdHhPVmVuNnN2VWphcEp0MFh2YjJ3azJNSkwrZWRJ?=
 =?utf-8?B?ODFHM3JtVjFZVzJDOXhjK0ltRGdtdmRlMFBoUjc5YWQyanRLNHFYRTE3MUlh?=
 =?utf-8?B?Um53ZFNIcHVnSGNDTmtOUDZLVlRGTU9vTS9EVXYxdEphTVQ1NGJwNkYrRGF5?=
 =?utf-8?B?c2trOUNuRXloeXNJYVVwcHN1U0hYKzNlcUFUNGFpUXRSSkJyU0NadEdSMzhx?=
 =?utf-8?B?OVpFZThnUm1PR05VOXg0NzBMbjJVdXFYanorK05ObkZ4eE90cDJ3WXh0V09H?=
 =?utf-8?B?ZUlCVUtoSDFvZWVqeUxnTWF0eHFidFVZQnVjR2g1VkZxTldyNWN2MzViU2dR?=
 =?utf-8?B?NkF2Wlh3WEJHeERDVjEvRUl0eHRha2VFMjlrZWhVdU5TOTB0Nit6U1FFT0tv?=
 =?utf-8?B?a0s0MHEvVTNpSHJQNlNLbzc0TEhBYkMzUDJ1UFlTelY2emVwMTYxMTdWZUFD?=
 =?utf-8?B?U2xsVTFoTTU5TTZCS0VYL3h3dEZXQXRSeW01NE5DQTgvejcxbDNkaXZycVo5?=
 =?utf-8?B?M084a1k5MDM2VFg2ZUlMdWFLYm05bElFTUVtaHV0RnJTdk4xZFJMQVJxYTdk?=
 =?utf-8?B?eVh4RkNGWUpYdDNYNVI3bXNJVVZROTUyTnZRNnNXYlBqNklTZUZjNFpKTURD?=
 =?utf-8?B?S3pNR1Y3Mk5LU054STZLdGlQSnc0cU1BWks0TXlYK242NURZM2Vra0VROCsy?=
 =?utf-8?B?dlVjYndwcHRRa0UweEMxdERNVkNMeER2QzBkQnV5cEVpUkNjY21GOFF4Y2o5?=
 =?utf-8?B?MlVKRFM1T1EzeVk3bWtaTUVyTjlXSjN4d3AzaUF0YlBHZjlCclRwZ1VOTG9F?=
 =?utf-8?B?TEtmN0gzVFRRUW5vekkrdTFTd2JJVEw2RUtCYnZjaW9xdU90NEUrR2FBc0xY?=
 =?utf-8?B?T1Z2cDc5ZDFwZ2dqMU5DRWRVb0JHMGNSSU50UGhlVzdrdUtqZjIzc1NqNWF1?=
 =?utf-8?Q?ceSTcx/qyL+EJTLnQYvu8Krbh?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b707585-1d7c-4c08-cdef-08de0135b838
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB8778.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2025 21:58:57.1783
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cWtynddXUSslWOU75+N0v2i/59n4NDUJ4DUncU9DKcbKIbb+aQIDNSPIvSPb3/+sB6P1V5xuqt30qPSQcbaMJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB7905
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Oct 2025 21:59:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65898

Hi All,

I'm trying to run weston as a custom user(non-weston user) and non-root 
on arm64 using scarthgap, I can modify 
/etc/systemd/system/graphical.target.wants/weston.service with username 
User=root, Group=video and then run as root user which works OOB, but 
end goal to run weston as custom user which belongs to video group.

Any help is appreciated.

Thanks,
Sandeep


