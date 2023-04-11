Return-Path: <ovidiu.panait@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D25AC76196
	for <webhook@archiver.kernel.org>; Tue, 11 Apr 2023 05:45:20 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.7023.1681191912777417239
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Apr 2023 22:45:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=p+iKRe5j;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=34653fc2fb=ovidiu.panait@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33B5Zw7T003982;
	Mon, 10 Apr 2023 22:45:11 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=message-id : date
 : subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=oymjYMsHKZgslp+N2/8czhcElgxnOaQ6FLXu1D4S6eU=;
 b=p+iKRe5jH6CF8Ul+JqSqWV67tElqO2AVP5rBqg+Ta1N9+B5dCA7Us1hI85gk+01eWRdV
 v1UHPMpNL6DibWTIpxH6pDkYdMN8lHbWZFw9W1/eR6p/f+Uv5kCXEATw4TKv/9ns7SUL
 1G/HC6i8B46s41lcT7BEGQpp1uFGlJxIxaDMQEQ/vzHf8v25ATVgi8bsWXaTwJ5QDjfs
 YdY2Opk9lSY+PqpGibv5fN9TufEvwsC9gM9L19HWh40fTh7uWux7boA6oRv4nElqCvQV
 +Z9aWOjnZoeK037UfU7XI2qEnxbCn3T+ag/gQ60LDV5BIGa0PA4ooRgBFrySV4zjrofZ hw== 
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2173.outbound.protection.outlook.com [104.47.59.173])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3pu7snje99-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Apr 2023 22:45:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P4s7WVmQfCrIKV+f2zjTyl5PsITYlYG3pGTHYgff0GmSe6FahcoW21zVE9zCK9x/F21g7y/76UyDAmJGYWvDV/hVj27Fq1Vl4f/bXy/54/DJ7/AZjgr79S7F0KcVsPUyT/LV8QF/Mri+MHjONh5c7msscOrn1ScH4gIjy/C5WXQYUWSRtNrQkfCncnvja7sR++qFovCpNwZ7hBWxhb8ZVmcKzm/RhAmPTYjZr0bbz0JazUhe7B9qedtBWyV2hC5CObc0+m8OYxA13LdH/KCdQfqYgrXAE6H0yQAfv91+2wrHoRJy6dZ1uLWG4DebeJ4iNXCsVozeEVW0OQsk+zNXnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oymjYMsHKZgslp+N2/8czhcElgxnOaQ6FLXu1D4S6eU=;
 b=V0K0l1IuYz5Hj8KwQ2rrPopki5Z5PZd5xpEPKigrBrV7YX1lM1bx2iNJyL6zfaBKelX9Ka+EemoH/sKW0Qc+5EkkoxMlYePtDJNz731taKSSH9dzhjYgLjcSPcsEBX879PuyWiRPkliMYc8K1HSRq3gNhzUMeUtNrbj9jiTTxnxNfPdeK2TlyNjV3GdlZ5zRAEAiSkI4+Ci4oZ9Z+Jk7DkjFj4ohwIpWZtvGFThHixsSIYRC1nxgi6ntOBmxW8MwTFgD3dTCOmYuBH7mpCHpdINoMN9qrFdQRRRK1Z1m4EVZ1gI9Nrrd+JSPlxPhNGJGS1XNkuTZldpxqCewR+3Atw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM4PR11MB5327.namprd11.prod.outlook.com (2603:10b6:5:392::22)
 by DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Tue, 11 Apr
 2023 05:45:09 +0000
Received: from DM4PR11MB5327.namprd11.prod.outlook.com
 ([fe80::60b2:e8cd:1927:54f3]) by DM4PR11MB5327.namprd11.prod.outlook.com
 ([fe80::60b2:e8cd:1927:54f3%9]) with mapi id 15.20.6277.038; Tue, 11 Apr 2023
 05:45:09 +0000
Message-ID: <a904c926-2df1-a084-28c3-2d7d336c2f08@windriver.com>
Date: Tue, 11 Apr 2023 08:45:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [yocto] [ptest-runner][PATCH 1/2] utils.c: rework pty setup
Content-Language: en-US
To: yocto@lists.yoctoproject.org
Cc: anibal.limon@linaro.org, limon.anibal@gmail.com
References: <174E85801C847E62.22739@lists.yoctoproject.org>
From: Ovidiu Panait <ovidiu.panait@windriver.com>
In-Reply-To: <174E85801C847E62.22739@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR08CA0152.eurprd08.prod.outlook.com
 (2603:10a6:800:d5::30) To DM4PR11MB5327.namprd11.prod.outlook.com
 (2603:10b6:5:392::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5327:EE_|DM4PR11MB6360:EE_
X-MS-Office365-Filtering-Correlation-Id: 986087e5-f092-4dd9-79ab-08db3a4fe8df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	lG3Df3tkQXX1/YVgFGcNZd+gJGtRRV2ai6JsEsDoWmICxx7SgP8vd+o15iC06/20s8YYkLI3ovEIcd16/8IUkI3jlZkWSCPCxllHvT91MCIVBVtWV90X90S238OI8sbnlk0rGoM5r4GJq4ppnzjjl+ao90Kvdx5ZnhfCWfusSf6xy6HNa914d5+bbr1cIodFA3tRYnX2nNYYuloraMZziUOvFtOMG4KK2oTLvH5kXYjCB38KP5CaAbUZ8gi5RpFx62Y3ylBV95gqXno57HKWc3PbG6xjHJfFut+jKT3vwnovC1XqPU3Ff/nZ9BxDg0O/pss5C0AEBjGgbhIXUyeWZpi+iGCryzV/nabmQuC/E8jpnh1UCF8TQGcgXWTAklexpN0HHwiN5zg1xEQaDoY34fxoKsRWWcFuSwHy+jrOlWaCTL3MiU8GMq/dHdzI/xmYRZM0qSgSb1NvxsxYeVrBzcb0xKcgcQ/PxbPQUKxWeDfjXs175UZtCv408MTV9YWX7i7KZ3JA0zSYRgTK3wQq4Ps9za8tZP4z+aza7q7aXEeNy2nmQLI1dtJfcJTzJM6ofS6+2AkRsV7eFuw+IPxcxNDbfYEanyq17mOyf0AqSupY6KdvpRr1GHFcIfIGskbyZGm37fx+vsGepFghipoiGp8uRqUNU9aDvQLUCaLnS8c=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR11MB5327.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(376002)(366004)(39850400004)(136003)(396003)(451199021)(86362001)(4326008)(2906002)(6916009)(8676002)(38100700002)(186003)(66899021)(66476007)(66556008)(66946007)(53546011)(31696002)(6506007)(6512007)(8936002)(478600001)(44832011)(316002)(5660300002)(36756003)(83380400001)(41300700001)(31686004)(2616005)(6666004)(6486002)(966005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Q3huTS9uWnpVRnRlYVZGSEgxRVJCK2Rnd2ZYcUlta3BJTUhsZUVnVUxYQnNw?=
 =?utf-8?B?TGNVRkx3bHBWcWFiQTg0MmJxaFlkMjlqL3dCVUU2TWl1ajlpY2hTMmljRjk0?=
 =?utf-8?B?TnpSSXlWN09ta0t1NHZxV1pxNS8wZjdkWEYwUXBJZk91aTZ4aHFrQ05wczUy?=
 =?utf-8?B?VUVoaTRuWnB1RjVBbmU0UC8rVkRmNEtIcHhNeEVoN2tQc296aGZWU3V5SCt2?=
 =?utf-8?B?UGpSVzJ5cjVlTXlzOCtHb2FJdGxkTnJ4b09Sb2xtVzRWWHh6TmFPR1VlTFRu?=
 =?utf-8?B?TmlOdGJXN0JmU1E4WFhIZnFUOTViR3RrS0l4NEVmSS9UYytoNXNsNy9DdUZu?=
 =?utf-8?B?LzVjRklLc2h6ZU5jVFhjZll1SENoL2FNQUZnMGIzdlBISDBCcUpDR1M4bGJR?=
 =?utf-8?B?QzJvQS8rK1VPWWxrelB3czZRR3h6MzQwUnFhcytIck05YThEUlZkdFFHY2hh?=
 =?utf-8?B?MEFiYXQrMkl4VGRzN2gvKzhCcE9mU1ZZRTA1YzFsVERqRlhaN2NJbGdKODZM?=
 =?utf-8?B?RDEwM25PMWZIcm14bC9pdlpoUXFVRnFnSVlURlNwMlF6N1lMbDVhQURpdmh0?=
 =?utf-8?B?eEIrQVNXcWJWQUx0VkZ4MC9QK3g1cnprTlBkU0JhVlMwTXdlZkYrVXVvLzEv?=
 =?utf-8?B?dXFTR0JsYWw3RjRLcm9lSXdDVzFSU1RtaWlnbm40RmRVOEJXNkY4NlE0MW14?=
 =?utf-8?B?OWQxeXZVSi9xbFJDdlVLeG1QRmhqbVhoOE1STk53ampoU2Z4WDBrY1BsamxY?=
 =?utf-8?B?dGdJRE90dFBIN1pVUXQ0ZkdTc1RyVmp5U0FVaHJYTjNJaVJZT01nTDVaQ3Fo?=
 =?utf-8?B?V3NJRDNMRTVLY0QvckRSNkFHMjBPdXZXMEQzYzYvRExpYkRYT3MyWGMyK0sy?=
 =?utf-8?B?ZS9xcFQ1dXg1Vlh3aCtQcDBtUnNvKzlwUWVOSlc2TTlLRmdhSE9CU0dVdGhm?=
 =?utf-8?B?a1VuakJFUVBPVjlGV2J3NU9WbHBmSDF4S1pycXVnNmZ4SXdSMnZiNzF2MnMy?=
 =?utf-8?B?djVTTE1tSXdvckhDcmsycFlybnc2czY5WHdzMW53QjJzanFUTElCUC9JR0xF?=
 =?utf-8?B?U3pQNTVBVUpVTFBsaGlKQkdGd0pXL2Zmem5pcThnQUlnNW5nc3czVG94Q0Zt?=
 =?utf-8?B?cVVuN09wd1Ereld5RkdsdGFHVkhsT2FYcWxCdTU0TG1zTnpQWWF0eFUzc0Nq?=
 =?utf-8?B?cHZkcFdXRkZDbmlaeEc5cGxxNGdhaDZqT1RQdXBDcmtaZGJTbjVIN0ErYXF5?=
 =?utf-8?B?MzM3Ukh0WW1qeDhLQlB5by9LVDRyc2w0Wk1WQmhkNTRDNVRmNHYrcWpodHZq?=
 =?utf-8?B?U254Ty9LQ0E1Z1U1MVhXWEhHM21kNEpWdk0yYzlLTzdxYUdic2U1b3NzT2k0?=
 =?utf-8?B?a1FqL2FZMStEZk9Ea0tHV3F5MlFCdzE1Q0MzMU9HYnU3SkdEckhwOTJqMHZz?=
 =?utf-8?B?V0YyKzZXTHlZS0FJbGVOYmsyWmQyR2hUeE03Ris1b2ptQnVxU3l3cHJNOFc0?=
 =?utf-8?B?TXdoVFlsZkR4SWNndHFvUHR5YmM3MkVaVjZKK2VUMUtndk93UnZGcVVPNS8v?=
 =?utf-8?B?U0xUTmtpWVlLNnZUVEFLR3Frd1hPYXlRZ0MwendXejFyTlpXb3FpeE50eTJW?=
 =?utf-8?B?bWcrOXNKak51NnJBN2ZoS2tjMm9la1Jwb1lLdi9YakZKSGFWUU1NK2FuM0Nq?=
 =?utf-8?B?Y0RXcmxqK0Zzdmd4ZFVwNnNObDBPMURVN0tqZ3dqYnBQRU9najA1NFVvOHlt?=
 =?utf-8?B?QU1hUm5YOVNlc0t3bEpseEdsaWI5eldPQUkxWUp2TGxnUlJoYitYbWlrNlc1?=
 =?utf-8?B?QkZzdVpiSE5CY0lyYk9JRFRTOVJoUWd5dHRPMFNCSEI4QjVNV2FVVUllcmdE?=
 =?utf-8?B?NUdJSG1aUkl0MEFzQnpjZjNwMVBrRENvYzQzZEZYT2VCZWNnd01OQVZsbEE0?=
 =?utf-8?B?WkZxalVxZ0Z4bkZ4eUdiNDYxVDVqQ3V0dVBDdXZ3Y3FIY3B1WktaVU1tVGNL?=
 =?utf-8?B?WERFWG45WkJFcUUzV0NMUC9tWmRTV21NeGsyRytMelduYzRDTUFSVEl1TDcx?=
 =?utf-8?B?aTRDNEhoaU5nM003SVZ6bmhPR3Uxd1NhQXlpUi9sYWFLdklJMjhXZ2ZHeHVl?=
 =?utf-8?B?WXFKVFg3RmtNcGJDcXJVYUZGcjJsbHBSTWM0ZWdteUJFZDBFT0Zydllkb3oy?=
 =?utf-8?B?N3paSUE3REUwYWZJbmJQelRkeHh2YTFhQlNrb0k5NitSaEdqYjNURFF5Q2V4?=
 =?utf-8?B?ZENWVkZnM25rd2ZucHhra1B5cXVBPT0=?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 986087e5-f092-4dd9-79ab-08db3a4fe8df
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5327.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2023 05:45:08.9192
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zPjLvOyNchFWAcV8aV/m3L043M57J1RfMiZ4ITbYlegWll8lWOVDYvuzS7J3IznAIzKLAU8DL4/sVh81cMy0NI+EOaFw32zRyc88QkOYiBE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6360
X-Proofpoint-GUID: kUickaFpQpckJUUM6Rke1TazlODmc9it
X-Proofpoint-ORIG-GUID: kUickaFpQpckJUUM6Rke1TazlODmc9it
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-11_02,2023-04-06_03,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 malwarescore=0
 suspectscore=0 mlxlogscore=999 adultscore=0 impostorscore=0
 priorityscore=1501 mlxscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304110052
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 05:45:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59668

+cc Anibal's gmail account, the Linaro one seems not valid anymore.

On 3/21/23 21:21, Ovidiu Panait via lists.yoctoproject.org wrote:
> The run-read bash ptest fails when it's being run by ptest-runner, but
> it is successful when run manually:
>   0 0 0
>   0
>   0
> -0
> +1
>   timeout 1: ok
>   unset or null 1
> -1
> +timeout 2: ok
>   unset or null 2
>   timeout 3: ok
>   unset or null 3
> FAIL: run-read
>
> The actual testcase that is failing is:
> tests/read6.sub:
> read -t 0
> echo $?
>
> This failure seems to be related to how the pty setup is handled:
> openpty() is called in the child process and the master/slave file
> descriptors are left dangling.
>
> To fix this:
> - move the openpty() call in the parent process, before fork()-ing
> - assign the slave end of the pty as the stdin for the child process
> - adjust the TIOCSCTTY ioctl call to use the file descriptor of the pty file
>
> Fixes: 59381a643e1f ("utils: ensure child can be session leader")
> Signed-off-by: Ovidiu Panait <ovidiu.panait@windriver.com>
> ---
>   utils.c | 45 +++++++++++++++++++++++++--------------------
>   1 file changed, 25 insertions(+), 20 deletions(-)
>
> diff --git a/utils.c b/utils.c
> index a67ac11..87ac20e 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -385,18 +385,9 @@ wait_child(pid_t pid)
>    * fp should be writable, likely stdout/err.
>    */
>   static int
> -setup_slave_pty(FILE *fp) {
> -	int pty_master = -1;
> -	int pty_slave = -1;
> -	char pty_name[256];
> +setup_slave_pty(FILE *fp, char *pty_name) {
>   	struct group *gptr;
>   	gid_t gid;
> -	int slave = -1;
> -
> -	if (openpty(&pty_master, &pty_slave, pty_name, NULL, NULL) < 0) {
> -		fprintf(fp, "ERROR: openpty() failed with: %s.\n", strerror(errno));
> -		return -1;
> -	}
>   
>   	if ((gptr = getgrnam(pty_name)) != 0) {
>   		gid = gptr->gr_gid;
> @@ -419,10 +410,7 @@ setup_slave_pty(FILE *fp) {
>   		fprintf(fp, "ERROR: chmod() failed with: %s.\n", strerror(errno));
>   	}
>   
> -	if ((slave = open(pty_name, O_RDWR)) == -1) {
> -		fprintf(fp, "ERROR: open() failed with: %s.\n", strerror(errno));
> -	}
> -	return (slave);
> +	return 0;
>   }
>   
>   
> @@ -441,10 +429,14 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
>   	int pipefd_stderr[2];
>   	time_t sttime, entime;
>   	time_t duration;
> -	int slave;
>   	int pgid = -1;
>   	pthread_t tid;
>   
> +	int pty_master = -1;
> +	int pty_slave = -1;
> +	char pty_name[256];
> +	int fd = -1;
> +
>   	if (opts.xml_filename) {
>   		xh = xml_create(ptest_list_length(head), opts.xml_filename);
>   		if (!xh)
> @@ -493,15 +485,22 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
>   				fprintf(fp, "ERROR: getpgid() failed, %s\n", strerror(errno));
>   			}
>   
> +			if (openpty(&pty_master, &pty_slave, pty_name, NULL, NULL) < 0) {
> +				fprintf(fp, "ERROR: openpty() failed with: %s.\n", strerror(errno));
> +				return -1;
> +			}
> +
>   			child = fork();
>   			if (child == -1) {
>   				fprintf(fp, "ERROR: Fork %s\n", strerror(errno));
>   				rc = -1;
>   				break;
>   			} else if (child == 0) {
> -				close(0);
> -				if ((slave = setup_slave_pty(fp)) < 0) {
> -					fprintf(fp, "ERROR: could not setup pty (%d).", slave);
> +				close(pty_master);
> +				dup2(pty_slave, STDIN_FILENO);
> +
> +				if ((rc = setup_slave_pty(fp, pty_name)) < 0) {
> +					fprintf(fp, "ERROR: could not setup pty (%d).", rc);
>   				}
>   				if (setpgid(0,pgid) == -1) {
>   					fprintf(fp, "ERROR: setpgid() failed, %s\n", strerror(errno));
> @@ -511,8 +510,12 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
>   					fprintf(fp, "ERROR: setsid() failed, %s\n", strerror(errno));
>   				}
>   
> -				if (ioctl(0, TIOCSCTTY, NULL) == -1) {
> -					fprintf(fp, "ERROR: Unable to attach to controlling tty, %s\n", strerror(errno));
> +				if ((fd = open(pty_name, O_RDWR)) >= 0) {
> +					if (ioctl(fd, TIOCSCTTY, NULL) == -1) {
> +						fprintf(fp, "ERROR: Unable to attach to controlling tty, %s\n", strerror(errno));
> +					}
> +
> +					close(fd);
>   				}
>   
>   				run_child(p->run_ptest, pipefd_stdout[1], pipefd_stderr[1]);
> @@ -549,6 +552,8 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
>   				fprintf(fp, "END: %s\n", ptest_dir);
>   				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, entime));
>   			}
> +			close(pty_master);
> +			close(pty_slave);
>   			free(ptest_dir);
>   		PTEST_LIST_ITERATE_END
>   		fprintf(fp, "STOP: %s\n", progname);
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59485): https://lists.yoctoproject.org/g/yocto/message/59485
> Mute This Topic: https://lists.yoctoproject.org/mt/97762755/3616968
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ovidiu.panait@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

