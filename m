Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0FA4C433EF
	for <webhook@archiver.kernel.org>; Thu, 21 Oct 2021 19:51:47 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.3049.1634845907078372084
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Oct 2021 12:51:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=p2N+I+JW;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=59281404a0=randy.macleod@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 19LJm1Gh024522;
	Thu, 21 Oct 2021 12:51:38 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=subject : to : cc
 : references : from : message-id : date : in-reply-to : content-type :
 mime-version; s=PPS06212021;
 bh=1oOxOocoH6qKvlj//3oPhhkx3HEaiGROEUYdDSCd77k=;
 b=p2N+I+JW3Ia9F+d6xZq0AtTdyZ4a0Xq32+Cs9nRJPqP2Xb+Z6+q28ILDtnthL6VUTEkt
 ej+gtCYpZtKfLW1n2+NWYoaGrhCwjvhSN8gMM7O+pHQVE4aCpqUyr23zy62t0Ef+a5PT
 r0+S6UV+KrcH5QUnjbXFUPCKn69MaRnjpzVS/qPmbzwLAWatCVkq4jPUcflSbWvAYGtV
 HzBgs7KYY8u1ARgdUK80uKmq8rOe4FsiVARiFIfHd7UL+3G790o1F4ewRKBlFR0pL7/c
 AL9TM6STlf2ZUwEZcF4ZbQe6stUY2AbPvJJ4O/3GKdh6ni2R2QNC1IgZ/tUusTMQU6ZS xA==
Received: from nam02-dm3-obe.outbound.protection.outlook.com
 (mail-dm3nam07lp2049.outbound.protection.outlook.com [104.47.56.49])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bu965gbsv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Oct 2021 12:51:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pc186KyiNZd+Wc6J4CcuMjtnI1MbutBj7nxxz7zeowkH3iy+fIuXpHqenyN+zkd3WJGiLSt4Id3o/XnzJXWOyT6TVnyDOVC472CraznjE0mEKZLC0Ln3aG52hI0eumhIvGuG9v+G+q8mx3nLDHKTTN8Y0s8U+trOWq9+SZkD4CAcnvuNVwU8PZ25DPoge/g3HQ/DOp37fuhMYhVoWQjw2zy/hUEg9I0LhpiBC0BGNgqrUhinLY2JpwC7E2H2UcjnhH9drJTamYVcnJbpuHMC48rgDJSzZPOFHCdQgFPX59HLzTADOTAGxYD0tIKJcyyphlBh1tObScvXXibqyXdgTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1oOxOocoH6qKvlj//3oPhhkx3HEaiGROEUYdDSCd77k=;
 b=ETvLRZr3lIIYIeqRZmCbE8BrFw08UykbkMAqLeGfNDtwI2pvRxtatL0+d4wu5ZkIA29YmJCgUJ1tNCswWpXIt8bI7tLeseglCUBGRhnXdr4P6Wea7tFpv16Q+/FfK9rU2KbRnlaJ7ejooxArDS/Baw6hbO3Kuq9EXhtqf1qR4iCvHoxQ/DOmkJ8wpScK9x4xFvx9fXp9yFltBxVtTPyC/Ynx+JZP4JLsA+pwVr1GGGBq+7KRq3aHIZbGklweu0fry6vaHcFh7uQDIdiL8gxwoHeUUXrFAmI+5uNxEtzDjC7k+Ko0BsGdtq6HKCo77IkqCrQko3SheXgxw5FF+Likbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR11MB1674.namprd11.prod.outlook.com (2603:10b6:4:b::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.18; Thu, 21 Oct 2021 19:51:35 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::5021:c72e:2201:1a62]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::5021:c72e:2201:1a62%6]) with mapi id 15.20.4608.018; Thu, 21 Oct 2021
 19:51:35 +0000
Subject: Re: Minutes: Yocto Project Weekly Triage Meeting 10/21/2021
To: Trevor Gamblin <trevor.gamblin@windriver.com>,
        Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>,
        "Wold, Saul" <saul.wold@windriver.com>,
        Steve Sakoman <steve@sakoman.com>, Ross Burton <ross@burtonini.com>,
        daiane.angolini@foundries.io,
        Michael Opdenacker <michael.opdenacker@bootlin.com>,
        "Surendran, Kiran" <kiran.surendran@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        "Mittal, Anuj" <anuj.mittal@intel.com>
References: <4fc7e792-34c6-6518-94d0-926f29c336b2@windriver.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <1733afa7-7601-4137-e69b-f34effccf6a8@windriver.com>
Date: Thu, 21 Oct 2021 15:51:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <4fc7e792-34c6-6518-94d0-926f29c336b2@windriver.com>
Content-Type: multipart/alternative;
 boundary="------------7AA2B156180225CBF58472D3"
Content-Language: en-CA
X-ClientProxiedBy: SJ0PR03CA0052.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::27) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
Received: from [172.25.44.7] (198.48.226.187) by
 SJ0PR03CA0052.namprd03.prod.outlook.com (2603:10b6:a03:33e::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18 via Frontend
 Transport; Thu, 21 Oct 2021 19:51:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7142e645-d25a-4aa2-4ff6-08d994cc3063
X-MS-TrafficTypeDiagnostic: DM5PR11MB1674:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
 <DM5PR11MB1674D3CBCBA30786722A4700F8BF9@DM5PR11MB1674.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 Wjz1WCQyQWLJzFGDGYK/bio/m8zLz/Yn0qPfRQBIrA+qJ6s1ZqLOCzVbdRHs/Ind8tzFQUOsig8XIehFqNNGH1h0VLnIhSCfdJF7NmWTXMGn9D78mhAoSh/RcrOVsA/iaVtQHvEDrG+O3WSrpu2FROpKSLo5HEjp+1NoGJTcYN+CFmyHKzSPLbXjgTFdOf/1pD/9Jlc8xpD7h+U60oijj0EkQYwlmn3VQL3srTmrv0IejKRbMAmcjX6U/pV1Q7qlwRtyCc0b0alB+3CsSQg9vm2BuWP4A5ukPOqsMoPj2ilWp9c7Rhau0Qg3uBedUfowKU9ltG13hfwalNNmOtVzjhBcSFCtOpNvp9lPTGWEbTkA/mfzwhirtPJvQBst+4lIIhVxjaQMGmAdoJ+PjJQcTYALh7fbsWBOb2UJkqpL9TS+cvh76h3Lz1ks17gDGBUW99ycHbmPufE69897+sxnZref2g+jRp3hehzHDHnU9SWqjdkvPDAQuluNtbbb4DMpYTLDoMs86SIXojQNNxfC2rybkY0NeMwUE9r60IYt1V2kTPswCv1a8O8V6CRBfdDIUYv7VmZEY2X986wviXStKaLNKtpVcz1Cd+6voJNiwrYgiKI7JQd6JATsnUKjgSPooQLkTayQLHyNCyBqiEO3r/GDTmb8Hkm0rT3YAGR44LgKq0p0bvicxOQjKO1T1vEd+c/TF2Dxz/XJQIWAhfBxQ4c+9PY7J98BCHpqwNwEo7n2Urij/lPa/UaBNB9HqM4Qo3rVALW9kd/5fRlGHO7XNWLnP3J9ryuBjOc/wICXZRGtYXL8a6Qx9EKcmEpVF7RQDAtklOa00BunEEd915kuu/UHS/Ku4VDKf4CnzGxeJSw=
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(6486002)(2616005)(956004)(31686004)(83380400001)(52116002)(31696002)(966005)(66556008)(4326008)(508600001)(2906002)(316002)(5660300002)(54906003)(6666004)(7416002)(166002)(36756003)(26005)(66946007)(110136005)(4001150100001)(16576012)(86362001)(38100700002)(53546011)(33964004)(66476007)(8676002)(186003)(8936002)(38350700002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?S3hIak9ZOW9NZ3NGL3FFeGJsT1dSWjk4TXludnVmeHVTSURSSGhwNFhKRlI5?=
 =?utf-8?B?SzAwdmx6czZHV0VBNy9LZVMxdzR2Q3dIcFA2UGxDSnJZcFVxdktjSmNIMVVa?=
 =?utf-8?B?NlBlUE90S01PaEQ4Ni9YMCsxSWdMOStiUjVmZ0h2UlFOMks2ckF4Q2EreVha?=
 =?utf-8?B?UHd0V0tsQUZhVGJLME8wWnp3K2xMTVRyMllBd1BiRFFNQ0I0ckdkdEpuMFFG?=
 =?utf-8?B?d1hjRDRPeStqckJ6eVNXT2xoMlAwWm52YWFvdkdHL3NtSnhsSWh3UTY0TG5r?=
 =?utf-8?B?bk03bk1HaGJ5ekZ4dElvMVpFZWFnZ2FLdmE2eWdsbTJxNXJmMndpWmJOMmhC?=
 =?utf-8?B?ZXhIMG5NdHhSNGVxakF4dmNLYzdDVnVKQXVEbHk1V0FtN0dZaCtMYTNpbjYy?=
 =?utf-8?B?a09MZWU2UlJtQ0kvdy9ta2dMdi8yMlBmWTg1U3ptQ1IvQUVlS2djZnduNTZD?=
 =?utf-8?B?MVIzc1I5YlRRM0ZWS21MeHROYlZnK3JDS05IdEhGWUc5dG1LUXVCaXZiNERx?=
 =?utf-8?B?UTUzb0NXOERWbU5FMTQ5QXB2b0dyR1J5S1dnRnhLWm5xK29oc2haNUE3TE1K?=
 =?utf-8?B?V3I4M3VPV1NmTkVFbjA4cXBMd0VCS2d2TldrRURsUnZqRnhydFd3YWNiL2x0?=
 =?utf-8?B?TjUrc1hCV3FJcjRwQ3F4TG5WbHdMNUY4dUdoK1pYZVlKOFd0TDNrbUdYdnBz?=
 =?utf-8?B?Nk5ETTNucDUyZzUyUFhBUXJLRXhNMHlxV09VN09KWEI0VlJzaTA3KzZvdXlk?=
 =?utf-8?B?MjVJOTlERGFEWm83anJVc1lreDNSZlVNYXpDRVpwRU1kMmttdWlFRDNJT3d0?=
 =?utf-8?B?cVFBci9zRWFsZVRESEJWNUlFYU92YjJ1R3dndmdPL1dBQXpnamk3TnBtK2Zz?=
 =?utf-8?B?UlVVUWhkMlk1SmhmK2U1QXdBZCt1WkJMR2UzRUxQSXFhSHowdEd5S0pOa1lH?=
 =?utf-8?B?aFRpSTRhRzJjR0ZqaTFnWVRDM2ZrR3BmWW1iakF4eVRXaFZyQlV5VmszanM1?=
 =?utf-8?B?d1pZck5WL0xqZmVRU3hBakNyYUFKMnlqdytpZ1lwbWg2Unh2dGtxeFhRSmFE?=
 =?utf-8?B?Uk1uWVI1dnlodjdzZUc1N3VHRE80RitIZ3JCTHkvRGZhdS9MSGJ3UTBIdVdJ?=
 =?utf-8?B?THJRaG1qMUVHYW5QZXJWMGp0OFNIQ05UQTF0c3Ftdzh6eDhuOUFXb3ZaZ0dl?=
 =?utf-8?B?c2dMRHBKNmN4ZkxTWVJGck5rdURHeUg5M2E4S3ozT3NrQWp0SHZSSTRlOGZl?=
 =?utf-8?B?NkhiSXV4STZTZXgxS1dKUW1aVDlPNks2ZXVwY1JMZ0Z6bHBRN0wyMWdhd283?=
 =?utf-8?B?d0k4aDJDUHNIYWxWT0JtczEzK25VTm1MU2YzYlFVNzhwYkpNWFpkVk9WS3J1?=
 =?utf-8?B?cWlrQm93NHNsRmttTXJoQmpTUXMyUWpLMXhnRTBKcXMrTEZyQ2p4RU1DQXVn?=
 =?utf-8?B?SGNlM1VEd0E2QTBmRHVKcWJyc2NqeEc3cjJ5NDRTcWRLbFNIbm1zWjcxcHdN?=
 =?utf-8?B?ZUtXb1FKU0hmRGo4aGk1YUdTNm9MTEdmOUMvZXlVQ3d1RE4wOWJna2lJcGN2?=
 =?utf-8?B?YnJkbXBFcUIwU3FVbUlCU2ZrbVVzUHgxUzBPdGNhYVdUMy9Hd3RyQnF5ZURM?=
 =?utf-8?B?Z1BSUUF4eGdURFpEbVl0R2JTZEJsOHQrSks5eUtuTngyU0tLY0V3T1pWN2JC?=
 =?utf-8?B?ZFFmRTYwUGQyb0ROaFlLVUpPSW8zcVdVd3pwcWNVZ3YyLzZMZkF2Y0RWUEV5?=
 =?utf-8?Q?0AwJPxkIpt3IKF/XU3Ei6KQWaX9Hn6hYfiT087V?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 7142e645-d25a-4aa2-4ff6-08d994cc3063
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2021 19:51:35.7658
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: randy.macleod@windriver.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1674
X-Proofpoint-GUID: zmf8h90Lq3h4MCWxO0L2i5E9q1TWlNda
X-Proofpoint-ORIG-GUID: zmf8h90Lq3h4MCWxO0L2i5E9q1TWlNda
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-21_05,2021-10-21_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0
 lowpriorityscore=0 priorityscore=1501 mlxlogscore=999 mlxscore=0
 malwarescore=0 bulkscore=0 spamscore=0 impostorscore=0 clxscore=1011
 adultscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2109230001 definitions=main-2110210101
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Oct 2021 19:51:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55114

--------------7AA2B156180225CBF58472D3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-10-21 11:28 a.m., Trevor Gamblin wrote:
>
> *Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage
>
> *Attendees:* Alexandre, Anuj, Bruce, Daiane, Joshua, Kiran, Michael, 
> Randy, Richard, Ross, Saul, Stephen, Steve, Tim, Trevor
>
> *ARs:*
>
> *- *Daiane to take ownership 14605 when a Bugzilla account is sorted out
>
> - Randy to move 3.4 AB-INT/Medium+ bugs to 3.5 M2
>
Done. It too more than an hour (not 10 minutes) since I actuall
read through many of the issues to decide if they are M1, M2 and

if anyone on the team should be CCed. Phew!


../Randy


> - Everyone to review Old Milestone bugs and move to 3.5 milestones as 
> necessary
>
> *Notes:*
>
> *Medium+ 3.4 Unassigned Enhancements/Bugs: *70 (Last week 68)
>
> *Medium+ 3.5 Unassigned Enhancements/Bugs: *13 (Last week 12)
>
> *Medium+ 3.99 Unassigned Enhancements/Bugs: *39**(No change)
>
> *AB Bugs: *63 (Last week 65)


-- 
# Randy MacLeod
# Wind River Linux


--------------7AA2B156180225CBF58472D3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2021-10-21 11:28 a.m., Trevor
      Gamblin wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:4fc7e792-34c6-6518-94d0-926f29c336b2@windriver.com">
      
      <div class="moz-text-html" lang="x-unicode">
        <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
        <p><b>Attendees:</b> Alexandre, Anuj, Bruce, Daiane, Joshua,
          Kiran, Michael, Randy, Richard, Ross, Saul, Stephen, Steve,
          Tim, Trevor<br>
        </p>
        <p><b>ARs:</b></p>
        <p><b>- </b>Daiane to take ownership 14605 when a Bugzilla
          account is sorted out<br>
        </p>
        <p>- Randy to move 3.4 AB-INT/Medium+ bugs to 3.5 M2</p>
      </div>
    </blockquote>
    Done. It too more than an hour (not 10 minutes) since I actuall<br>
    read through many of the issues to decide if they are M1, M2 and<br>
    <p>if anyone on the team should be CCed. Phew!</p>
    <p><br>
    </p>
    <p>../Randy</p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:4fc7e792-34c6-6518-94d0-926f29c336b2@windriver.com">
      <div class="moz-text-html" lang="x-unicode">
        <p>- Everyone to review Old Milestone bugs and move to 3.5
          milestones as necessary<br>
        </p>
      </div>
      <span class="moz-txt-link-freetext"></span>
      <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
      <br>
      <div class="moz-text-html" lang="x-unicode">
        <p><b>Medium+ 3.4 Unassigned Enhancements/Bugs: </b>70 (Last
          week 68)</p>
        <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>13 (Last
          week 12)<br>
        </p>
        <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>39<b> </b>(No
        change)<br>
      </div>
      <div class="moz-text-html" lang="x-unicode"><br>
      </div>
      <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>63
        (Last week 65)<br>
      </div>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------7AA2B156180225CBF58472D3--

