Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.1417.1614020747947271674
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 11:05:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ni.com header.s=pps11062020 header.b=nsg/kZ4Y;
 spf=softfail (domain: ni.com, ip: 198.145.29.25, mailfrom: prvs=7687a5da81=alex.stewart@ni.com)
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com [148.163.158.57])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C6CC038C07D7
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2021 19:05:43 +0000 (UTC)
Received: from pps.filterd (m0098779.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 11MJ4kow025796;
	Mon, 22 Feb 2021 13:05:39 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=to : cc : references :
 from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version : subject; s=PPS11062020;
 bh=U+217goJDyz82xpddh3QotUD8/ykRCXGltbVPMb2SdQ=;
 b=nsg/kZ4YmzRWVSNnPkBJjRvsvnqoCxkot5cwyQ6Jw5xNYt7oB3agfs+OPRzXfcEnd3cI
 PS7RgFzM/ZL3I7X5TlQIkNAp7ipUS5YvEMaW0/AROVBRGYr8s47d2DPlq1DNHNFq/Vxu
 0+lKOPPDUDBOTerFOp6u2/mNO27/SDTm0eND12K5hFzz2R6YEMELGw7/Hiv1ucPyZHUc
 WZe9wYgm9mCYWp+h3ZBzLZhDKJYr9+BpqvkIk9hB4NE13QFEcIT0jSuZ0ds7qNL1Dlpa
 kDHGcawpkZgegpGlAr+m8nbzZgovdsuzIRhaWyhA1DDtx5vE7lSefKCEOlqBYKTPRI9o lw== 
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2170.outbound.protection.outlook.com [104.47.56.170])
	by mx0b-00010702.pphosted.com with ESMTP id 36u14ctta0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 22 Feb 2021 13:05:39 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ob4nuzcuInHHOBOFu0VBi9n67SJsHeUTu1BzPRwxreVAC8wu/g1jNsD9bY7rES0ur+OYZFGKB78YghmoABn6c+/wYWbxip7juIZaxQbJ1S5swGMwOLh/daxnWMw2gSimfDHQ16D1/pHGhjqM7NCTNspkkNlZpWM8SL+SwYDLuvVh2jCPmYNfioSzJnsO/kIqhyubctT3mo0FD6y3qI7k2JTPVQRm1MbTArOuu2VV/CFlIjxJNKVFDTlXWiHiKoOQm4Kl7T/7Xw//C3dVoOtUNslHU61azwPdeIoPzq9BgZiGKWFxRnDR2auZiBXVUfkbYjWhoeBaCJuZHYTzTiF4xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U+217goJDyz82xpddh3QotUD8/ykRCXGltbVPMb2SdQ=;
 b=FqO12hAyxvZLCf0KgRN7NQEp5JrQDfqTb70upj/J+oKUsQKQeavlp+s3wUyzqXs1XUX0FliOlQuzh1lVbmoFfvqB0NMf06a9+2g3j48ps8bRW/iWW1omunLohyieDNbWPeoyIk7hbQtIAkR9YQPjyGFD54xgnkNW/9hlyrYzxwNlMyLAuMEbu2TgrDZDE840ph69i+mcLuI3UFCfxdtAYaaER625lYrtPDtH1IEm2/lB6tSL2mXDV2CPp3/RPkAEbMSUeki5TnLZrHTss8icgl5r4R1waZzjrR9NGaoGJYxpd1uyIxT1y/d3UQLCDTaAAyhXO2do+lFks35057hs3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U+217goJDyz82xpddh3QotUD8/ykRCXGltbVPMb2SdQ=;
 b=Cp8Pw0J2RU2aRSdxr71p8ohDks/NEow32Vi/3w+3wv+BgKHw452sUcmNTBuUglA6+3rats7qvAtWo3Ru4iMTC+W+GCI2B13Ju1A4lpW7DZ+vGg2/a0lMNLmfUgBLO5es2UlGmwPaNjKbJEpzahVuNchVnuKsTWixEojutz4jcSA=
Authentication-Results: hermannch.dev; dkim=none (message not signed)
 header.d=none;hermannch.dev; dmarc=none action=none header.from=ni.com;
Received: from DM6PR04MB5306.namprd04.prod.outlook.com (2603:10b6:5:10f::25)
 by DM6PR04MB6444.namprd04.prod.outlook.com (2603:10b6:5:1e3::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27; Mon, 22 Feb
 2021 19:05:36 +0000
Received: from DM6PR04MB5306.namprd04.prod.outlook.com
 ([fe80::85b8:7cc:802e:d31]) by DM6PR04MB5306.namprd04.prod.outlook.com
 ([fe80::85b8:7cc:802e:d31%4]) with mapi id 15.20.3846.044; Mon, 22 Feb 2021
 19:05:36 +0000
To: opkg-devel@googlegroups.com, Ryan Barnett <ryanbarnett3@gmail.com>,
        yocto@yoctoproject.org
Cc: Christian Hermann <mail@hermannch.dev>
References: <20210222130934.9213-1-ryanbarnett3@gmail.com>
From: "Alex Stewart" <alex.stewart@ni.com>
Organization: National Instruments Corp.
Message-ID: <d53b362d-2494-5bca-ded9-a069ecd39e4b@ni.com>
Date: Mon, 22 Feb 2021 13:05:34 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20210222130934.9213-1-ryanbarnett3@gmail.com>
X-Originating-IP: [65.36.69.14]
X-ClientProxiedBy: SA9PR13CA0121.namprd13.prod.outlook.com
 (2603:10b6:806:27::6) To DM6PR04MB5306.namprd04.prod.outlook.com
 (2603:10b6:5:10f::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.3] (65.36.69.14) by SA9PR13CA0121.namprd13.prod.outlook.com (2603:10b6:806:27::6) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.12 via Frontend Transport; Mon, 22 Feb 2021 19:05:35 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4e005ecb-fbf8-486f-58d8-08d8d764d60e
X-MS-TrafficTypeDiagnostic: DM6PR04MB6444:
X-Microsoft-Antispam-PRVS: 
	<DM6PR04MB64442B8425D0EF1FCE1F59B8FE819@DM6PR04MB6444.namprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2276;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3ka41k86GNp5+5gYu7ZsHoxNLvbNmGK+nZALNpAhSOBzqlIBl9KXTLowxEHQyXmxBxSEjMEI9S7Mbv6wVeptvqe4I1/4wYt3ADzRS4aUiHoFI7hzHyw9l2/R6N9HBU2qxMizzSravrRBmvBtHpXmhWRFNjYTwLNkJa1VB5Y2mpR+yusozgE//cImBIXr86ktXUH/BX8GEfeSah2TYuqfnioDe0wHaS0Lsh6qafhfpI+6dCEGr5fUPc9XAhN0abODMGBmUNeYHQ/F1m65g1+f/6YeA809NXmH+TFC7+r78eSeXUZEePHQkm1Jy2OMOlZHwrfo2FU7ed9deDg/G2GjrvCfmmH1tY2dPcFXz9hJ7iWtcYUhZbffNnpr+AUjpEh1kaMpRpUoc0Mwd5VB3jM7oeycZqdJhdApRpozQqU08DxxAtotYUGgeFN7NmJmzkECO0vNTIkHyXXdSGc7eAbvvTldjQ3c3IlFBk4oWzS5mlapS/B1LFiINoKxBKalncJwH2G98J+KV5EnBB4rzb2171y5bmxTCuV4qKjSQ/8d93nJzQ+DKZ8p1aPsv6XmWq/wJecKq4Ynf1rJL96Z8DnTc5df6KXqT9kuwaJ3jFaedMIuiXGvnQJF9AF1d0Gh6fgTRqW03ntssUwNufuwu44P7A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR04MB5306.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(366004)(396003)(39860400002)(376002)(136003)(8676002)(26005)(66946007)(66556008)(66476007)(558084003)(86362001)(16576012)(316002)(16526019)(31696002)(2616005)(4326008)(5660300002)(6486002)(2906002)(36756003)(186003)(31686004)(8936002)(478600001)(44832011)(956004)(36916002)(52116002)(45980500001)(43740500002)(15477505002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?aXUza3lhbmpzdU1TR2ZiYmdCeklybFhnZWhTVEJlck1RWTVUNmxaVzFHZ3kz?=
 =?utf-8?B?N0FsNmZJMFpWVU9QNjdwQzNLUEZtU3E5N2crbkNZU1UxMFZtV0ppNy9wRGo0?=
 =?utf-8?B?cFUxNFZwdnpTTTM2VmpMVVZhRHRjN3lZbXpkcE1YMS9TMDl3Z29OU1RxcHZ1?=
 =?utf-8?B?eGJ2V3pseXVQd2l1SDFGRktJcWRvUTFVeCtuaFRJb0llY2ZkdFRLR2Y5dy8w?=
 =?utf-8?B?NFFaM2NtTThSa1BwQzNTZlkzY0xlWGJnYWlNR3AzT0ZobDVQNzdpSUxxbjFK?=
 =?utf-8?B?L1Q5YVdiZDVTTm9tbHp2ZVBoL1BnUVhwYXoydFJab3c5Um80L2pyOHZkMTh4?=
 =?utf-8?B?UmNQSVhqVjNVQSt0VmFZT1U0Q1Q0bnljRVVDVjhjcG9FQlZxZ0ttL1dva2h2?=
 =?utf-8?B?WDJhaFRpVW8za2oyMHRsZjVvM0RpdVdaZGtzaGp0UGhnSU5aSFBrQkszQTBK?=
 =?utf-8?B?K214cndqazdjUThsaCtHSzlOYkkrR2daTmRvbXExSTU1RVNkbFRaZlBQV2ZI?=
 =?utf-8?B?SHdOMkE1bVlFYnZyb3o2NlZldEhZSzFGL0t3Nk5oNEVRQ2hYenZVcXQ1Ykhz?=
 =?utf-8?B?blk0WG5UT1RDTi9vQVFmODVpWkFwWFl4dTRaUGNkNEQxTkdrYXRweVlvWU90?=
 =?utf-8?B?T09mWVN6cjFHdUZ4TEhiRmlwNnhzem5vdGg3N2VCYks5QmsvSDZPNU1RcVRa?=
 =?utf-8?B?eENQQ0lyUitOYWNWUUx2YkRZUTJtZkIxU1ZuMHNJMUljN1JldWdOR2wvZnFB?=
 =?utf-8?B?U0FSWlhMRjJjcFh0cncrNWNSWFZ0Yk83UTc4MVNVYWF5SDVBYWVHa081R25B?=
 =?utf-8?B?K0VsWTZCdHlKQUc2OUIzVGpXRzc4Rkl3OEJLYUJZY21ucUhBNkdoam5rNTNt?=
 =?utf-8?B?SkZuM24xdWh3bHAyWTRmYzJWSE9SM2p3dTNiT0RVY1paYXdOY1hJWmo0MitS?=
 =?utf-8?B?VVdvdGFBSnNvWnU4ODVqWUIzNk15LzRiYUQ5TnAyVkNoQXJNVkkxamk0M21O?=
 =?utf-8?B?T3NwNEFIS3BHcHFRNWgzRTdvK0doSWczcFJNT3hNTG8vcGJFV0NwUllWUlpV?=
 =?utf-8?B?NG5DWHN6TWJGb0tsZVdESVhkcWppVDNEaEFPZGVoT2k0djY0VmNuRk13dStN?=
 =?utf-8?B?U09mdWlPT0Zkb1VNQk4wZWRVTlFhVXB0dDZTeHRiejRMcWtvRXgwRE50MWti?=
 =?utf-8?B?N0Fnb2FjV2F3Z0xXNmV2RHAyN3p1UTNyTE45VTBzMG9ncnQzSE90SCtCelN1?=
 =?utf-8?B?eWZ5Z1QwTS9nUWY4VVdVRzhWS2NnR3VWcElJVGNtTWhmeHBjTnNhZ0ROSHRt?=
 =?utf-8?B?aExiK1NEcXlpWVBqb05kVTJaTU81MjQxakluSkVFaHV2ZFFzaGE5b212VlZP?=
 =?utf-8?B?aEROZkVlSndwbUtDVjV0aDVzd3I2NitLWSs1NllrRG1Fak5LUjVaczNPeE1I?=
 =?utf-8?B?SGlDZnR6NHB2SXVzUVlvaFpldDNQYWpzRTZod296RURTaThHZ2hGZ0YxdHhs?=
 =?utf-8?B?VmpCbkM0cWVVNjRRWC84bmh5aWtPcHhyUGw5Tm1JdGEwZ3JUcHpDUGJCOXIv?=
 =?utf-8?B?TEZJOEZzbmFRMWNNYWlqaVdJUG5SMUdOODNLR2NLc3J6YUloRm1BWmtEelU1?=
 =?utf-8?B?azhvb3pmR0IvakdoeWZmS1dPd0txc09KK3YxTVlNVjZwMEhuMUlUUDI3T1dl?=
 =?utf-8?B?OElHNWNoY3BsQ0VrMHQ0cVBCNDhacmwranRJWUkzaG8xTEZVMmRGcjdSbUFC?=
 =?utf-8?Q?QmFdAgW8IjYyx6VIkGXEa1/p7CGNL0oMsxE2/Rg?=
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e005ecb-fbf8-486f-58d8-08d8d764d60e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR04MB5306.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2021 19:05:36.2919
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F4aywGEvemzLXLza04ybUcRWn683y4SqCTpDeI/7QOHrfYk3sE8jKPEFG25yNiIDQW8Tfn58saiYU2wFQSFNuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6444
Subject: Re: [opkg-devel] [opkg-utils PATCH v2] Makefile: separate manpages and utils install
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-02-22_06:2021-02-22,2021-02-22 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30 mlxscore=0
 phishscore=0 impostorscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 suspectscore=0 clxscore=1011 spamscore=0 adultscore=0 mlxlogscore=917
 lowpriorityscore=0 classifier=spam adjust=30 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102220168
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hey Ryan,

This looks good to me. I'll merge this patch tomorrow, if there are no 
objections.

Thanks,

-- 
Alex Stewart
Software Engineer - NI Real-Time OS
NI (National Instruments)

alex.stewart@ni.com

