Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03BD7CAC5A7
	for <webhook@archiver.kernel.org>; Thu, 25 Sep 2025 16:02:24 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.45])
 by mx.groups.io with SMTP id smtpd.web11.785.1758816135932692312
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Sep 2025 09:02:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=bSCsWaiu;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=bSCsWaiu;
 spf=pass (domain: arm.com, ip: 52.101.70.45, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=vrQRg7Jt0S8jlxMTz9k4J/W+i/2Y44jp7s+tnn0N97HsAIsr7+vue0HElvrx9yRc4l2/JzLihAHlM8bYm92MfE+WDVwba4b/56Sh5WV5uBIv34ruDYRei+b3pnm2wnmM7PjwS46s8MNTxDjOgeYiSzpV8Jbsuk29NZfWGzY3Xtd6dtsfszlywbWUGuXxJaXCot46QgVwZ4DIxzaFPcTZVssdHnBN+SbbrJNcvpRoEceEKE+lzGBb8Vva+hMwODz4ZgHxymqV+wZasJw4AF7QmDuwQXvqmXMcwmwEjRqOs2CgmZwN5JT6EFzJFLu3XUyCUEmx2qVy/OwH1OY0HvpzDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hM55Quygn8lDh2VzJrwUOZd/xPjR07z7HezlCI6cdqg=;
 b=XV+uICbwc4ELKsZC3BrEecCVWACRoqPAOc/14ZVD41pOWeJAV+jaMzeSF6Cl+/TkZGAcOKxixDluaUNN67Sb1tflqKbymWZPwS3GcZ0AfWCCOdxJSSd7AL7UPOxciuEmVRUpq9oMl+AuBD7D0y8BDx9vTnkFk67Y+b0c5y7cktiJe6DJQ3E0RmUxU+O3LeY9vum7pQ35Z42bBbr24SmYgbwmaLinzcGpCTmtjV2Cl8rR5e0Hm0nrGQZ8k3gbOO9V+ZZSUPW7h4JNQNto8bPqGkYgqHibpjIBDad9VaooB/8vmJaaBaiU1/AdSGLG8NPZ1GUg+JQ6ptWBt4nkl1wbkg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hM55Quygn8lDh2VzJrwUOZd/xPjR07z7HezlCI6cdqg=;
 b=bSCsWaiuWchDdOR6Mlt1cumY+qraI5/B43kp1nFzaTFExcDV+ql0Ni0q9bG2htdTb0N1IBl/e0VAA+5EGfaRe4QVG5eQ+csozk6sIMzbpKrH6QgeQFbs/abM6OrLgOXlHL3yD/nXxZv2XHSIdvmm0fY3KYnAdzG5+CZsv3xNdL8=
Received: from DB8PR04CA0005.eurprd04.prod.outlook.com (2603:10a6:10:110::15)
 by PAXPR08MB6432.eurprd08.prod.outlook.com (2603:10a6:102:154::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Thu, 25 Sep
 2025 16:02:09 +0000
Received: from DB1PEPF00039233.eurprd03.prod.outlook.com
 (2603:10a6:10:110:cafe::52) by DB8PR04CA0005.outlook.office365.com
 (2603:10a6:10:110::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9160.10 via Frontend Transport; Thu,
 25 Sep 2025 16:02:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 DB1PEPF00039233.mail.protection.outlook.com (10.167.8.106) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9137.12
 via Frontend Transport; Thu, 25 Sep 2025 16:02:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HVTqSZOwnvLpT3b8IWo5dy2dmm/MU/0rPfLQpj88vqPLPxmcjhbluXHtxDOJrjo/oppntsrWJyE2+nSbqg1Mv3VF+al1mSDHK+JfhxMO5sHp2A1EHAFHx0lHPq74xj00CYX3I0bnAauchTOgqx1v5M3z26d9+xupvjHL0aABAagMcipGtruNFl8B+4ChWGajGkEcMKZGRbE7l3u6c3cvN1Cl8ql6GgqnZDoNvJiONkel9D7TEMo3AAtoWRnMXX+qt2TUWMBbw/yWFMhILebru6zE5P+r1+G0ONxEBY2PI7F0qL+VxRJ560gfvXnKvk7m+mhwf9D+iD/G1j9fDV2/gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hM55Quygn8lDh2VzJrwUOZd/xPjR07z7HezlCI6cdqg=;
 b=qjNT/LNSkEWh1uus3Nm9MD1S2VIoPtrOHfSHJUVDZyA3PwRm8WruOdcO+bKzyTMfyzUbDwA8zk86he5iG8Ke7TQHMWGa2pGPsLn/+Q/Y2mHP39AgSAfjQwsxRaSnp/GdPCyQ9zxIauv7EgLX09NdcJhEKHGY0obaX0To4Bz2XflJ8Oi3CHv2yanUaOFtz3kTiEF3NdnIQYAOfp0g/vSzfZkIZUv6MQlghAE1KEF674K8iGG9cKxUVcrlnlG/TLVxJMxrIkACT/HFli/07a0cf1f6BGEIGqsTT6oNv/nECoCbRSj1cAb4vDAGXaTrgZqt9Gat1Mnjk+jg+yw9nLn57w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hM55Quygn8lDh2VzJrwUOZd/xPjR07z7HezlCI6cdqg=;
 b=bSCsWaiuWchDdOR6Mlt1cumY+qraI5/B43kp1nFzaTFExcDV+ql0Ni0q9bG2htdTb0N1IBl/e0VAA+5EGfaRe4QVG5eQ+csozk6sIMzbpKrH6QgeQFbs/abM6OrLgOXlHL3yD/nXxZv2XHSIdvmm0fY3KYnAdzG5+CZsv3xNdL8=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GVXPR08MB11058.eurprd08.prod.outlook.com (2603:10a6:150:1f6::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.16; Thu, 25 Sep
 2025 16:01:36 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::7f73:806a:3493:7d50]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::7f73:806a:3493:7d50%4]) with mapi id 15.20.9160.008; Thu, 25 Sep 2025
 16:01:36 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"git@oliver-kaestner.de" <git@oliver-kaestner.de>
CC: Katu Txakur <katutxakurra@gmail.com>
Subject: Re: [yocto] Bitbake fetch private Github repository release archive
Thread-Topic: [yocto] Bitbake fetch private Github repository release archive
Thread-Index: AQHcLTNlHxF9C+GwSEqhgq2J5NOXpLSjwH6AgABQZYA=
Date: Thu, 25 Sep 2025 16:01:35 +0000
Message-ID: <8C9A3DD1-2940-42E5-B302-6D5A3E9EB3DB@arm.com>
References: 
 <CAM1ZcoXBYER5j5kTayzcYLzdObxyZjriqNsY5OAZm0j5B-kUNg@mail.gmail.com>
 <27679.1758798821990851768@lists.yoctoproject.org>
In-Reply-To: <27679.1758798821990851768@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.700.81)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GVXPR08MB11058:EE_|DB1PEPF00039233:EE_|PAXPR08MB6432:EE_
X-MS-Office365-Filtering-Correlation-Id: 869cbedd-dd47-44f3-1083-08ddfc4ce1d4
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|376014|366016|38070700021;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?VzAzSUhpUWlXU2FSQlpjMHRTRlNnWjg3OEdyMzZTTWRtb1RoOXkwR0IvbVFZ?=
 =?utf-8?B?bnZTUFplbU1XS0dMMWVsclowUHRVdlFtYkZieWlxSG5HTi9ZWXJGN0FKT01Y?=
 =?utf-8?B?K2llbzA0RnBXMVFyamY1ZGdZWjBwRXR4NUlTWVhsZEJBZEdVSC9HekZUQkwy?=
 =?utf-8?B?SDNmMDR3Vm1aa05Lem1ndnB3QnB6T056a3kvOE83dStwL09KRnhibzdhNHBt?=
 =?utf-8?B?aFROS2s2NjBuR1ZMemhmOVZJSVZucEhTWmI2K05DTHJuMUtlc0doQVA0M0g4?=
 =?utf-8?B?dzNtUXhmMXEybHo1YUQ3VUdqSS9pR3V3M0ZmVkMxQ0pKbmFwYjFTMlR4TDZm?=
 =?utf-8?B?T2F3anh3TEVLbTZlVG9uaXRCYTVnNWtoUEM1cHJuVjM4eGpiQ28zbVU4eXlY?=
 =?utf-8?B?Snc1S1JkcGhVQXNzN0Fkd3lUbnN4dmJyM3Y0MXo4ZzJHWkltLzVBYkdFVzN3?=
 =?utf-8?B?OWFuZEdDSWtrS250d24wbVVkNzBwSkwvdGwwbEtic2E4SURLbVd3WXRIa2la?=
 =?utf-8?B?NVlJeTZGMG1WdFJoZVBnZVFkL25FZHRhRUhPQWp2N0F4cjA5dS9LdlVNMWQ3?=
 =?utf-8?B?Qm9Ya0ZTUERRVWl0b2p0ZE9rRWNQblBFMjFDK0d3SzVjQzJhWVB6VDNWRjB3?=
 =?utf-8?B?NHorNEc4ajZQVlplYzM2bnd0d09lMjR2Rm5PeWlDYnR6UXRjdEQrMlhoNWpE?=
 =?utf-8?B?WllXTlhvdldiOER3UjFSRVhCbFZmOXlKaXB0NnJEcGtkeWNUVFQrQnh1aDVh?=
 =?utf-8?B?UDNhVHZ1UHpwU0k5dkNWYmp2eXpaWURUSGFrT2hZbFAvTFBvUWV0dExoTG4w?=
 =?utf-8?B?N0NNRnVaYlVUaDNEdlZmUEQwL0ljY2lqTjlUMFl6YytrNnJQbExoUStXWmgy?=
 =?utf-8?B?Z05Gakp6QmNpUFQrVDFXcWx0djdVRXRXVHlHMHpjR255bE9VTnZ2UU9kUVRi?=
 =?utf-8?B?V3FRTlIzYWlGeWVRNjhVblZpZi9PeDNLcGV3ZlJGNG04VkZ1RDg1ampwVjVO?=
 =?utf-8?B?MXZyM3dFZ29TZ2VkcDY5elFlU2FaQk5oNzNROXdPUlYyTG41dHpMcDdJOXVx?=
 =?utf-8?B?enBmUCtBTnZLdStwRHo5QzQ1WXZmcVNzaFA3RDRDaUgzMTNxcDdLQ0JtK2VW?=
 =?utf-8?B?OXJ3WnZJVzdTdXgxdDhEOVg4dllyZWxLWmJvY1RXTFdOcm9PeEZBY1dwQmhL?=
 =?utf-8?B?QjMyandrekZLaGtwVzlUNXcwVy93Qlo3cDhJWXJaUGxCR2FDTFlqOVN3THdL?=
 =?utf-8?B?bmp1MVJGNjJzc2h1T0xMVi9iWU04SHZnQXROdXRrc0lnNmdiNFk2Y2orZmg4?=
 =?utf-8?B?KzhvNjM0UDU0czdlSTZnc25aZ05YZDVTZEhNazEySGVBS0ppTVdZMi8rNEM4?=
 =?utf-8?B?YkJKYUhjYVpQMDBJTWNTSFFRdGsxUTg4WHlobHNycmhlcG1LS3pBMDA3b0E2?=
 =?utf-8?B?TEJoTG9kY2tOZW5MKzBPRDNXMGhBSnhuNENqNzkrS0RDRXd5WURVRGVJZ254?=
 =?utf-8?B?U0trTmtqN3hsZEJKcEhYVnlKZGwwUWhqdUlmd201Mk96d2ZyYTVyQk1PSUFX?=
 =?utf-8?B?d0RwMUZtRWJ4SWdlL1l6UHUzVUhKbmRoMWtWS2hQRjV3cUNxMFVBb2ZSQzdp?=
 =?utf-8?B?bERsM2V1K1NkLzFqSmFHYkhIc1FlYVVZUCtTTzJYQ0JrUlVWMThnSURLKzdE?=
 =?utf-8?B?cVFUNy9Vb0xROEUyQXB0enFwNGs5RW03R0txMkJFelh0RFNYRXUyOTFockds?=
 =?utf-8?B?R1hNcElhUExoQ2EvTUdyMTFCaSs4TE51bkIrNHZLQzNweXJBN0RJRm5aQUdL?=
 =?utf-8?B?UDdGaUxKcng3UWpEZ3ZnbFpoUng5NFdFWGVWcVJXbGJDcGNBTUFuZS92WEJN?=
 =?utf-8?B?U05iNXZwNVdZc0FWYklKTytwRERKQmJZcUpOSG42TkZnSG1FYTVuR0JESDhS?=
 =?utf-8?Q?DGNHGemzA7E=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700021);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <BCB6CE8AD6FE864DAB00006A0514E08D@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB11058
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF00039233.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	1ac0b37b-fe94-4f5c-18fb-08ddfc4cce04
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|35042699022|82310400026|14060799003|36860700013|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SU5VeGVlY3RYVnBpWGhhR01yd3dZVXR1cFFKbEFtczlGUHkrbDR2eCtUak9y?=
 =?utf-8?B?TzhiTXRhcm1nQTBYK2VyZHZkUVNTOVRBVWx5SEdTL21OQjBsTDl0VDBFVkN2?=
 =?utf-8?B?K09ueDh0U1JIOE9vWTQ1dklwN0tFMXFxdkVuNlh2SUVSOVdMcTc3cUwzbzJ1?=
 =?utf-8?B?dXNLUjFYbHpSeDNUdy9GMDV1aE9WOStGZWh4MHNTY2FnMjdUa016Z09GQktr?=
 =?utf-8?B?L1ZZRDBqR09uNjBsVnJRM1dkdFZDSU5xQVF5cFNJT1RwVmg4MnBvdm5ZNk5w?=
 =?utf-8?B?ZC83ZnVWeHpJZlAvTUVTaTRpd3pySUNpbHhqVExGSGUweWF0aVdQeHA0TmZO?=
 =?utf-8?B?NWxJcDdtaXlLZ1IrQmtvT0N1dGJBK1Y3VnFyaUplTnpyM1F1TUxmeCtZdWdk?=
 =?utf-8?B?MTBmQzdoelMwOFY4NFhEVU9hY3BmdG9TMGhsLzdENE00Tm15OVhQc0ZpZ3py?=
 =?utf-8?B?RlI1MVRDalhkeXh2eGQ4em80U01XeWgzZXRBRndvcmFCVzBLeDlPL2tZVFpu?=
 =?utf-8?B?QUdybVNsNmh4ZGRRNlhicWhsTi9VV0YwNWZwRjZYb3Y2WnNtM0MxSDdiQ3Qy?=
 =?utf-8?B?c0xJQUd6eUd0cWx5N2NyQTR0Y3VBdmhBblREd0F6ckhicXhGdmNYTzM2NitE?=
 =?utf-8?B?SWUyZ2k0ell1OWJJYTZWNWRKeDkyakJQMHErZmN6YytFVXlzMWdwY2FNbEgx?=
 =?utf-8?B?UnZlcUlkRzVkbEI2cWhlYm9RWnNEMkhISEtxS3IrNmY3YVdjSlppcTgvY0c2?=
 =?utf-8?B?WGFqMjA2Ui8rN21rcHExUHpGZ2Z6REVSNGxGclU5OC84ZFhTSEJ4V3k3a3Fm?=
 =?utf-8?B?OUdzNWFPQVpNdEJZUWhBc2dyVU1neU1uTVp4cTUzWGVDSG1BUFFNQ21seTBu?=
 =?utf-8?B?V3JEYnorb2NuSUd5L0tmcWtsazNIT3NlNHZ1M1dWNWxYTEpvK2o1ZmpWbGNN?=
 =?utf-8?B?TzczZWNGK3MwQVF1MGFKcHlocGVWQXBlZks3T2JJOS9vK1k3cjdjOWlVVXBL?=
 =?utf-8?B?QWZpRjI2dFVFVjJXc0IyQnVxMDJWUEtrbnB6aTZVR3BzWEZaeTcraHNjTU8r?=
 =?utf-8?B?VVhzQnVHdEh3Wk51bWpKdS9OR296d3p0emh3eHY5VzEzY0oxYVBHL1hGVzk0?=
 =?utf-8?B?UHM3MXlZS1R6SUlUU1pZQWpZL2lidkN0RlpFayt3UDJEUHk2WjBIaFA4UHdZ?=
 =?utf-8?B?OXE0Y1NYTHB0RmdSRktqdUtYTms2emd2S3pwRzZGdU44TDBpNVkxU1U2VTls?=
 =?utf-8?B?VnpxQXU0UzN3N21lOFlicWk2YXhlRFlaS2ZvVDZQL2F0MTVSNEJPaXJMWmR0?=
 =?utf-8?B?aG52S0pHeHZZN2xYVWFTYXgwUldyM1FjTVc3V2s5L2gyYmNrbHVVcmRUYmgr?=
 =?utf-8?B?RlFDNng3MDhRcy90V2RoY25WYWlqb3hvKzZxRm1GeVVFN1c4YnNTK1gycHB6?=
 =?utf-8?B?cFRrN01NWVR3alhYZlR3NU1WaE4vbm9RT3VoazdWUHI4Z3FOMFRQZ2ltWEVt?=
 =?utf-8?B?Q3NrcWFhVCtoZWJ6RHZTNWhCcDl4KzZldytkODhaVjE2RVZjZUJhRGNmVjVv?=
 =?utf-8?B?cGlIZ29wSENRbmJodjh5VTFpdjdBMkFvYkN2Y2xBZVcvb0Y0WXdCSm1LOG8z?=
 =?utf-8?B?ckc1TU14SlRaR0F5aXpTYzdaSGgrU1JQSWVKbXhlWTdMWlpWaDhvMzNyWTJX?=
 =?utf-8?B?UEYzalhqcXA2UXRHbzIrSDlwam5KL2p2ZFBlU3pTVHhLSFBQUnFPVWJwcDZy?=
 =?utf-8?B?YVg1cWxlVnZ0bCtVemlac082UXlWMjBSeDdYSEQyY2RwWi9zQmkvc3hHY3pk?=
 =?utf-8?B?LzB0K2UwcStTOGNqbThleWtBY09yOEc0RTBwT2ZVRFVnbjNrVVcyZ1lzTzBj?=
 =?utf-8?B?bnVHZG03ZzI3N1pNNm53SU1YZnVXeklBSGlSZ1hsRkloLy9yMnJYSUxFc3JC?=
 =?utf-8?B?SE5LVDFpL1ZsQTZCWkw2MVcrU2NUQmp5dTRGRldoNDV1Skl5a3EybTdUNDlI?=
 =?utf-8?B?S0UvZTBEZmhnPT0=?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(35042699022)(82310400026)(14060799003)(36860700013)(376014)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2025 16:02:09.1816
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 869cbedd-dd47-44f3-1083-08ddfc4ce1d4
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF00039233.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB6432
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Sep 2025 16:02:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65875

T24gMjUgU2VwIDIwMjUsIGF0IDEyOjEzLCBPbGl2ZXIgS8Okc3RuZXIgdmlhIGxpc3RzLnlvY3Rv
cHJvamVjdC5vcmcgPGdpdD1vbGl2ZXIta2Flc3RuZXIuZGVAbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zz4gd3JvdGU6DQo+IA0KPiBXZSBkbyBpdCBsaWtlIHRoaXMgKHJlY2lwZSBzbmlwcGV0KSBhbmQg
cGFzcyB0aGUgR0lUSFVCX1RPS0VOIChyZXBsYWNlZCB3aXRoIGFuIGFwcHJvcHJpYXRlbHkgYXV0
aG9yaXplZCBQQVQvR2l0SHViIGFwcCkgdmlhIGVudiB2YXI6DQo+ICMgZGlzYWJsZSBhbGwgb3Ro
ZXIgbWlycm9ycyAob3VyIHByaXZhdGUgbWlycm9yIHdpbGwgYmUgOnByZXBlbmQtZWQpDQo+IFBS
RU1JUlJPUlMgPSAiIg0KPiBNSVJST1JTID0gIiINCj4gDQo+IFNSQ19VUkkgPSAiaHR0cHM6Ly9h
cGkuZ2l0aHViLmNvbS9yZXBvcy88T1JHPi88UkVQTz4vcmVsZWFzZXMvYXNzZXRzLyR7R0hfQVNT
RVRfSUR9O3N1YmRpcj0ke0JQfTtkb3dubG9hZGZpbGVuYW1lPSR7QlB9LnRhci5neg0KPiANCj4g
IyBkb24ndCBpbmNsdWRlIHRoZSBHaXRIdWIgUEFUIGluIHRoZSB0YXNrIGhhc2ggZm9yIFNTVEFU
RQ0KPiAjIHRoYXQgd2F5LCB3ZSBkb24ndCBoYXZlIHRvIHRyeSB0byBmZXRjaCBpdCBhZ2Fpbiwg
aWYgbm8gdG9rZW4gaXMgc2V0IGJ1dCB0aGUgdGFyYmFsbCBpcyBhbHJlYWR5IGRvd25sb2FkZWQg
ZXRjDQo+IGRvX2ZldGNoW3ZhcmRlcHNleGNsdWRlXSArPSAiR0lUSFVCX1RPS0VOIEZFVENIQ01E
X3dnZXQiDQo+IA0KPiBweXRob24gZG9fZmV0Y2g6cHJlcGVuZCgpIHsNCj4gZ2hfdG9rZW4gPSBk
LmdldFZhcigiR0lUSFVCX1RPS0VOIiwgRmFsc2UpDQo+IA0KPiBpZiBub3QgZ2hfdG9rZW46DQo+
IGJiLmZhdGFsKGQuZ2V0VmFyKCdQTicpICsgIjogR0lUSFVCX1RPS0VOIGlzIG5vdCBzZXQiKQ0K
PiANCj4gd2dldF9jbWQgPSBkLmdldFZhcigiRkVUQ0hDTURfd2dldCIpIG9yICIvdXNyL2Jpbi9l
bnYgd2dldCAtdCAyIC1UIDMwIC0tcGFzc2l2ZS1mdHAgLS1uby1jaGVjay1jZXJ0aWZpY2F0ZSIg
XA0KPiArICIgLS1oZWFkZXIgJ0F1dGhvcml6YXRpb246IEJlYXJlciB7fSciLmZvcm1hdChnaF90
b2tlbikgXA0KPiArICIgLS1oZWFkZXIgJ0FjY2VwdDogYXBwbGljYXRpb24vb2N0ZXQtc3RyZWFt
JyIgXA0KPiArICIgLS1oZWFkZXIgJ1gtR2l0SHViLUFwaS1WZXJzaW9uOiAyMDIyLTExLTI4JyIN
Cj4gZC5zZXRWYXIoIkZFVENIQ01EX3dnZXQiLCB3Z2V0X2NtZCkNCj4gfQ0KPiANCj4gSSB3b3Vs
ZCBiZSB2ZXJ5IGludGVyZXN0ZWQgaW4gZnVydGhlciBpbXByb3ZlbWVudHMuDQoNCkNsZWFybHks
IHRoYXQgd29ya3MgYnV0IGl04oCZcyBub3QgdmVyeSBjbGVhbi4gOikNCg0KSSBjYW4gc2VlIHR3
byBhbHRlcm5hdGl2ZXM6DQoxKSBFeHRlbmQgdGhlIHdnZXQgZmV0Y2hlciB0byBzdXBwb3J0IGFk
ZGluZyBoZWFkZXJzIHZpYSBiaXRiYWtlIHZhcmlhYmxlcyBzb21laG93Lg0KMikgU3ViY2xhc3Mg
dGhlIHdnZXQgZmV0Y2hlciB0byBhIGRlZGljYXRlZCBQcml2YXRlIEdpdEh1YiBmZXRjaGVyIHRo
YXQgd291bGQgbWVhbiB5b3UganVzdCBzZXQgR0lUSFVCX1RPS0VOIGFuZCBpdCBzZXRzIHRoZSBo
ZWFkZXJzDQoNClJpZ2h0IG5vdyBJ4oCZbSB1bnN1cmUgd2hhdCBvZiB0aG9zZSB3b3VsZCBiZSBi
ZXR0ZXLigKYNCg0KUm9zcw==

