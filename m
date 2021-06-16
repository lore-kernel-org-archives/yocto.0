Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.9363.1623858106066230781
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Jun 2021 08:41:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=U0K8Ugfg;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=1801ab6b34=randy.macleod@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15GFSAKs029968
	for <yocto@lists.yoctoproject.org>; Wed, 16 Jun 2021 08:41:45 -0700
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2171.outbound.protection.outlook.com [104.47.58.171])
	by mx0a-0064b401.pphosted.com with ESMTP id 39728b0qgg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 16 Jun 2021 08:41:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hFEVTKrqryf0pXXi1lRaZpd8WVFgvLRhpL+6jKuLi2DfCyeo6iVtNgGWoa1CMGuyo6wD4q5wEsKT5ypBeE50Wi0tbJtLxDUUN59DVXvEZ86VY/nHXH5R0Bs2UA+60sNBwC9sbMPIXf94NALM7CTg42nRUlaeaMN1K26LYqFvcTOxNQCOvhul2Vk958rCjR9FNbg0ljnZY9NNgoCxTurbIb2ugdZK4Q8vJ+SdiQBoba9lBxvp0WA7MrtOenUYIxn5QLFXyv+FLruGn8rdlMnNpYwKfdyqp7GjBh/AP6DYxr3+iMmDQzlj7n3AAaCSnjDGyT/trVvq5/mvIxv/DtrIjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TOpfyHxVZiBoBIns3fO7A0fhUtJTmxalHkM3zwvdBkM=;
 b=h7TpodfUig8WB37N9My2LJOBs/3wxbaWs4+lER2I91KnKR/jFZEIQ1Af51jMoZiK6ojzVTZAOtUDP+2K+UtEXtKVdRxg+iY0m9Jw1oY6sf1NR31aajVTBAwSZ75mtDo/ML1NpPaIdzB0yUtjV7ITUY5rJH0T7RlK3e4mG2eKI7aqbAIxRGYfAlqhVfR63viZgdDwdWVgSTElQ2nQ2RkMhAPY98Ikz4A/GJmxtNO4ig05EcGQwo1wiKWmqY+sZtcCmt6DypgydCOA3K9yDp70QG1xZU0SehUYGVs6BEyWupaTYSid/8jslCbnZmvzoIWmxZeSoaLVF0fkVuaGnXIKFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TOpfyHxVZiBoBIns3fO7A0fhUtJTmxalHkM3zwvdBkM=;
 b=U0K8UgfgsCWaQ6DCXvT4ILM7YdKqd0QNCf3oSDEM1T3wZ9xaZQdZ1W85eH8qA9/WXsN0V3gBm9j3RecvxFdjqEt6QtxN+3MYEcfrV+tWjndnib49PBFw79OvmlWmAIInBXQIwE3WPPsZXXzzDNQEQY2MESodl2k5k8LbrfgFH2c=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB3865.namprd11.prod.outlook.com (2603:10b6:5:19d::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.23; Wed, 16 Jun
 2021 15:41:42 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579%6]) with mapi id 15.20.4219.026; Wed, 16 Jun 2021
 15:41:42 +0000
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] summarize_top_output.py: add script, use it and publish summary
To: yocto@lists.yoctoproject.org, Sakib Sajal <sakib.sajal@windriver.com>
References: <20210616084334.35144-1-sakib.sajal@windriver.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <ae3fc241-87ca-25b7-6355-b7326e10b7cd@windriver.com>
Date: Wed, 16 Jun 2021 11:41:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <20210616084334.35144-1-sakib.sajal@windriver.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: PH0PR07CA0107.namprd07.prod.outlook.com
 (2603:10b6:510:4::22) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by PH0PR07CA0107.namprd07.prod.outlook.com (2603:10b6:510:4::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.15 via Frontend Transport; Wed, 16 Jun 2021 15:41:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 01188875-e8d8-4b44-a28a-08d930dd3d21
X-MS-TrafficTypeDiagnostic: DM6PR11MB3865:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB3865A9E71A14F35CBDD71B20F80F9@DM6PR11MB3865.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+ctuP2KHE/nxwkKmmcBMV1qMwX3vU6esfPVcYzjwpxuEwLPYXqSmZVtDP86wG+sRhfP7sh+Dq9GWTBFrb6kxennGWoXfI489YoTPOp1kWFXqxcjdnGE9wZXw76xI6zlr+OVUSYMpBdvR6E2zWCWY2sGx6s9NND8Jv2d2TWKtd1FX9kp1aNnel/9yq8uAhHwEkTCDpl9SPvC0RRiiUnbphXYM1VgkPTOJh0O5GjAzN71nOOtKcdhJb7rCM2QtNKBTiej2xsRtfHYM0hmt5ZqBaLJtS9kkz4E0N/YNfUz3hEVhLNEXZDsZd+Zw7jFye2DJ4DFLMlKYZs2MOaTmaRdazKVdrrN97OEXfMWbLbmffCvkG/6LFh8F5bU/L2JcKyhBeja4rhzYKIvHik7Lvg0hN3hqeeNCSksWB46iMvPDiL7yjhB8/V/Jph26BsHZg0LJlCS1BaF0/wOVElKG31Fx9vYxfNVNFRbBl7CLGzrfUrVqTAHzveYziZwGOlFCt1p+BzlgPMCzvKHYsceDQEs9xF45V76+QZatSd/tabldW6r72ZsjCnCVxho9CmCDoN7X4uC7sVgg5AkYcP8N1wLcRFiZjSvOXWNEuFw1UyLRSL1KaRu7wpnt8GXtFGvXkdkPIV5gL9j2izJY2a0jYTVQG6ExA5XAihhBuZBCaAD9Kxb1vSD1KttIRz92gVZv1J7Vuy6vYfJju+oCbJ3RY3K3wpJiNmk6dEzjNNu9Blbk+KzlCaQeAnjshOzFkg8eS2QhDBljcvpQF0Gf24IEYiYyg9zjoQhN+XEOTN+U7x+ztjavievpq/b//+jymZDvhfiJ8hAZ7qYGk2qcifT7tx3tiIW+xgKFr2bDIUTLApniuXCXb4AthBrw9x05AIzrUBsM
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(136003)(39850400004)(396003)(376002)(38350700002)(38100700002)(5660300002)(966005)(8936002)(478600001)(36756003)(8676002)(6862004)(6486002)(31696002)(86362001)(2906002)(6666004)(83380400001)(26005)(186003)(16526019)(52116002)(956004)(2616005)(31686004)(53546011)(6636002)(16576012)(66476007)(66556008)(66946007)(316002)(37006003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S2xwU0gwTnRad2hJWTFoZUpROFFJWmdIOGtEZk1pWGdwZ3N2dkpCd2J4YmlY?=
 =?utf-8?B?TC9yT1RHeGhSclJXa1FZU1Y0TEczUFkyRTNac3FKcEkzTzZpOGlSQWxDQU5q?=
 =?utf-8?B?dy9sVmlZRE85cGowWTVVOUJ3Rmg4T3ZHdWZkS2FoVktNaERmME1tVjZkUzlt?=
 =?utf-8?B?UXFESWppTGxLQVNIS3VkL3B6VDZhY04zQ3h5SDZicFBmSU5KNEttRWZWUm5p?=
 =?utf-8?B?eGRGOTY5aTFKVERTZW1KWjNwdjg1MlpqTmRrb1lLVDFZNkNNb1pCdm1zODlz?=
 =?utf-8?B?QlBpTjZaYVVpL0x6YzlMNHB2Q0s0c0VBRjVLWHlack5MKytpNE51TkxiR2VL?=
 =?utf-8?B?bGFIRE1FOHRHMHFtbFVzcUR5enVmUkhvWS9MbGtkM1VpQjd0akZDZHpFT2pS?=
 =?utf-8?B?c2NYbFBaN2RJQjVLR1B5K0xZRnZLNThxSXpxVDJkL0FlRkFnT2NSaExLSmlC?=
 =?utf-8?B?RmNPeStsNmhzYmZUNkhYSGdONEhZbVpGRnExVzNaVVQ1WUh4SGNhcHNkT1VM?=
 =?utf-8?B?NHZ3bTFRVWFpR0ZOU2Q1c3cycXBrdGl1UjBhVXM1RFRaWEo4MjhDWUg5amNR?=
 =?utf-8?B?NkI2R1MwZ28weG5OQnlsOXNMaGcvWTVTUTkxTE5CNVdwajh4eDdXQUloMGJN?=
 =?utf-8?B?Q3dZN0JPYVplUzcxRmVqWVhGRmc3bXVFUGU2cWErT2hTZEw2VmJybWFtUFow?=
 =?utf-8?B?VnJtck1tbHk0VW0vYmliN2huNE9XcnpVRm8xeVFKUGloMUU1b0s1a21yQ2xP?=
 =?utf-8?B?WFF0aG5YVVBtU1pDRUthcHhxaHVQZWdMc25JK3JXeUM2bkJ6Qkl4MkJHVTJX?=
 =?utf-8?B?UmVNL2FVcERTR2gvakhNV3RzbVBMZ2pDbkNqdW04em9QclJqL0FqemJQUlhW?=
 =?utf-8?B?bmNNbkorUFpZMXBBSmhFVHAxRk9WL2Jwc2FxMmdSc1JEenJlTlBBWGQyenhE?=
 =?utf-8?B?TndSRzlHbyt3ZHQ1UnkvWmRBdkxkb1A5MTBMSW5UbzdiRm5QajFKeE5KMTlG?=
 =?utf-8?B?YmdOdHdjM2hJTDhSVHlkb3J4S2NUYVJSNFB1Q0UrS052Sm96NURVbm03ZmJL?=
 =?utf-8?B?M01ieEx0VytmL0VsS2FhU1FZVU1rNUlJUUVUajNuWnQ0eEp1Q0gwdjNYc0Nw?=
 =?utf-8?B?NXpnc1ZuRjFibE5KQk5XNWVSSTNDa1pmeUVtNlZVcWlhcE5peUQ2ZzJ1TThN?=
 =?utf-8?B?cUttT1J5aVF2N2JxSE5CNFJaemRzTTJGOVJ5S0drbXA0S2U1ZkRsUUpxajBa?=
 =?utf-8?B?ajRpdzZCdVZQQnBSMmdsYmpiUGFNWXluVEF3RkJMa0VOaVkwaDU2bnplK3VZ?=
 =?utf-8?B?dlZBNTN0eWs5R3dDdmVxZXVSLzVLQStQcHlPWkxnWjJXR2F6THoyU3hhamc5?=
 =?utf-8?B?dzBDcEgrWnNXTzRRRElBZXAvR05ZK3lUMGYzQjdtUmZhWVI2c3dqOUNtZllo?=
 =?utf-8?B?Wm8zUndvN0I1L29iamEvZUJJMUpmZmQxOGJQMWpFUVZDZElvTmFRTnJkMVYw?=
 =?utf-8?B?dWlNMlpadHd5Z3Q0cEI2MHJML3NuT04reWxtYldrZk1aQjkxUWQxZExhQ3dB?=
 =?utf-8?B?OWRFR1hpcmJNUVNldHoxNm9NcC84M2N6TkNZSXdwd0VSWUo2c3VnZk0raGZP?=
 =?utf-8?B?UVlEMnZkUDZ0aTNUZ0ZHb2lMa3ZjQ0Z0LzRTOGNEeEE1amhhMkl2eVJBYy9s?=
 =?utf-8?B?TWtwd2h3WkhEUE43bGdqYytScDVXQWhjZXVOK0hmOWhXc2x3blN2Qm1hclV2?=
 =?utf-8?Q?51HR1oEvAMtXSNz8r6gqq0lH8Pg6hLUgSsYjwFo?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01188875-e8d8-4b44-a28a-08d930dd3d21
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2021 15:41:42.2895
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MIfILmyIVupR/9ZO54YZbzVgbbxmjIeuQf18exCJyWa4ru6aImlGuM6g8ihP2Q7CxW4iGNHHisWS/U4zYtys1LY5ZomQtFSiXw6bxBT5lJQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3865
X-Proofpoint-ORIG-GUID: 2o5Rzr8-0cZo246ygU1fVdx7-Uh67Y0n
X-Proofpoint-GUID: 2o5Rzr8-0cZo246ygU1fVdx7-Uh67Y0n
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-06-16_08:2021-06-15,2021-06-16 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 phishscore=0 suspectscore=0 priorityscore=1501 lowpriorityscore=0
 malwarescore=0 adultscore=0 impostorscore=0 mlxlogscore=999 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106160089
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2021-06-16 4:43 a.m., sakib.sajal@windriver.com wrote:
> summarize_top_output.py is used to summarize the top
> output that is captured during autobuilder intermittent
> failures.
> 
> Use the script to summarize the host top output and
> publish the summary that is created instead of
> the raw logfile.


Looks good Sakib,

Can you show people what the typical output looks like?
Is the raw top output still published?

../Randy


> 
> Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
> ---
>   scripts/collect-results              |   2 +-
>   scripts/generate-testresult-index.py |   2 +-
>   scripts/run-config                   |   1 +
>   scripts/summarize_top_output.py      | 132 +++++++++++++++++++++++++++
>   4 files changed, 135 insertions(+), 2 deletions(-)
>   create mode 100755 scripts/summarize_top_output.py
> 
> diff --git a/scripts/collect-results b/scripts/collect-results
> index 7474e36..7178380 100755
> --- a/scripts/collect-results
> +++ b/scripts/collect-results
> @@ -19,7 +19,7 @@ if [ -e $WORKDIR/buildhistory ]; then
>   fi
>   
>   HSFILE=$WORKDIR/tmp/buildstats/*/host_stats
> -d=`date +%Y-%m-%d--%H-%M`
> +d="intermittent_failure_host_data"
>   
>   mkdir -p $DEST/$target/$d
>   
> diff --git a/scripts/generate-testresult-index.py b/scripts/generate-testresult-index.py
> index 7fdc17c..d85d606 100755
> --- a/scripts/generate-testresult-index.py
> +++ b/scripts/generate-testresult-index.py
> @@ -154,7 +154,7 @@ for build in sorted(os.listdir(path), key=keygen, reverse=True):
>       hd = []
>       counter = 0
>       # do we really need the loop?
> -    for p in glob.glob(buildpath + "/*/*/host_stats*top.txt"):
> +    for p in glob.glob(buildpath + "/*/*/host_stats*top_summary.txt"):
>           n_split = p.split(build)
>           res = reldir[0:-1] + n_split[1]
>           hd.append((res, str(counter)))
> diff --git a/scripts/run-config b/scripts/run-config
> index 8ed88cf..82de91f 100755
> --- a/scripts/run-config
> +++ b/scripts/run-config
> @@ -327,6 +327,7 @@ elif args.phase == "finish" and args.stepname == "collect-results":
>       if args.results_dir:
>           hp.printheader("Running results collection")
>           runcmd([scriptsdir + "/collect-results", args.builddir, args.results_dir, args.target])
> +        runcmd([scriptsdir + "/summarize_top_output.py", args.results_dir, args.target])
>       sys.exit(0)
>   
>   if jcfg:
> diff --git a/scripts/summarize_top_output.py b/scripts/summarize_top_output.py
> new file mode 100755
> index 0000000..0606a34
> --- /dev/null
> +++ b/scripts/summarize_top_output.py
> @@ -0,0 +1,132 @@
> +#!/usr/bin/env python3
> +
> +import os, sys, glob
> +
> +# constants
> +top_header = 7
> +top_summary = 5
> +max_cols = 11
> +
> +# string substitution to make things easier to read
> +subs = {
> +    "/home/pokybuild/yocto-worker/" : "~/",
> +    "/build/build/tmp/work/core2-32-poky-linux/" : "/.../POKY_32/.../",
> +    "/build/build/tmp/work/core2-64-poky-linux/" : "/.../POKY_64/.../",
> +    "/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/" : "/...GCC.../"
> +}
> +
> +def usage():
> +    print("Usage: " + sys.argv[0] + " <dest> <target>")
> +
> +def list_top_outputs(logfile):
> +    # top delimiter
> +    top_start = "start: top output"
> +    top_end = "end: top output"
> +
> +    # list of top outputs
> +    top_outputs = []
> +
> +    # flag
> +    collect = False
> +    with open(logfile) as log:
> +        top_output = []
> +        for line in log:
> +            lstrip = line.strip()
> +            if collect:
> +                if lstrip.startswith(top_end):
> +                    collect = False
> +                    top_outputs.append(top_output)
> +                    top_output = []
> +                else:
> +                    top_output.append(lstrip)
> +            if lstrip.startswith(top_start):
> +                collect = True
> +
> +    return top_outputs
> +
> +def summarize_top(top_outs):
> +    summaries = []
> +    kernel_summaries = []
> +    short_summaries = []
> +    for top_out in top_outs:
> +        summary = {}
> +        kernel_summary = {}
> +        short_summary = top_out[:top_summary]
> +        for line in top_out[top_header:]:
> +            cmd = line.split(maxsplit=max_cols)[-1]
> +            # kernel processes
> +            if cmd[0] == "[" and cmd[-1] == "]":
> +                kproc = cmd[1:-1].split("/")[0]
> +                if kproc not in kernel_summary:
> +                    kernel_summary[kproc] = 1
> +                else:
> +                    kernel_summary[kproc] += 1
> +                continue
> +            cmd_split = cmd.split()
> +            prog = cmd_split[0]
> +            if prog not in summary:
> +                summary[prog] = 1
> +            else:
> +                summary[prog] += 1
> +        summary = dict(sorted(summary.items(), key=lambda item: item[1], reverse=True))
> +        kernel_summary = dict(sorted(kernel_summary.items(), key=lambda item: item[1], reverse=True))
> +
> +        summaries.append(summary)
> +        kernel_summaries.append(kernel_summary)
> +        short_summaries.append(short_summary)
> +
> +    return (short_summaries, summaries, kernel_summaries)
> +
> +def summarize_path(path):
> +    p = path
> +    for k, v in subs.items():
> +        p = p.replace(k, v)
> +    return p
> +
> +def write_summary(short_summary, summary, kernel_summary, logfile):
> +    dirname = os.path.dirname(logfile)
> +    fname = os.path.basename(logfile)
> +    report_name = fname.split(".")[0] + "_summary.txt"
> +    outfile = os.path.join(dirname, report_name)
> +    out = "NOTE: program names have been shortened for better readability.\nSubstitutions are as follows:\n"
> +    for k, v in subs.items():
> +        out += (v + " = " + k + "\n")
> +    out += "\n"
> +
> +    out += "top was invoked " + str(len(short_summary)) + " times.\n\n"
> +
> +    for i in range(len(short_summary)):
> +        for l in short_summary[i]:
> +            out += (l + "\n")
> +
> +        out += ("\nSummary: " + "\n")
> +        for k, v in summary[i].items():
> +            if v > 1:
> +                r = summarize_path(k)
> +                out += (str(v) + "  " + r + "\n")
> +
> +        out += ("\nKernel Summary: " + "\n")
> +        for k, v in kernel_summary[i].items():
> +            if v > 1:
> +                r = summarize_path(k)
> +                out += (str(v) + "  " + r + "\n")
> +        out += ("\n")
> +
> +    with open(outfile, "w") as of:
> +        of.write(out)
> +
> +def main():
> +    if len(sys.argv) != 3:
> +        usage()
> +        sys.exit()
> +
> +    dest = sys.argv[1]
> +    target = sys.argv[2]
> +    host_data_dir = "intermittent_failure_host_data"
> +    directory = os.path.join(dest, target, host_data_dir)
> +    for f in glob.glob(directory + "/*_top.txt"):
> +        outputs = list_top_outputs(f)
> +        short_summary, summary, kernel_summary = summarize_top(outputs)
> +        write_summary(short_summary, summary, kernel_summary, f)
> +
> +main()
> 
> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
