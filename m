Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B44DC636D3
	for <webhook@archiver.kernel.org>; Thu,  2 Feb 2023 23:32:36 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.7665.1675380753359862663
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Feb 2023 15:32:33 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=oOA6D/RW;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=1397bcf936=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 312MvXmT023240
	for <yocto@lists.yoctoproject.org>; Thu, 2 Feb 2023 23:32:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : subject : to : references : from : in-reply-to :
 mime-version; s=PPS06212021;
 bh=VK4k+5kf47xpFzerHpPzQ8j5GXNvWyvpqpZbH15r/OQ=;
 b=oOA6D/RWtZR/sZ60DG+bbYJLVisfaeAq3rGGIK4PcJmLaqffQeib1ZmDEZUF/ynyaPVV
 feCUQ0iTu/PwRSP/qZLz0zSfMpTJFsgxDOXzLBaagHXjobT7VTSHJywE7/0MfBpz/fML
 StX4hVQDVgW8TNT9+bexsWNH0ms4yLh6F7pQpKWu07nWLJPdeas1fAA2XiN9pjppBH59
 jhxWEe8eCSg9iJ/N7VrX8WGDokxJMotRRr6xgaKQ3lfGVMJH0ZmCt/OOiUbOAmymI7SE
 YEN+1Cm5lTvlOocBAOCCLXz0vE6TwHpTH1DxZQmTnc88cQNvaoOU1+qi/FVDXH40zpvh Dw== 
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ncrx3dx4u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 23:32:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mACPFDUezFOKEiFw3omUYAL91D4cJveJRWIX38lnEDOLps1WrnW37gQz5tuft12FOsK2KDkSiHCmgC+XOpWtdQN30DLVKDJMiUZzVyE5DyBOsNRr7DJNdq2Ndv0i1747X3OBVW3K/uidlmJzV6QUBhP5rz/9M0El81X9sLY1XR4hDSxsVN/XM04HA+8NlE6oy/k+amvn7iohy/EeciHAGwPGN7bLbRELwaNFNpjSsUU6bz1REdpD5FwPRWnMzeB+Em/G9f28AhSgB4X0IS03JGyouhtjGT+rCxx1l7+VQtXDRX2qnWv3VbYKoVKnZ3zTCgNUXC6dWs37TFdXD3cl3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VK4k+5kf47xpFzerHpPzQ8j5GXNvWyvpqpZbH15r/OQ=;
 b=JiOdLm7wB8rHaHbuKqvxx9vToQvCTb1iuK4hzTQFDtIQbSZwgHkK3Ldn3frfqqnW3X+kKXcCHrTlelHFFkTaSZm74LF7eUL1lJ9gMF7Kxtv/xxucOebPXm4IAtbhW3+YYAfFbkT2+zpCj5Jk/fi9sxestlLFwCB2c+r2C0BLTWnhQ/9lJSiblE3hU8DfPCSu03S4Ptl9UpgWmG1VZ8wu4d9JNYlOkiAoHksM/gv632errkIi+7OXITet5Tl2DDvakeg9JPhDMnCxa/1h9zsKEzcRY6pD2oslJ5v6x6KMXdD6BlCVYtbwjV5ch37zwf+B9fkCdnm5vPr4xS82ksjSPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by PH0PR11MB5829.namprd11.prod.outlook.com (2603:10b6:510:140::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.25; Thu, 2 Feb
 2023 23:32:28 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::119d:6114:994a:b87d]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::119d:6114:994a:b87d%5]) with mapi id 15.20.6064.022; Thu, 2 Feb 2023
 23:32:28 +0000
Content-Type: multipart/alternative;
 boundary="------------T8j30tHdY9yZ2NZ8URZrepba"
Message-ID: <048e47a1-2105-9635-a7f2-218c5bf75221@windriver.com>
Date: Thu, 2 Feb 2023 18:32:25 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [yocto] [] [PATCH yocto-autobuilder-helper] config.json: set
 oe-time-dd-test.sh timeout to 3 seconds
Content-Language: en-CA
To: yocto@lists.yoctoproject.org
References: <174020E3B994F1E1.26884@lists.yoctoproject.org>
 <17402176E54AC01C.26884@lists.yoctoproject.org>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <17402176E54AC01C.26884@lists.yoctoproject.org>
X-ClientProxiedBy: SJ0PR05CA0068.namprd05.prod.outlook.com
 (2603:10b6:a03:332::13) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3994:EE_|PH0PR11MB5829:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f628779-b51d-4be4-8b51-08db0575bf40
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TveGOT4+MYSWS9j6gHVR3OkNTMYVk/wpH5yyNrU+lP1w/w9p0VjUd48GpLcAZnsiGjbl7Q20qxHfcUYPc8caJejgYNMowC/5wBxaotsKWPtLvx6QIl+LwI3Yy6vbexcnMqmRVJ+/BoQX9BYm0qgOzv0gcVTMkjL3lpzARQHNsf+K0y9MFjHYM3gPWkHG3hZmdB5pW/k00XeldrVIINmx5bPTU6kL5SfK9tRvdQ/XaKHilSLhSwVa45sSgHPF+7bbqCzcylJqKbOQwKP+OHkcqn1yvo+uzp2mxiuZyARsmqyXxCui3ptJTus0hBThOOXyIQRaB2a/CmN0sNZ9AgWMy/GrXAkPIrfpxyu1cpcDn+kM6lvw1WbogMzH3V6qt7Mj4taSyCf4Oi3l9+2tkJ80b5ec4czQvwHhFczBEIPA39wfAowPRW9s1XkImQh+eWUAssKAwHJ+w+3XBCG8qmi4o0LwY2p/qVrfNSt8vK7NG0UjkLxzx6v+3mZMe50sMaTdPg6IkGndPXhQA5D6sAX/plOuDmOA5hwUGfCFKopBk/litxq7ne+GL62BF8GGNwcfw9sHLmNJtxLyT7cBKGNebTV76sF2U/x+lxvtUmx4CovZm5no8ikIZq+/HV4Hg4Dg9mzOmUya/9+ePg3uR6c8exhPs2uJ8hlEDfmCYHkZtb9DDd8pBE1enfJ/Eka7xbTizB/fDKSXHtyqQtuTM8FVjmIOrY2UL/hq8DVoUQMr15w=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(366004)(396003)(376002)(39850400004)(136003)(451199018)(6512007)(31696002)(86362001)(186003)(31686004)(6506007)(26005)(6666004)(2616005)(6486002)(478600001)(33964004)(53546011)(38100700002)(66556008)(66476007)(66946007)(2906002)(36756003)(8676002)(8936002)(316002)(5660300002)(6916009)(41300700001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Y0szMVh1VUZ2KzNYREttTTM2TzBrYjZPNWNxZjRJRDBoVWZBTmRwT0IwaVNJ?=
 =?utf-8?B?dHkwSGJBRFVmeExhakhwaWhZQ2VUR3JqUWZlejQ3VjBXVll1MjlWM3JMZ0ZH?=
 =?utf-8?B?ME1EbjRUZWEvejZBMDQ1S3B2ZmJZMUZuTGRwdElLSjFVcTNMVXl5eGtaTk9Q?=
 =?utf-8?B?L2dxcHNZamtNYjBtYTAwQ29NSG92bFVDdUNYaXYzU3d1Ymh3RlNMbVUvcW5V?=
 =?utf-8?B?QVNqbVJLaG1rTzV6aGI0ZEozK3YrMFd5bUdvMVFVRU5aV3RyQVpuN0tDUXY5?=
 =?utf-8?B?ckhDWEpteUE1dS9KOFR6ZjRoc3F2YUFJYko1ek5Da1BCa0tndkUvRlJQMHRp?=
 =?utf-8?B?Y3VJUzI5a0pzUysrQTF2YmdpQWVScGh3SGFObXBSalh2UmlVYVc5WW84eHhq?=
 =?utf-8?B?M0NORjlpcGlNdjlHTWRQczFmdlBoNldYdFdEc3ArSVhNTGpMMGJqeUppNkVX?=
 =?utf-8?B?V2FQbXBmTW5QWWJveml1SVhKQVN3TmVCVmVzRWxxbG1ZVWI4MEhadDJDSmRy?=
 =?utf-8?B?VytHNnV4d0Y2YnNBSjJWRHhOVU8yZ0ZXdTV3dG5jbWE2emFHQmpxOW1TM2Nq?=
 =?utf-8?B?ODFPbGhrdWRLZ0JiMlFhRVo0Tmx6UmN3OStQelFFWG5kMjdjYk5qT2lTMTRQ?=
 =?utf-8?B?RVFiRjltMms3Uk5NODMxdUdCRkE0MzRaMGVVR2xZUHN2eVlMV2dGWHpOZ0Mv?=
 =?utf-8?B?S3Y3YUtRVzM0ZmVGazdva2hVMzBGYlk3NEpHZ2V4bEZlWG9zV2QzQzRRVmFF?=
 =?utf-8?B?RVllbjRoS1hjYWlOUXpFVjBTQ0lmUG1SNFVzeGxiNkMyNW0rZnBrNnF6Rkh0?=
 =?utf-8?B?VTdLMVZsakRrMVhFTXN6bzV2MldUbzEvQkRScGtFdThteERTeHpKZGtlZXBI?=
 =?utf-8?B?ZWJrNjVYdXlpZnFrYmtqSG84c01hS0NBY0tOMkVPV28vM0g2WWRldnFHcHlr?=
 =?utf-8?B?TnFTUkZqSk9Cd2pDMnNqMDZLSWVpOGpsUDY4ZDBlSFU5bDVSS2taVjlTRHMv?=
 =?utf-8?B?bzFQZkZKUG5iWEJodDFodVZZeWRzL0d6TEtrdkdGRXVXTjJSaU91ZXlxWWRs?=
 =?utf-8?B?UlcwYnJZcS93UVJWSEJXMHhuYm1qcnprRmtqNGZ4Y1YyWkRVQ3o3MzdqRjVw?=
 =?utf-8?B?UnFuNTZmUXBtbUxHS1poczNEaElXbURYR21ZS2J2cXQwTjROVlVKeW9pSEFr?=
 =?utf-8?B?ODkrd1QwSEd1UjVkZWRrM1FQV29SamxyczFrY21LQmhyM1ZJT1BCU1djcytT?=
 =?utf-8?B?N0kxSWZaNDEvcENvN1VXT1RsS3RXdEpZaFpuMTNTb1VWcUhLWUpVZzh1U3Fk?=
 =?utf-8?B?MFlidzVoSHdzUEJyZk9NSVUreXR0OWNoeC9ueGZXK0laeElodVNob2VRbjFa?=
 =?utf-8?B?N3JDaW5GSW5ocTUwemEvN09STGp1aVBVaDJndHR4bnluT0Jta0V3MXZ0NjVa?=
 =?utf-8?B?SWw1VENoWlBlSVFlRzlaYmF6dlF0bDgwcDRnTHc4cmwxK0R1ZHVsSzBRQThJ?=
 =?utf-8?B?bE1RY1dadlJTRitpQk9xTjQzbzhnZlFzYW0xRUZFcGcxV0ZIZUpvZFFrWDZ0?=
 =?utf-8?B?NFFhL1RhQzIyVUViOEVqNTVDSi80OUZDUHNkM1cyOWswQS9kV1lvRVI2M1A5?=
 =?utf-8?B?M1E1T3pEd3JOamtudjVHeUFSM0N0YWZ1MS9lSWFpd29reUFDTW5FQ0xTMFhF?=
 =?utf-8?B?c05DY3VjWk9XS25yMkJKOXQ0Ykt5bUlZUTZhVVp3YnJTK1RQUmFmN0YvSEx4?=
 =?utf-8?B?OWpsL3d0MlNoNXJ0eDl0b2FLSFlXNUpRKzhMVlZObnZVUkpsVTVoOGVwR3gz?=
 =?utf-8?B?LzdmdzBMUlNBTkJuNjRYYWlzRHB4TjFOYm82aFBDc1pvZVJLRFNkWDJVbFZ6?=
 =?utf-8?B?ZFBiaTBLcW9SamRrOU1aTTZwcmlrRytzUFAyREF5aE9qdGhmVTVXYmllZzlO?=
 =?utf-8?B?WGtiSHRjRVBhbDltM3lOaW5rbjF2Mkd6Q0pxM29WRFdkZXZBWVdpaGxVTmtu?=
 =?utf-8?B?ODFsSTZ4eU9wZ0NPNmgySE9HN0xSbGxRZVpyc1h1RWpmLzM5bm1zQ0lMd1NF?=
 =?utf-8?B?bWxzMDZkMmt2eGJkcG5WaGs5NTdBZmpKaEFsQjBQRFV2Q3Y4aWR4cUhIdW0r?=
 =?utf-8?B?d0xUN0srcEhuY2NPVnI3L296MW1CQ21hS09iV2JlZDA5N05jRUhLN1NSczZF?=
 =?utf-8?B?cEE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f628779-b51d-4be4-8b51-08db0575bf40
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2023 23:32:28.4641
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5j95uvst0tgjUVkbaya0M1rHiEbVkjO2ggrwTAPPBRkyBDxu0AOqvALT4eiCabIbXyW401G1g1snyEYDrgxWLOHLQdvC3Md9YmUYCJCK6E0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5829
X-Proofpoint-GUID: MCmN6IsJJXOstD6tFcudKGJk_j0ZeSMo
X-Proofpoint-ORIG-GUID: MCmN6IsJJXOstD6tFcudKGJk_j0ZeSMo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-02-02_14,2023-02-02_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 impostorscore=0
 adultscore=0 malwarescore=0 clxscore=1015 mlxlogscore=733 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302020207
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 23:32:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59151

--------------T8j30tHdY9yZ2NZ8URZrepba
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 312MvXmT023240

On 2023-02-02 17:10, Randy MacLeod via lists.yoctoproject.org wrote:
> I don't know why there are two peaks that you can easily see on the=20
> linear scale distribution
> but the 3 graphs show why I picked the 3 second cutoff.

I'm guessing but I suspect that the lower latency distribution is just=20
from when

the Yocto AB workers are idle. The builders in the cluster at WR are alwa=
ys
busy, sometimes needlessly,=C2=A0 so I didn't consider that initially.

--=20
# Randy MacLeod
# Wind River Linux

--------------T8j30tHdY9yZ2NZ8URZrepba
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2023-02-02 17:10, Randy MacLeod via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:17402176E54AC01C.26884@lists.yoctoproject.org">I don't
      know why there are two peaks that you can easily see on the linear
      scale distribution<br>
      but the 3 graphs show why I picked the 3 second cutoff.</blockquote>
    <p>I'm guessing but I suspect that the lower latency distribution is
      just from when</p>
    <p>the Yocto AB workers are idle. The builders in the cluster at WR
      are always<br>
      busy, sometimes needlessly,&nbsp; so I didn't consider that initially.<br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------T8j30tHdY9yZ2NZ8URZrepba--

