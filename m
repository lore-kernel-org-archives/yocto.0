Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com [148.163.156.75])
 by mx.groups.io with SMTP id smtpd.web11.12447.1614265935742343025
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Feb 2021 07:12:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ni.com header.s=pps11062020 header.b=gvUKNOVx;
 spf=pass (domain: ni.com, ip: 148.163.156.75, mailfrom: prvs=7690fe3a90=alex.stewart@ni.com)
Received: from pps.filterd (m0098780.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 11PF91od029326;
	Thu, 25 Feb 2021 09:12:10 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=to : references : from :
 message-id : date : in-reply-to : content-type : content-transfer-encoding
 : mime-version : subject; s=PPS11062020;
 bh=VHp0jJQ7LnRS6tdqxV9Cs6IxjzpLGu4YYg0Ie+Ll3KQ=;
 b=gvUKNOVxYWCo+EP59rztIa5v1oRffnKHnHAzLChV/5fkT6Drx6LT8craVFSoWSq3rzrt
 pxebfcyFwCDgTOrxT3ZKl5lYjXdDuNCpYuHvX2f6VtZTPtFKw8Art+gA7TeoLGv3lnhx
 vLM68eNhu14Y6NKFIaj1wjHnbcuUKCc3lPb9UhwobKvxSB+psoiAQmP4nQBlg7AhF28c
 zECHg+VMs+UKpP3Unbd/saDXl0KS+Pizn7K9ilgzNO3GEYlzVAZeJBCIsPy9PEhKwngc
 9+lwNW9z3uM+nGguwX9FlEPolw6RrxsctQfzlNtzF26RPayY7hbKZuakOY61dfahG/bp 5Q== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2171.outbound.protection.outlook.com [104.47.57.171])
	by mx0a-00010702.pphosted.com with ESMTP id 36u0u11w6q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 25 Feb 2021 09:12:10 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NjI8kdd1vSatTSNLyya0vVUxEMvuKKb/QeKtTA7k2/ArR0I07YbXmTp0Dkwnlnf3cpvJ679N50zKBpA0p6aHCeBgq6l1yIl//RW3Ml4NP2BXDvnjXyN8Ml8VFDhAZ7U2mR6a6BQqfVfXArlvYG+w3gF1o8K0xacvZHgkEY0MD2loAuI8pSSgY2fMwwuOWHfJbGJM6VYVGcxZITp8m6IIVCG1P2JsHMdH22EyZO5ONAZsKkpEFZniKL7By57rWGDZ6AGYqRoU6XWsIb9q+6rZ/OIqmTCAdwi9ZUyRbTDwuHZND+EMeHiiV29+z/R/3roqG6eKFf4MtvpBgRd1Cb0THw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VHp0jJQ7LnRS6tdqxV9Cs6IxjzpLGu4YYg0Ie+Ll3KQ=;
 b=R+tDpMbYat0Chn5VILVkM0LaDStOyrG0qKYQZ8cQtph+lYe222GLyW6lqzca7b/EYlLGKy/x7EMjC62bhi8vRjfG7pU0RkN6Dc0rCwLcVOF7jQNYCmiDQBvEPb0ZdhIv30IO2wbs3aaVKhlGY4+V21IQp2XOgV5xaPuqkQa8J+dStTvlWVRqpB4FR43QqDq13u8xerXj7eO4e8+gWxHLc2Xg24c/FXKx6JqRvmeaeKb3hB0koN5bnjGUFP5qhafwNdUvkbnHXOZFQ7BDR6UCMHrO0YsKmtaQqWAnZPe4BYnv6Ky+Hf0cpfco6ZdbmjzrNM2frt/WptFnFXL86J8ZEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VHp0jJQ7LnRS6tdqxV9Cs6IxjzpLGu4YYg0Ie+Ll3KQ=;
 b=VK55LEF2qVJHGmv+oYxgBfKDRwBkWa9zbj13l0tHBjp5Wwl6htvJw9Rpe6d+sGv4fQqZPaZM/Sy8HsTAcmtvkjw+/1odRPyIbd6lCNXqSvUSG3beQorvny5XQ5Hb/3GE8Fb6Mr27N/hzPw6AywVsr0DwtU9Ppiy70DX/lYI5bGE=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=ni.com;
Received: from DM6PR04MB5306.namprd04.prod.outlook.com (2603:10b6:5:10f::25)
 by DM6PR04MB3835.namprd04.prod.outlook.com (2603:10b6:5:b7::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.11; Thu, 25 Feb
 2021 15:12:05 +0000
Received: from DM6PR04MB5306.namprd04.prod.outlook.com
 ([fe80::85b8:7cc:802e:d31]) by DM6PR04MB5306.namprd04.prod.outlook.com
 ([fe80::85b8:7cc:802e:d31%4]) with mapi id 15.20.3890.020; Thu, 25 Feb 2021
 15:12:05 +0000
To: opkg-devel@googlegroups.com, Christian Hermann <mail@hermannch.dev>,
        yocto@lists.yoctoproject.org
References: <20210225140001.10643-1-mail@hermannch.dev>
From: "Alex Stewart" <alex.stewart@ni.com>
Organization: National Instruments Corp.
Message-ID: <0a7a12ea-6c51-b510-39cc-697c25aecd21@ni.com>
Date: Thu, 25 Feb 2021 09:12:04 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20210225140001.10643-1-mail@hermannch.dev>
X-Originating-IP: [65.36.69.14]
X-ClientProxiedBy: SN1PR12CA0068.namprd12.prod.outlook.com
 (2603:10b6:802:20::39) To DM6PR04MB5306.namprd04.prod.outlook.com
 (2603:10b6:5:10f::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.3] (65.36.69.14) by SN1PR12CA0068.namprd12.prod.outlook.com (2603:10b6:802:20::39) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19 via Frontend Transport; Thu, 25 Feb 2021 15:12:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 065f2915-e9d3-420b-c364-08d8d99fb631
X-MS-TrafficTypeDiagnostic: DM6PR04MB3835:
X-Microsoft-Antispam-PRVS: 
	<DM6PR04MB383595B114D988496D260F1AFE9E9@DM6PR04MB3835.namprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2733;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	MwXE2QN8IpSR8f37JOUIKwOnPORwI6o6RpeHifKT4FMDRzUxJFL+5tfaElLAlim4JyWBExwxrVqHvSe3M828ULAQ7BbEK2bJvUqNjSEJdBXgyBYDwqC/tz1t5bbLpfhwoRue1GHAzI0NwXR/htfUK8e6bZW+dnUIyN08d2joi5/+Qk+R1IDZGZHvj50zCsGr2vVW7p/M2Z+xFfDrPsE5nWXFFERLmRHofpFGywwA9ZUfhZKQWkFBBwTpQkkRySrNEJl2rmuePeld3XLdX/Z94oEK4/BS77xtIwHX0jxhwjrQbIJs6Lr8C6tWz62Ywlqr49+IhZrYfcoSLsgUDqHJmEMesIpc3XSFYFcxicR0JW1ULUvJ9V76QRgZZ29Uj4YfoZY2VchgZ2xCblTWTXqpyBix46F0bzhpR2LkWL92sSo8+vfyVI9UzMQuPvdJD7jd52Lh0dgj89iF2ZCK48sv4M8V7Mhvv03V+pwpvVkGAQL99u/wHJVKqBh2RhGJa2EIxtvS9gnFo87NWySfDQlFGRRKybfAtNbNiwyOEgabnenNFqwMzUHiqztkQtsIwxbD/z6+QpM9mnruNoTcTcwTYV+l4jR2sqaRZf/hn6uMWnKtLWX1lPqV8LFQW9eo23JYR3mO5S3s9FsASsNQvYo7mg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR04MB5306.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(366004)(346002)(396003)(136003)(39860400002)(36756003)(86362001)(8676002)(36916002)(26005)(31686004)(16576012)(5660300002)(2616005)(66476007)(6486002)(16526019)(52116002)(956004)(44832011)(316002)(66946007)(31696002)(66556008)(558084003)(478600001)(8936002)(186003)(2906002)(45980500001)(43740500002)(15477505002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?MVhUMzZvekJtZ1VRNFJkMjlLR1NKL2pkdkR1aTZib3poT0lLNU9BcHZuczZB?=
 =?utf-8?B?YTROYkhJMDQ5ZWU4VWpxaUxOWlhTVWdwd2NBdHRSU0wwUGpMeEhKdi8yTURD?=
 =?utf-8?B?QUpmOFJCcmhVa3Nyc3Q1anpYTStBY3lBblJLWEFCa0YydWY5ekg3a0Q4cEVB?=
 =?utf-8?B?K0VoWHhuU0VVd2FkN2FjSjdDT2hwYjIxVVRSSHo5akorbUZ2UU5NaVkzVzZr?=
 =?utf-8?B?S2ppNTdPTVhKK1E2Wml0ZURjVmJuQ1RLOXkxSy9FTTRUajViZTJHL0FnVWVy?=
 =?utf-8?B?bHJyUjBwUjM5MHVxZ2xLUlhranM4cW9LamNFRWkzYjRzQllzWGw3TXNVUE9K?=
 =?utf-8?B?RmdFbmZBbEcvdGRzdHQrYUdtRitxZkx1SWcxbnZ3blNwWk5DM1JpakVpR0Z4?=
 =?utf-8?B?VW0wRDlWS1lwYUQ3VUs3K2J0OEs4dEs1cVBqQkRzcitwTSt2bTlucG8vMzJM?=
 =?utf-8?B?TThKUTVRMVZDbkdvTkRmdjVRekticGFJTHhWaE5HcllkN2JEeTY5aEZncmxN?=
 =?utf-8?B?MS91Njh0Z3BwazlUYlIzVU5MT0tMTmtOZFRuVzdGbGJ2NmxHYjhmOE9JQ2hX?=
 =?utf-8?B?VHZwUU9jY3NCUnF5d0ZzWmlsUzMxN0h2ZzBXTFhNSEhTZUllZ3dyR2dVK2tU?=
 =?utf-8?B?dTFWdkUxSzhWK25tL0FRREtSVHVCVUpTU3VrdWdMZWxUQzNMQzZaa3JZaG0z?=
 =?utf-8?B?eU1YN0pyRXpSTzBZTkhuNGFVRjhpL1ZNVzhic1RBN1ROTlRKb1NuR1FvUlVy?=
 =?utf-8?B?QVpWR1RnSUFPTHZDbGRLcTYwakFVejNlSGFmcnB1QjlaT3VwdEJvV0lhQU5v?=
 =?utf-8?B?c0pONStUN0l3RFVvNlNISGRmbkljbitVS3lNc2JJamkxbnNBemkxMVJ0N3h3?=
 =?utf-8?B?dEhndWNMR2lvU3B3cTFnUVVvRk1NYmcxUnd5NkJjUjJLckI5eGFiOGFtNURL?=
 =?utf-8?B?WlUwcGVsK1Y5Yk9Ja0hoZHkyMnZDWVd5K29UWERFYStGYUtPcjB3RW9rRjZS?=
 =?utf-8?B?VzE0a2lEZWppTk5sazd1U1c0K0N3UWRjUEppejVCcmRsV29ad3M1MEZRZ0xF?=
 =?utf-8?B?T2IyZzllR2l3bHZZK0lHdTN4NC9JMzJya0pjOGRRVTFIRlJ3NkIrYjc1N1BF?=
 =?utf-8?B?RThaeXVnOG0yc0FQTlRDZ0IyTUo4em50YW91MWNwN2c3K1lEb1c0OW9VemNV?=
 =?utf-8?B?dkdqNSt4UHBCNXlISGEyT2s0Z3BiY05oUWZZbHNPK1F4cm1pNXhITU9hYUNn?=
 =?utf-8?B?UEgwN3JaYXJ2VmdZcUJlbXVlNys3akhvYVRDd28yaEh0Vk1rdm1nbFEyaysz?=
 =?utf-8?B?MG10SWFQVERpdWVyYytDQ1ErSzJtSXd0ckNsK1E4T1RoeU9KUUZOMXBqenpN?=
 =?utf-8?B?ZnZaMGJpMG56UGZrUnJsa0tSQzZpWHlTSkdtVzBmVWtUdnd0OG5DdUsvRStE?=
 =?utf-8?B?SWtxSEI1OEhtSWdKSXhrelk2V2Z2cU9QUGZvRGx2VEtoQ1JCZmUyT3JyWUp4?=
 =?utf-8?B?MjhRVjdldE42aXZMYURIbkxjcHhKM1pjbFRLZnBqVWs4SGtKckJnTFRsMGor?=
 =?utf-8?B?Nk1KT1pNM1hrT3huY1U4aVA4RFhnWUlhcExrc3Rlekg2UmxKa05uay90bmVU?=
 =?utf-8?B?clF6VkxVMmpUcHdldXhGbTJFUFlQbWV2OFFxaklwTlJqM05DTDJzNWJwcWtZ?=
 =?utf-8?B?N2lzN2JtaXNJUGJVUjNOeVQ5L2MveHFRaWkwNGpjRXIwa1cvL0dLRGRuOWIy?=
 =?utf-8?Q?JY2B3fIPY78tnVUHUJ784gmJCMT4M4ayxZ3mPoc?=
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 065f2915-e9d3-420b-c364-08d8d99fb631
X-MS-Exchange-CrossTenant-AuthSource: DM6PR04MB5306.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2021 15:12:05.3546
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AQH9Gh0vcF5KVNoIi+u3H+QXh82Ig6NglV8mzQ0vvEKRKwSQFALrwZfzuem3Wss0FPpNEtF8xX80j6Z6Gt0/zw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB3835
Subject: Re: [opkg-devel] [opkg-utils PATCH] CONTRIBUTING: fix yocto ML link
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-02-25_09:2021-02-24,2021-02-25 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30
 lowpriorityscore=0 malwarescore=0 adultscore=0 mlxlogscore=999 spamscore=0
 impostorscore=0 clxscore=1011 suspectscore=0 bulkscore=0
 priorityscore=1501 mlxscore=0 phishscore=0 classifier=spam adjust=30
 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102250124
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Thanks for catching that and putting in a fix! ACK from me.

-- 
Alex Stewart
Software Engineer - NI Real-Time OS
NI (National Instruments)

alex.stewart@ni.com

