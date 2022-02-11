Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32545C433EF
	for <webhook@archiver.kernel.org>; Fri, 11 Feb 2022 20:50:01 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.1378.1644612599770372889
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Feb 2022 12:50:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=F0OfNtOI;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=9041c2685a=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 21BKUmZK018579;
	Fri, 11 Feb 2022 20:49:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : subject : to : cc : references : from : in-reply-to :
 mime-version; s=PPS06212021;
 bh=WkKIHhnCQsb9RAqeBN4zUss0QNH2PyQqSC6RxUgQPbY=;
 b=F0OfNtOIDxci6zW06M3UNezzb0LnT2wgWiptgwg+DO8Xh1TQBa2omhQzWnB73CRremE/
 w50Td5rjY4DhtUd2Cqo5Hgf/Ag7DecvsApsTJ8uQhtC6Bh/cgYZqXYlE+TKnSYdnRX/g
 jehlUXWRCxH6N1qkUiZIarIrGoe3UOAsANRPYssHIfkW+eDssa77ZSESqj1j8vpdwPF0
 2NNYgcw8qnMzJ4xhdyBpfbEC4DaTLkebN2ioSD4pwOn7p4pcNONJCijV6+Yf7zvNwDlW
 D/AKeJ0ab7iXEJCJ7bU1gie/050QXIA9s4i41pB0ofSgqsMvrn0E/PFomFOyXxKXBfwU Tg==
Received: from nam02-sn1-obe.outbound.protection.outlook.com
 (mail-sn1anam02lp2044.outbound.protection.outlook.com [104.47.57.44])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3e4fyvt4q2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Feb 2022 20:49:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T5iX6k85KA7kHydx7NGqD6a736glEYYGbhqCnukmprtCH5PYjK4N1G/jSswS5DBFWl0HUw/7PHtn1Z6HcX8OPsG/quT6mgxs4UQ2vsQYsqGqiOVr7Q3k2kTdb8tboFxSNGFEAaP6SdoZQ0nn5jqIiiInxEwfdtCUUxK4h656SzTumdz+5bZU9RwnyZnDTwpGP/dO117EKEyL+HHqgjmzLoHONrzGICMqvUOjZwpLVQhBzb9UAQ3GO9NUvzzmE50vy5f3v6CVbbmC9NIMzbJaMC3uKR+OBTs2pu/eV10FlmxuQBCktC82dDAagg2sQyKwiM25euoBZpVbj1AvgFpuNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WkKIHhnCQsb9RAqeBN4zUss0QNH2PyQqSC6RxUgQPbY=;
 b=PcN8XYgYRYOCd/bDz2jJA/RXUv8Uq6hi8NW0duLUUvVe0mZKavMFyMh6L1Gmb6MmpxHYartGle5KN08l5SaUt/QPk0eEvmtfAcgKwLmTJYivmVsun3zynFQbpvB1CvnfiHyvt8vHN2mJkuIEuRfVZDgTkLKIBMgz94cGwzXA6l2FEs2eQMnCf166OrL+Tl9gUa4vaSrGNbkkgR0kGTktNR4FcWlK3FCEflXud2sBWv7V90ODiccpUw4oYK1dlY3Myq2rQ2/j19J/Qhee3lOgD52j6QhaxqCpyxTMRjqosrMdkCv+iPUo556zmHNrmitvYEyoykaOEXcDL2f0f8p7qQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB3947.namprd11.prod.outlook.com (2603:10b6:5:19f::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.17; Fri, 11 Feb
 2022 20:49:37 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::fca9:1fa9:6fdd:9dee]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::fca9:1fa9:6fdd:9dee%5]) with mapi id 15.20.4975.015; Fri, 11 Feb 2022
 20:49:37 +0000
Content-Type: multipart/alternative;
 boundary="------------dSTwZ8AMfvx9TOGXpJEMZsws"
Message-ID: <a71a229c-0811-9d7f-3478-849d9aa9875b@windriver.com>
Date: Fri, 11 Feb 2022 15:49:31 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: Minutes: Yocto Project Weekly Triage Meeting 2/10/2022
Content-Language: en-CA
To: Trevor Gamblin <trevor.gamblin@windriver.com>,
        Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        "Wold, Saul" <saul.wold@windriver.com>, daiane.angolini@foundries.io,
        alexandre.belloni@bootlin.com, Steve Sakoman <steve@sakoman.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        "akuster@mvista.com" <akuster@mvista.com>, tim.orling@konsulko.com,
        pavel.zhukov@huawei.com, Andrei Gherzan <andrei@gherzan.com>,
        Bruce Ashfield <bruce.ashfield@gmail.com>,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>
References: <b08feca5-3975-4ffe-05d9-8657773f7cc5@windriver.com>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <b08feca5-3975-4ffe-05d9-8657773f7cc5@windriver.com>
X-ClientProxiedBy: SJ0PR03CA0214.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::9) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5e74e870-2e13-4088-fb1f-08d9eda003f6
X-MS-TrafficTypeDiagnostic: DM6PR11MB3947:EE_
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB394783BB955B6EFAE9075E32F8309@DM6PR11MB3947.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ce2eOcdviBIEBSPJhA5auzxH+mn/fJJF1TKLNZApkdhwhFbLO4s1bmGByCHq7vlHLXjpJ2lpAryazjdG6xnfojiFBKOLMb0eL21xxsRLhlGcjplGkOq+JRT2h83FHhChVLSAsWVrUr+VGYTP7niGiuhzqEsOPqtWdBEPOIqB2t0Sdrka6cLVzH4b+2pRIRuK7bbPoT48q+FtL92BC7dt3gzaD2pxDhMvWibYfGisPzJxJsuW3/omrkDjDxMpaukJSCh6DpK2E2rOPefx0Lq5GAxaEjik/N8ANjQ5VZ3cRmBKeHiXZJt8q4HqrSUt6bToQi5sGHfOzlT7pbsLV/nnRKYt5WyLbXTezyhBu9BbSFTduhS3MdSRAn8NRbovYRrYaij1D1n/EEzdqE9XsuFpTTw3T0W1Y8y5D7fypu+JSu/Zc8afdbRVGZBCMSUCwd/azOKl+owlNcWMa/G2j/fe0pW6BB7xw81l4qSQx4K9hjo4cc53D4L5XsXczJI/+CU7I+2m5djfbtQAGv1e6h0oA5orgSZ5lQevp3ILlVQ+EziXvWDdbt2E/rm0XtlronN3fwAgynUTl+BHxEbShQqDi8XiLUWbcb98EOc4uI2cCCXTcJEKIugtqrthIuLPw/zU8JejJoWD8P+0gX8UDNWfIoKrcM+DcjGuinluO4lUea7R6M4Ii+b4KHC2G6AyBO5CX9ZCUvwT/jrMi+4hN/5/WHUnVEuWn/+i1aa2pfrTVzKpiPPsz00p2hd/+mQZPlJ/Ad+NJ0FGALrP/vcRFZUMHkdlt1jAdPiMMbdrp8XcPDUr/Pmmuu2xt3DKECBldS14D6x+a/iEmQweTPBwPd093n92IHfq3jCWrHSp6QFpEi4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(186003)(54906003)(52116002)(7416002)(86362001)(8676002)(6506007)(316002)(31696002)(53546011)(36756003)(110136005)(38100700002)(26005)(66476007)(6512007)(33964004)(5660300002)(38350700002)(83380400001)(4326008)(66556008)(8936002)(66946007)(6666004)(31686004)(966005)(2906002)(508600001)(2616005)(6486002)(166002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NXJaR0pkblRzK0VZMktjZkJ5VTJIUDZ4TU4xUjMzWVFqNFRvS0tBYVU5U2s1?=
 =?utf-8?B?YlJldFFFZUJiUTdRRStyWDdlOEZLeWp6dk9tTVl5dld3amFIWTcxY2w2eXdP?=
 =?utf-8?B?eExuUGtRcFJMWks3enYra3V2bUgycmZhNTVDdHVCcUlGaW8zVitpRCtqU2FH?=
 =?utf-8?B?c0NYM1B2Q2hCc1F0K2NuaHZaR0hhRnpiOGtTNk5FakhYYTNZK2Q5YTh0TjA4?=
 =?utf-8?B?K2FqR1hYYlNSS1AwRllKMkpjYlFuQk84MnpJVHZLQzhCRFpPK25WcVplM3Q0?=
 =?utf-8?B?eWJrQUQvYWQyZXI4ZWZzaWF2T2h5Y3VPSEJkOUtYNVVDU3JPdnY5bk1QSk0x?=
 =?utf-8?B?aHBORmpWSUFhWXY0eU1nZ0cxTmgzYlR3OVA0b1Z4OXpiaXMwa0pORFpybEdI?=
 =?utf-8?B?SEJRbjVxTHJOQ1hzYnJWRGRLalI5eDFrYmVYQzBSVDdKY2hoc21rOFpzY04w?=
 =?utf-8?B?UndhQkxTYUxha1o5dUdIaGdHQ09QcTNIWkEyaWxLT2FJa1gwa2F2NXVzTEZS?=
 =?utf-8?B?MzRnQ1dZVThyUVVlS1V4REdGRjc5WkJCQ2xLcmlmdXZlc1lXTlBNY2FESmFt?=
 =?utf-8?B?TmdVS3huQ2dMZFZSWnhHMWZ2bDRVVFpYWXlEVGtlU0E1dUtHUWtOb2owSjZp?=
 =?utf-8?B?K2VDVm5IbGlIeGk3NlU4MXlxaFpmRXFSbitxekdGdW9vU0t0cE1KaldTR3Fp?=
 =?utf-8?B?SU55LzVRVHdzd3JuYWhGTnYzYlpJVEt5ZllKRWtGS0xQZ21tcDFNSzdLR3J3?=
 =?utf-8?B?QzBBY3dSbHpFeFNwZHVWajdkYlFCdm9tNno2bTdIS2E1SHdmR05OT05YdWZC?=
 =?utf-8?B?MWtCMzQvcHNGdVEzQmh5RlRiSDN4M0dhbFpxRmQvcGhGSHhVbUpBbitIcVNu?=
 =?utf-8?B?YWpYbjRwYzluZnY5ampMYmJDVkFaenZXNXU1Z1hYV2paSlNVZHNQSFZBN3dy?=
 =?utf-8?B?VzVYSUNBOVdBSlJTNXhvK002cHBkZEp6ay9pRXUrTU9Ga3JpV3ZRMkpYNXRq?=
 =?utf-8?B?aXVOZW1iMmZpRytMMzNhOTJIV2w1WVY2S1hRdW4yREZidWFrUEZjR1p5Vzhz?=
 =?utf-8?B?c1VEcHVaM0JUdU5CbkJ3ajhSNUtnWmxqUmJxZVFCL0JyOFhhQnZMWWhHbW5R?=
 =?utf-8?B?d0NGVHFkYjBRTExFcW90ZWpKOCtVKzE4VkNQZjdVZzlMOVg1Q1dscUlXL3J2?=
 =?utf-8?B?a0RVOVB4NjRodTdVOVEyMEpFZzNucmZreTdQUTE0NGxvUGlCYjV2RnNqTGVW?=
 =?utf-8?B?M2FOdWdTVHZ1MkkwOEh1dHg5cWY2eW9LRTAwT2dkcTlsbFZjR1hjc044TWRT?=
 =?utf-8?B?VnlxN3kwQ04xMXVCREE5Mk5nWDQyRUZyQkFLaVVqMEJQWGZCNkhkdVo4dks5?=
 =?utf-8?B?bHpLelBZNHg2MzlCaXM5VEMxQ2dMQ1VZcDdFZ0JIZC9aNmtMVVZNNkNXZ1J6?=
 =?utf-8?B?MnFUVEYvVk1ad2hyN3MyZ0JUbU5PQVlGa2N6cjlody9nN01obUdmanNqdGg3?=
 =?utf-8?B?Zm55WlRVc0lIMXVoRzMxMHlUT1BFQXRWSzFOR0c4d2hsTmY3N2lXMVRlTXlj?=
 =?utf-8?B?QlRpTk41VTNWQjBuNzM4Mlk4TEdSY1o1aFVHQ1pESDY1dzMxeVNvcjNaSUlU?=
 =?utf-8?B?OWh4elcxVWlEVFIwNEZjZnQ4ZklSWDRiVk41OEpJSDI2RkVNU0thNjgwQWUy?=
 =?utf-8?B?MkRRT05Lb0xiNEdqa29aOWZjckVvcFBHWmxwRjcwTWJTSXFrSmJZeFc3anh1?=
 =?utf-8?B?K0NRbC9rWHlSSHRTaVJlYzdsSCtLWVZFV2syTnJqc0NpQXpERmcvNUVyZXZI?=
 =?utf-8?B?TjV0aHFZRUduZTlsWDgxUDQ2ZTRlVUlaaU5hVUxqK0FEOEp2OHNTZ2txelpo?=
 =?utf-8?B?RVpUeUx3VmhRYWxxam9CUXdobWt6dkNPdU05bktYdHJrQVZLaFFtTlV1VGkw?=
 =?utf-8?B?RDFBenNZNEZicGp5ZDNjVC9yYnpWUzA4S3orcDQ3Ui9ucXBTUXFXUk9lUHds?=
 =?utf-8?B?UmhYcjFxT3ZyQ1MxelNkbjVkS3JmRWR0RU9ENUR5dmhtTmZpWmd1eTFhYXZN?=
 =?utf-8?B?MFp5ZWZsQzRURDhVZWNVL1dMcjQ4UHJXek9LK2x5VElOVDdRRHlmRW14ZFBu?=
 =?utf-8?B?czYwVm03d3FSMENObElreTh5d0pFVWNmeUFPcEQyUS9tcEpSV0pUa0srU3JL?=
 =?utf-8?B?SGpUcDFkSXAyR0VaOHlBT2QzOU1RWHltTDU2aDBHQnZHZVN3a0pPNkl4aTVZ?=
 =?utf-8?Q?a0IxXPW2J0pyyS82DBuCdmKQ9mp94jRB+Pqjv4JZNc=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 5e74e870-2e13-4088-fb1f-08d9eda003f6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2022 20:49:36.9047
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 Z3VlJ9vEaJxPlgm90KfMj3pPppf4u5+i088vGeXdwYK9ikDcBXO00Chy5knqPBPdlv2nKbJ/9JyTP3WIVv09pdg9/AaR7Zmsy3DCYGA4OI4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3947
X-Proofpoint-GUID: RQ-VFEosUTnEUbzF5mnwfhA6UJ2g2BXM
X-Proofpoint-ORIG-GUID: RQ-VFEosUTnEUbzF5mnwfhA6UJ2g2BXM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-02-11_05,2022-02-11_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 suspectscore=0
 spamscore=0 phishscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 mlxlogscore=999 clxscore=1011 priorityscore=1501 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2202110106
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Feb 2022 20:50:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56164

--------------dSTwZ8AMfvx9TOGXpJEMZsws
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-02-10 13:50, Trevor Gamblin wrote:
>
> *Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage
>
> *Attendees: *Andrei, Alexandre, Armin, Bruce, Daiane, Joshua, Pavel, 
> Randy, Richard, Saul, Stephen, Steve, Tim, Trevor
>
> *ARs:*
>
> - Saul to address NEEDINFO bugs from Robert Berger
>
> - Randy to search Bugzilla for prelink bugs to close
>
Done.

I closed 3 prelink issues as obsolete:

1.Prelink: doesn't work on ppc64
https://bugzilla.yoctoproject.org/show_bug.cgi?id=1331

2. Investigate if -mtls-dialect=gnu2 support within the prelinker behavior
https://bugzilla.yoctoproject.org/show_bug.cgi?id=8664

3. On-target binutils produces non-running code when linking with 
"-Wl,-z,nocopyreloc" on ARM or PPC
"The prelink test suite has two tests (reloc8 and reloc9) that attempt 
to link an application with "-Wl,-z,nocopyreloc". This worked through 
"krogoth" but no longer works on master. ..."

https://bugzilla.yoctoproject.org/show_bug.cgi?id=10168

The remaining issues that mention prelink, do NOT appear to be
ones that we can resolve as the prelink package/feature is only involved 
tangentially.

https://bugzilla.yoctoproject.org/buglist.cgi?quicksearch=prelink&list_id=648622


../Randy


> *Notes:*
>
> - (Correction) ~43% of AB workers have been switched to SSDs. Failure 
> rate appears lower, but still TBD
>
> *Medium+ 3.5 Unassigned Enhancements/Bugs: *79 (Last week 76)
>
> *Medium+ 3.99 Unassigned Enhancements/Bugs: *39**(Last week 39)
>
> *AB Bugs: *75 (Last week 73)


-- 
# Randy MacLeod
# Wind River Linux

--------------dSTwZ8AMfvx9TOGXpJEMZsws
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2022-02-10 13:50, Trevor Gamblin
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:b08feca5-3975-4ffe-05d9-8657773f7cc5@windriver.com">
      
      <div class="moz-text-html" lang="x-unicode">
        <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
        <p><b>Attendees: </b>Andrei, Alexandre, Armin, Bruce, Daiane,
          Joshua, Pavel, Randy, Richard, Saul, Stephen, Steve, Tim,
          Trevor<br>
        </p>
        <p><b>ARs:</b></p>
        <p>- Saul to address NEEDINFO bugs from Robert Berger</p>
        <p>- Randy to search Bugzilla for prelink bugs to close<br>
        </p>
      </div>
    </blockquote>
    <p>Done. <br>
    </p>
    <p>I closed 3 prelink issues as obsolete:</p>
    <p><span id="summary_alias_container"><span id="short_desc_nonedit_display">1.Prelink: doesn't work on
          ppc64</span></span> <br>
      &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=1331">https://bugzilla.yoctoproject.org/show_bug.cgi?id=1331</a></p>
    <p>2. <span id="summary_alias_container"><span id="short_desc_nonedit_display">Investigate if
          -mtls-dialect=gnu2 support within the prelinker behavior<br>
          &nbsp; </span></span>&nbsp;
      <a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=8664">https://bugzilla.yoctoproject.org/show_bug.cgi?id=8664</a><br>
    </p>
    <p>3.&nbsp; <span id="summary_alias_container"><span id="short_desc_nonedit_display">On-target binutils produces
          non-running code when linking with &quot;-Wl,-z,nocopyreloc&quot; on ARM
          or PPC<br>
          &nbsp;&nbsp;&nbsp; </span></span>&quot;The prelink test suite has two tests
      (reloc8 and reloc9) that attempt to link an application with
      &quot;-Wl,-z,nocopyreloc&quot;. This worked through &quot;krogoth&quot; but no longer
      works on master. ...&quot;<br>
    </p>
    <p>&nbsp;&nbsp; <a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=10168">https://bugzilla.yoctoproject.org/show_bug.cgi?id=10168</a><br>
    </p>
    <p>The remaining issues that mention prelink, do NOT appear to be<br>
      ones that we can resolve as the prelink package/feature is only
      involved tangentially.</p>
    <p><a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/buglist.cgi?quicksearch=prelink&amp;list_id=648622">https://bugzilla.yoctoproject.org/buglist.cgi?quicksearch=prelink&amp;list_id=648622</a></p>
    <p><br>
    </p>
    <p>../Randy</p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:b08feca5-3975-4ffe-05d9-8657773f7cc5@windriver.com">
      <div class="moz-text-html" lang="x-unicode">
        <p> </p>
      </div>
      <span class="moz-txt-link-freetext"></span>
      <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
      <p>- (Correction) ~43% of AB workers have been switched to SSDs.
        Failure rate appears lower, but still TBD<br>
      </p>
      <div class="moz-text-html" lang="x-unicode">
        <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>79 (Last
          week 76)<br>
        </p>
        <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>39<b> </b>(Last
        week 39)<br>
      </div>
      <div class="moz-text-html" lang="x-unicode"><br>
      </div>
      <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>75
        (Last week 73)<br>
      </div>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------dSTwZ8AMfvx9TOGXpJEMZsws--

