Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9907DC43334
	for <webhook@archiver.kernel.org>; Tue, 28 Jun 2022 20:38:19 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.3307.1656448693882175359
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jun 2022 13:38:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Z1XpspfE;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=417878fe76=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 25SJerXr009360
	for <yocto@lists.yoctoproject.org>; Tue, 28 Jun 2022 20:38:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : subject : to : references : from : in-reply-to :
 mime-version; s=PPS06212021;
 bh=OIaaNbwtPfe0Q+HcajHLrVxA+K8XqcV9So2nTa/GMic=;
 b=Z1XpspfEfKF5O71DbbPk8DNYsIPuHxS7p23JHWEQtNgJL/8GT78djje0uNr3ja3dbZaB
 lBqHJOl/FGr8DK9vWBtyyxphE7cUaZOH84e9NNdZgJW8SpDCYeUYtxZicPH8lbWwQkKN
 N8G+/Y9JulnEtjd7me6Nj8VJHR2WmQsSUdb47wAKusuEIGkz3FaCirAVNyj9OwLDwzQu
 BGuxZkj++3HovXk2GXh25PZ3aVHk28gujAPOVykCreA5plSvOz8uE3A+dH8daJclYLun
 iGfsRG8fx/xWiufBQLga1ZhGsMQSiHEs9cyHofEId/VOpRTuiigCPLqEHHrsWujYF+2R og==
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2108.outbound.protection.outlook.com [104.47.58.108])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3gwsbajn67-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 28 Jun 2022 20:38:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YDw9mPxfIkGbjxW53+45kIUYg6fRTlYqWVmPMlh+hP1MthPSoGZ9u771zCT9dIYIPIkhyK4DE7gc6NoTwM1RuBa07bLc2c3OjDiQZaWBDv03VcIei2QwaEgQVldBAjWoSaHgpXP5Vc57mxcNCA0MS5W7ChvvO+jfTV3viRbW7arcYxblS6Apnj+Dp8vdr+LOV6G91xJEemnM2lMf79N5jailrKqSscWnRFVOFH/CQMnTg1PDzFY8hR60tx+FNSpbe0BHq+WIyD/14luC2HvAYoWfHaVTyUccPga+WmxZlHQ0oSGxIBFkz3r+N6HO5M/k1NIT2lrBFzxM7anVykZyXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OIaaNbwtPfe0Q+HcajHLrVxA+K8XqcV9So2nTa/GMic=;
 b=DALoohEOqayihfpZpgbYKkjlEJTF7QbVn9RF8KpKhrZgcgihzjUysIsr6iukEuUSu8eWd50psnM81Nx1nR/x3qJUeDdi/qyRND+NbPMCTOI/N1zKqVTmzZJUQQEdWYSKjSxbMGUoSeGhJxlzemABlXcWRGDqg1MPg+VjsF9Bb6dmD4QmXd7mBBYVdNKMDNZHBUnFV48Yv6EmARF5SogGnkCscwFkWiaFKf6z/K6VHP6ibFEGj6qlUPzZplJVFrUaxVZDu4CAjVBtlRnhkL6c3j2omttjTgD5QrRIld9hlI8DpedcuplENsFhESxPSjY+hyqn4hPrTLKB5mXOkYFy7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 PH0PR11MB5032.namprd11.prod.outlook.com (2603:10b6:510:3a::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5373.16; Tue, 28 Jun 2022 20:38:09 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::a807:4bee:8e08:3053]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::a807:4bee:8e08:3053%7]) with mapi id 15.20.5373.018; Tue, 28 Jun 2022
 20:38:09 +0000
Content-Type: multipart/alternative;
 boundary="------------sZTCoHZN2Vsu5RmgHRCn585v"
Message-ID: <46b8d239-3e92-519b-444e-d377c6f82059@windriver.com>
Date: Tue, 28 Jun 2022 16:38:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] Yocto Windows SDK with meta-qt6
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <c52f4d74dd874efeb109127d675c9ede@mentor.com>
 <24666665-4e32-215e-dfa3-c8ddf0220d26@gmail.com>
From: Sakib Sajal <sakib.sajal@windriver.com>
In-Reply-To: <24666665-4e32-215e-dfa3-c8ddf0220d26@gmail.com>
X-ClientProxiedBy: YT1PR01CA0152.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2f::31) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: af25a143-166e-4cac-90a7-08da59461cdb
X-MS-TrafficTypeDiagnostic: PH0PR11MB5032:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	mxCEdVRRnJbZiBayEg52FQ28JyDUVyibo8Yl6Firz/ZUUEjWT2epLrD9H2/fEetOxCi4z0rwmeQ6eP2XBtjuCg6vODXsjTYSKnxFtpf2C/8Ff06aQf/2r/tyvgn0rfJnyY6d+NYfTTA/Cg+QQAOSFLspgB7i4yZYHcwMTatqS9WbB+qighdwRg5lN/z7dEj5elywOU8RRnG8A0L9MhEGhuCaYhL93Uq474tMtJnMxp/78P5RVxSdbOI+r/rlpyDitvTyfHvdNe3JaQtHSvap4lBp3q9wqkQJfT4Clm/CHb/rk8YGUEA1ICp06LdroIu9kAh6yNGv4eoKnq9EAx/OCkbsoj8+ehA9sxs2Mw+gao83V7DXcUCOOFRv1rF+bP8A4/Va9DxKc7RH4CXu46MmbsxugfEbUJu95eq40XmAobjFxzkRR+5s5zVZ1VJgdq4VoDAfk2W8Qskw8m+gKPKjfgjhJFIuBojZdxpB2jIZHMUmK2TQgjAFI9qwczsd+s+Oz3v1/y3GL51nBjWVLaDczMUCpO7N0e5SA6CwTiB3Q9woNRkoF5Q8T/s9QIoAI0QM19Hph1y4gTipVZTlLTHTy+US2x1mDSPE9VuQ8oP1TjuFz9z+bn+la2KkoJIaEfj2P6mgqRLPjxzF9RPsEnKZ4Ddj3cQDq5W8PmpXubl5Z+dKetutQdqUkUUaE2fq9S3cEVZFvQSMqRf+TMhQdvHsSaqtGyL9LPHLOfCOW5vzrg9URYXRstt9SdqTjPlb44MoeRmUSBXlq7iXgNL9fr1B04nEAaNwuUsquWoeMpFAQtSNrraIrCo+rRPkJERtnbORP6/DAKfW/3rSkEnj5A3hkbf47tR1HLlX2g4ivTd0sdwL3cgDyXPIEWp64ea+Z/BtHu5zESbJ/AMeh/OZkhN+X52kGecVbdx0unW7Yl6IXefyehd1kgEVZhfD1TYwXjDI
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(346002)(136003)(39850400004)(366004)(376002)(316002)(26005)(83380400001)(6512007)(33964004)(86362001)(44832011)(31686004)(38100700002)(966005)(38350700002)(2906002)(52116002)(6666004)(66574015)(19627405001)(31696002)(186003)(53546011)(6506007)(5660300002)(166002)(66476007)(66556008)(6486002)(66946007)(41300700001)(8676002)(6916009)(36756003)(8936002)(478600001)(2616005)(43740500002)(45980500001)(460985005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MXh1eFd3ZVFqaUVTL2JBZWQ0VVB1bVgvdHQ4OStoRGtNVUdrL0tUL01tRkt3?=
 =?utf-8?B?SzNya1MxU3Bqc09xSEtOcS82UUN6dEZTcXJCVmZ1d1FRL0REOG51TWpoN2tt?=
 =?utf-8?B?dHRaWGFqeFUxeE1JdU02NnBKQXJoTGRkaVM3blJGYUhEVFhERkdKdnVjSTRY?=
 =?utf-8?B?S0NHdnk1K3d1bzVxWGNkdUNnNVFoYVlYN0k2S0NqZ0lIa2ppaUgrQm1ZdXU3?=
 =?utf-8?B?TE5TTi90RzN0aDFRWW10cmlMd1FPU3p0dGZ3ZGhhY3JlaDY2UXZyckl1Sk43?=
 =?utf-8?B?ZWttQjFmU3Bvbkc0ckJPTXF5aWxRNW5SYVpWMURTeTQzWmJuWFpIdXpLUXhT?=
 =?utf-8?B?c0FCQ2ZRK2J6WlhjVS8wMUVjcE9OL1ZvZXFaQTJZTXFPUUd3K3hYUG1keXp2?=
 =?utf-8?B?MGwxdTE2cVp0Rmw5RkNzQlBIWnlVYXVxdnVJb09obGtwR3Rnbk9mKy9JdElP?=
 =?utf-8?B?cFcrL3FjTi9yZDBUcjFtVUtLVzMvNUIzWVZ6M0ZsQXlveDNRTHpXaHdhTkov?=
 =?utf-8?B?YWErcnErWmczdCtNTUltRWZnYjc2N0hYSThTR0M0N0ppanJMV01RRUZsVkd0?=
 =?utf-8?B?aGJ1R0FTalFDdkZVUldLekVJK1NsMVlFZjNYUWZVdEJPTDdZMHVaNTZhei9v?=
 =?utf-8?B?cGtsZW0xZkZaTGUyTTRVQ2Z0ZTIvUWN1TmRENldUYjVKWGZYSnp2OTl4Q2xR?=
 =?utf-8?B?U0o5TUo3NGVsTXljWFVOSkVUbUNUOXNlajVVTXluVXcyRGl1SFh4emNpTzAw?=
 =?utf-8?B?MHJGQXFYa0hlWGh1ckppNFQ0MThRY0s3Y3VnaDFzV2E0akhIQU41WDJsVENz?=
 =?utf-8?B?aUVEQUl1UTFVVzRxYkQ0UGkyQmNBcUdST2VYcHJWVHcxQk1TZHk1MDM1NnBR?=
 =?utf-8?B?TlcvZVhNT3RzL2Z1TWpjYWtMbmcvTnN0WDJndGRtcFk1TTdqRHZuNHQ3SEc5?=
 =?utf-8?B?WkcwYnc5NXYrY0o2RkhwTzVRMzl2UXFQTzhSNUVzenBXeWFTSkNLR3NWWkRJ?=
 =?utf-8?B?bWh5ZGVyZ0cwUGxNODBEcE4vTng1emVULy9SY2hRVEkwZkNibUFiZ1BHak4y?=
 =?utf-8?B?YkV4ejhLazk5UkxLV0dvOUVObFJFSWREUGZyR2QyTWdlYmZmYnFYRWMxOW1N?=
 =?utf-8?B?SXFVVVY2Z2xiREsvQjRvZ0tBNDBBc2JmWnk5dXNTWVdjUWNLQlBKSG5TVDk1?=
 =?utf-8?B?Mm1qdmRqOWVCcVpyKytlNTFOUEtwTEczNTdCTDZnRUpLcHNqQnNobGltSVkr?=
 =?utf-8?B?YVhrNHA2eFllNXh0bitNMHJEZGF3Z0YxTlc3Q1Y1M2V0NEkzWDM0dEgyY1Y3?=
 =?utf-8?B?ZUcrWkkwTjBKMUxhOXFxejlaendTUWNJOXhtNnVSZjVPM3IweFRySVFtVlNo?=
 =?utf-8?B?czJBbEhyUWtlWFBqU1prSDlKZTlYTTBHK2ovR2JDZVdyb0xpeU9mNjRwOXZK?=
 =?utf-8?B?NGxCTmRyMVh4LzBpOE43WWdPdCtyRm9sdTVoS3V3Q2NwT1cva0xjOFJOTlla?=
 =?utf-8?B?UGlDRVBWbFJPaVhIbEpWZnV2cDhxNjZNUk5BL2hGUlJMQ2ZRV2dWaFFGcUlK?=
 =?utf-8?B?ZmdBZU5mbmRvRnB6c2JHK29EaUJzMmxZcUdUekRCV1lqZm9KOG1DdDNNUklC?=
 =?utf-8?B?RUI2S2pLNFNoRnBzREcxM2RTZ3ZpYmt0SnltOG1QNi9ORUtHUlRjMjZsQTcv?=
 =?utf-8?B?WjJWMEdTanFUOTZsVWhkKzh0TmxoaXpkRmdqNDJwa0FjeXQrSFRkTktSaWxM?=
 =?utf-8?B?UEVxU2tlZFV1N1l5dTBwSjRPOFYyVG56Z2h5d0Z2MTZJMTdXazhIblZIbHc4?=
 =?utf-8?B?YUVKcVZaa01IaTRlcGdCUnltejM0TTNrZ0JlYU1NcXk0Q3BZUkVYQW40K2pW?=
 =?utf-8?B?dGYzcWFSeEpIeWk1S2lPSFI5L2RtL0EzRDZlTHZ5RkxYVXJLd09FTElFaC9K?=
 =?utf-8?B?T2hUVzdnNVVobFBSSUNiaDgxY2JiaEFqbU0yWjUxZ1Z3U2hkL2VjT0U4SFVw?=
 =?utf-8?B?R3ljQlh0VzJtcEdETXF6ckNsdkh5TFcyVEZCZXJEdlhGa1lYUHk4Z3Q0Ymxh?=
 =?utf-8?B?ZkUzUDkvd1JtOVdTajNrYUZ1RFNpVUpZTDkyWmFOeE1zcjZGUFJWUkppMzU0?=
 =?utf-8?B?WHpOOGpiYTR4dlUreVhxQzlTdDlXcHBJTlBvMFBDNGUxMGUydlZuRTFqZ3M2?=
 =?utf-8?B?b3c9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 af25a143-166e-4cac-90a7-08da59461cdb
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2022 20:38:09.4486
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 18BgXY1HAZskC/a1TVznce3kAEDaqTCopFZClh3bohy5khRh+9Jf9f3qxXbhLtVKsU4Zkc12wogXvD03ZfJb7bwhxgISQSSKD3I7HUyPTE8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5032
X-Proofpoint-ORIG-GUID: cMlCAfi4l4jTuK0WNrvH3DWa_cFG_q4X
X-Proofpoint-GUID: cMlCAfi4l4jTuK0WNrvH3DWa_cFG_q4X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-06-28_11,2022-06-28_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 clxscore=1015 mlxscore=0 mlxlogscore=394 adultscore=0 suspectscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2206280082
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jun 2022 20:38:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57411

--------------sZTCoHZN2Vsu5RmgHRCn585v
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 2022-06-28 09:50, Joshua Watt wrote:
>
> **[Please note: This e-mail is from an EXTERNAL e-mail address]
>
> CC'd the mailing list
>
>
> On 6/28/22 01:27, Rasool, Ansar wrote:
>>
>> Hi,
>>
>> I am trying to create a Kit in Qt Creator 7.0.2 from an SDK generated 
>> for x86_64 arch with mingw support (meta-mingw) for Windows Host. 
>> Upon adding qmake.exe file and compilers (C/C++), Kit throws error of 
>> "The Compiler GCC cannot produce code for Qt Version". However, the 
>> ABIs set in both GCC and Qt versions are same and compatible. 
>> Screenshot is attached below.
>>
>> Upon investigating, i found out that the gcc compiler 
>> /x86_64-oe-linux-gcc.exe /doesn't work on cmdline. It throws error of 
>> missing libwinpthread-1.dll library which is actually present there 
>> but seems like the compiler binary is wrongly placed by meta-mingw 
>> layer. Currently, the locations of library and compiler binary is as 
>> below:
>>
>>
>> <sdk>/sysroot/x86_64-mingw32/usr/bin/libwinpthread-1.dll
>> <sdk>/sysroot/x86_64-mingw32/usr/bin/x86_64-oe-linux/x86_64-oe-linux-gcc.exe
>>
>> This setup throws error. But if I copy the libwinpthread-1.dll 
>> library onto the same directory where the compiler binary is present, 
>> it works fine. Which means that, somehow the compiler is expecting 
>> the dll to be loaded from current working directory whereas it is 
>> present in its parent directory. So, the SDK paths needs to be fixed.
>
>
> Can you check if it works without any additional layers? Also would it 
> be possible to get your local.conf?
>
Ansar, also please include the bblayers.conf file.


Sakib

>
>>
>> Kindly input what could be the proper fix for it.
>>
>>
>> Regards,
>> Ansar Rasool
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57404):https://lists.yoctoproject.org/g/yocto/message/57404
> Mute This Topic:https://lists.yoctoproject.org/mt/92044125/4422444
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [sakib.sajal@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
--------------sZTCoHZN2Vsu5RmgHRCn585v
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2022-06-28 09:50, Joshua Watt wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:24666665-4e32-215e-dfa3-c8ddf0220d26@gmail.com">
      
      <div style="border:solid #9C6500 1.0pt;padding:2.0pt 2.0pt 2.0pt
        2.0pt">
        <p class="MsoNormal" style="line-height:12.0pt;background:#FFEB9C"><b><span style="font-size:10.0pt;color:#9C6500"></span></b><span style="font-size:10.0pt;color:red">[Please note: This e-mail
            is from an EXTERNAL e-mail address]<o:p></o:p></span></p>
      </div>
      <div>
        <p>CC'd the mailing list</p>
        <p><br>
        </p>
        <div class="moz-cite-prefix">On 6/28/22 01:27, Rasool, Ansar
          wrote:<br>
        </div>
        <blockquote type="cite" cite="mid:c52f4d74dd874efeb109127d675c9ede@mentor.com">
          <style type="text/css" style="display:none;">P {margin-top:0;margin-bottom:0;}</style>
          <div id="divtagdefaultwrapper" dir="ltr" style="font-size:12pt; color:rgb(0,0,0);
font-family:Calibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple
            Color Emoji&quot;,&quot;Segoe UI
            Emoji&quot;,NotoColorEmoji,&quot;Segoe UI
            Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
            <p>Hi, <br>
              <br>
              <font size="3" face="Calibri,Helvetica,sans-serif,EmojiFont,Apple Color
                Emoji,Segoe UI Emoji,NotoColorEmoji,Segoe UI
                Symbol,Android Emoji,EmojiSymbols" color="black"><span id="divtagdefaultwrapper" style="font-size:12pt">I am
                  trying to create a Kit in Qt Creator 7.0.2 from an SDK
                  generated for x86_64 arch with mingw support
                  (meta-mingw) for Windows Host. Upon adding qmake.exe
                  file and compilers (C/C++), Kit throws error of &quot;The
                  Compiler GCC cannot produce code for Qt Version&quot;.
                  However, the ABIs set in both GCC and Qt versions are
                  same and compatible. Screenshot is attached below.
                  <br>
                </span></font></p>
            <p>Upon investigating, i found out that the gcc compiler <i>x86_64-oe-linux-gcc.exe
              </i>doesn't work on cmdline. It throws error of missing
              libwinpthread-1.dll library which is actually present
              there but seems like the compiler binary is wrongly placed
              by meta-mingw layer. Currently, the locations of library
              and compiler binary is as below:<br>
              <span style="font-size:12pt;" id="divtagdefaultwrapper"></span></p>
            <div style="margin-top:0;margin-bottom:0;"><br>
&lt;sdk&gt;/sysroot/x86_64-mingw32/usr/bin/libwinpthread-1.dll<br>
&lt;sdk&gt;/sysroot/x86_64-mingw32/usr/bin/x86_64-oe-linux/x86_64-oe-linux-gcc.exe<br>
            </div>
            <div style="margin-top:0;margin-bottom:0;"><br>
              This setup throws error. But if I copy the
              libwinpthread-1.dll library onto the same directory where
              the compiler binary is present, it works fine. Which means
              that, somehow the compiler is expecting the dll to be
              loaded from current working directory whereas it is
              present in its parent directory. So, the SDK paths needs
              to be fixed.</div>
          </div>
        </blockquote>
        <p><br>
        </p>
        <p>Can you check if it works without any additional layers? Also
          would it be possible to get your local.conf?<br>
        </p>
      </div>
    </blockquote>
    <p>Ansar, also please include the bblayers.conf file.</p>
    <p><br>
    </p>
    <p>Sakib<br>
    </p>
    <blockquote type="cite" cite="mid:24666665-4e32-215e-dfa3-c8ddf0220d26@gmail.com">
      <div>
        <p>
        </p>
        <p><br>
        </p>
        <blockquote type="cite" cite="mid:c52f4d74dd874efeb109127d675c9ede@mentor.com">
          <div id="divtagdefaultwrapper" dir="ltr" style="font-size:12pt; color:rgb(0,0,0);
font-family:Calibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple
            Color Emoji&quot;,&quot;Segoe UI
            Emoji&quot;,NotoColorEmoji,&quot;Segoe UI
            Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
            <br>
            Kindly input what could be the proper fix for it.<br>
            <p><br>
            </p>
            <div id="Signature">
              <div name="divtagdefaultwrapper" style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:; margin:0">
                Regards,<br>
                Ansar Rasool<br>
              </div>
            </div>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#57404): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/57404">https://lists.yoctoproject.org/g/yocto/message/57404</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/92044125/4422444">https://lists.yoctoproject.org/mt/92044125/4422444</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:sakib.sajal@windriver.com">sakib.sajal@windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
  </body>
</html>

--------------sZTCoHZN2Vsu5RmgHRCn585v--

