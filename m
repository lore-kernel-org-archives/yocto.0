Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.416.1616601394141301694
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 08:56:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=VukmGld7;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yifan.yu@windriver.com)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2087.outbound.protection.outlook.com [40.107.220.87])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1F6E438C08CF
	for <yocto@yoctoproject.org>; Wed, 24 Mar 2021 15:56:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jO9PrvPM42Zjb5Pwe/zSwb8nqb83ZNpaJStN5Sli4qcH9AjAv8LXFJvRbu+WCWKp4slFpEnLRUegWSwVK7xL7AONvNDjZ3/N30ZG7woO9eOQEal1cXPUw1VMU9Jh/ooc4qweVOV3QdI5yqkd7qgxgeNrBWuBhpP1LpvEQ1cTEbpVrOscIkh7oRD8KOVArX2JwdsFQoPGiNpvNjPsnCdoSImeHhInF2MW0z4iz/QkQjMaEr3oKijn56PXi3DOoQVKrs8vlYECtIInDEFCOMcp2Z4CK9qwnvYHj7Z2MVAeo16Z+S4vjLqJSMIr1m7tvBjO3N7e59x56NI3AVgAJaB84Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xEHGuGnOnA3WN9gIIuDJ+9xGrZ5Loi7dE53N9XybKqs=;
 b=EsWmdtcy95B0HzChylHaUw7Rbgo8Awk+S/wNMHRvkeCJwI/N+aUVvKKCN7F1NLe1UbD1o/79kXYuOJWiwkVaWd4TK5PYWWU+hKKKpbx+aTPLIs48oqOLeVrgSSML5Qv0xPPdLUiHuNfXKl9EZmfYNqRFjF0RSOSL9Ow2zweyhsHxFOD7q4A+01cjHG54rjZrLvQQ+HhfHVhysoXyjjftk+79Uhp/nPsA9MuoMPRa+4yAjrC3oGWLQVD/EiBKV1sevDOAFtRpQLyQ/+10r2QOBi/qBaFP7BJeETYOlRq0Wo3sDvx0SVSOGFTRRgDTY0ic0NVBIEh7JK4ceV4Txz9o7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xEHGuGnOnA3WN9gIIuDJ+9xGrZ5Loi7dE53N9XybKqs=;
 b=VukmGld7pWPV5hcrkfDf1PO6TjC5+cIx+moc+CNGclywW34zWN+6p8coQPA4omH+ei5/8YTKXt3XEA23Gx+9Mx5+wKNj9cvNAOaXrBpCy0MmKKFMhsYIysIfRhqGYQSUfHW1jVm33heHp/q1ILYexWqPnWLUOY2d/1gI+O5R9GQ=
Authentication-Results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=windriver.com;
Received: from SA0PR11MB4719.namprd11.prod.outlook.com (2603:10b6:806:95::17)
 by SA0PR11MB4669.namprd11.prod.outlook.com (2603:10b6:806:99::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.25; Wed, 24 Mar
 2021 15:56:31 +0000
Received: from SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::24e6:c5dd:a024:807f]) by SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::24e6:c5dd:a024:807f%9]) with mapi id 15.20.3955.027; Wed, 24 Mar 2021
 15:56:31 +0000
Subject: Re: [ptest-runner][PATCH 4/4] utils.c: wait_child reimplement timeout using alarm
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linaro.org>,
 yocto@yoctoproject.org
Cc: Randy.MacLeod@windriver.com, nicolas.dechesne@linaro.org
References: <20210323021038.1049654-1-anibal.limon@linaro.org>
 <20210323021038.1049654-4-anibal.limon@linaro.org>
From: "Yi Fan Yu" <yifan.yu@windriver.com>
Message-ID: <29a34816-abe7-e267-2f62-44bb891fcf78@windriver.com>
Date: Wed, 24 Mar 2021 11:56:27 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20210323021038.1049654-4-anibal.limon@linaro.org>
X-Originating-IP: [135.0.247.71]
X-ClientProxiedBy: BYAPR07CA0077.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::18) To SA0PR11MB4719.namprd11.prod.outlook.com
 (2603:10b6:806:95::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.42] (135.0.247.71) by BYAPR07CA0077.namprd07.prod.outlook.com (2603:10b6:a03:12b::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.24 via Frontend Transport; Wed, 24 Mar 2021 15:56:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d2796829-9c0e-4e79-3458-08d8eedd645c
X-MS-TrafficTypeDiagnostic: SA0PR11MB4669:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<SA0PR11MB4669748F2EB78CC92FC59B7C80639@SA0PR11MB4669.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	maaUHzV+Z5MzCBGfQBL0aHfaNAbncapLLFwulJpCWoCO21Osr3aitTeGeLPDpVufiIoz8+A6cVaFMj9MEXo1VpIxOsiigIfHwjz6TbzgYnW9n9p5db9xl7voT0IKnd0M/DCOjrQLJ/gDIZNlVTRNmwHCxzLHH801rDyi+MWQ0WnEcLs107cP1Yv9Fx/rvEja1/dk3pGOdv5BM0zYQKpzlO2UGRLqa8FAgQjv5v7u9LmyhkrHhsVKLmYqqydHYNfPH0baAQsQp/w2XcLf/epcSaExnZTuX1hQXhoMO5N/LkPQdDkE3m4EXxa7HZB927pu1RBg9halI1dBxTyqQjt8+zrZ8gZEML1AbCfovhjmZnWRbt2Mr93Y9gSQdet1Hli8EMOvZmSeajHNHyOzWkWZg+PqxnhZ7Y01ThXGVYEKUcP4SXZZDCplFsGorTvduaoHle7K2dCbaMZFAt+SNYxJnZD9DQa7tyED8wt7HZdPEVH0/DpV0JlK748WwzkZaUmXkx2oE0RgymDKycklJR32ZsEO/AzMj0N94lv0J8Pl85OcgJP+OILE5Ct+u/hVb+c6CsdbpJH8BMfJSxEnEfYx4fsMBxlKLkspTn3vpeqvKj3UFNQ/cG7xHT6tNAxMB2kAaZNYnILJa+JsLgPDIsYTiOKE/FEgSFqa4e+NK/qnEvqQfzIhVwyKfv0A6p2cTxg1uPLEMABJq571DbsitIIKEA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR11MB4719.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(346002)(376002)(366004)(396003)(136003)(4326008)(83380400001)(8676002)(6666004)(86362001)(31696002)(66556008)(8936002)(36756003)(16526019)(26005)(66476007)(66946007)(31686004)(52116002)(186003)(5660300002)(38100700001)(316002)(2616005)(2906002)(478600001)(6486002)(53546011)(4744005)(16576012)(956004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?dE5PeU1DVnlzczNQYko1RkpkbkhmT0VOeVQrKytvd3REQ0t3SU5tRE9uWnU4?=
 =?utf-8?B?dkFzTkxONTNGUGpnSlBmdmNUaXlQNnFja1BmbHlGM2dBamV1U002NE9IbzJS?=
 =?utf-8?B?Mm9Tblh1eXBydVVFRnQ3Tk1UMjlESk1tdDRJd09TM3Q4VHNGdFNuWTFGVW01?=
 =?utf-8?B?K1h6SXRnT1RIMjRWd0loeTBrWktkd2NmdERaazJpNGxURXJ5SVIyYU5oRmIv?=
 =?utf-8?B?MGFjN0NnanBMRiswVDg5dTlUbkxPYUxHaEFqYjNWRFdPMlJSOEpsMWtsaVJ3?=
 =?utf-8?B?dWgrM2VOLzhZUlBDTWcwQzErZTlwdU1ldlUvYllkZkNnelQyWU5TQUs0RXh0?=
 =?utf-8?B?RkhLTTJSaitCRWloaExLOEZnWUlCNDhmaEROVlN0WDdmclBOb0VESkZhWjVi?=
 =?utf-8?B?UU5ITnBDcW03aHpVTHZndDNhQnJLNUhxdmYzeG1MZUVlMS9YZWxwR2w3SXZv?=
 =?utf-8?B?bjVGVlRLUjV1MnVnY1JUQ0pGdmZYZGxXcE9UZGZCQlV1MjlBQUI4aDgzcC9y?=
 =?utf-8?B?SHZ1NDBvRVhiSlJLT1Y5Sno3ZWpQcVJwMUs3aytqKzdMbEdZY2k5c2p3ZVNa?=
 =?utf-8?B?WUQ4NGVkekEyVlRhYldaV1N2ZmY2OG5KV1FLa1JZSmlIZk5QaUxEOEdHL1RV?=
 =?utf-8?B?a2tpQVRDUzc0NnEvWDZJUVg2SFhCUGREbm0rdjNudGpIcG12d0dKLzdhRnJn?=
 =?utf-8?B?Y1pvZjN6MGI1NmxXa3RVeXJnMStwT3ljdUpUN2pseG5rcVBhbnI2UzFNUVJ2?=
 =?utf-8?B?S0J5L0dGMXVQMnNkMHI1dG9NTGtaMm4wN2trSGRsU1F6ZTd5MUd1TmtYNTRF?=
 =?utf-8?B?U0xmWmljU3B5eGNxemNFN2JiVEVyWmlmZTIzUG1wL3h2Nm1YTXlBQjJoUWVJ?=
 =?utf-8?B?bXUzVk1GVUZkL3Z6dTV6aWJFVXVMVnI5anB3OVpRVUM4eXlzSyszaGRKSzI2?=
 =?utf-8?B?OGdCNGIvWEJqRDV4RGwwVy9XOGtQcUJuY24zRU4yNFNINzdWQVdraFlmanlZ?=
 =?utf-8?B?cnlvY0l4eFVJaVUya0huem1nWUcvQWZGdTAvSjk4UWVRTU5tWHZGSTB3cWRK?=
 =?utf-8?B?Nzl5L0UveFZySjhjVTRVdnppYnlzYVc1TCs0NlpJVG1OOXRMYm5HVStSWG1S?=
 =?utf-8?B?THFyNVV1UXpQYzYxYks2UEI1ZVNlZVpSWlByQjJ6aXdDVFk1YXlNZjdkMnE5?=
 =?utf-8?B?Z0R2a09ZVkpPWjVCUjUrZGx6WUxhRTluWDZKVEJrTVpZVXFGRnU3aDZVcDIw?=
 =?utf-8?B?aG1QbW1pMmswNUZ2WVhJZDUzSC9zVFdvYklJd0o0Mm9MWENQYm14MncvVVpp?=
 =?utf-8?B?eVBXUUs1K3FFc2x0cFlSdUZ5YU5sTXRRUVhBYWc0M21PRjhqVkNOMk5oTHg1?=
 =?utf-8?B?RjB5ZW9ycGZlZldLU05zcHBHck0wa0VZdVByVnpGTmdmb05VR2tHSUxVN0RE?=
 =?utf-8?B?dHhVQ0c1UktrOTZQYWpIVktnVGowKzFvd0UyUHBNUnBhRitUcjhPMHEvUzl3?=
 =?utf-8?B?ZEVmMTVQWEpMc1dlRHNpcE44NnhnMTZwNGZxK0FIaXdGT3BZYXFMdFVTbnQ5?=
 =?utf-8?B?K29vQVRDd3dDU0NHY1B4NXJmY2tMN2swQ0RQUTNtUWkxUmRUYVpTcjVxTnNX?=
 =?utf-8?B?WXhzeTEwYXFyL3FWTTlBZlA0ZS9vM3FQWmlXb3N3RGpITHNJTmtweENVdlZK?=
 =?utf-8?B?aTQ3cDlYckdXaXkxQjNjZm1KYnVoa3RCeWdZNG10VG51bTlmRU5TOGZ2YVhs?=
 =?utf-8?Q?WoSd1ICQ5ncOAklfwDqzZH5IGtPlLIPLJcUoWGo?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2796829-9c0e-4e79-3458-08d8eedd645c
X-MS-Exchange-CrossTenant-AuthSource: SA0PR11MB4719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2021 15:56:31.3356
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UipxctAASfGTUaGRQiEWnYpIuC3WWyS/diFAzXd2t9xBDpvUyU82GpfjC9c5maQOngbkfFrl4IJfpWHH9tMDqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4669
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 3/22/21 10:10 PM, An=C3=ADbal Lim=C3=B3n wrote:
> Since we are using threads to read from child, no complex logic is
> needed for handle timeouts use alarm(2).
TY for the patches.

This would change its behaviour to timeout exactly at X seconds.

New behaviour: if test exceeds X seconds, gets killed.
Old behaviour: if test exceeds X seconds with no output, get killed. If=20
output is detected X-1 seconds, the timeout timer resets.
so a program could take 2X seconds and not get killed


Comment about the other patches:

We don't even need an extra thread because before the wait_for_child had=20
to do 2 things:

* read a pipe and output that pipe to stdout (child_reader does that)
* check for timeout (sigalarm takes care of that now)



last thing, can you push this to a branch (let's say) master-next, so I=20
can test it with a full ptest run.

yifan
