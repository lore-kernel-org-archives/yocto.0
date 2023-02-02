Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 856B7C05027
	for <webhook@archiver.kernel.org>; Thu,  2 Feb 2023 22:11:05 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.5446.1675375855472233116
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Feb 2023 14:10:55 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=aDTbisBa;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=1397bcf936=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 312KvqHs028028
	for <yocto@lists.yoctoproject.org>; Thu, 2 Feb 2023 22:10:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : subject : to : references : from : in-reply-to :
 mime-version; s=PPS06212021;
 bh=+QtZAAHYHJILKit5lMrUhVyj2R533DL6KBFCx66SqQY=;
 b=aDTbisBaxF36UDpARILCSX1EvMzKfefykRmaFPeGIxB6i/G9dCLuGPNPKos2YJewweQd
 HoNxj6T+JU5b9A8Qwdo9qzT516/0my3R0479UQfJP3a04hwDuhaUAATwX4QHc+LNsvoD
 w69dAzTtpU8iGvH5FhILVFWqGNd9wexSx01Gi5RZJUT/T9SXoHK//Xt6Dtqckx9qvKIQ
 ghBJvQ6HeBBF4D1s5iglTMGTwPvIT993WdrJrkGqy4ZSRMONoD4ms/uBVawfZ2ovefL4
 VSYFygLRwY/J4rlvTDWo4HrCmioCzVchAvsMW8eWIdlfKFZaAOFyBelm7lef3rQV4BOW pQ== 
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2172.outbound.protection.outlook.com [104.47.59.172])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ncrx3dv6d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 22:10:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R8B+h+8r5Y20XiJCdu/a4uMXTVk0acp6cK73sYtPjrcwScfOHFG3AfIJcEY0ge4gSstAH2DNrEEA+CU3E6m6P/70GUOLiInJrI5rRGnNdXwVEPJCuIrUt+ZjjCDpJaNYjgLYYUIaeP6FbHA/p4N14xitPwm+yOIjhsFeSBgr/HUxHJzA4amwSmZO99Ikhc8AP8NObDFhEGH012Q7buJBGprve4fGNx84f5TIJpN7o89uzsxfZvdBowb9h+9e8oz+FoAHpNgZHzLmcALR/vYegKTOqHFV7csQmkp9KKAvOAqFeDda/uqzHD3k3lHqX5ajEBTX0nwidph7bZb6qIqIbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+QtZAAHYHJILKit5lMrUhVyj2R533DL6KBFCx66SqQY=;
 b=cUgRXQW7w1FGqH6swxcL50rZwvGo+bJExeUJEX68xDHZm71ZN2paeDs4kMvpn7RyYWC7lumYUp1/D9NGqlOn4+YERxsqYvklrjHFjAtXgY8paOBHZCtGSmV4Dq19blFyzBvTQ8i2ynZWo7kDvqyJRdacF4XtpXHUaC36maVrllVQTYVV0HYBfgth2DZF3O8G6oGIkxIb7GqOdRDF4TX71VPi94emVfWn5GMjLUypvuahXj4xh5LSfcMDaUcWMYw1kJpHs+xwUSQ47oJztzmIe9vEa9FI8RR6zbHNgTrBa27CkqiPAv5Hw4rsZE8lIfklrbcabdGbiFYXB6Fylrrf6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by IA0PR11MB7378.namprd11.prod.outlook.com (2603:10b6:208:432::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.25; Thu, 2 Feb
 2023 22:10:50 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::119d:6114:994a:b87d]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::119d:6114:994a:b87d%5]) with mapi id 15.20.6064.022; Thu, 2 Feb 2023
 22:10:50 +0000
Content-Type: multipart/mixed; boundary="------------2skCqBF2kEmm8zFl7Rsj0xdd"
Message-ID: <42b5606b-ce21-a868-b6ba-88428c67c87f@windriver.com>
Date: Thu, 2 Feb 2023 17:10:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [yocto] [] [PATCH yocto-autobuilder-helper] config.json: set
 oe-time-dd-test.sh timeout to 3 seconds
Content-Language: en-CA
To: yocto@lists.yoctoproject.org
References: <174020E3B994F1E1.26884@lists.yoctoproject.org>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <174020E3B994F1E1.26884@lists.yoctoproject.org>
X-ClientProxiedBy: BYAPR11CA0054.namprd11.prod.outlook.com
 (2603:10b6:a03:80::31) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3994:EE_|IA0PR11MB7378:EE_
X-MS-Office365-Filtering-Correlation-Id: 98d31ab6-3f7a-4253-cb81-08db056a57d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	dpyV9p895r9SZYzuETmO3hQNyXiCCKqH4QVLlGYxK4CD5ttaS+KRBZAdyNwXI/TfTeE62/eUNBevl6erOr21QWrT9cxM9z1vNFKe98DvdV7bpwMDKFV+QnI3DB3jwXzGqkjKqfz1jYybSkyR3sS3NRplfUX7SwtQnw6Fk1YPNP9+yBAvhqD4XCbWCn3ALNaTRmK1eMNeINodyD5qILCm9kro/FXRXQfvCA3IgwOzFpEQNlNIMpjqlQRHCQRGqiehfsT2ujFUJeK4q7Ab/iW2HnwbVDewUjqm9Xm6SVgj7mDCDrbZc3nwjxCnve/fqEzb1jEW7Lmuq8klvm8YxgHSpQcbH4wiAAyFs+M2I/bn/qEfT41rionXcsLL7NyXKPJhP0wcvLr1wulhgsYmX9VxDixz6DtGIQ7wT2+9tF8/arFXaWQrnREiontkILlKGkQB0l5Igeqsz1VoytWFbfsj8SIURavQscEx2VbzpHz23J7rElbIRCL6q/J8FDrSqgLjRuKU7M5/7pIgOVlc7+TL4OvAOClYDF4qnjCNGGhAI3EM/pErgofHWZ2pgrE/UWT2RtjCG0hrMZ19D3uTw45xmDBXRmybm1ALCZw0kRttt8nAdipAEFGQ1edGIF8f/MO4kfVqqUPs+2kGDBh2yRNLIZOPQom0js+T8fi4imuCqy2hOY9Yv4y5Y86tLMBo0SxaL/QLppVaEkCuGZgiQm6T5cx3K0NPXld3+B4WVpNSj6yAm7N3OWQp4Z3MVA+bZl8fmscgS0ZgNPOg0UWtVa0Qj0ckP69a3jlZLvwOvy1BpOg=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(396003)(39850400004)(346002)(366004)(136003)(451199018)(8936002)(316002)(36756003)(6506007)(33964004)(31696002)(478600001)(2616005)(6666004)(966005)(166002)(6486002)(86362001)(53546011)(38100700002)(26005)(5660300002)(6512007)(186003)(235185007)(2906002)(83380400001)(41300700001)(66556008)(66476007)(66946007)(31686004)(6916009)(8676002)(66899018)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dEMrN1ZNMXppV2VGVWs3cUIwZGl3Z2RZRzZjcmNnTTM2eEJ4TEhpT2pNdE1W?=
 =?utf-8?B?WTdzazFmSEtRSXhRdEQraTMzSWU4S0N4eHBLSC9hYitYbWZjb1hjbmtjWWZz?=
 =?utf-8?B?OFcxSzh6cmNwNGduRDNUUXpwOFJ1OG8wL1AxT1R5dzFsSy9KRjhjRXFsRDdT?=
 =?utf-8?B?UnJJTUZqZ0FHeGRHaW52VEZGYTN2UjZxT1RSNjRyZDI2WXBhaHFvME83REVW?=
 =?utf-8?B?U1BBbmYrTVFaK0M1bFBPdUhoYzk4aGFiZGJtNE90ZFp6R210c3MzZStidjFp?=
 =?utf-8?B?TUdTWWU5cE5nZDc4eUpFbWNpR3NKQlltNlVCQjVydGhieDVZdWsxLzFjbjBX?=
 =?utf-8?B?d1pHbngwenNNTWVtQWF3eGRqVEE4L3Q5YWh1aVJicmdqZERCajZ0V2l5OUJE?=
 =?utf-8?B?cnloMWFkdCtwUSt2ZFc4T3lHOEN4dEZJNlJGbUhISFNEU1dRbEo4NEllT083?=
 =?utf-8?B?bS9iOVNyWE54cEQvMWtGUXZ6Ni8rdVFlV1RmTHI3ZnNPOW53REJYMkdCZjcr?=
 =?utf-8?B?VHM4eXY4WWRVOXBjREQ3VlFjZVV4elNtMmZXckVLMUdmMjJJdUZxOE5KS3Ey?=
 =?utf-8?B?RHVZU0JCekQzS1g0T2FsY0JQMUs2eEppbWxpZU1ZV1JnTEtXS2dYNXZjRjlJ?=
 =?utf-8?B?OG1hUmU1WWFZOW92Vk0reUdzVC9jMW90aElPY1pZWUc4N0FTdjhrUlE0VkVj?=
 =?utf-8?B?NkQzeGpCRjlWa3RyWTRWRG1MUU1IcXVnMC9obWY5RkFYQWhHdFlHWTVkWkJU?=
 =?utf-8?B?VjNlakZqeDdSNDRML3Y0QjRJd3ljY0FmV0xUNGhFQ3ppMTB1S2dHOTRGNjhO?=
 =?utf-8?B?MFZmOWl2NUg1RGE0Q3VIUlJTZk5DcWczeGpFZ3FBM1FqS1dob09OUkVvUnZp?=
 =?utf-8?B?RzdyQ1M4d3R3a3VGZjF3QWR4YzVjQUpuVmw3aUNtR1ZOSmtxdys2Skx4VVdW?=
 =?utf-8?B?YzdqUTZUVkt3REhCTHZUZVcrQ0IwMk41OEFPZmxZdlE5N0lvKytQMFB4RG9J?=
 =?utf-8?B?MzJ3TnRPM2tRMFlNTytic3hDRUgyNS92RjB4dW1CdWJYRjFKNk9OZnVMSGUw?=
 =?utf-8?B?REdLOWxVblo2V3dvYS9RSVA4MXZiYU4rdjZhSXhsVitEZkIwNGtKd2hqYWdt?=
 =?utf-8?B?RFZ5SGFuQ0cvZ2xuRmJmaFRVYW1Pb0VWbVJqbm5YTkMyNnF2U0RpMWNJMi9Q?=
 =?utf-8?B?ODcvUkR0SnJZN3dCeXhlbzRFeTJuZVAxa2NmUXB1eXRpR2NYblpicWlFcFNV?=
 =?utf-8?B?SDgvODUrc2s1WDRyMmozVThEUnVFUmFwbkNYVXZCMkdIYnprcFRwTCt5Yk92?=
 =?utf-8?B?TjJnYjRSa1A4c3MvSHdvVkFCUTk4SHY5SVREaEFBSTM2VGR5ci9KRW81bDRu?=
 =?utf-8?B?dmFFRkN4b3NWSGtxMVRtVkQ0YXpiWFpxQW9MZWsxdWs3dEhlVWR6NzV0VjJz?=
 =?utf-8?B?aVVwcWlkZi9tK2dIOXFNYUhJZTFCSDJ4RnZIUURxYytlZEpjUlIzbWI5dVVh?=
 =?utf-8?B?L2hqUjRIbXRMVXRnVFJmYzZoT0JqejdSUkZwcG52a292eFpTSFJJNVlzQUxj?=
 =?utf-8?B?U3AzUTdybk80TytXSFlFc1U0ZFJmeExGVC9MTnNUeWVGK3JQR2s2VUJFZjgr?=
 =?utf-8?B?Skl5T1dPbStIUGJFVjJVRmN4dEszNENiSWFIMG9jZnpkWDNkeGMrOGdCdVYv?=
 =?utf-8?B?cEwrRno3eDNnaTZFNkFuSUZHeGt3UTFGQjF1UGZqV3RSOTZvaFhReXJKRmFI?=
 =?utf-8?B?L3czclQvbGpjYzgyVkdpajErZGNuNkJhWVg0bmcyRGFCVDRDSXhHWTlJTnNE?=
 =?utf-8?B?QVlmQnBncXlTanJINGdXeWF3UTgzNlNqUEJNNDNmVjhXeFJZOWRBM3d0R0Vr?=
 =?utf-8?B?V0hIN3Z5VFlQc2hscFhxQ2NUUkNGbE8xdnc0UnhkVWw2ZHFqUTBRN2lPbUxn?=
 =?utf-8?B?aVRVT1NoclpWZklQUkNDZGR5RHN0Wkp3SGQvZzU4RVlnK01xN3llMUdwZ1ZI?=
 =?utf-8?B?ZWVDV1lGYjdUYWNRZDFwR2hiU2VwT0JWNFZKNjBlMTRqMCtGM0k4MXBHWmhu?=
 =?utf-8?B?NGM3YmNBblpQOEJSUS9jYng3d2NYOHlMaXIvcnBaT1RiZ0lPbFJVVDdzaUtx?=
 =?utf-8?B?eUVGRjR2dXJyYml1dXVkSGZHQW9McTNKeEJmNE5yT2ZHdU1YL3NsTFRmb2lL?=
 =?utf-8?B?Y3c9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98d31ab6-3f7a-4253-cb81-08db056a57d7
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2023 22:10:50.3520
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cejgSXsCbSnIKmQw61SUygaW3lDXrFzPBVb52aDTzWt80w3h+q7iGiTDV01sAEcgeEvAj6Blm8pCpkhuMigCpWCjZqNdEhtCtA8OD74YKoQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7378
X-Proofpoint-GUID: _a6h0D5hlk99tTfTJkyUzgNKRUo4GXc5
X-Proofpoint-ORIG-GUID: _a6h0D5hlk99tTfTJkyUzgNKRUo4GXc5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-02-02_14,2023-02-02_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 impostorscore=0
 adultscore=0 malwarescore=0 clxscore=1015 mlxlogscore=924 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302020196
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 22:11:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59150

--------------2skCqBF2kEmm8zFl7Rsj0xdd
Content-Type: multipart/alternative;
 boundary="------------YdApORQV21xB8uH9idv39hQN"

--------------YdApORQV21xB8uH9idv39hQN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 312KvqHs028028

On 2023-02-02 17:00, Randy MacLeod via lists.yoctoproject.org wrote:
> For the month of January 2023, the distribution of dd times has a long
> tail that extends to 13 seconds with 2 events exceeding the current
> limit of 30 seconds.
>
> Reduce the timeout to 3 seconds based on the observed distribution of
> dd times, which would result in the timout triggering about 20 times a =
month.
> That's enough data to be useful but not so much that it's overwhelming =
the
> logging or the people who will analyze it. It also avoids the rapid inc=
rease
> in the tail of the distribution which starts to rise exponentially unde=
r 2 seconds.
> It's sensible response time for people to expect the system to have.


See attached graphs!

I don't know why there are two peaks that you can easily see on the=20
linear scale distribution
but the 3 graphs show why I picked the 3 second cutoff.

Below is histogram data for a 0.1 second bin of=C2=A0 the tail of the=20
distribution.

I can share the raw data or the 0.001 ms binned version if anyone is=20
interested.

../Randy

 =C2=A0=C2=A0=C2=A0=C2=A0 53 1.0
 =C2=A0=C2=A0=C2=A0=C2=A0 39 1.1
 =C2=A0=C2=A0=C2=A0=C2=A0 31 1.2
 =C2=A0=C2=A0=C2=A0=C2=A0 22 1.3
 =C2=A0=C2=A0=C2=A0=C2=A0 14 1.4
 =C2=A0=C2=A0=C2=A0=C2=A0 23 1.5
 =C2=A0=C2=A0=C2=A0=C2=A0 10 1.6
 =C2=A0=C2=A0=C2=A0=C2=A0 14 1.7
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 7 1.8
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 5 1.9
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6 2.0
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 7 2.1
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3 2.2
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3 2.3
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2 2.4
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 5 2.5
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 2.6
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2 2.7
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 2.9
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 3.1
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3 3.3
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 3.4
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4 3.6
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 3.8
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 3.9
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 4.1
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2 4.2
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2 4.5
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 5.0
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 5.1
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 5.4
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 6.3
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 13.

>
> Signed-off-by: Randy MacLeod<Randy.MacLeod@windriver.com>
> ---
>   config.json | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/config.json b/config.json
> index 446528a..e50ec44 100644
> --- a/config.json
> +++ b/config.json
> @@ -68,7 +68,7 @@
>               "RUNQEMU_TMPFS_DIR =3D '/home/pokybuild/tmp'",
>               "BB_HEARTBEAT_EVENT =3D '60'",
>               "BB_LOG_HOST_STAT_ON_INTERVAL =3D '1'",
> -            "BB_LOG_HOST_STAT_CMDS_INTERVAL =3D 'oe-time-dd-test.sh -c=
 100 -t 15'",
> +            "BB_LOG_HOST_STAT_CMDS_INTERVAL =3D 'oe-time-dd-test.sh -c=
 100 -t 3'",
>               "BB_LOG_HOST_STAT_ON_FAILURE =3D '1'",
>               "BB_LOG_HOST_STAT_CMDS_FAILURE =3D 'oe-time-dd-test.sh -l=
'",
>               "SDK_TOOLCHAIN_LANGS +=3D 'rust'",
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59149):https://lists.yoctoproject.org/g/yocto/messa=
ge/59149
> Mute This Topic:https://lists.yoctoproject.org/mt/96710817/3616765
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [randy.macleo=
d@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--=20
# Randy MacLeod
# Wind River Linux

--------------YdApORQV21xB8uH9idv39hQN
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2023-02-02 17:00, Randy MacLeod via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:174020E3B994F1E1.26884@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">For the month of January 2023, the distribution of dd times has a long
tail that extends to 13 seconds with 2 events exceeding the current
limit of 30 seconds.

Reduce the timeout to 3 seconds based on the observed distribution of
dd times, which would result in the timout triggering about 20 times a month.
That's enough data to be useful but not so much that it's overwhelming the
logging or the people who will analyze it. It also avoids the rapid increase
in the tail of the distribution which starts to rise exponentially under 2 seconds.
It's sensible response time for people to expect the system to have.</pre>
    </blockquote>
    <p><br>
    </p>
    <p>See attached graphs!</p>
    <p>I don't know why there are two peaks that you can easily see on
      the linear scale distribution<br>
      but the 3 graphs show why I picked the 3 second cutoff.</p>
    <p>Below is histogram data for a 0.1 second bin of&nbsp; the tail of the
      distribution.</p>
    <p>I can share the raw data or the 0.001 ms binned version if anyone
      is interested.<br>
    </p>
    <p>../Randy<br>
    </p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp; 53 1.0<br>
      &nbsp;&nbsp;&nbsp;&nbsp; 39 1.1<br>
      &nbsp;&nbsp;&nbsp;&nbsp; 31 1.2<br>
      &nbsp;&nbsp;&nbsp;&nbsp; 22 1.3<br>
      &nbsp;&nbsp;&nbsp;&nbsp; 14 1.4<br>
      &nbsp;&nbsp;&nbsp;&nbsp; 23 1.5<br>
      &nbsp;&nbsp;&nbsp;&nbsp; 10 1.6<br>
      &nbsp;&nbsp;&nbsp;&nbsp; 14 1.7<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 1.8<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5 1.9<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6 2.0<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 2.1<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3 2.2<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3 2.3<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2 2.4<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5 2.5<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 2.6<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2 2.7<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 2.9<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 3.1<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3 3.3<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 3.4<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4 3.6<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 3.8<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 3.9<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 4.1<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2 4.2<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2 4.5<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 5.0<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 5.1<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 5.4<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 6.3<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 13.<br>
      <br>
    </p>
    <blockquote type="cite" cite="mid:174020E3B994F1E1.26884@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">

Signed-off-by: Randy MacLeod <a class="moz-txt-link-rfc2396E" href="mailto:Randy.MacLeod@windriver.com">&lt;Randy.MacLeod@windriver.com&gt;</a>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 446528a..e50ec44 100644
--- a/config.json
+++ b/config.json
@@ -68,7 +68,7 @@
             &quot;RUNQEMU_TMPFS_DIR = '/home/pokybuild/tmp'&quot;,
             &quot;BB_HEARTBEAT_EVENT = '60'&quot;,
             &quot;BB_LOG_HOST_STAT_ON_INTERVAL = '1'&quot;,
-            &quot;BB_LOG_HOST_STAT_CMDS_INTERVAL = 'oe-time-dd-test.sh -c 100 -t 15'&quot;,
+            &quot;BB_LOG_HOST_STAT_CMDS_INTERVAL = 'oe-time-dd-test.sh -c 100 -t 3'&quot;,
             &quot;BB_LOG_HOST_STAT_ON_FAILURE = '1'&quot;,
             &quot;BB_LOG_HOST_STAT_CMDS_FAILURE = 'oe-time-dd-test.sh -l'&quot;,
             &quot;SDK_TOOLCHAIN_LANGS += 'rust'&quot;,
</pre>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#59149): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/59149">https://lists.yoctoproject.org/g/yocto/message/59149</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/96710817/3616765">https://lists.yoctoproject.org/mt/96710817/3616765</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------YdApORQV21xB8uH9idv39hQN--

--------------2skCqBF2kEmm8zFl7Rsj0xdd
Content-Type: image/png; name="yp-ab-dd-time-distrib--0-6s--jan-2023.png"
Content-Disposition: attachment;
 filename="yp-ab-dd-time-distrib--0-6s--jan-2023.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAxgAAAJkCAMAAAClNHdYAAAAOVBMVEX///8AAAD/AAAA/wAAAP//
/wC8j4/c3NyUANMA////AP//pQByIbxnB0hA4NAAiwDAwMCBgYFCQkITWeDyAAAACXBIWXMAAAsT
AAALEwEAmpwYAAAALXRFWHRUaXRsZQAvdG1wL3lwLWFiLWRkLXRpbWUtZGlzdHJpYi1qYW4tMjAy
My5hZ3K7KT2/AAAAD3RFWHRBdXRob3IAcm1hY2xlb2REvodEAAAAFXRFWHRTb2Z0d2FyZQBHcmFj
ZS01LjEuMjWOelr/AAAADHRFWHREZXNjcmlwdGlvbgATCSEjAAAbX0lEQVR4Xu3di2KqvBKGYb0D
4P4vdjk5IFAok0CW+ez77H+vVozptP1GDiJ9PAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAIA/bdguODYsxy5uDGPBJL9ZfYG06K658ceNz+j9+SMteT7HcTv68XjOy/Ij
n89pZ9wwPd9DVzfsgfPn9dZzZvfMDYSAzWGKWRvih1fIpu3z7/ic3jfSOJthO+5lWuZ2eWP4MWud
cacx7pobeLyfeocU8LRgWLRMsu6B/MDpx7jHJrd7IV47u/+nzZzlEwC/sfynhkjhyoEft1srNnSx
ypjv3o4zZY2xtzl2Yj1nxQTAr4aU9jFn/rAxpnG1EX9fY5zdv6foCwDl4sbUsNnV2GmM57oHFo2x
2rS3/fIxR3V1Iy4JDTi89u3zbox9jLv6YXQYNUzWsa9RY7gnfQi7RHni95zzBKm5X5+nvfPFHpB9
yj4ICoSNqXdmcvS2+w6WuuWy97jF9pXdHN57LqsbcUGYwRZN0xine32IubYawmzWILbhZquo8Ngx
7L+HvaC0J79qjDhBmtvGjuGhwxRWcuE7e3VaaLX5QcAJ25iaN6TmwK/3tG35EIbOeQxP0xa8d0If
8y58jO/qRpC3xlJe4z0p5HFHId5h23f2skTeeAt9Gz/PEyy+bLyR534fV7MHxfviCnF1WA04kZ5q
kxj4eZ88i9FarB7CONs+WTVGuj/GcXUjD1jmOiV6kd3Ul3NBqcPCRCeNMT9q7o/4we6LReY2A1xW
z/ppTbDd6Jijle9ID3of1oq34kwhqqsb2WFjWC9G86i41P59T5Dyft4Yqw/z3ItHASc2jbEXnlfI
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

--------------2skCqBF2kEmm8zFl7Rsj0xdd
Content-Type: image/png; name="yp-ab-dd-time-distrib--0-1.1s--jan-2023.png"
Content-Disposition: attachment;
 filename="yp-ab-dd-time-distrib--0-1.1s--jan-2023.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAxgAAAJkCAMAAAClNHdYAAAAOVBMVEX///8AAAD/AAAA/wAAAP//
/wC8j4/c3NyUANMA////AP//pQByIbxnB0hA4NAAiwDAwMCBgYFCQkITWeDyAAAACXBIWXMAAAsT
AAALEwEAmpwYAAAALXRFWHRUaXRsZQAvdG1wL3lwLWFiLWRkLXRpbWUtZGlzdHJpYi1qYW4tMjAy
My5hZ3K7KT2/AAAAD3RFWHRBdXRob3IAcm1hY2xlb2REvodEAAAAFXRFWHRTb2Z0d2FyZQBHcmFj
ZS01LjEuMjWOelr/AAAADHRFWHREZXNjcmlwdGlvbgATCSEjAAAgAElEQVR4Xu2dCYKqOhBF2x2A
+19sm6pKGERlJlfP+e8rZKJIblkJIv33BwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8NM044TXNP2yvZ2mXdDIOwYHiKS92oYfp7053fZfpNxu
bTsu/fd3K2m55u12nyjX3G9d0cFOqli21zNsM7NP2wAmsCIm11rjbw+R3cefv+3t3u1EudTCuNyD
e1+3/Z3mqdV1tBOOsVfbAH/dR28TAo+EpucywdAHcsX7U7m/kW6nRDzkU/4zozaXNwDwjqT/cIgQ
VxZ8O56tpKK9kFGyx+USyxxjajr2gWGbKxoAeEsTam+z5l86xr0dTOL3c4xP+VMsOgDAcnwy1YyW
GhOOcRv6QM8xBlP7tC5vs1QHO55iDtg81vZ5GZPefalvpa1Uc08e+yjVWk682ZIoN9y1WRoI535s
x+q8twJKm6xBYAE2meo0k6U3Xjsk1fXTunK9+VXabbqVy2DHE6yFlHS/t97c4811nWyw1pKDpIlb
ClFWt7X1u62CYiU/cAxvINpOZVur2twtyNmZPTzNXK1UAvhAmkyViVQR/HClndIbK1r0aB/TSXid
Qv/KEt7lO9gx8mws9Oo5IXJfKHhGmt+lryXy5M381rdzA73D+k5uu7uulip5ngfEwWU1gA/ER23g
gi9r8oxLqxcerFyanwwcI/JdjoOdXKCv61B0T7vhl8Wg8DBr6INjlFrFP/wt5bmR2c0AZjH41I9I
MJ50FGnljKjUXdbyPW/JpDrYybx0jOSLTinlqem1ayD0/tkxBm+l7V4tgA+MHGNKPA+RG90V21LO
pexkidr7YCfz0jEGn+bdjrld2WvvqxxjUBpgJjMco7UwYnOnSCnl+suM/R0jrQuafKS01MAx4Cxm
OEaeLnXL7/0d46lU3oxLZndLXOcYfa8DmMdnx+iuWpWQ0XeMssiIiY5LdbCTeekY5ZJRFxZ895a/
nvA6axzjL5voq3iAWXx2jC6txIf8nr86dyJ1EATmOUZu555ee45RYlR4zirHiIvP+X4wgBkMpD3U
eWBf1AVxFSqX6y3HEy7ju18BHuyU/FQ7Lvv6W/K1+ILu5q1FKSdXTkeyRU5acgy+VowGolYEqsFe
Exel8AuYS75Mmj90jWGRXlKUbbqLq6Mb+EyCj2y73jvYSXgVf7MvS/LneZK5eYZHmryVKNdqU775
Txy9O7A14LUm3lIDZgm3hMCVNPZvaucVpcRk0UFj02Wm0sbMKQMAAAAAAAAAAAAAAAAAAAAAAAAA
ADATezDgq3tUc056xuBw43WdBykv/6T7He/aALiWwe+HBvjPHf7s93f+81H7cUVSfXrg4Evlp9/e
Nf5b7nekn3SM0wCqYfwLpsK9Sfp+vKQC6TfaKVzYb1H9F0jj8oUk+PZ1dgHHgIp55Rjx67/WH5qQ
vMNSkuJTiOk9AHQMjgFfgDtG+n21vZVlROQ2od+s4uwQUz8pjUb6jvForknrGI83eZHyaKS1hmOB
4xU9NdWI9gCuw59wYHOjx7Q/PUu8FwvS2mLoGO4QjT33Y0g0MooYqaDtJLnb09Abf3h5m8rZGj0d
5FHRU8uCBuBSzDGyesezIHseVN8xXLTN0H2c6UZKSlK/L07SA89T1q31P9OanuyfFvNe9O5TNYBr
iQfTtM8f9v4pP3SM4g75mlKaJ2UhTzaS4kIKA220kR4LHY4RYWfgQ6+vkgGciT/sJj7Fh5qOD3R3
DNt2ZzCeHWO6kTY9jvNmHlVcLEeMeNxatOqpzeiv1gBcQnKM9EH/rGn3i6ZclQq/CDd4+mCfbiRF
iDb9rb9Uwv2gN5WyRuIpbxExPKYAXMljXZBkmZ1joOnGHoaectOy2YSdEh4ST9vPl2snG/nLDpM8
wLyrLEU8dDRpLy35w126yAJwGfF05fTczebhIQ+JpicCemDw5/614SFW2J8EmEoPL+oavUbax3yo
t/L4y2sTuwElecItXZB6HCzVsX2bhqXt9CfSntsGAAAAAAAAAAAAAAAAAAAAAICD8NuCAA5kLDoF
1tu+vMryGlRZzClV5tZYLa7rCaNX2L68yvIaVFnMKVWW1VhWuhJwjD+qjBM+sqzGstKVgGP8UWWc
8JFlNZaVrgQc448q44SPLKuxrHQl4Bh/VBknfGRZjWWlK2G9YyznlINwlMUcfZSj2z8EHGMdHGU+
R7d/COu/x1jOKQfhKIs57ignimtv3OhzjD/jGBxlOUcf5ej2DyGMPsX2Uw7CURZz9FGObv8QiBjr
4CjzObr9Q5A0GqSQ1Jik0SCFpMYkjQYpJDUmaTRIIakxSaNBCkmNCX8FA9UjrC5Jo0EKSY1JGg1S
SGpM0miQQlJjkkaDFJIakzQapJDUmKTRIIWkxiSNBikkNSZpNEghqTFJo0EKSY1JGg1SSGps/KX9
TfM0oErG6hLCjb51bi15FlAzkpIKo4tXEzFgbyQV9RQxAHZGUlqSRoMUkhqTNBqkkNSYpNEghaTG
JI0GKSQ1Jmk0SCGpMUmjQQpJjUkaDVJIakzSaJBCUmOSRoMUkhqTNBqkkNSYpNEghaTGJI0GKSQ1
FkZzUy0chqS08k9JJI2HypH/oRIRA45DUlpPRuMisDOSgno2+jkFYAuSino2+jkFYAuSiiprDFYb
cBCSgspGa146AAUkpfUUMQB2RlJZkkaDFJIaK1MpTfNBAEllFaMlrQcFJKWFY8DRSEqLqRQcjaSy
ehFD0n6oH0lhdUZLmg8CSCqLiAFHIymsp4iBg8DOSAqq7xi+jWfAvkjq6WkqhV/AzkgKqmc0cyk4
BEk9PU+lAPZFUleSRoMUkhqTNBqkqEZjrb81bWy0bTNMKBtMpeB4KtFVc3dD7vfHZtq/NX/35Bk5
odv4m1p8A+xLJcJqWjOkSa/tQ//3FB0ezlESykaCiAFHU4uu3DFM+ckHbhYt2i6hbCQGEaOWM4Cv
ohZZuWPcbBlxa8NNbiWh27A3e3V8O/lSLxFgI7XIaZlj9LEUHhgC25nQ1eUscwx7jU2vWI+Lw1dQ
i5zWOkY1JwDfRS26clewi1GPlbevsh8L7pzQbdibvcZmLWcAX0Utslp7VQrgEGrRmDuGOUQKDuWr
i5zQbaTtUg3gGCrRWHu/2R0fzb31Oz/au98TUhLKxt/QaOZScASSqhoYHaFG80ygViTlNOEYmicC
1SKpp6mplOSJQLVI6mnCaKZSsCuScpqKGAB7IqmqiTXGTfRUoFIk1TSIGHG/VzV3fcFXICmnYcQw
lyBiwK5IqmnCMVhrwK5IqmlodOxJngnUiqSchhHDd4kYsCeSahpHDMmTgKqR1NTI6IgY42SA9UiK
acoxuF4LeyKppsmpFI4BOyKppqmIcWOpATsiKaYnx3DXGKYCbEBSTZNTKc1TgUqRVNM4YsRNIZLn
AnUiKaYXjjFOB1iNpJbGRnuw4LIU7IekmMYRw/3iKR1gNZJaGhvN8gL2RlJR00bjHrAfklp6YfSL
ZIDlSIpp2ugby2/YDUkpvTAav4DdkNTStNHcLQX7ISmlV0a/SgdYiqSWXhhNyIDdkFTSC6Pr+YuC
II+klF4YTcSA3ZBU0iuj8QzYC0khvTKauRTshaSSXhqNY8BOSCrJjL49G89UCvZCUkhu9FR4mEgC
WIGkkl5FjD9ul4KdkNTRa6PxC9gHSSG9NprrUrAPkjp6aXT680ovMwHmIymj10bjF7APkjp6bTQX
bGEfJGX0xmg8A3ZBUkVvjGaRAbsgqaI3RvNNBuyCpIreGc1cCvZAUkTvjOaKLeyBpIbeGc1cCvZA
UkRvjSZiwA5Iauit0YQM2AFJDb03Gs+A7UhK6IPRzKVgM5IS+mA0V2xhM5IKem90mkoRM2AbkgL6
YDRfZcBmJAX0yWgcA7YiKaCPRrPKgI1I6ueT0awyYCuS8vloNF9lwEYk9fPZaCIGbENSPjOMZpUB
m5BUzxyjiRiwBUn5zDCaVQZsQlI9c4zmWz7YgqR25hmNX8B6JMUzy2giBmxAUjuzjE6XpWYVBHhG
UjozjeaSLaxGUjnzjLa51LyiACMkhTPTaFYZsBpJ5cw02q7YziwLMEBSN7ONxi9gJZLCmW00EQNW
Iqmb+Uaz+oZ1SOpmgdHEDFiFpGrmG83yG9YhqZolRvNdBqxBUjQLjPZLtgsqACQkJbPM6OQXy2oA
SCpmkdFEDFiBpGSWGY1jwHIkJbPMaFYZsBxJwSw2Gr+AhUgqZqnRxAxYiqRclhuNX8AyJPWy2Ggi
BixEUi4+NVpiuhVfUgF+luXqqoYVRtsD2FbUgx9FUitrjFb9EIBrkBTLGqN14yNcgaRUVswC00Rq
YRX4TVaoqxbWGc1znmE+klJZZbTwBwGcj6RQVhrNlSmYjaROVhpNzIDZSMpkncJ9+b20Fvwa69RV
BSuN5sIUzOYCnbTjhMWsN1r2swBO5gKVtPe2GactY4vR+AXM4QKZNOYb49QlbDDavujb1AL8BFcp
pL1t8I0NyyO7XruuKvwGG9S1jRQxbrd2Q9jYYrSf9JYW4Be4QCHtPblF4n4fZc1kk9F4BszgAoG0
4RbrpzQrqxk5UG5pA76fC/TRTaDalXOpTUb78ntTE/D9SApko9EEDfjIFeJIi+5m5fLCyMpejXnF
hvrwxWxW11rae/p+b+00KrHVaAIGfOICdbhHtBuOvKFqhpABb7lAHH5DyH3DkTdUDdwvtrcD38oF
2mgea4zmftuwyNjF6KtmkiDBFcpokiI3+MUuRodf7NEUfCHXCKPZdn/tHkanbzOIGPCK65Rx4VWp
gMkUvOQKXdy3KtLrb2gg8FZ2aAi+iL3UtZj21iY2LDL2M/qiLoDquUAV8dXehlXGbkZf9dkA1XOB
Kpp6HCO5hnnHOBl+nQsk0d5tKrXhyBuqjrlsQgl1c4Ek2s1i3FD1iY2mwJdyhSbiZqlR6gJ2NDq+
ztixRfgKJBWxq9FcsIUJrpBEWl7ECnwduxqdY8aujYI6F8ihMQ2ufkTI3+4rZu4OgR47q2s+rUWL
Sq5KGd4Rt/0bBlkukEJr6+6KHMMihr2Oc+BnuUALTYoYzZb7zvc3Onxj/4ZBlCukcL+nZ67V8c13
4ZppJdTKJWJo2i2PQjjE6FhwHdAySHKdEqqLGDabAjAukEKKF7Xcdl64xTqDqAHGBSqo616pHr76
Pqhx0OICGcRd55VNpRLhsUc1D0JcJ4INR95Q9R3cUAiFy1TQbDjyhqpviQX4Uc2DEBeIINYYWxbf
R32yl3bxjt/lMHV9wi9Kbfki4yijb910yjfHBeBnuGDsN6y6g+OMLn5h906Nc+F3uGDw43uMDd9l
HGi0zaPwDLhg7PP3GKa+VaysNgNzB9wCrhj9iBN2i+0oayYrq82kcw74XS4Y/Vh3248yhjlzOdxo
94zjjwPVcsHYh2OsXF8kDje6zKZuJxwMauSKYbe/813RL/ie8BVGTKnGmfATXDHu9odjavuh0oCy
zLDvwse58ANcMurpgu0GvzjH6HAM/OI3uWrYVy67nXOM9nCBb/wmV4x5+oOtzYa19zlG52u2+MVP
csGg+wNCttwsdZLR+aItnvGDXDDm1T1X6iVMpH6XC0bdHSPNp9ayoepC8Ixf5YJBtweutVX+HuMJ
/5ov99Ltkv6CczlPXWPsLsINfnGeOpMn9Pvpku6CK7hipJu/ZtPXGKcanS/ZupPgGr/CBeO85XqU
c6rROWTYQfGLX+GCga7qr7bOohcyzj40XMQFA13VX22dR4kaZR0OX84F41ztkwhf0vML+BEuGOqY
Sm24LHW+0eWuKULGj3DyMDdp5e2rC6E1xp97Rqw1bGecD1/GySPc3jf4Q+Fko42y+uaa7U9w8hCn
WVRz3/IjpcTJRgfmGhE3xnnwbZw8xN1zELZwstGBh4xwjnEmfBknj7CwY4RD5BX4JTbAaZw8vj3H
2OAdJxudGfrFRUbAOZw8vPFkTrUv+PrkyGGb15oCx3HywG5/PGdiQ9XNFL8wz0hncaU1cBQnj2rc
DqIcMQLzDC7dfi0nD2tvYaG3xnDy6sJiBZ7xrUiO6rVG2xwqnAK3+FYkx/VSo7vVhf2L5Yb/g69B
cjSvNtocwt0i/CJ5yrgUKCM5nJcbneJDXFojYnwnkqN5udHuC9kzfDOHDvgKKh7LuGxld6rbfnmC
wtVGhzfENSn3DEuAr6HawWziiWz3uz/ntrk1f/me9UqMtulTLDUifHRZldgIK6l2/Br/BtD+TF/6
q333FDfifvU6jO5mUTGzCk/x5HFp0KLeAXTHsL9kmbzDfMK8oxKjzQvCMcwvPGCUadawNIhR7/i5
Y9ifJXu8hpu4uXUYbe5g/pGXGt1FKlCn3kF85xh9SoWzKQvubEf4B76hSh26+sQ7xyiFLsQ8wf9F
T8YrfvEN1DuEtTuGkYOEu0W4iccSkKbeIXQn8OX2rbGrU74Ur81od4T0rxc5xoVAjHpHsParUpne
1Cm7SFX2wSrqHcM8bWrcH5KHeNio1ugIGPANVDuO7f1m94I06Td/nlDuCanQaA8TnWEWOUAXydGr
0WizyZ3DN5lRSSM5eBUaXa5IebCwJXiNdsJMJMeuZqPj0pS5Ro4e5R1kkBywqo32gFG8w72iaoth
AskRq9noNIcKl/CoEV8BjstB3UgOWL1G5/lTfM2X3SJyQAfJ0arY6Dx3cuewqFE8A4SQHK6KjXaX
SBvuEt21qYqNhmckh6teo3tukK/Y5plVl/dUGOpDcmgUjLZokRcZbvCT2U8JUA2SY6NhdHaK7CBP
Zj+nQDVIDo2K0XmR0c2q+pmeoHIuv4bkuOgY7aEie0jnDdlNYpIF1SE5MDpGuzu4L5QAkb0lNqFG
JAdGxmifQ9mGb/UiBlOpqpEcFxWj8wQqIoOK2fAnOlgyRntgsNhQ6JkfUcSXG1AVkkOiYnSZNuX/
8oyqK1AmWbk41IHkUEgZ3S0tPGD0HCNCSEmROq8vR3IslIw2f3Dt57mUmW9p2S+IGNUhORRyRvej
RLY+OwnuUCWSgyJndJ5O5QBSJlGeLHc+P4DkmKgZbfoPq30C5a4RuWqn8xNIDoqe0WUlkUNFDhh9
D4GKkBwTQaMjXPh/vWjRO5e8zdSqBiTHQM/ovJwontFl9PMHaXAlkoMgafSDPJ3qLSt6ztCLGD0v
gWuQ7H9Jo/96XtAtMNwjnk4p59v2OBNOQLLPJY0eKTxPqjx6jMU/WJCLnq42kp0uaXQf94f0ktfh
kZDze5OtLzhdRSQ7XdLoATGZcrdw93C/SLvd29hhhrzMgO1Idq2k0QPCL8Izcvgwfxid3LtzfZcH
25DsW0mje3QzqPjUzyGjl5EjxbtzfZcH25DsW0mj+4zCwtAvcp7Hkjcn+y4PNiLZtZJG93Hx38q/
cAzfcMHb1ArtX4Zkv0sa3cPdofhHjhUlZJTkKBrnm6vBCUj2tKTRz2Tdm0OY/nsxI/5F2IiNLzlx
BSS7WtLot7hX+Jb/y55Q/CVnwSlI9rSk0e8ZnJJHDSfvEy3ORbK7JY1+S44XeTfHiTjX7zvh6pHs
ckmj55I9wgJF3h+ccnaXfspXd8kVSHaopNGzKCsKcwnXe88vzGWmplVPCbARyR6VNHoGrvs4vfAQ
/99TwymKw5SOKJ4DeyHZoZJGzyEkHzue4g6RMzu/sAQ4Csm+lTR6Dl0gCP33p03uEN3LO8cghGxF
sv8kjZ5BX+/FL2I3b+eZVST1q/d5mQHzkOxASaPnYgHBtR9hI5LL+iJ7xpuOKNVgJZL9J2n0WsIN
Ij54qMjCjyBiKW/CByxHsjMljZ5NyL/sFd1nL3AHyc6SPSKSvcqwDViOZPdJGj2f4Ud/njjlRMvN
U6XiLXkrqozagMVI9p+k0fNxpY8JT8iSt6DgAaQrgmPshmT/SRo9m4HW+6nxbhvdjKrEiZwVDUy0
AfOR7D5Jo+fzTtVlWlUiRtotEyov8ro6zEWyCyWN3pVRTEle0SVNBRxYiGQfShq9kV5AiJVF3u8R
e6WDui1YiGTHSRq9njJ9sheLBx4hvB/cI/JGpOdJVjTwa122HckOkzR6A+EKthn+YC7gmRErzFk6
f4mXXMbeYD6SPSZp9AaSvuOcs8Rt2mTvPdFn/7DtSMpu1O3AHCR7StLo9fT9Ik4+vQ80b4keLiy9
X6PU+rWO24JkV0kavY3nUy4zqVH6iEH2h7LQIdlVkkZvojcJio//tJxIb2UqZemeaWsNDym54jCM
wEcke0rS6N0oC4YR4Sh50/91ub1t+Ixkf0kavQMlIpj0cy/ElqV3melfL5r01+hRCt4h2UGSRu9B
8YVBD0x2R0ykur0+o114RrKHJI3eAVf6aPVQNkocSBseMLoigz4b7cIEkh0kafR+vF1kdBtP+bAA
yd6TNHo34vO+N1EapOeNp3xYgmTnSRp9BGV5nZ2iN32KdJ9RpWL02hIke0vS6EMYzZ7cM/q4ZyS3
oNMWIdldkkbvT4QD27QV+Thi2Ao9Ioa/9zPHPgR9JPtG0ugD6Ct7UuUlLcLGoOcma0Ag2TmSRu/P
ra/8qV7pLteWeNEVImK8RbJvJI3egUn19xkWsOnVsMI4aZwPGcl+kTR6Dz5+xg8LTDjSOE6M8yGQ
7BhJo3dgQuhDhgXG4WEiaZwPGcl+kTT6dIoT2GtvM+eEV3x0t59EskskjT6fovis//6rO4jv0Z/P
SPaJpNGnQ8TYgmSXSBp9KEXj3jWu9eimklgu2RafgJdI9o+k0cdSnCDeTf7DvHxFKhwE3iLZQZJG
HwuOsTOSHSRp9KEwldobyf6RNPosQvhPRBDxvFJiXHS0P87+HSTPW9Lo05j2C0vv8kqJcdHR/jj7
Z5A8cUmjz4KIsQuS5y1pNEghqTFJo6+hW3GPM6ZSS0SJAvEv742ZTPwSJM8sjbZfeoRP+BXaiXH2
9HFir6RtlF5+KpqYTFRHWF2SRl8DEWMlkmcmaTRIIakxSaOvovtYTx//txRDPBCkTcuLqUMElyEl
ZPwakmctPAu8gK6f/HJtrBvyVMnSvTun+nQi6csRVpek0VdBxFiF5FlLGg1SSGpM0miQQlJjkkbX
gs2h7L88n4ppVJlNTcyoOnwCNijxrrgskqfkwyhpegVkj/Bt68f8kl/fdW0qM9LNu+J6CKtL0uha
yPEi+4d7gmshv7zpYQ8XgxLvissieUqSRoMUkhqTNBqkkNSYpNEVYnOgmBalrXGO//c8U4qUYZUv
Q/LMhJdHdeH69o4c9mdW/rT6I+U7h0BYXZJGVwgR4zWSZyZpNEghqTFJo0EKSY1JGg1SSGpM0uj6
iIVEek+vvqSwvUwk5iTr+Fh5WFK/qSiU2y1H6PakwOgfxvrR9W6ukfeyn4TO/SUKRLGcnvHcSOoy
clk9JK32zy9J06vCehDHGCGsLkmj68M9wt5d1JEQykjiyH6Sd6OWp/bE0xXK7ZYjdHtSYDTABJIa
kzQapJDUmKTRIIWkxiSNBikkNSZpdB346nqQMFhCx2sspn0/tvL6u7cQt0plER4V805p7AVRwrZG
hZ4SCl2lgznnKDvjQyNp+uX0JB0JT9su6E6D2Q1yp9trV60biKg4SH4zSsOKA54SCscPu7C6JI2u
A5N0v//6e6F//8//pf3YcrnEe1etE1FUzDulsRdECdsaFXpKKHSVDuaco+yMpNEghaTGJI0GKSQ1
Jmk0SCGpMUmjQQpJjUkaDVJIakzSaJBCUmOSRldJXBeNy6xx/b53Kdb/2QXb9L8XiVdPdfI13H6j
Hda8F7OsaKvkRnYu2ssZ7IybPZQzj7UbeTRgMz0tu+J7iWmruEPJy68u1DIS/QF5GpkoULKGgxf1
Y6eXMdp5avYYhNUlaXSVxGdyfJSHILoPatsxGfv/XiRePTVUFG/9Rjvc7ayYZUVbJTeyc9FezmBn
3OyhnHms3ZA0GqSQ1Jik0SCFpMYkjQYpJDUmaTRIIakxSaNBCkmNSRoNUkhqTNJokEJSY5JGgxSS
GpM0GqSQ1Jik0ZUz/srZ9uOL6pwV33FHYveNuBfp/Vcyc83Sin9DXooNSuRyw6TcaC/hqY7RpU+U
KC08H3CaeaUqI/cu7MhIjb7viSUre0Fs5xs5/MX+j62c2W80V7O89F9sjRkPbG68S3iuY3TpEyW6
vH7qFMLqkjS6ckYfytkFXJWRZXrxHMu1vVKw91/JzDVLK1l1UWxQIpcbJuVGewlPdYwufaJEaeH5
gNPMK1UZkkaDFJIakzQapJDUmKTRIIWkxiSNBikkNSZpNEghqTFJo0EKSY1JGg1SSGpM0miQQlJj
kkaDFJIakzQapJDUWBh9iu2nHISjLObooxzd/iHgGOvgKPM5uv1DwDHWwVHmc3T7h4BjrGPBUQZ3
o8btrfav3A/re7YTt8x25BtnU5legm31WioJUcbe477cSIoWcoNhQTTr5llytJqzi+nZQnvNb0+U
1ntJ/R0VottOsf2Ug1R4lJ684v+QVskJYfqmKzhGJmTrSSUtSpWWSnYUjINYuaiUG43D9mpbIXuP
5C7d3nJeye2lTBDm5u1sqRofznJXTjlIfUcpOjGl+q79KwryPdsJKXVkOacyvQTb6rVUEqKMvbtI
Iy+3kBsMC6JZN8+So9WcXUzPFtprfnuitN5L6u+oEEavsH15leU1qLKYU6osq7GsdCXgGH9UGSd8
ZFmNZaUrAcf4o8o44SPLaiwrXQk4xh9VxgkfWVZjWelKwDH+qDJO+MiyGstKVwKO8UeVccJHltVY
VroS4mIewHGMRQcAAAAAAAAAAABvaNtmnLQjg9aPO9So5eaQ44wO0rb9vd0Y9dgxBykc3Lwuza35
ux8io8Sg9SZd174P8ndifBLN7YDxHh0k7R7AqMceO4f0WNDc+aLhBfckoWPG+G/U+mO8HwNxxKHG
J9Ee4RjDgxylqMFR7DSOOJdM0x50GvrYGNhoHKpBrlIAAAMOSURBVEG/dX89ZJhHJ3E/5CiDgxwU
L0ZHsfh6xLkUcIwXeMcc1T0TrR8hqNFhHguMA8Q0PMhR9zoMj9IePZU6bOTlmZDujjy33hwxzKPD
tId8yg4O0tzu7SHztdGp3G9HfJD0OGrk5XmW7p48t37IOn94mIPm5YODpI/y449ii+NDeqxw1MjL
8yzdPXlq/ZjLtUPNniHZpxPbi2HDzS1dyuvn780Bp/AdND4QR0xw/p5bP+brheFhjrrfeXCQwxxj
2GNpEX7IpefCAafwJZx3VSr7xQHO8XQSR4hpeL0o7RzxeTI8ykHTwg4c4xVpcP1j6ghK62mC0zwW
rO0RYhoeJnGEmAYHsWtFR0z/n49y6PIbx3hJez/uRo3SepoP2BfftyMkOziMcchRBgd57BzhF2cd
JWjvt6PvOQEAAAAAAAAAAABYRL5i3Sy6ePnqSuqrdAApmnynbDv4/dGnnxu+vsPl0C8fAE4jfyNY
vglO+6+Fb7yLLh9cCkCDsWPMuUvmXZFDfncCcCpt6zdgNG2bHeOWbpWw+7oeL+kejSZunege25Fv
tPWEeGvy/TWH3uEEcDzpw93WGP6wBk9Mv0TynXQ30d1+sJdu77unBC9it8DGQz1yerrrz1cmh9ws
CXAe+cd4Hh+KYwxekt+kjfs9eYnHDL/LL9VOP8y2dHtEgq9MuG0VtHEFP1QeQu+lPjtGX+3uH3d/
kocn9bwBxwBtljlGXmBEmuXfylNJcAz4GspzDeyj/5Nj+PrBipgzpLqPxUWk+9chTKXgG7BF9UPR
5iG9xXcz4RitrcL9gpNdhkrXoB4ZOf32ePffpR72a2GAc2geK+cmPaXm8XnfPSwqPbcm/d+m3xw+
dN80tuh+7OZvtf0HqOmalTmHpT8KRQMEDPhV3t33ceCvhQEq5/VsiS++4Zd55Rnv7qICAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAIBX/AM31LGphZbuZwAAAABJRU5ErkJggg==

--------------2skCqBF2kEmm8zFl7Rsj0xdd
Content-Type: image/png;
 name="yp-ab-dd-time-distrib--0-0.2s-lin--jan-2023.png"
Content-Disposition: attachment;
 filename="yp-ab-dd-time-distrib--0-0.2s-lin--jan-2023.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAxgAAAJkCAMAAAClNHdYAAAAOVBMVEX///8AAAD/AAAA/wAAAP//
/wC8j4/c3NyUANMA////AP//pQByIbxnB0hA4NAAiwDAwMCBgYFCQkITWeDyAAAACXBIWXMAAAsT
AAALEwEAmpwYAAAALXRFWHRUaXRsZQAvdG1wL3lwLWFiLWRkLXRpbWUtZGlzdHJpYi1qYW4tMjAy
My5hZ3K7KT2/AAAAD3RFWHRBdXRob3IAcm1hY2xlb2REvodEAAAAFXRFWHRTb2Z0d2FyZQBHcmFj
ZS01LjEuMjWOelr/AAAADHRFWHREZXNjcmlwdGlvbgATCSEjAAAdX0lEQVR4Xu3diWKyOhCGYbwD
4P4vtkw2CBBlmyaj73P+0wICjTpfwybtOgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAOCn9esJZf1y3sVIP5xYyTvZDwiTnlo3ftzw8ubhLkx5vYZhPXfXvdK0uOTrNe7M
14+vedZsRBZMw9fl64yeWTfgCiwVk6+13n+bimxc//4dXuM8EuaTNaznm4zLul2O9Ju1XjPsBOOp
dQPd/Ku3DwUeJvSLyAR5BuKC42a+blW3e0Wc+/T41mqd51cAvCP1HwIRiisW/LDeWpFZF11Geng9
nzgXjL3NsQ/ydV5YAfBWH6p9iDVfDMY4ZBvxzwXj0+N7Tv0A4Dy/MdWvdjV2gvHKM7AIRrZpL/vl
QyzVbMRPcQHsp337uBsj3/2uvpvbzdWPkthprsE9Er65XaK44nmdaQUh3NNw2Dtf7AHJIPsgOMFt
TM01E0tvve8gVbecNs+32L6S0X7ec8lG/AS3Bpk0joNf3fTN17W0wa1NAiIbbtJFuWUHt//u9oLC
nnwWDL+CsG6Zd3CL9qPr5Nwzm5LmopYWAj6Qjam0IZUKPt/Tlum9mzXVo/s1LYU3V2iXduF9+WYj
TtwaC/XqHwlF7ncU/AOyfSenJeLGm8utH44rWPxYPxLXPR9Xk4X8Y75DzA6rAR+EX7WBL/i0Tx75
0lp0D24+2T7JghEe9+WYjcQZlnUdKnpRuyGXqUEhYW5FH4KRlkr58N/kMd/IGDPgkOy3fugJ1hsd
qbTiA2Gh+bCWH/NrcqWajUTFYEgWvTSXnypf5xWEev8cjOxbWvdiKeCDVTD2imcqcmc+Ypvm86Xs
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
SfgHM0y+W6nwmjVvWYWvMmD01f417VdXkZVGu+2o1IXEbFhp/W8z+S5Za3TcqIoBYe+jfSbfHJON
9r3HfkJC14J2mHw3TDZ6Fvc51lJ21gvg/5l8E0w2ekfoK3zXsUrIsi/B/zP5sptsdFHcjgr/FuFw
I1lI4rzQZvJFNtno4/J47JhzRL+ixeQLmje6vadwv0WrXiLUvvtvHZEQlGVCtjlZj9fXXovyJjXY
vs9SVfix7LEWKLXI1fv8zwUhZiMJY8sZ/aRlwhrQRCNyoUnxhTQob3R7T+FfWhRKPhV7FoFkfpvD
VzfXnJDlP7fSf2l790+v0TlZkxps32d5o9t7CjValPqCZb1n4UjjySJX81zZ1J34+J9y2yMreVbW
pAbbVzIMfRjKG93eU2ioRb6YXTWv633H7sRXPv/+ulJq0r/wYxePrxvWGpvB6F99N4ZkEIyz9lu0
quRVMfv//JeQiTR0QFg8LrVYr/sXBubgrP7lTfPtylr3vGydGj9AxThMX14+GXmjH3sKrCizqL65
RmXiuoZXlZyysEhFGk/T1xNWlo+7lqT/ZEIY8j/RjxfbFeZa/ls/HuZKKwr/bHCZcOlYN/qxp8CK
Pvu8olRU29ILBegeSQN7/+RxNxi+LHWbKY9Ja3bts2FwDfVfCcZpra3IFd964iykJv1bB2dOkH/w
wFzr1aX/4oD8c3mI4bAhD8aSPLdnsKLPHlrRk5V3bUW+bmJwQjayurKBHuOW5lb04C+0p9aTr+ix
tSojGLd88YqeW5PJYPQ+GKMbyfs8QEFWfg1bHpUCEEhn4bsNALNhnK8JAQAAAAA1rex6ZO2II/0w
hGPMleSvTu2jerutaes1aqWc7lpejl5T1o55RI6IV6zG/NXpx7qH9Qqtaek16qUxVVP6lOXl6DVl
7UgjtX/75K9OH64cqGW/NU29RlNCpsBWbtEjWjnxl7UjjdRu2OrVqRyM/da09Br5rzX7r6dk11BV
lLUjjUjHXLNfXr86dV+n/da09hp1TWyA3LbztKrYD4bbXqj4Mq9fnbqvU6k1bb1GsvMzD5u1fVp1
lIIhvxHrvc7rV6fu61RuTUuvkdvPsG/7tOooB6OreCho/erUfZ3etKah16j6wYBnZJejV5S1I29U
xWpcvzoVm9K9bU3Fhq1b1X9FLjZHOqrZPyolaqZ2/zhQLeXWtPMa+Vx8QThauRw9tUN64jjieuWK
O5Z5q6oHY7c1bb1G/TjUPg//lFYuRw/t6N1B8DAyvqbv6xn/1apVr7rN2WtNU6+RO/Fd9Tw8AAAA
AAAAALPioer+1CHG0vHt0nTAlH4Ix9yH7GqjT9fklS97+IoL6ID0oZp0UlvGy4XvvOtdPkQKsGEd
jCOXx7yb5Ss+jIAfNwz+6gq5z0ao9pdcZ+Eu9pm+yKUOfbjgYkgXXoRLgcKE8K2PF9bUvGwJeID8
cnf7GP4T/H7i8IojcimSuxBJ9jhk3jiLu5I03BsjTh/HuGfyHVfQ4Ye53+2v2D+kYGRfJDcyMI6S
Et9n+Ev4ZOk+TpeYhD2TylfgAjf5Cp6qPBT6Yuo2GMtq9/kYXQexXGozCBh0LhhxByNMc49P3UQa
To8SDNjmNoZcMA5sSoX9BzeLC4MsO+1chOn+dAibUvgGbqd6qmiXkMXOd78TjMHthfsDTu4wlPug
4StNf03f/cc7G/iYMHBHP+05969RciCHa0NBT/sOvfw/yAfRprrve7fTPY3Gs9r+c5xyzMqFw02f
ZgoroMPAr3p33UcTHxMGqihvLXHiG7+slIx3V1EBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACg5A/vCdiOy1vfWgAAAABJRU5ErkJggg==

--------------2skCqBF2kEmm8zFl7Rsj0xdd--

