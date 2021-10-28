Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C1CC433EF
	for <webhook@archiver.kernel.org>; Thu, 28 Oct 2021 15:32:32 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.14687.1635435151354520594
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Oct 2021 08:32:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=lK+EtQaz;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=6935163033=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 19SETj5a019753;
	Thu, 28 Oct 2021 08:32:27 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=8XZLQ9nTRpQIxpAmaCNPA7SVQayZHwdOn86e6V1h790=;
 b=lK+EtQazl1MOuTJnBw2BPCVd4hb42jpTGigJ1M/L0MXjjGCvwGWsRgwHaUOM9U1LqcMv
 6gElPO+EzQkdPoqFcY9LKe5jVbIGMAt87R2oB6LqrrcXoSxIVxXSwALhwxGEICbzuLDa
 1yZjQCpUFrLP8o8iF5IwL3LYB9VQEIGyVYchLvoYNn/pse3dYQNPR4bTOac32nXbY9DH
 iSlbnyr3aBX5myb54KaY6DRgqGDTsGW+RlZ/qgvvpz/SVS6CAmWwtlFBwq4dGDRJ7aIB
 ADcPPrMCyv2ijkK+oQ4OCa2N7G6I50+AP1tXeOUW+/hFtuDsELvPiW+Watrt00d9vfmq 4Q==
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2176.outbound.protection.outlook.com [104.47.58.176])
	by mx0a-0064b401.pphosted.com with ESMTP id 3by9r1gy0j-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 28 Oct 2021 08:32:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SKDxF8ge0hXrB38OlSXu60oKceZgKanJPNxbPh9xWaZz8YdpAH4DPFePquwaF83vrIFWggwnOcmHimpMYhq50ns/WkLNHPH2ol/IYjd929yb7DRxjz9sOlHQs6dQPP5MjmwbtrtvT73aUhyxvqe2n0fcX7VvxxVF3JiJzOccrAaym/B1LN+fG8j25kjdQ1SJuNBsNOW7DXWxPipT5ppFUSmgQ2ZRcNW68WzQ8UaHCoF30lvXSVyAbp9AhZyckvx0tlKEnqGm5iTJHQ/4GbaddRg1dW+ZahxetbGVe6AVVY/CLMD2eWuSHaPHEEKqEpgoxW36prcfuDjeRU10Wwc+MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8XZLQ9nTRpQIxpAmaCNPA7SVQayZHwdOn86e6V1h790=;
 b=nslhJqo54+4Fixygmpm5EISgAPkS6BcHoixegRr/0JeDHwYVkbo9/gvQlNtuJZB0iVvolQphCsplTIWXQtyX9c80Vy0/tXKrxFwl/6VJJ9DN4vmb90V71M6h5X9eQ5GFq/vPVbWw8gvPvwguWsToUPBN+970vb6ByXE+GY4CRxtwiNeVkOSnuAoAknbrj9WnoyqCq7FLKxVCFeUtkwpnp5c0p0HphVdI4kKLiNTnT+vJMEu3uRodHltsz5/TKtpKqE0k19b691LRXFkNsBv6jrLH8kmG0CREE4q1d6YYAeJskcVByV7Q9px1I0J0CncXm1DyKIlR8RrRi6sHoNID+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BY5PR11MB4102.namprd11.prod.outlook.com (2603:10b6:a03:181::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Thu, 28 Oct
 2021 15:32:17 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440%3]) with mapi id 15.20.4649.015; Thu, 28 Oct 2021
 15:32:17 +0000
Content-Type: multipart/alternative;
 boundary="------------n120W9NFFL4FoqD35GwxDkhZ"
Message-ID: <cb112c3f-3d10-4dd9-5f9f-682d0a8108df@windriver.com>
Date: Thu, 28 Oct 2021 11:32:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 10/28/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>,
        "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>,
        "Wold, Saul" <saul.wold@windriver.com>,
        Steve Sakoman <steve@sakoman.com>,
        "Surendran, Kiran" <kiran.surendran@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        "Mittal, Anuj" <anuj.mittal@intel.com>,
        "akuster@mvista.com" <akuster@mvista.com>,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>
Content-Language: en-US
X-ClientProxiedBy: BN1PR12CA0016.namprd12.prod.outlook.com
 (2603:10b6:408:e1::21) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
Received: from [IPV6:2607:fea8:c29d:d7c0::60cb] (2607:fea8:c29d:d7c0::60cb) by
 BN1PR12CA0016.namprd12.prod.outlook.com (2603:10b6:408:e1::21) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15 via Frontend
 Transport; Thu, 28 Oct 2021 15:32:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 53c96dd9-44d3-4035-d59b-08d99a281f50
X-MS-TrafficTypeDiagnostic: BY5PR11MB4102:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-Microsoft-Antispam-PRVS: 
 <BY5PR11MB4102A67D9D5A8B7D3319E8BB9F869@BY5PR11MB4102.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1468;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 nQvDAJYURzUQZkxOL5f9F4qFoFsKFKUmL29YgEFN+95mDO/1CO7Wts4O7RHZ90F8bkY5rtsTLzOog855A5WY94wOeA/diT637fCKGsRhdqwVTnJOCJDg3s3c54KW2KVLUAr+yoDkSpUdvstpl8JrDybzmxDX2zJ5VrQTdhYnqhmeOu48GDniicxEL/m8LDD0lvhdRWRIjqmvuFZRy70C6fRXt4xAxCpNQcIBWxjK4p0FxaCBLnJ9bsO2LMUTdKBpprh3nRNVeIMHY8oekvDhdRHQKyehrr01DpTQMGgx8rMqRM5QJADPaR0lYnFNxNuDJBqNHgSKx+3CoSl57RieUK/B70uRtC8+a/+nuSfs4b7j9ktD3h/0QTzAZpJPFz8oR8rpRM1Z6bdX/ur5ZZ55NsYoBoKvu51Tixq9dJJpIdNdykm2yk5fSXlkjdRWw4byn54Dt3xk47dtnQCapLpMjKvEYNcLyJRIDWp+D/sVvbe9Fwrtiz9ypu0CFM4ZvjyRGm2USD+tSKNm2bpYessfkOu/nrPVn8gTwIsv3CK+N5gkmSJuoG2iKnXK/5hnwd/LXKyC/eD1ZSFmW4eMtGLXO2vFAIFjM6Sqh4zmOAQ5S1Xywoxxubm0bXvHSlXM6GnA+v1WLAspTH8dmD9dBNYGpwNG3Yj8P+A+84x+P1m//1JFCEcoDh+4tWK6KpxLNbi9zZZOVpYRsiiLX70YTmPvEGuY5Oaed/X3pp6zTDADQp3sjIoYgPOymwAWPuzq1OWKLh28UhLTZVBK5DngTYIYHt2RMpecb6LhmMGr139iyxOqA3b3fMNVzNRcbUy2jeU3
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66946007)(8936002)(186003)(4326008)(44832011)(36756003)(2616005)(66476007)(6486002)(54906003)(6916009)(8676002)(66556008)(33964004)(966005)(31686004)(508600001)(5660300002)(2906002)(38100700002)(316002)(31696002)(166002)(86362001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?ZjkyQmtxRkhOZ3ZtNERGcVBERGRraUt5QURUOGlsVmFPUWtFZHhMeEh2ajJX?=
 =?utf-8?B?U3RJVS91Zi8vSE81Sm55aFd1ZldLL3JWcWxNWUhsTm1PVnZqMDkwMnhzNXBM?=
 =?utf-8?B?MnY1WE44enBIQkZrRGFFWHloYlEzKzNqRkZWY0R4L2pSeks1SGw0TUwvL2lB?=
 =?utf-8?B?dDhJbzY3Z3B6R1FWc1dqcDdxeHZWTWw4LzQ5V1ZBUlM4K0JwYmcwamZjUG44?=
 =?utf-8?B?NGEvcWY0cUpGa2NEeUhHWEJRZkUwZUkrRzgvQnllYWVxRFppWHlIdnhxYnRh?=
 =?utf-8?B?YzduSWh4ZmJTOVNhK1dVMGhXR0JYK0JkeDdZcEtIZXhURUI5bVFRRFlrQ2E4?=
 =?utf-8?B?RnBRWmEwcFo2UVQyYWtOWFMxQ04vRVAxRHlGeVl5UVRMN3M2TVRDVjFaZ2pD?=
 =?utf-8?B?OU5ocjVibWQrRUF5aTRPZXJBVGhDY2k0dzVQNmZyS0pYOWZmTlk1NkRZWWZz?=
 =?utf-8?B?alh0ek12NnNIeG84N1V1M1VvbCtrZkpzMkp3MSswVVhDelB1OCtSb3FEUzdQ?=
 =?utf-8?B?NWtXcjFocGFNdFdQRUk4WXEvdUhqc2Nia0NyMW5VdnhEYVhlRWY1MWxVQXRr?=
 =?utf-8?B?ZkhadFd3V2xEYlF5cGpjZ2M4ZjBvYkEvNTg1NW1IVytrUkx1bzNvMHRnaFZv?=
 =?utf-8?B?QmhhT0FVL0oyV3ZpSU1FbVljb09NUENtR1BtZ3NCME1sYkJUaHZEK0pTMlNW?=
 =?utf-8?B?NnNqTFpLanEvTXY1T2VJSXc5SkE3Wjc3d01mSERMd2pIZG40UlovbjBHMU5n?=
 =?utf-8?B?NUl6T2dDcUFNNGRSbHQvOUlURGEwbmh4YkRLYm5obS9mQjh3WEFiRTUxa1B2?=
 =?utf-8?B?ZGFPZm5Ta3ZqbFVqcVRpNDBhaEZkUXlEZEFYajE5UFE2dmhCUGVteHBVLzhw?=
 =?utf-8?B?M29yazhUSkdpRlk4VWRtQVR4dkI2aUJRTUh6aUJ1bVUxOWNwSk1LT3dpUDJj?=
 =?utf-8?B?SUNHaU80aWpwUFR3czBXaVp0Umw1L3FMenJGVmFiNFBMMWZTV3gxMDF5YTFX?=
 =?utf-8?B?RHMzMTh3QzFSODZMY0QwY1BTRWZBTlA2VEtFMU1QejZzTkhCRFVoV3k1QXVm?=
 =?utf-8?B?M3pFc1B1dnZqMUZHbDBtVElzbWlJT2ZmRmdxTGE1aXlPQWZORUlTdFRkSkQ5?=
 =?utf-8?B?ZmROUjFWcVlaMDRuVWlURnFNRjVUYWw1T2Qyem16bzJscW1QbTcrWlg4NHli?=
 =?utf-8?B?NUF4SFZzV0l0VW8zU2N5Q0swTVJ5dCtNNXlkdGxRMlprdFlVcGpOeEVtRTF6?=
 =?utf-8?B?d0lSdnFDY1N0Z2tVTGF6ZCtLRDdmWGwwQmxNT0dhOHpEQ3g0bDNCbENxYVJh?=
 =?utf-8?B?MEJBRmM2bXppRVJMWkE1dFdIeE5sUWtNbG5HZlQ0dE5tS0xhNjhPZnovTjhw?=
 =?utf-8?B?VVRFNFJvb3ZveVlVQWZGVnYrLzNMZGNOZnAxU3BWWTQ4ZkZpVXZvSHEvb0dT?=
 =?utf-8?B?TFVZTEJBczBPQytDREh2bFZvelFvUFRVN2JsSkVEZTRnWlZUdklzc25JZHQz?=
 =?utf-8?B?UlNmZE9SMDg5NUlDWXBHNSswcTRwZ2VKa09iRzduV1pQS0ZxYnFvZ0lMaDE0?=
 =?utf-8?B?aGlMckxaVTVnd0w1SWRnL3NHeG13RDZDa3hSOUovZ21zN3pJcWNGa2pkZmdz?=
 =?utf-8?B?ODBBblVhamJSTEdjT0hRQ3lsa3I0OCt4WUhPVnIzN2pPY2NxVGNmTmZKUGlN?=
 =?utf-8?B?eUVOa0dEZzNnbkUvVC9RWE9RVWFrREhUbzJ4YWZIcjB2OXBvdC9zZlg0ckZV?=
 =?utf-8?B?QzM1UWVEbUtxdFg4Z3NHUXBUNy9SWnRYSG5GcldIa3JhSmxrWGpTaXFkMXlD?=
 =?utf-8?B?VU9wSWNXelBLWjRtb2pETXdrMmNVV09lanBmcjBGWjlEaFNqNVFHK1VDaEVF?=
 =?utf-8?B?NjY1ZndhRjduc1ExbzJ6eFAyVUU0bFZoc242ZloxSDI4bUpXMjN3cVV0djdK?=
 =?utf-8?B?OGZ5TnBoejN4bXhTaW9UMjRzSmNlQ1FaNVlQdEhXL0xWcHE5YzkzY0VrNVRr?=
 =?utf-8?B?bWUwUFYzVUh3WWJPWlRRVStORGZiQlZJUEp4aXg1TXhJY3QyWUtqLzI5MDFU?=
 =?utf-8?B?Q3l3VnZDQmxYSnRKdVBaWlprMTdjcUtLeFpaMkxBWnZBdTY1R2w0dkpldENX?=
 =?utf-8?B?T1ZsbFNnUUhVbE9QWE4zS1c4bGo4UHp5NDVMNXUvY3E2NndZUElLVUZNOWpY?=
 =?utf-8?B?V09MRDJueklHTlV0NCsvYUNnalA4K3lva2MyZmQ2UHcxMUFkZGl0aWFtMTRJ?=
 =?utf-8?B?ZThwMFAvR3N3K3d3clQ5ZU5DbVlLc3prT0RhRkEvNjREQWdpb0RMZzBsL2po?=
 =?utf-8?Q?/h0oTfLhgsqx/3XFLE?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 53c96dd9-44d3-4035-d59b-08d99a281f50
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2021 15:32:16.7894
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 e7sYu6GtZlel7J1efRY48oDpK8niliJoRwseCVkiaePwZ/18QicU9X4YlV+ZaJnh6NznX/UB7huY+K9EuV9z+lAFGjxKVNiIzKaDSa+2Kiw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4102
X-Proofpoint-GUID: d7OiD23CKJVQpyj3Hz7XZi2IZJo-p-sI
X-Proofpoint-ORIG-GUID: d7OiD23CKJVQpyj3Hz7XZi2IZJo-p-sI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-28_04,2021-10-26_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 priorityscore=1501
 adultscore=0 mlxlogscore=910 malwarescore=0 mlxscore=0 bulkscore=0
 suspectscore=0 clxscore=1011 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2110150000 definitions=main-2110280087
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Oct 2021 15:32:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55180

--------------n120W9NFFL4FoqD35GwxDkhZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees:* Alexandre, Anuj, Armin, Joshua, Kiran, Randy, Richard, 
Saul, Stephen, Steve, Tim, Trevor

*ARs:*

- Everyone to review Old Milestone bugs and move to 3.5 milestones as 
necessary

- Richard to add guidance to Bug # 14613

*Notes:*

N/A

*Medium+ 3.5 Unassigned Enhancements/Bugs: *81 (Last week 13; 3.4 bugs 
merged to this list)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *39**(No change)

*AB Bugs: *62 (Last week 63)
--------------n120W9NFFL4FoqD35GwxDkhZ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees:</b> Alexandre, Anuj, Armin, Joshua, Kiran, Randy,
        Richard, Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
      <p>- Everyone to review Old Milestone bugs and move to 3.5
        milestones as necessary</p>
      <p>- Richard to add guidance to Bug # 14613</p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>N/A<br>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>81 (Last week
        13; 3.4 bugs merged to this list)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>39<b> </b>(No
      change)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>62
      (Last week 63)<br>
    </div>
  </body>
</html>
--------------n120W9NFFL4FoqD35GwxDkhZ--

