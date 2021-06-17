Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.162.1623936144569695338
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Jun 2021 06:22:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=U1/jUEE4;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=18029572a6=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15HDEY3m012021;
	Thu, 17 Jun 2021 13:22:21 GMT
Received: from nam04-dm6-obe.outbound.protection.outlook.com (mail-dm6nam08lp2048.outbound.protection.outlook.com [104.47.73.48])
	by mx0a-0064b401.pphosted.com with ESMTP id 396yn09p2y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Jun 2021 13:22:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NimXWy7nNpvqmT7J9im/sLbvsh9dI6GJ5aVsHo8yDM/xUPAnyLLhNPbN/D6sT+GFZ2E08PAnxL0PAl/6g7NKdpsQZtd9GXuTOqxy252mxZn5uySmH24q5aWsvdk2U5cHbm4BRgNBubrf8/iMrKv1xBZapap/wq0AuSl88M8zfZqjfUTbauqMZE366LigbrEjwaghnPoWfrt9G4C9xWScWF3sO+QbXKdAXBX7KJMg6oyd3hw3SZhfHSD8Ba9IVKQcYqhLmm3Rj6MugrhSv2FPuhhUeRXh/HFRoVWf+ZKCx2R6v0UjqRH7boWYiDe9XOWFCb9xe+ThrQWR1AwpEh5mMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zrIs4kEzFW3kC+l4bEokVZBnZR4oR+FYaqJ+ZXK+LXc=;
 b=A6cvVza6gycnVZEvF9XYEmjES5gVg+T7z/qPxL+nP7qAj4xQpCsUkwkX2Wsxw8GnVH6ACaGnCo3+adH+Ihum1+XBoGZewMpBlPud6eRNMt6v6WZ9nr1Y1lw8oDNCjJwHzMJVA3s2Ao3WhHWZ/dIaLMGC+6H+yEKA4PKe7sWma0lK1KJ+VStFxCNCLdPgUpUGqhI3y27S+FG5Nr6V2Tg4CxJV3cDnVnv21JsfhMfRDZgp8KbLbMWhtE+WQK3jezv+JP/TgYI8/T4TSMAgOhGBlcRsiOvhfgBuyhYAlu+OMSnMaBNjl7rt6oS7JZUmk2Kf3gAuSTMXpJmKXiPGu+laRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zrIs4kEzFW3kC+l4bEokVZBnZR4oR+FYaqJ+ZXK+LXc=;
 b=U1/jUEE4gYxgJ0hozFv8FCYrnHdBACpSqyYOQ8liuIdZH9eVGScHHc4hOXFGAUO/vaWczS6NqyMnuP0hZfBuPC4QJwHo7J0l2ZZeDS4U88I3VtsCC+/99oAEMukVKYZYhWLcshc3gyui0OnFTgp+VxsLcP6GsoHenIYqYbi5hHs=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BYAPR11MB2536.namprd11.prod.outlook.com (2603:10b6:a02:c4::32)
 by BYAPR11MB2920.namprd11.prod.outlook.com (2603:10b6:a03:82::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.24; Thu, 17 Jun
 2021 13:22:17 +0000
Received: from BYAPR11MB2536.namprd11.prod.outlook.com
 ([fe80::348e:1e92:4134:aaf2]) by BYAPR11MB2536.namprd11.prod.outlook.com
 ([fe80::348e:1e92:4134:aaf2%7]) with mapi id 15.20.4219.025; Thu, 17 Jun 2021
 13:22:17 +0000
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] summarize_top_output.py: add script, use it and publish summary
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
        yocto@lists.yoctoproject.org
References: <20210616084334.35144-1-sakib.sajal@windriver.com>
 <6a3aa522ba366052f6170e20f615d9a3d25265f6.camel@linuxfoundation.org>
From: sakib.sajal@windriver.com
Message-ID: <0b6bf0b4-384f-157d-6d0e-96f717d01b13@windriver.com>
Date: Thu, 17 Jun 2021 09:22:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <6a3aa522ba366052f6170e20f615d9a3d25265f6.camel@linuxfoundation.org>
X-Originating-IP: [70.49.163.59]
X-ClientProxiedBy: YTXPR0101CA0024.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00::37) To BYAPR11MB2536.namprd11.prod.outlook.com
 (2603:10b6:a02:c4::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.2.20] (70.49.163.59) by YTXPR0101CA0024.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b00::37) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.18 via Frontend Transport; Thu, 17 Jun 2021 13:22:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7aa7280e-a632-41da-c621-08d93192edaa
X-MS-TrafficTypeDiagnostic: BYAPR11MB2920:
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB292022EE2E6AE0C2F1DE70D3F20E9@BYAPR11MB2920.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	HzvoEeoI+2ihXYq53LPBmOcku6WDcZsa6rJYLTaDjzGfvRt8igyvqU1yqCuC/ycTNLdxivkRqKpsUrdG+1wzBSHYu87jMooW69t9jthdcmfAXSWPDGoKa3wOIH5wv0lscHIRQqSdj+HQAdxa7e+BQbhYiA7ptLgGdoNbYMASDOnEY9gfHqkl3smwxUe9OTV4o4adh6x5bsML8GtizqRWC3HqIE+mxA5DsaHsbkM3rclK71sIGIEk2PHndqzux39dpAq6hpZIKzfn5K+CiLlP1rgoSVv/TNahMkGarAyDzS0mukTdu+wcYTwwE7nkXAEP8jiEelFYP7EsoRo59LdrJrhTN/q6THnKMrK0WY9G6sMnmYG/0cgV3C2K47CGc8RzahGfNfumAJi22bgxD+Vb4Z1rRmcScMslnjF5CJvpEHOVdJPmtWcpazLyuqsw78vOMspMtE3jw34SLHVjRTyZ1HfwJ3GRWfO6/Wbg2pCzWMCk2UGRY6/yKmD5td6HOjZE83F2KQVHoSMLzXWbwmsklSYQQYW4m7k4JYEhUooDY0lLJy8pz9hFJWkaHyTpPLa2zp0OzRvoiJiMiFcTaLia5iDZoDOXrbqK9K3tIU3mfnOprABg5Dc90cxFp6+S8GtOZLY+WS+OjjIGAAZVhC+1ECNbq2UcwOzdMKEdakfDd5rrzkqjnWiIyQ3F9Hf9JFTWvSvCFqWVdfpPQ1jEV5QpkA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2536.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(136003)(366004)(376002)(39840400004)(396003)(8676002)(186003)(83380400001)(16526019)(5660300002)(66556008)(2616005)(956004)(38100700002)(44832011)(36756003)(38350700002)(316002)(26005)(66476007)(478600001)(8936002)(86362001)(52116002)(31686004)(6666004)(53546011)(66946007)(6486002)(31696002)(16576012)(2906002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Y0NWNmMzd2pYOEk2MmZQS2ZyVGdWUlZoekRiYXliMERPWUZQOGw5TG9BTnJy?=
 =?utf-8?B?emZ5TTRneXpQaThhZjhpcEZ3UGhYeHlnc215WktkdWpXam9pWnM1V3FFSVhi?=
 =?utf-8?B?WC9WTnFLYmRvWlhMRzFRZjB3YTgyNWs3ZTNpMmhqYU1XeEwwdEJrMUFaZ1Nq?=
 =?utf-8?B?eVhyL2w0RS9ocmF6ZnlIWTFtamh4cjFFVWZETENZc0swemNBR2t2ZHdxTEN5?=
 =?utf-8?B?Z2QrTFlSSk9YeFJDY0E5ME53U0ljSVdKbHZHYTdDOVRTWnJVVmd4VEhwSGRi?=
 =?utf-8?B?Yng5ZStrTVQrZ0JHMy9SK2xETWlvK0pJRGRMVHVVa0Nabjh3ZElGaXQwcVky?=
 =?utf-8?B?TnRESDh3UzZ6VGo3aUhSN0xZRzVydzhJTlgyUWErd0ZuMEllTjlVY3J1M050?=
 =?utf-8?B?UGdLNC92amtBQStpU0c5aG50cGZOS0VNVHZXMUVHRjNnUDVuZGh4aFJPT3Yv?=
 =?utf-8?B?cXdOUG5CakJGeG4vVitPRUp3ekhvRGdjMXpxWFVPL2hPV25pT0c1RFozbTdk?=
 =?utf-8?B?aEZkRDl0K2F2dC8zVnZIS2Y3alNoN0drZXJRSVZ0NEhmSUZvclo1eTdGbXVW?=
 =?utf-8?B?aEZXbjd1QWtmRkloUGs2bEVaRXU5a2RZZ2Q4Rkl4ZnU0OUg4SExrK2dIcW5a?=
 =?utf-8?B?cHdKR0ZtdmdvMEh1amRlMWpEQzFOVDhIK1FEakp3a3RhLzR4MlBmVXNXL0M4?=
 =?utf-8?B?clI2Z2grMVJNMWk4OUZIbUIrdDFzQlZFNktFVFZUOXFkUDMrRmppbGVMTGU4?=
 =?utf-8?B?a0tmaTlGTUFvemd5TUN2cldUZkJjSWNGcmtvWGhucXFCMkN4bUl4SXNzbFc4?=
 =?utf-8?B?VkJDYUVMNFQ2RExMSjhLNXBiejNyMzRncFhMWnhJV1d3UWc0UEVPNStOemU0?=
 =?utf-8?B?eUd4OTdPYmlERTZpeEhXOVNBOHJIU1Rkb0ErL1dHYmlYNzJkVWZCc0dUZ3E5?=
 =?utf-8?B?RkNxTjlBdndNSjcwa09IN3BQZWRCaGk0Tnl2dmU1bGRFalo0RzBJd3FpTDVk?=
 =?utf-8?B?WTV0WnJrYjF5MlVtOGlzcTg2Sy9acVF3ZzJGRnRyQXhaeUxSV1hac0xMTjdU?=
 =?utf-8?B?dmNWcEVDRlFxeUxSV1JBSEovMzhmSG0xcFJaNDVUUkw4ZUY0dGhPVlljQzZP?=
 =?utf-8?B?TFBROW92SmlsYi9JTnlGQ0thZVdjMGlsNkFBa1pBeTE3ZHk3TTNiNEJNQll2?=
 =?utf-8?B?WlBpdEg0T3ZHMFhORDFuQXJlTXJ5ZXUzVHpRTGVqeHpVSC9PaHlNQXgraWhw?=
 =?utf-8?B?STRVNnNkcXg2NE1ySXlseS9Yb0w1allOYjUwSExPUENTUmZGWnRBVnRtaUVk?=
 =?utf-8?B?WmIrOXdhSE4rdU5LckF0MFpCNDJuc3J4TFY1d3M2bXdwRmtiYVhLTkZvNHRX?=
 =?utf-8?B?RzNwUUpDcmthMjVlNE1Rd1pHWWM3cHkxdnZ0SFkrUWpIM2tiek5PWXcxdTlN?=
 =?utf-8?B?ZndBY3Rjd1BLNnUzbVZEdlZCdmZOV1BLTmozR2lsOWo0cTJLYXFVYmpOYmth?=
 =?utf-8?B?WHV4WFNWZ3YyUC9rcFVITkNvQzY3bmtkWFVxMjAvcHE2dFdvUUw0MDZQcGpY?=
 =?utf-8?B?eXloRCtiNm55Y3pENnVXdmZKS0U0UGthWUtHZUs0QjBQSy9jeEpMbHlqRjJu?=
 =?utf-8?B?SmZzOWtJVE54ckNUeGRQaS8zUmtPVnpTcC9yRHZ3cnVIU01RYzJaMnNtSWZL?=
 =?utf-8?B?MHRWNXFaaEZieldFR3pMK0xQU2E2UGJYQmdxZHhXSWJ0TUtQRk1KZDRJVjlo?=
 =?utf-8?Q?oBc3Z301hB7j1ger8N03jK7r7Yu9FyGEAlDqrM1?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7aa7280e-a632-41da-c621-08d93192edaa
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2536.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2021 13:22:17.4632
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q6mfJk7+xwNE80qfQI3sO1OtnPrNktrDR25JmC/AE5/xOVKiosj3tP3agsr4YsNyO5UJfmzPhj5SohqloYFf0DH1RrhjfK5SQSxCD2GasBM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2920
X-Proofpoint-ORIG-GUID: MyF25EZsg8z0M8inPYeGpRtczlaAk6bT
X-Proofpoint-GUID: MyF25EZsg8z0M8inPYeGpRtczlaAk6bT
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-06-17_10:2021-06-15,2021-06-17 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=999 suspectscore=0
 malwarescore=0 spamscore=0 adultscore=0 priorityscore=1501 clxscore=1015
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106170086
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 2021-06-16 1:33 p.m., Richard Purdie wrote:
> [Please note: This e-mail is from an EXTERNAL e-mail address]
>
> On Wed, 2021-06-16 at 04:43 -0400, sakib.sajal@windriver.com wrote:
>> summarize_top_output.py is used to summarize the top
>> output that is captured during autobuilder intermittent
>> failures.
>>
>> Use the script to summarize the host top output and
>> publish the summary that is created instead of
>> the raw logfile.
>>
>>
>>
> [...]
>>   if jcfg:
>> diff --git a/scripts/summarize_top_output.py b/scripts/summarize_top_output.py
>> new file mode 100755
>> index 0000000..0606a34
>> --- /dev/null
>> +++ b/scripts/summarize_top_output.py
>> @@ -0,0 +1,132 @@
>> +#!/usr/bin/env python3
>> +
>> +import os, sys, glob
>> +
>> +# constants
>> +top_header = 7
>> +top_summary = 5
>> +max_cols = 11
>> +
>> +# string substitution to make things easier to read
>> +subs = {
>> +    "/home/pokybuild/yocto-worker/" : "~/",
>> +    "/build/build/tmp/work/core2-32-poky-linux/" : "/.../POKY_32/.../",
>> +    "/build/build/tmp/work/core2-64-poky-linux/" : "/.../POKY_64/.../",
>> +    "/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/" : "/...GCC.../"
>> +}
> One quick question - the above assumes an x86 target machine using those two tunes.
> Should that be wildcarded?
>
> Cheers,
>
> Richard

Yes it should be. We've looked at a number of logs and I will send a V2 
with wild-carding for the cross-compiler paths.

After the V2, I plan on submitting patches for the following in roughly 
the presented order:

1) any process that is listed once (singleton) is not reported in the 
summary, but we are planning to make exceptions for "special" commands 
such as "rm" and "tar"

2) i noticed some zombie processes and it might be worthwhile to report 
them. Right now they are not indicated in the summary. Should we report 
all zombies or ignore the singletons?

For example I'd collapse [Parser-31], [Parser-32] into [Parser-N]


3) It would be nice to specify other builds going on and the top level 
directory

4) currently top does not show PPID, should we include the information 
in the output? This is useful for more context in the raw logfile.

5) show top 5 or 10 virtual memory users


 From the yp-ab index page, there are no logs for arm host. I will run a 
build and make sure the script work well there as well.

Any ideas on why the arm host builds are not being shown on the index page?

Sakib

>
>
