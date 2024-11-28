Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EAD2ED6910E
	for <webhook@archiver.kernel.org>; Thu, 28 Nov 2024 13:38:57 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.97])
 by mx.groups.io with SMTP id smtpd.web11.94989.1732801130145376828
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2024 05:38:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=VMovarRp;
 dkim=fail reason="dkim: body hash did not verify" header.i=@topic.nl header.s=selector2 header.b=r/F5jM+L;
 spf=pass (domain: topic.nl, ip: 40.107.105.97, mailfrom: mike.looijmans@topic.nl)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=fail;
 b=I+dyjV/rEzWER8AoAe2r0ufpSMZufHDFN231HcrozBp7WPao0QmmT6ukyklfyDrCkOydjND5H/i6g43GZru1V7S1WpMEF/KgLlFKqP6rxGpAVwgvpGnPAwqKKv/VN/+hRYlT8OeT0kDEY5sMeG509XsgBrGE9sym09V7Nk5TAz0mvTwjwi9THtsz3I44jHsCfG6WlaXwFdNy5234xsMfZdHkK5y4Fg1ND53tVSmeRIbnMXpGZJHX+1IKzSgkdlTnzV8m//fEo6/IDIDGuu6L3MYs3BOdSRTgPsLUKMgGvvDK5jsjnUoPa16LM2/iGDtpSDHQO8uIm0CXGlA+sw5U7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=64Yk31HDBnUDDiMlbar5Oz3CNLrmXySMwQ9GqN3HvoY=;
 b=N1ebcjxXOGFBUCAm9pzkzYTf5577/jLFHayfolrBEQI3Nq4u8NqjCzWBmgq8wqNiMqMLOxaI6B0MsP2QeQZALturHELIQ+rycl4fjGGrl7srm8MkNWJ/eLM4rLzJeRJYAVrJqosH4Vr7JgiNf+srBmT/6oFVALiqV/k6OIqSJXP4fKEzHWFrKNhH5QBkeE5qKWnB2YK20uwtNkE/awyxqnjLdOALUUM7DeIp76q4wgitsZJ/Mw3IoSf4GPyM/ZdjpJludUKK+CSfqdpv/f51QU03MW2SB1vXsnE9vAzLcIy5QkpVgzjmY3LkWU9XVKKi83SofhiuyF1lanrTxgGJUw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 13.93.42.39) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=topic.nl;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=topic.nl;
 dkim=fail (signature did not verify) header.d=topic.nl; arc=fail (47)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=64Yk31HDBnUDDiMlbar5Oz3CNLrmXySMwQ9GqN3HvoY=;
 b=VMovarRpIIv2Kph6FfHQoWplHPDWjk72DYRTEEK8aH9pUoigGzU9en0rjgmi5NbheFx4j5ClxjGwhUUFIFZY/Ut+Jmzz1/S7PEpNoDdIA9Cf97HjKlacGDxY4X3dKn8KqOmIakppAhWmJspa5h/I00LpTAuEEQJ3euBNTaK76uEoXc75ROJSvegdqPnd+J1vWzKtxUxvL12PUjfW3k29HEUbmzcWlIuiU7zV1QwPkv7V8UQSVgzjxY4vjpnNeZ7+cyhN5yVaQ9AJBECmu4r2tJQvgVDTkAmx1WnRob32diVIX97irdgUCZnuiwRCgfM3At+DA0ggL5RCLm7zT3Sp3Q==
Received: from AS4P251CA0001.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:5d2::19)
 by DB9PR04MB9962.eurprd04.prod.outlook.com (2603:10a6:10:4c4::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.21; Thu, 28 Nov
 2024 13:38:45 +0000
Received: from AMS0EPF00000198.eurprd05.prod.outlook.com
 (2603:10a6:20b:5d2:cafe::1c) by AS4P251CA0001.outlook.office365.com
 (2603:10a6:20b:5d2::19) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8207.13 via Frontend Transport; Thu,
 28 Nov 2024 13:38:45 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.93.42.39)
 smtp.mailfrom=topic.nl; dkim=fail (signature did not verify)
 header.d=topic.nl;dmarc=pass action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topic.nl designates
 13.93.42.39 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.93.42.39; helo=westeu12-emailsignatures-cloud.codetwo.com; pr=C
Received: from westeu12-emailsignatures-cloud.codetwo.com (13.93.42.39) by
 AMS0EPF00000198.mail.protection.outlook.com (10.167.16.244) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8207.12 via Frontend Transport; Thu, 28 Nov 2024 13:38:45 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (104.47.17.175) by westeu12-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Thu, 28 Nov 2024 13:38:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DeVWO6+s7exz6OiRjVWBLV7WolkCKePZPE02cbFxtgJ5Sov00KPwRBUxOoMrRwWBOyeyokU/Uk8QoPufeYbfTO8ms7MG5O7JWR/GsObMv7+dyF6vbE206zu4S/Qc02vx/NmvhLFgrdYhvnoahP7VKAmubtoGY8N3CBAOtXTgfaw4HDASS2WA1RWdBk+Yq9L3JpMpD4K9uJovKyA2gKryVPQVslUHUwP/qFf0kEa86ne5DAs+qhjH6Pfx0gI56dqVuq0WSpuvAWe2KKsBNE+pU6ilUCGjoqt0EQkAOJUiJRiKTshnjdKOdQHETFfZmw75WwpCx0EJgrXDDOFxhmKiYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A7/hOJen82zpEgQm1aKaZLih9aNzdCaPM/ke/qDvYSc=;
 b=NVIWE/wYe6qWe7EUFt966SXzYYQeLEJH57x84XiFMw+/wBwymsgmMoR9H4FyETkOYWVhrbGCb/DFt8XR/vorEpjKn+y3NIh/2riZ9ZHP0bNUU0F+r9Qfo9FYzhAc+029/qSpg5W9llfMGTQdZiArbIaaEEvzoOXtIATRHZhtPQ97yJCERnZfvuGp+JOvX0Hhqwlyef/Nf+OorUscM91tbWHfVG8FXtV/oay69rFtRwqHRNMcor2zV4VLzsb5k8cMdGBjIR14DRd/o/Z0gk+2CUCE14zUzsbZoxslSLEMFJ5gbXfVim4D4X/iGzlTXDmb2ywaRpUDuapCxHql+H7byg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topic.nl; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A7/hOJen82zpEgQm1aKaZLih9aNzdCaPM/ke/qDvYSc=;
 b=r/F5jM+LyqW3SeBccY63+UKZRUqm56kW4EPi5tpc9pN3SpZ9/LeNwwiLDTw3QO8q3/AykwF6c2pjJGNKqRAXb/eq3/EavJNHRh9z6U48SJMuINMOTAHjMCmy6d096tVFqt5OvuwI2uW8nEyqNNZe4/GO+KXAmShRi7CczeQNI3OkV9eDnJ9Que5SHBpd/bE3ysUdgSuuciAgughZyVvywbMAzsB/+/uPorCe5aLdJcIgVNqdpzTrOFn2nWysKrieCDQ6V5DwTjpYykmiQcSVisd7na7RIRNwiEPZABVMlRh5NIxm6Ou9JIz/3pH3S1jCIooh3yJQaIkEkXIR2aElmQ==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com (2603:10a6:20b:42b::12)
 by VI0PR04MB10927.eurprd04.prod.outlook.com (2603:10a6:800:265::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.14; Thu, 28 Nov
 2024 13:38:40 +0000
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::e86d:f110:534e:480a]) by AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::e86d:f110:534e:480a%7]) with mapi id 15.20.8207.010; Thu, 28 Nov 2024
 13:38:40 +0000
Message-ID: <90e74fef-e017-45df-9309-4fa2968afff7@topic.nl>
Date: Thu, 28 Nov 2024 14:38:39 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Disabling unused service to reduce boot time (Krikstone
 version)
To: yocto@lists.yoctoproject.org, sateesh0457@gmail.com
References: <JHN1.1732688730575421161.q61g@lists.yoctoproject.org>
Content-Language: nl, en-US
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
In-Reply-To: <JHN1.1732688730575421161.q61g@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AM0PR04CA0042.eurprd04.prod.outlook.com
 (2603:10a6:208:1::19) To AS8PR04MB8644.eurprd04.prod.outlook.com
 (2603:10a6:20b:42b::12)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 
	AS8PR04MB8644:EE_|VI0PR04MB10927:EE_|AMS0EPF00000198:EE_|DB9PR04MB9962:EE_
X-MS-Office365-Filtering-Correlation-Id: f328b6a0-6ae7-429d-2bcf-08dd0fb1fb30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?QUVMVktmVzlJRUtMTitKSGJZUml0c3ltOVJ3dFN5NmJUeFZhNUNSVGJ5NTR5?=
 =?utf-8?B?NEdWOGZDRm93WU1sV1hjcHdyZnJVYldsdzN4RWVCTmM4akpSY1p1QTQxeFBN?=
 =?utf-8?B?cy93N1ZyS1RaaDVGMjZiN1BtUVZSa1E2VjMxR2Y4aE1jMTg5bUFzejF2V1hY?=
 =?utf-8?B?MFhyQmIrYXFGL25CQUZDbUU1ZS9jdnk5N2xxYjFtNjZ1anFoaXhpOGIxeWc2?=
 =?utf-8?B?dk9vMEY0aFBtN2w3RkdGejRueDVIWWhaOXF5WUpicWp1VkZxUHdhTTcvNzJI?=
 =?utf-8?B?SWVqVW1saWl2TDFtTDZvTjRvMmhLRW0wT2hvcGo3WDJNL3dQQjdxM3J3RXhx?=
 =?utf-8?B?eUdoU05wa0xlOXdsWFlxZFl6Q0d3ZVFLdzRQZkNLUGVNaTlQVGlPYUpZRi9C?=
 =?utf-8?B?WWM1NWI1NUZPajBVYWNmUWJldm9sZk8wdDZ2YWZDVkJjeXhIYTVxMWlJeXdX?=
 =?utf-8?B?blZpVUJDb3JkdHJMSm0xNy9lUEFiS3VmQUtpbFlneXdOSnEyek1JRU9VdlFq?=
 =?utf-8?B?UVRPN1FKbjJKSWZWVFZDNUl2RlNaeWtGYVN4WElLcVVXay9ycnh6MXFZM2VH?=
 =?utf-8?B?ZWtXRnU0YzgxY1I4TXRQZDZydnNyZkJnd3hCY3dSMFpCSzJXWWs4eDVhcGFO?=
 =?utf-8?B?VW5JNzRMY1VXU29vMzhsdXpiSis2MCs0T3pPbGFoMzBxbHFTT29SeTFOTjdv?=
 =?utf-8?B?ZndnRVRDbGZZWXBSS3hrZURkUU11eVZpelB2NWhHbUJTS0xQd2lNalVDc25E?=
 =?utf-8?B?QUswUnRJQ1FHZUY1WVB2cERrNzBLYTVFbG0yZlRvWEMxeTJCYWNmV3hucEc4?=
 =?utf-8?B?UWZudDNjTVZQNFIwRlBYTTJBN0psTTl5VGJDOHJZcnlWc1didFNkZ2wvTXBv?=
 =?utf-8?B?cjJvU3hzVkJwWGV4TEhBd2xkOGQweVRLOXI2cEVSV3pyYnZLRDZ5ZjdreE5H?=
 =?utf-8?B?Q25OdzhxU0ZkTUdyOEs1SFFXSVhRQWJCMERkdzU1Mk5oNmNCditVcGsyZjBH?=
 =?utf-8?B?ZURNWlNzNVRSY0paNkw0My9tS0x0UGhiZmhTaGM2ZGFvaklCMGFuZUVHVllM?=
 =?utf-8?B?M3NqK2Ziem9PS1E1cVNteGZ3OUw5YmY0ZmV1WkNSUVVFYUhCNDJVZ29Sd2hz?=
 =?utf-8?B?cmFoZGJTRmhwcGYyNjJvYWlZRmNjYzhRRHBQS09TcUhOWFZaK3R0SWdtUUps?=
 =?utf-8?B?Ni9LNXAzTTVGZXpObHhLcE9YSEg5WERUUXZKVi9jeUZPTm9GTCt1R0Vva1RB?=
 =?utf-8?B?Q1I3OWtoSFNEZjlFY3FDUjZyTXZ4K21KMVR2VEFUZiszUzZpTlJDNzdaQk9j?=
 =?utf-8?B?TC9VQWtNdkVmVGJ3TVZoNERlNDZpRnB1bzI5OEtZRkk0SWdxdHJZUDNMLzRm?=
 =?utf-8?B?WHArSkRoclVESDR6Z3A3TkxuclN4NlI2T2JTa2t6YlFsdG9qQTU3SDlEcXR5?=
 =?utf-8?B?UlZWQVpudmFPdnpXd29GQlRRRDcwdklHWEhQK052MXlhQTBmTHlFcDVKekVB?=
 =?utf-8?B?aWR1MUo5VW41cENHekFHYUVYYlBwbUh4cnYwbm5mcVUrYmwrZU1FMmM1VVBi?=
 =?utf-8?B?Q3ZRWHdNWU8veTFQT0MyNTJYUGRxZmJhRHJlZ1ZzSkp3SkxzMThNTlljc3dE?=
 =?utf-8?B?b1JJNE0xMS9OeHdXeWdRRjA4bkJTdFhNU0FXTTA0eE9kK2dEQXpjM1paUDdJ?=
 =?utf-8?B?VHBoR3ByT2lwZVRMMUhlWHljWkM1b3c2d2NydnE1TUVYK1h5Z21GN1M0Ni90?=
 =?utf-8?B?K01vV1BiZE5kQ1g5a0FGc3ZrK0IrTUZQK0syZlZpS1RRNWRsTHRrazhRWWxE?=
 =?utf-8?B?VXh1SWZyZ0UzVjMxanptZz09?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8644.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB10927
X-CodeTwo-MessageID: 2f89177c-b4c4-49c0-a497-0c1306acf98b.20241128133844@westeu12-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF00000198.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	11febf51-da36-465a-f50d-08dd0fb1f7ed
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700013|14060799003|1800799024|376014|35042699022|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?R0x0SHpUSXZzTVBuUk5qVS9hR2RvWVY0Z1FCUFlXVjNDV1dwaHA3WXcxaXFX?=
 =?utf-8?B?bEF3aDNWcGFzbVZJRzhPdEZjbWk0MDg3ODlSeHlCZkRWMVY1cEdFV0JONXZj?=
 =?utf-8?B?TTVGd3k3S0paTXZzeE1vSUpqbGZwM3BOZmVwNHBOZXdkRzRjQmRLTU1SZFlo?=
 =?utf-8?B?R2ZXcGtDM1o2ZjVWdnJIQnhGUm5yL0RrRmZhVXFxMjZkbzJFenMxYVJYQjVr?=
 =?utf-8?B?MDRZSUJBOXlmM09EeGZkcUJUdDNEd2puNjBudjJLVzFoYnRna0t5MzF5N2Y2?=
 =?utf-8?B?TTBxVW9lT25UZGRDRVFBblVOSzBKb2ZFWXFoTDV0K0JweGVPMmxnQk4wMEJM?=
 =?utf-8?B?cUg3NDhhSHdySkdlWkFZemN4b1d1V3ltWGxNdWh2V3JkUlZjQmxCSFJzOVhw?=
 =?utf-8?B?RUtsT3ZUQ2RBcEVsQ3NZTEdhQ2VKN3gvcDBaNFhBSzlMajZqSnpqc1dLZGVS?=
 =?utf-8?B?ZGxjMTZ2THQxUE1aQW5qWkY1Mzg0dG9abENrbkJ0blBwV0VycFRvTWhnaUlt?=
 =?utf-8?B?Mm9tK3VLd0UrTzdSQUJDUHlFeGdhVDIreU8vaUloOEtIWmhrSVkzbG8zM2Zj?=
 =?utf-8?B?TU94NHlJZWRvVk44L25ZNHcwZjd3cmdrZzJMRjhKVFd6elE5RElQa09qWmdB?=
 =?utf-8?B?K1cvMWk5UmlCMUtvU1RMUnNnRlUwS0FmNS9PQjZZNFA1Z2RCREZoWjBzMHBS?=
 =?utf-8?B?aTdNU09FQVNNalJEdkVzU3h1Ri9QeUdIVzVONjNBVWdoeU9rbTlVRHVkaUFU?=
 =?utf-8?B?N1hOMHQwcWcvTTFuTDRBcmRyRUR2VloxREhlRHhmaElvcXBjWDhPY05wdTVN?=
 =?utf-8?B?MzRmcjhrMkcreGUvZjRJOHpsV2ZrK1RYUisrVkRxWk5VM0JtNDRaUlhTUStl?=
 =?utf-8?B?RUc4anNnb1RlN1NPdFBpekxGV1pyaUR0LzhWd2VORVFxeHk4MSsvdUI5K3Ra?=
 =?utf-8?B?d2NFMFh1dXU5K0RtSEVFMThIOTFmZjVCaUFXZExtRkE1RmRWcUFjV1QwWG85?=
 =?utf-8?B?a2xPOG9FTU5JVjRvenFhbUdYYkNMcHBOdGV1S3pnbDZ6MXBtcVVGUFQ0ZzA1?=
 =?utf-8?B?Z0llc3U4bGJvcVFVblljZUJpV1VBVUdBYmZuSDRQazVwWkZqQUlhaVpCdW9u?=
 =?utf-8?B?T0RhL1IwdGU3YXFKeEMzKzJFeG4reUoraXk2N2s1NG0ralZndUFyakdhc0Jo?=
 =?utf-8?B?K0E1Wnh0M1J2c1Y1eXFJbkt5UkZwTnpvdzJQUVUrdXBESnEzRXlGSEZReEJh?=
 =?utf-8?B?dnNCeDkwYTMrOVBpUzUvQzRPemxvWTNyUGZJOTNSckJscGRWL2Z5UW1GNXNm?=
 =?utf-8?B?b2RCNFBKdU1ONGtHT1R5bVh1NjhhUFZQZG5vc3JKVEczSldTR0g2NUhVSEpm?=
 =?utf-8?B?Z3UrVm1PL2JUYjVVTkVibm1vaThJK1BERWRCQ2h3WHFSTUt1Wjc4UnhoenNI?=
 =?utf-8?B?ZlFCeDRYamRNcDUwSndzUjVmMm9JMmdjUkd1K0ZsS0l2b1cvQWlpc3lnaFlv?=
 =?utf-8?B?VUlLNmZSSUdUSDlQTnlacmlhSCtKNTFSMUZROGEzT2twWDZNaWN4K1BBL2ky?=
 =?utf-8?B?ak1GMC9mZjJXWnVaYXlhVmxQa1dDWGRnQW1TdUlCTEEzZEx0eU5QT1dqbkdE?=
 =?utf-8?B?MlVsQ1ZaV2VWUjE4NUdrNEo5U3hzcWs4OC9NY3RBSkpIS1NJd1I4WFpNV1Fr?=
 =?utf-8?B?ekduRXJscXhUTzI2SFJxTkdDck44U0JCb1V6M0F6NU56dFhxZnl1cStOcERV?=
 =?utf-8?B?TUU2QzFxTVpPL3BPTWN5R0xuK1BEQVZpemR3S3FXWWJya0lxWTVHTEVqb0ZQ?=
 =?utf-8?B?a3lobHR4MEJ0VFpXOXJpSGpwYitIaHVUU2VvV1dLUWRjWWhsSU5VaVZydUg3?=
 =?utf-8?B?V05zQjBaNHNNR2dzMy8vOXFpYXhJcUVkNnFlR0UvYTdNZFhOQVlVa1BQK1hB?=
 =?utf-8?Q?PxwgkKgwYogRtimutIIOCh5hrm6ZuerH?=
X-Forefront-Antispam-Report: 
	CIP:13.93.42.39;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu12-emailsignatures-cloud.codetwo.com;PTR:westeu12-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230040)(36860700013)(14060799003)(1800799024)(376014)(35042699022)(82310400026);DIR:OUT;SFP:1102;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2024 13:38:45.4188
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f328b6a0-6ae7-429d-2bcf-08dd0fb1fb30
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.93.42.39];Helo=[westeu12-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF00000198.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9962
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Nov 2024 13:38:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64372

If you're serious about boot time (and image size) reduction, your first st=
ep=20
should be to create your own DISTRO and your own image recipe. Scrap those=
=20
first words actually, I think this should be the first step in anything tha=
t's=20
to become a real product.

It's much more efficient to start empty en add what you need, then to start=
=20
with an everything-but-the-kitchen-sink image and then try to remove things=
=20
without breaking other things.

Putting things in ":remove" overrides is not going to work as you expect. I=
f=20
package X has a run-time dependency on package Y, then package Y will be=20
installed regardless of whether you added a bunch of ZZZ:remove +=3D "Y" in=
 some=20
places. To get rid of Y, you'll have to remove or alter X.

Also start with analyzing your boot time. I've seen projects where people=20
spent weeks on removing services and gaining less than a second, while they=
=20
left a "bootdelay" active in U-boot. Of total 10 seconds boot time, three=20
seconds were spent twidling thumbs in U-boot. That's a 30% boot time=20
improvement in less than an hour's work.

A raspberrypi 4 for example will spend about 5 seconds in its closed-source=
=20
firmware at boot. Some things are just beyond your control.

On many embedded devices boot time is dominated by the IO speed of the boot=
=20
device. Just changing your rootfs type from ext4 into LZ4-compressed squash=
fs=20
often reduces the boot time noticably.

When using systemd, "systemd-analyze criticalpath" should be your starting =
point.

M.

On 27-11-2024 07:25, sateesh m via lists.yoctoproject.org wrote:
> Hi Team,
> I want to improve my boot time so for that I want to disable few services=
=20
> which is running during boot up. I want to disable below mentioned servic=
es.




