Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48BAFC46CD4
	for <webhook@archiver.kernel.org>; Fri, 29 Dec 2023 06:12:14 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.140338.1703830327096833476
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Dec 2023 22:12:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=U1YVgpVq;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=1727e084dc=qi.chen@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BT6ALr3019718;
	Fri, 29 Dec 2023 06:12:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=message-id:date:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	PPS06212021; bh=C8GnRl0ZPnVHoN7E3kzm8T/DlQmwAhdjOeoF281cR70=; b=
	U1YVgpVqzzo4YDrn1YRaBl6CS4x0waYH5R9XJsAbHYiLzyOcabg2xEflwgOcVPZ8
	zgVMd/QxMLDoDahzSKL05RNrD/smY86ReAHwVQv4porCojseXGr2BRipkSAQkd22
	e9Es00W/QRea5TwV4Tcx25b997esx0+RtLHot/cZh+vz7yiJnAvuKxQAspaywV4Q
	f+NvtpNOFyx6i6xKQqsLhWvO4oV7KPN4JK61eduRDFn5hioYQbSfztdRamrtXxeu
	FS4HGY02SKYqx74tmpAkqYqa91aTmdCx9G2p7eot99+tK9ghi95VKqCJ77FHD9dc
	i+VMv2cihcNJcxxxnQeQcQ==
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2101.outbound.protection.outlook.com [104.47.55.101])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3v5ph64xxh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Dec 2023 06:12:04 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gn+9mYTITLhZ3bttbDHHIEciwHn6PA8mAZ5vdBOe/PwuZjVJsLb4Zoq8rCmyxLBZ1oMQIUxTeVycrzfBdiFtzCFpFhFXiAg0rrjgAddz4q8qalPFDPqt3K/yLPFj6oo1svdCM0oPX3CL4OcokNuSQJQ3+n354tyXVkkE+XkmsdwfODdXf46kjYiNO68HDZ3fmf9xCiMhmrWqRG7/0tLWdPYns+ojBmGWLqo0aTcIImxuGxGwdtSWGxbgY5JLPeEAcQ4xBOHtDMcttLuCW08Yj8JNEhmga+4OSWHKchY/BTQGeExR1gBfvGTMFqU5du5wPAWUGBrKn2h8+jH1JnEv3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C8GnRl0ZPnVHoN7E3kzm8T/DlQmwAhdjOeoF281cR70=;
 b=Fd7xTpoE3rVC6+Rr3YGrz11BExI9gS4V1Y7gP599IISmoVsQ2zh1nTfUQfRTPetVx9vHytzYdmROJ4xwAMktRHfyvPVmMlb/MSqC/8/e78w4SsI/7Ymq5rkRs5oLf70ZtRK0fwPsN85Rq+U1Byc1LDR5JbNAuuA16QjMeHrikBkD9p7gdPf2K7Wqu62N4xw7m1Jkctzk4aigBPKki38OYOnZgwGIx8S7xuS752yNln2nZ0YiRukIQObcW+AJvpyrByR3hxSHg0+owIQT9WdfVK6VmeNFwmauSYuUDWi6WmWMKR8FqeO8rpb98vwwVW6dlZJnThVdsA1cv/gCyv/r2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by DM4PR11MB7206.namprd11.prod.outlook.com (2603:10b6:8:112::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.27; Fri, 29 Dec
 2023 06:12:02 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::5d84:2b01:5029:9315]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::5d84:2b01:5029:9315%6]) with mapi id 15.20.7135.019; Fri, 29 Dec 2023
 06:12:01 +0000
Message-ID: <4dd9ec90-0b93-9f69-2b7d-0466f05122e0@windriver.com>
Date: Fri, 29 Dec 2023 14:11:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] How to generate a random number for all recipes?
Content-Language: en-US
To: yocto@lists.yoctoproject.org, tyrocjl@gmail.com
References: <CANzPQ-CLdx1y_skPWVvQBSpZpYEQLGvOsNJn5smG2P0du=t7Cg@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
In-Reply-To: <CANzPQ-CLdx1y_skPWVvQBSpZpYEQLGvOsNJn5smG2P0du=t7Cg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TYWP286CA0020.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:262::7) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|DM4PR11MB7206:EE_
X-MS-Office365-Filtering-Correlation-Id: 478d7d51-0936-4bbe-fa07-08dc0835126e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	czSGNjHBqC/pipZg65Hr6XQQ1N/I2k1w7o/gZpph2nCjAnIWcatHJCyHkzkD8UgMSgpfezS99dgx4rO+TUmT+MncDdXTMSzHAPYl8WESHEpbjmLd9XOgu3EA+bESNIPEcyXMraYa8lzf4ZGTgGoj3HrPCZY9DB+s9uarDhKYawie0KQRoBG6rf4J60GwJyLFPtmfaOtJVMiI4DvsjkcBv1jSdHI2f1vkQDqNbTAUH5p/+OEjChnR/kbd5zMwyP2672spX1BrQS6ISP9x/zNdqiRCtPFMNQpJq5qA55MJzzR0UQiw9hPFXJ/6HNRztz0lx/VVPJ6hO1xsix2H/hQTyReZ1/aX0bxKlnbBo3qesAqILawYZy5FRUprjDrs2P8IvLHCPkGCZTlnIZXBah4jsQL17VHS5kvUrh6U2463eKQvNT1qx+wJDbTeiXRAotAZGjhxWydcSlTq82VDlBstuX4uRZvW0e2Q1GgGclse9pD3AnzlgmbF2NhtuCCJ70i/5KUa0DR9DuOET0z/6AWn0SyPfy/o4qjsAuQ0plGqbYVGLr2qF5sLtsPYRWLQf2U26w2dtOuNipRr3cpyegH9tso9vSZq1G+NxNKFuncpy0aybbbkmzttwpL1/I3k+m7PiPGdTrl9cmLofAV8mJrCZg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(39850400004)(136003)(396003)(346002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(66899024)(66476007)(2906002)(4744005)(5660300002)(66556008)(66946007)(31686004)(8676002)(8936002)(316002)(41300700001)(6666004)(31696002)(53546011)(26005)(966005)(478600001)(6512007)(6506007)(86362001)(36756003)(2616005)(83380400001)(38100700002)(6486002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VmtwWjBmRWxrVmRRU05SUlV3OFFTakduZUdtQ1pDbXltNTlMN1IxcFVlY1gw?=
 =?utf-8?B?V2NZQ3JnNTR3L29UV2ZSSHFRVlZsVzBXb3NkSFZaSWpZd2JJMUFOcS9lS0I3?=
 =?utf-8?B?OHU2cDVjMWFZZXppSGRkSm9RbHcxcjcwVVBSeDc1S2hVNDk1WHpYOWU2R3Nk?=
 =?utf-8?B?V1BGMGEvbEJCZlR5bzhqTVZHalhxK3BRMCs3N1h0MUVhSjd4bkx3cFJJWXJ0?=
 =?utf-8?B?bjBTalRRMmVySnJvSFJibjkydjFwR2tsSTNGOWVldFduZXE0QjhybjFDcGdT?=
 =?utf-8?B?V0JOWkJZYklOSi9XUWdrVEJtb3hnL3ZTMCtpMVZXTkY4MnFzV0lFVFd6WVZ1?=
 =?utf-8?B?eHlqbVAwejhCampZZnphUDkrT2FZUEhsLzRnd251VG9jWnNaaURRbEhnYzNP?=
 =?utf-8?B?aFRsN1lsRzBGNUFWbnlPRGx1cUszcnQ1aXBtZERTQnFXY0lMNGZPYk14UG9s?=
 =?utf-8?B?SG9aUHdKd0s3ejhueTU5RTRwWWpqelZabEU5RTNNbkVVYUplWXJGQnpSME5S?=
 =?utf-8?B?Nk1TbTM0akJnSGpBU1VsaXRYVXRMRFh5ME9EbWhLeUd1bGdKaENwSE02ek1n?=
 =?utf-8?B?SElyUHBLc0pkQ3QvZy9XQTNYVlh2NzFvZ21CMk1sanZGczZWb2pCWXVtdmlm?=
 =?utf-8?B?UVlESGpsZDNkdmorMzBGNWllOGtlcTRNVEI4ZlovVkVJMkFqeWkvbmVSdC92?=
 =?utf-8?B?TFIzU2xxV3owTXczQjd5OCswUnFVRGY2elVNK09GYTNzTUJ6SGZXUXZNNmIv?=
 =?utf-8?B?MW0wTmtkWERzZW5wbnJBd1dXdGhVSWtqYk1sMnZxdEJDbEMraXZDV21hMEdY?=
 =?utf-8?B?ZExkSVdWai9qZ294ZUp2eEtGTG9kMWdIRitlR2RHa2ZPNTFrT29ZY1RQbjht?=
 =?utf-8?B?Y2JYa25MMTN0T3BmVG1NcU9nMTJLQ3NpT0ZiMnVSWUc4OEZyUWVJUGo2clBR?=
 =?utf-8?B?YVY2REZBRmZDckYxeWltNEFjblhneUVVbHM2K3B0ejdOT3lha1FRdGRxb0lC?=
 =?utf-8?B?VEtjUVpkT2dVcXR3MXpKbGxYNldDQ1AxTDU4RVphSy9lUGp3NDgrM1VDQ3U5?=
 =?utf-8?B?V2dnWXZMWUtpaWYvTEdrVEJoZTNEWUswb0dlcy9VVFNJWjRhc3BRM25ycHFo?=
 =?utf-8?B?dVEwckRsbDdqYXF1TGlnNEZJMjVoNU5JMVBMYUZoaGVUOGVpUHhYckFyWXhp?=
 =?utf-8?B?V1g1cVNEUXVUMnNGKzZZR21JeUYwdWVrNEp6S0packw5dzVlRERmQ3VEVjJP?=
 =?utf-8?B?aFpmSVdydFZ6V2JUZ1ZUbTU3R21zc3RLSW0rQ1F5bWFRenhYREttZHlZcmdh?=
 =?utf-8?B?bzd3Tk00R2lUSU1xNnN3bVFMWE05VHhFaGNxV2NSb2l0elFXQUtOU1JMdk5o?=
 =?utf-8?B?V0FWckJHRE9XVG4wYk9lSUp6c01NZEJzdUg0TWt5bVJSTUdOS2k4VEw0Ym43?=
 =?utf-8?B?a3FscWMrOGIrdmRsdHZaYXVmR0gwYnBmUXJHeUx0Zmx3c2U2enlJUTIxNWlY?=
 =?utf-8?B?QUZZZVRRY25FK0Q3RGsxNmh1TGQyUE5ramtKajJxTC9nanQ0czRFbE0rRUFt?=
 =?utf-8?B?Vmk5K2d2bjZSaU1Cb3lCejExRjdBK0ZmYy9DYnNKbVNDKzNOL1dHbmZyMisz?=
 =?utf-8?B?SUUzcVZFa3MrbEhmb0ZOdFh6S2pwbkVQdlMyY3VpT2VONEN3SmYrcWVQTHlz?=
 =?utf-8?B?VnNLM21iengwdVV1cVd1V2NwT0REQzljSENLWmFLV1dqeGZsS0drQXdvZ3hX?=
 =?utf-8?B?cUo3RXNPaE5QSWVwL2czRVlnckdwZ2xFc2dRdjJSTTlyQTBqckREMGlsaGNq?=
 =?utf-8?B?U1NHTGNUTER4VnhyeDdjMGpsOWd1bVJINXpHMlpWSVdESkYxWjZlOVZIbXVQ?=
 =?utf-8?B?a2ExeituWXNnQWdVRTNTQ3ZPQTMwUHlpR1QzVzY3OXdYckRJUHYyMkY1ZE5J?=
 =?utf-8?B?YVVpc1FGVzZqY0Z4UjFIQjVjbTRVNVlBWDdRRXY1Wkp3NWdRY3IrcXBQcXBH?=
 =?utf-8?B?OW1pcnJZa2N4cnZ6Mm5HaHNRVC9sZXlqdDM3S09JT0xYWTRkOXFxWGJhS3dv?=
 =?utf-8?B?dW02VHdFS0VmZnNZTmZaSU03NUhEZlJNSEFPeUkyaFIzQnRtdk5PbVlqUHFP?=
 =?utf-8?Q?Htn0mMRSxWgC9TzLuh3l92w0S?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 478d7d51-0936-4bbe-fa07-08dc0835126e
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2023 06:12:01.7614
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JDhEO60iopwxDorzzMGWNp+r5P+MCDTpagC5Wauzm+FoF3Thy/6zxJXNpQVz+gd16W0HYAiM/TF+Na7ZNvidvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7206
X-Proofpoint-ORIG-GUID: RuOb-wpPHe7GWWEoEBrpF-tv7uNXoJic
X-Proofpoint-GUID: RuOb-wpPHe7GWWEoEBrpF-tv7uNXoJic
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 priorityscore=1501 clxscore=1011 malwarescore=0 suspectscore=0 spamscore=0
 adultscore=0 mlxscore=0 mlxlogscore=300 bulkscore=0 impostorscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312290046
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Dec 2023 06:12:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62047

How about using ':='?
e.g.,
HELLO := "${@random_number_function}"

Regards,
Qi

On 12/29/23 13:49, Jiliang Cai wrote:
> I define a global variable in config like this:
> HELLO=${@random_number_function}
>
> Then I print HELLO's value in two bbfiles. I found that the value of
> HELLO is different because the random_number_function was called in
> every bbfile. How to fix it?
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62046): https://lists.yoctoproject.org/g/yocto/message/62046
> Mute This Topic: https://lists.yoctoproject.org/mt/103413529/7304865
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [Qi.Chen@eng.windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


