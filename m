Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BC6AC433EF
	for <webhook@archiver.kernel.org>; Tue, 28 Sep 2021 00:30:24 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.7538.1632789022766260255
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Sep 2021 17:30:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=N8vHDxX+;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=4905cf8f93=randy.macleod@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18S0Si1d021301
	for <yocto@lists.yoctoproject.org>; Mon, 27 Sep 2021 17:30:21 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=to : from :
 subject : message-id : date : content-type : content-transfer-encoding :
 mime-version; s=PPS06212021;
 bh=QHVHBRkrj1liSNgp9uInPtACSHR1Fq+AkkL8YL4afhA=;
 b=N8vHDxX+1Lu07jHWfI4u4XGF+GHBYqPYz1flfMHDuXkfBUuWXs818iNr7DunxwrDk9M0
 bg2Ma9qq2KzDU4iKEp7kF4X4CrNcyI7wjGZi5Vuot67QMZL9mIyzNN9DB8w3Cxp+Chwd
 x16YAUU+F9e/jlFKQ1NFqlLg/lmdyvD/Ioc/cImAj/HevLntlkgRlLGzoif1PGsvwlv7
 cWXYaOq93c5Sa7gniF8Jq0MeB8Hys91FAlL3GWNpVuhiNq8ZT82iVbILJhZMHgqPQciO
 xFqxJ5W3rng8liSDppvD+wqK6i+NyFVhcL2HY6wAp5HeqSiva5+FoGBGwQZFFsSHQ1FY WA==
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2170.outbound.protection.outlook.com [104.47.59.170])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bbk6yg6tu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 27 Sep 2021 17:30:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NySGSi/Rpfa8vGT7UQb78siDsBMo4KCIOwI/G/Q2nbqLe+eG4Y8kcn8S16smUFzkM/0ZqSjdg96m+qD4dkjvS0Fc4aujyLtY4+61yvyJmdn5DOG0zHSaKS4DzlOy7wsBQHayl6OXGeP0mXvdYP3wcktKVkh45w0i1wL940vchdI7zrpYUvjRdktQQF1KPcgORJl6uYT6DygV01somfWJmGz6i2eCrnQdTiCNmJ+fM0jCYop6zFaPElVRG+DG+4gqOwoNazo7lpXprG+wAo0PtDADpLKzaW2TP+y5IGpgUUDnUPKepfyG9zwd6WKTzgnbM/hZKoe4YFLTIaOExqDsFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=QHVHBRkrj1liSNgp9uInPtACSHR1Fq+AkkL8YL4afhA=;
 b=MZNS4FCyqE7rNn96Qo5OG3EF07NRd1oMrNfVXARJGe9t6ClaLQ4+5jGmFjag/YQhazW54Nih3s1qGfDiA5m51239u2gmdWV9QAWB8kEarieiSxsyT0VMcNqRPKQ20hyfiB+XCr3Okstb3S4XV/PzBiQZDT/XgzZw/YorjDu1WD5HJdzRBtVGjjnGnZ3Od2XbpBM6id0Dv87oGSdBlue8asPfN6m/MFA9J1jq1cUU335Yoe8RMXp2/xVFDkwL8iVVxqjM0DwqHYY05hFOjA64HtZu1VRARReoIahOPMKVxEUAb8JObtzH+pUwYNNrqj/eX7bAfIdcPx+5zuiSu9hadg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM4PR11MB5295.namprd11.prod.outlook.com (2603:10b6:5:392::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.14; Tue, 28 Sep
 2021 00:30:19 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e119:f175:fff0:b3b4]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e119:f175:fff0:b3b4%6]) with mapi id 15.20.4544.021; Tue, 28 Sep 2021
 00:30:19 +0000
To: yocto@lists.yoctoproject.org
From: Randy MacLeod <randy.macleod@windriver.com>
Subject: Julia language recipe?
Message-ID: <e1d4b5a9-1feb-030e-6078-a6880f4aee66@windriver.com>
Date: Mon, 27 Sep 2021 20:30:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR02CA0031.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::44) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
Received: from [172.25.44.7] (198.48.226.187) by
 BYAPR02CA0031.namprd02.prod.outlook.com (2603:10b6:a02:ee::44) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13 via Frontend
 Transport; Tue, 28 Sep 2021 00:30:18 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b8c3d19d-033a-4bc9-4297-08d982172677
X-MS-TrafficTypeDiagnostic: DM4PR11MB5295:
X-Microsoft-Antispam-PRVS: 
	<DM4PR11MB5295EC10D2A8CFCB84B05BDEF8A89@DM4PR11MB5295.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	P+YSjVq/XHZBEZfW4KxgOi7DlmvRrt4IUYYSHcFFf4PV6b/vl2C3paHqkY1S33sD5FwFzq7hfSIGFpkSP9X4Xj9057G7yG2VNEBWPgPM6LLCXE9YiaDQFVbDrVPW0pp2nfFjYdxfX/K0udgdeNQORIzIlsUCxc/5bSvhagFlSt8mFKMs4MPFApNPfdN+4Jo+vwSS5CDL0tDJ/aVTjT1Au7YFHE09cTU3+vRmduezlnm4Fzd1zGeD5XHK6/B6+tLFafZdqkE4VJS02PgLTUY1nAM9NMJHxOcc1675xbkNCusOB6PPpTJp+ti5I0/3s6EuyiwxcTze6QMAKpJisnl/R5bRLS6HXpk/yjrcNmYLh+eIH5eDxBOJmFqpRXPgwEq6vUTGawRjvyR9K4+Yua/7N/6N4bsvp1BzWz6ZM186W7wuU9VRV5h0QF1uOMC8bPA+6qiJped1G7CoWzrmnrnHJpvyiXQyyp6NIuKLkMjvTG70WNCjkmrzcJsGVT/kTAlT2VKdvTN/xeDL1kMBQeWihhv25OWVB2coGsmQ3RiG9y7rP2Fzji5hu9hWTd+pYSc0IwbyAJQ8Ris++Ij4GD2m7rwXwfqnCi4A+6rUISDCZOWtrIQUujyY0UdgWZtoFNf0F3Y2oLlYrBhwGRlgheHeAlxPhT+8rUGxBdBCP7wr90J9RsQgN90OEbLiyWT0Bup+R+V2mwDaQcr1AegSEVTBiM8jCgxjrRKl9/JOZQR81YWPSv4tTQzwy6QKZk4MMxO0fLMOY2fjNqro2ar2OgYBf0KkkZBoUY+jacXyEMwcGv/qEgWxt3FG74yQSYObpQ1REwi9nBQZ+DAAVJEhlCl37xGQwM1m7hoqXV4qevvfNBNPdrKM//u8ggCQ+MCYUJ4VlsZvWBVEpgIKucguAeSf7w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(5660300002)(2616005)(4744005)(8676002)(8936002)(186003)(6486002)(956004)(7116003)(52116002)(36756003)(66946007)(6666004)(16576012)(6916009)(66476007)(2906002)(3480700007)(31686004)(966005)(86362001)(38100700002)(38350700002)(316002)(31696002)(508600001)(66556008)(26005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?d01Qdm5hNTNRLytJSENmUllOb1RTL2xnZk14Q1o2bHlhTGpCU1dySDhudDND?=
 =?utf-8?B?dHNXZkdlbFV2MUtIVmpCWDdmR2lWL0szQmtNcTZTNFdNeVExQm5MOVc5aHhR?=
 =?utf-8?B?dUsrWU5YN2VpYU94VTNnQ1A3dExualJibzdCYVFoRXkzMjZDTzNjanErcDEv?=
 =?utf-8?B?L20zdkVWK3JVQU9rdW5MOHpCOWZjdWdNZkJpaHFjR2FGZWZhSUI5V092djJq?=
 =?utf-8?B?NWxGeGp2bytxK1pHbGt5UEE1OHQ3Vm9ub0RycTBqVlNNTWhxZ2h5MVBPMUhr?=
 =?utf-8?B?eUNhUEVqTFNDbmp4SjBkdFVvSHZFMWtsejJ6dUc0M2tzVURieTNJRkxkRDIv?=
 =?utf-8?B?cU56RGt2Ui8yTy9GK1lxTFBqMFdzVm9zaUUrTk5YaDROMm43MGhwSmxFOGFG?=
 =?utf-8?B?RlkxWWgvUVBXZVQzZ0cvZUdURkxkZzFHOUQ3djZWWU5sYWFPYmdoQlhDOEo1?=
 =?utf-8?B?MnprVFY2eWJiZHhrTFVTTHJ0ZmlHRDFycklnRmlaeWlSMmNvaWdnK2h0dmxy?=
 =?utf-8?B?RTdLZGpTWG9LU3g0N21hQTFwdElwWkh2SVRpOTIwOTM3cFFsOXBtVTlobjZC?=
 =?utf-8?B?U0oxaEZYWUNnWG0vUzZFRGZCcEpkZGlaU1BibFBDUVJEeUw1NVpMajBFS1B1?=
 =?utf-8?B?bU11a0dRNzJ5T01GdFJhZVJ0d1FIcWlwcW1ieWVEMmJZQ2svTVBicEc0VGZ0?=
 =?utf-8?B?UGxsdjJaQ1llVE1SMC9CZnE0N0xhWGZxR25ZZ0EyeEZWYjczQ09QL3FLdlh1?=
 =?utf-8?B?MXoxSzhLeThwci8waldUMlNIZEV0WXV5ZTZiQnd6M0g3Rk11d0JrYXF4NDFj?=
 =?utf-8?B?YzVMaHgzL05OYWJqdS9oQmFlZDh4RmFFT3dueGRPVUNIakxyeVVxazVIRnlQ?=
 =?utf-8?B?L041V3Z5Nk1SQnhrQWwrZ1Y0RVN1bkMvNmF0eG1uMVlUb1d6QkNDSUtYaDA2?=
 =?utf-8?B?VzZ0MWs4N2tBeFFCWCs1Y29MMlVOOHNYS1pFNzg3bVAwNUZMWTdidXRXSHoy?=
 =?utf-8?B?RTR4ZVQvUGNqV1R4SWhKOTE5UjY0VXUyRlY3eE1FZnJ5ZkdEWHJxa0o2VEtB?=
 =?utf-8?B?YWFmbVpFRnpJZ2VYRHcrV3puakFCU1k4dTJEMFRTWkdKSTMyZWtXYXVsM2FS?=
 =?utf-8?B?ZDMySk1OTERCcTdFbnhwRDNYbHJodHF1UCtQMWYxOWQwQUQ1enNFdmVFcXdD?=
 =?utf-8?B?SVRNbWJEeG1aOE16a0RTK0UwTko5YUdqWmhmeE16Rm5TQTBUMUNqamJFNkF5?=
 =?utf-8?B?cmdNdnIyWE5Wb2RSVW5TZXZYellSQ252eVM4Mm1vRjhMYm5DUDRHQkV0eHlN?=
 =?utf-8?B?TXhUNitNVmxkQjJqRjFISzRneG8rbGdZWWthVW94WVQxdE9WSFhtU2hnY3Vm?=
 =?utf-8?B?cUZ0RGp4TUNMRXY1YW5jQUxQVHQyR2J0Sk5VRklIU3Zzb3lIRWJxc2ZLOGRj?=
 =?utf-8?B?RXZhRXZEMisvSnJXVFN2L2RDMm9NN29xaWVOcjRIaHdEQ2htTE9oWjBYeUNm?=
 =?utf-8?B?STdyWmo5ZW4zSFhjMmIzSDVIbkFjZVBhNUU5RTExNDBwbG9FNkw0N3NXZnhS?=
 =?utf-8?B?Q2xKWHByeGhxc3VJeWxBb3kwWm5UU1p2T0U2VFlwbXVwUFpxOHdkZjNBdTEw?=
 =?utf-8?B?REFwR1oxbG5xeHJFQ2pucktpSlRQS2tQMVpTa0NwdHBtNU1QQzAvaGlveXh3?=
 =?utf-8?B?bzRzWGViNFRZYTRKbDN0YUY3THkzUFEvRHh6S3EvVDR6YW1vZ29VMXB6NSs5?=
 =?utf-8?Q?uUkO8JCF0rCgp6drPpfXyP7Mh6kpMqMvcrvJx0Y?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 b8c3d19d-033a-4bc9-4297-08d982172677
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2021 00:30:19.2203
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 Q8cgDABAGv8HLuatZaBHKYzkpzT/j+jFZJB/kAIM59T7KntryXe4C0qccKyB6V0EtCrDZscnMm+JeXvCwXBI01RDtETD/SmQFWdK7/8wmMM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5295
X-Proofpoint-GUID: qbQUz6Dcj78zCDSekDvpQCTzhMKHaxGI
X-Proofpoint-ORIG-GUID: qbQUz6Dcj78zCDSekDvpQCTzhMKHaxGI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-27_07,2021-09-24_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 suspectscore=0
 bulkscore=0 malwarescore=0 mlxlogscore=616 spamscore=0 adultscore=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2109280002
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Sep 2021 00:30:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54887


I searched the lists, layer index and the web but most of what I see is
that cross-compiling Julia is currently tricky:

https://github.com/JuliaLang/julia/issues/30338

We don't have a recipe for Julia in the layer index for it:
https://layers.openembedded.org/layerindex/branch/master/recipes/?q=julia


Does anyone have a recipe that is a work in progress?

-- 
# Randy MacLeod
# Wind River Linux


