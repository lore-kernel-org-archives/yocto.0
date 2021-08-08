Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.11879.1628441571519674908
 for <yocto@lists.yoctoproject.org>;
 Sun, 08 Aug 2021 09:52:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=NGmCB5jl;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=3854738da4=randy.macleod@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 178GmNmC013812;
	Sun, 8 Aug 2021 09:52:45 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : subject :
 to : cc : message-id : date : content-type : content-transfer-encoding :
 mime-version; s=PPS06212021;
 bh=FnkMXhbSgALU/OmFbYJSPNuUnHtHUpliNHC9R/VAF6Y=;
 b=NGmCB5jll2sx5o1+P9se6wFffVP+hItWnlXLC/dHNQpJcrUUJvnC1ITTr4GnNiBy4szc
 TaBxiP28n3qLs1DGRPMJ7KTVcUjTmkUQqBI9901gIzXW/b9qOe9V1PYx91xEuoKlYkSI
 y+3dQcJTglGCnpfHWVFyF9/CfLT9ZhEBSPu39c1SyV5zk2jwkx2xXVhj71LddCclDY9r
 ijRTHMVZYPYlmg22nncBKK5ENljwxI86NYp4qfQ6YQpKJEBzy/3Dzp0seBvdMfP7LB0E
 Vv3SnSP4YKqCML2XnPMxD2hzzkwHhhiqqxuiViMfkHP8mkSrsBqdmv2twCPu+cdbjXza aw== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2168.outbound.protection.outlook.com [104.47.57.168])
	by mx0a-0064b401.pphosted.com with ESMTP id 3aaj0j80vb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 08 Aug 2021 09:52:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JQ4Apv/rgYFnMR+K0x6v6d6wfAa6yVo8WcOAr7PF7q1aFH1S9Zd962M47X8B/CzI/tEY1cyUObnoJ8cndtQsaN1bXMlJuOmrrKsgl75T+oSpl64bl99kAgl5cA2dv26YCzUtj3nR6LHU0hRoz8eX/Hn3xlremneurYS7fj27xbwTUqXuRvS4Lkcy+d9EiRDWABP6YruICf+20+iOhuQBD4d4mdR4b/4YlBpPNfFD6UDdLabzHOojIjqkL51b/WpqEVh0GzveWGLtPdVFaRFhBIHhSXUEx24TKiFDQrwVcDp96nu3XK/FsBSD5DlFbO7Ecki/2K8rCZZJuq97kZ/WnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FnkMXhbSgALU/OmFbYJSPNuUnHtHUpliNHC9R/VAF6Y=;
 b=ikcbOYhd7OqTflXf8OTz8EsAZJYPyN6pxlC7vVBAqbxVR12qc5QvM/EoadzQX2kctjbwlBJf8SeOcnUrnGW8BGQ/dvg+ncOJvb2wBf18p4ZJr6WiXQi5x5xkTiX3XzPpe98ntz/9inCtmYzuF9l4HmT8sS5T/UxJO9viWRdG4e1hKrWN3L9ijaKS08Fqy9x+WCVEAZFe4G2d2uwLWC0qYOAa3f/bICUTxnCvaLBdwmYEZKzLbtFtcAe0BAvs9Th4ZDy66NBnuKiqhMGQ6MEhVJjJHWJxZKW0qdTKxwJn2xuWDDihQZkKx4h+h9AVXQA8TkAscEYlLt2PbDcc1rTJ1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR11MB1996.namprd11.prod.outlook.com (2603:10b6:3:13::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15; Sun, 8 Aug
 2021 16:52:43 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e119:f175:fff0:b3b4]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e119:f175:fff0:b3b4%6]) with mapi id 15.20.4394.022; Sun, 8 Aug 2021
 16:52:42 +0000
From: "Randy MacLeod" <randy.macleod@windriver.com>
Subject: Yocto Autobuilder: Latency Monitor and AB-INT - Meeting notes: Aug 5, 2021
To: Sakib Sajal <sakib.sajal@windriver.com>, alexandre.belloni@bootlin.com,
        richard.purdie@linuxfoundation.org,
        "Wold, Saul" <saul.wold@windriver.com>,
        Trevor Gamblin <trevor.gamblin@windriver.com>
Cc: "Tascioglu, Tony" <Tony.Tascioglu@windriver.com>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <8494859f-d68d-cbb3-80ef-9c29bf7629e4@windriver.com>
Date: Sun, 8 Aug 2021 12:52:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-ClientProxiedBy: BY5PR13CA0034.namprd13.prod.outlook.com
 (2603:10b6:a03:180::47) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BY5PR13CA0034.namprd13.prod.outlook.com (2603:10b6:a03:180::47) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.5 via Frontend Transport; Sun, 8 Aug 2021 16:52:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 53107a7e-73a1-4b7b-14a5-08d95a8cf08b
X-MS-TrafficTypeDiagnostic: DM5PR11MB1996:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB19962582D2149B80AEF8440CF8F59@DM5PR11MB1996.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	N26Uf2D1mO1QiuEeuPRhKoUcRniOFrDdfLefIQdiqoSNNOf3fJna6H6TsQyUSHQCiygI6ADqduxyDGOG7SGYGRsXvzcJ7pprRuxhrC/B+mkeEmE2GU7R7tYfekqEio2YsxhpoNYywidQTuRnBv6Jgfc84qtBgvpWCG1NrCDrEFleQYTnNptKoMhezcXKwKBBhzWlPMSXGneWqmwcr5ZVFtuBGuU1jlp5rOV5EhOghSn3VzVwd0XEElkynXt3VvVE5/N47s0wrxdOp1V1FPKEz14HcIfru2mgLdF6hHBDQ//w3aEz6jChXEnxCf3AGHKxiQMIK6rj0qogpIKG5ll+MqB+wmq0YgsGTSnM0QmBt6SmkBTumLDKfGO+nmRW17FPZDcnCrYr+ohMQc0nkQujKHqvSrOeoG/MyD72D11dv2wFApkGgWhDDPPuIEhmXuF3OGbHth1/0BZHby3bFGJBuS0hGaPn7DehVdzd7xPZ+57dSMcVKISWMiRRQXa8gLMGK6fOgTbtxwzvcXhDJLqlm5Svsrd2oEAF4akSh84noosaSF7BvsIX4LIypFp9tC//+TIJX8QXGSi3k2S7NdQahQupA9etLPCv8BaO02oUQji4HMy3yZeg/aHlDaZqDOC5BTGjWHmwqOMMxD+wHyEJTFMotfNr4J5hHERp7RlcfNXcV0uZn5CLhAxMopgW6aSM3YIc1yRPlxF0EWj1iMHHgs1ckkHLVXNbTm/5c4jce+0bSvv9Cp2HtwA6/exfEzBFfSxJhuUKTvTyUw4EbZ+BcNY992bRJd6awT5LP1nKWeYsVjnxPriZxExKw1q8lSn3mLwG0TpCB1rxJZghBt4Gb4eislW4pLMr/kV5XgtOBrY=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(39830400003)(396003)(376002)(366004)(83380400001)(38100700002)(38350700002)(52116002)(31686004)(16576012)(316002)(186003)(36756003)(54906003)(110136005)(86362001)(2906002)(6636002)(31696002)(6486002)(26005)(8936002)(956004)(2616005)(5660300002)(66476007)(66556008)(6666004)(66946007)(8676002)(4326008)(966005)(478600001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?alY3dGUvT05TU2p2N3paWXY5cjlZSm5KNWFyQ3lMVXZRUEJmYzFBcy9jWEFM?=
 =?utf-8?B?VXBaT2liUC9acTE5NVB1NGJxcmZnd0ZsendKNE9XV2JQdjdiVy9EamFxcmxm?=
 =?utf-8?B?bjQyK0VFMUpjOXg5ZkVXMXQ3VE83VjB6cUVBNzdyNlBPbGVobERmTFJsYTV2?=
 =?utf-8?B?K21Lc2VEd2FPeXM0NzQ3UkZoeGw5WWl1YnltY3QyQUVBWTJCZDlueXhXVUlD?=
 =?utf-8?B?TXhJQzh4V3l2RjlEL2Z4aGZpenB4VjRXWVlZT3BNdGtHaVlUdnBadncyc0N3?=
 =?utf-8?B?cFFXOUJvM1FSMkZpUU00Tm5PVDhaeHIvOVBRQ2JlOExFendMZjhTOGVLanlJ?=
 =?utf-8?B?MzZnTDUyWXNjbG55RFVsYWtmcjdCQmtVa0tRLy9kOVovang5ZWc1QW54TXdB?=
 =?utf-8?B?ekFDUHY5L212bTdFMElPNDE2SWpHUjZhNHpYdHBKbXk2WnFOQjRLVGNiamJM?=
 =?utf-8?B?RFI4dDdNeGxxVzN1eDVNbDVsUEpNQy9lVTZPVGNTRUgxK2JZNTBuY3ZxWEJ1?=
 =?utf-8?B?aGtmSElSYWx6R1hVeEF2eUxKandPWE9JdG9QQkwyZGt1T3gyVzRYUXQwZ0ts?=
 =?utf-8?B?L1oweHlPS0lCMVV0cmNqVmNmWVk1SjVJRG1hWE9UQUFqMHlSZ3oyRS9oekFG?=
 =?utf-8?B?cjdFNWFyTUEvaE14OGtpb0N6bHN4WGV1U3RPUE1TeVhIM01iUFNFSjd4encr?=
 =?utf-8?B?R0xBYXNrclN0VjI0VFVjTjZ1b2Y0cFVnZ1N2bGJ1VVdVODJ5MXlmUFhzQlp2?=
 =?utf-8?B?aHZyTWlHS2hUbkZ0ZlBiNnpJQlVneStNR0taTEYvYkUrV28wcnZBSmxnWXg2?=
 =?utf-8?B?bkdTSURLdXJoUkZUT3FHVXV4VkJ3NWFITWVFdlBQUWhOSXZYMGh6RUlua1dv?=
 =?utf-8?B?RFRuV2xJKzFmSzRpT1g2bFhwWC9rVEpVNzh6MVBXeGZLL1l2Wi9zcG9ab1lU?=
 =?utf-8?B?YUFiOWhtWC9qWDZSTjJtRGNlSTF1S1BBQkhpMFFRWHNDaEdFSEFDek9kTmVD?=
 =?utf-8?B?d2NlQzk4a3czK0hObGcxd05FTEFsTGs0TVRzSTkwcHJQeUMvQWdMVi9RaFFF?=
 =?utf-8?B?SEhBVkNJdWcvb21uVjJMWndyZ1cxdFh4emhHaTJDNHlGYlJ1RjlPR0dud1Y3?=
 =?utf-8?B?TGJybmY0bjlsMTc2RURyZkp3L00rZkdNUS8wL1NKSm5LVmhWVVdRcjZxZFhG?=
 =?utf-8?B?d0FqNjhSWGNQaW9kUEpYK2g1eWpZUUZ5WDVucmpvSWRQblZCRHBhYTYvYW5C?=
 =?utf-8?B?SVdwQld1MWZCVWgvK05ScDlqQ1cyekgzRnBLQ01uZ1U3Umx3L2pZWTBPWHd6?=
 =?utf-8?B?QTZWSFJjK0tvLzFGaG93NjZHZTlSOGZJSFVHaHlISkdjdHMxYXZVSWJkQmVK?=
 =?utf-8?B?V2FocHNVQzlYdEI5TUVDK2NranJ2clBBSXpDWFA5RG9iN2VsemJVeXY1bU9i?=
 =?utf-8?B?SVFVRURzK0VIbWcrRmFHQjhlWElaUGhDQ2NPeUsyb0Z3SXFUR2lTSzBLT25B?=
 =?utf-8?B?VEVjYlRvTWlpMmJ6SU1CVzYxemhITzBTYXpkU2l6Rmo2d3ZzS3VFUWVGYW5Z?=
 =?utf-8?B?QnpvVldtZEVHbjVLN3lCZWw1bytCV3AzOUp3SnJqdXgvVk45VkxyRTRjaEZC?=
 =?utf-8?B?cmJTY2NJUGFxSHY2ZmppcnllMWlGU2JPQnZ6eittU2RpcEdZVVE2eWZmQVVL?=
 =?utf-8?B?eC9BNjBwMjJyQTBvRndvYkpCa1YyVW40U3pYZXlCN2orS0VDMVRxUHVoZTI1?=
 =?utf-8?Q?U0E4xXZWPclZqdjDeEKG/Nfbbf7EJu/66StFK9c?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53107a7e-73a1-4b7b-14a5-08d95a8cf08b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2021 16:52:42.8043
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UzynGnAtaveNifKhb+0uoakQKxNoRiWAnjhy6R4K8nJS+ES2Bre7wtpsd32/1RJAFrMOQFHKIaxP1y4JQyiYK+7FbqF17zwQt+vVIEg5JVk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1996
X-Proofpoint-GUID: 6UY_vqhfJlRg3JU3EaN-sIeCDFXopNWg
X-Proofpoint-ORIG-GUID: 6UY_vqhfJlRg3JU3EaN-sIeCDFXopNWg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-08_05,2021-08-06_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 adultscore=0 clxscore=1031
 mlxscore=0 priorityscore=1501 mlxlogscore=999 impostorscore=0
 malwarescore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108080106
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit


YP AB Intermittent failures meeting
===================================
Aug 5, 2021, 9 AM ET
https://windriver.zoom.us/j/3696693975

Attendees:  Tony, Richard, Trevor, Randy, Sakib!


Summary:
========

ptest failures again are better but there's still room
for improvement.

The make/ninja load average limit is in but it's not clear
if it's effective yet and it breaks dunfell. Trevor investigating.

There's not much new this week, I've commented on a few existing
activities below and added "Aug 5" in most cases.

We did talk about the YP SWAT process and trying to get people
to all follow the same workflow and for the people who are working
on reporting and analysis tools to understand what SWAT does.
Alex is going to think about it and come up with a plan.

If anyone wants to help, we could use more eyes on the logs,
particularly the summary logs and understanding iostat #
when the dd test times out.

I moved Michael to BCC here and
I'll drop him next week unless asked to do otherwise.


Plans for the week:
===================

All: Wait and see if the ptest failure rate continues to be lower
       than previous weeks.

    Richard:
    Alex: SWAT plans.
    Sakib: hook more responsive load average in to latency test. (v3)
    Trevor: patch to set PARALLEL_MAKE : -l 50
      -> dunfell, gatesgarth, hardknott (Aug 5 - it's a priority)
      Investigate dunfell which failed with this change.
    Tony:
    Saul:
    Randy: Look at performance data


Meeting Notes:
==============

1. job server

- ninja could be patched with make's more responsive algorithm
    next or is this good enough?

- Richard suggested that we extract make's code for measuring the load
    average to a separate binary and run it in the periodic io latency
    test. Also can we translate it to python?
    - Trevor is working on this and had some problems so next week.


2. AB status

     Trevor is learning about buildbot and working on a scheduling bug
     (CentOS worker?)

     bitbake layer setup tool should allow multiple backends:
       eg: kas, a y-a-helper.

     ptest cases are improving, we may be close to done!
     Let's wait a week to see how things go.
     (July29, Aug 5, we're not done...)

     - development week with lots of failures and a-quick builds
       so it's hard to say.

     - lttng timeouts are still happening so RP is going to increase
       timeout for all ptests from 300, 450. (Aug 5, timeout bumped)

3. Sakib's improvements to the logging are merged.

     Sakib generated a summary of all high latency 'top' logs from
     ~July 23->July 29 by just running his summary script on the
     merged raw top logs.

    <snip last week's summary of summaries text>

    More analysis required....


Still relevant parts of
Previous Meeting Notes:
=======================


4. bitbake server timeout ( no change july 29)

     "Timeout while waiting for a reply from the bitbake server (60s)"

     Clearly the YP ABs aren't running in docker but what
     about firmware and kernel tunings.



5. io stalls (no update: July 29)

     Richard said that it would make sense to write an ftrace utility
     / script to monitor io latency and we could install it with sudo
     Ch^W mentioned ftrace on IRC.
     Sakib and Randy will work on that but not for a week or two.





../Randy

