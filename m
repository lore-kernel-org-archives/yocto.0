Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10389CF0434
	for <webhook@archiver.kernel.org>; Wed,  9 Oct 2024 02:50:06 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.6964.1728442204006963525
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Oct 2024 19:50:04 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=001212afd4=qi.chen@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4992jG1J002653;
	Tue, 8 Oct 2024 19:50:03 -0700
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2176.outbound.protection.outlook.com [104.47.58.176])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4230r4bqkq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 08 Oct 2024 19:50:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uoTQBYbTQ1OXaLER8EbVC+IbMNoickys8yvt3BpuLJRePefDebCY60ISHiP/uVb6dpvKN0vhPynSwmmK+kVJusG4ycB5Pj38VdPBNr2Q0mYhVxq41iPd6JyaPWEcSXcPtCQ+44jJl5B7ceoUNFH1qChi6DOE38wCMPP4HVOuWB88Anr8T4r8+SETEuD147jDEmVeEdPV719S3D78Oph2Ko0n/q0ohlNrggKxFseroue86CJ/8B+cyco4448XCi5gYjAu4eOoBTt1xR0YwK/txhrNg25HC9UqRzkePmJMcT80gKd/BF0rayjf1wZyq7J5P1fd4U6e6cQQYeGWJ9/uew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UO9DIS9soUHAvzSbKy71b9qiMNebOjEEe+IoJRPu0oA=;
 b=HQjOl8fQ0j91JQtYJ0cNFVIM2YF4fwoWyfTo1bS0YcVTqdRSApiXIG5TnSoZcepF3O2J8jI/j0NzuPuJq4orQLiplqbjQogXqNySGtGHAYWGgDvAX0r9SCZ/Sp+2EJ+HsiBl2kpbXkbNr7C/RSxD8UPqSNL8xfNAFNZGvjUCz6JvE3mySpICUUXCHn54hG/tad790hjsfxS1rH1cc7/NXQ0XbfJFts7Nzqgfso2Zq9zNedGTQqSyP3PjFirEqwKfVx5Rdhbu+CVQbFfk3/DiwdysVj1OI/y/AVbVJgkR9xJ4qVzYNlcALSgefpJNekJx584yPFgvy2OBT2mbQ/hYGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by BN9PR11MB5290.namprd11.prod.outlook.com (2603:10b6:408:137::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Wed, 9 Oct
 2024 02:49:59 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::a7e3:721d:9cec:6093]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::a7e3:721d:9cec:6093%7]) with mapi id 15.20.8048.013; Wed, 9 Oct 2024
 02:49:58 +0000
Message-ID: <2fc61685-dd91-405e-8ea4-56d1ecf58c02@windriver.com>
Date: Wed, 9 Oct 2024 10:49:52 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] How I can update the Yocto SDK incrementally/partially?
To: yocto@lists.yoctoproject.org, salahaldeen.altous@yahoo.com
References: <xhAk.1728376109213832144.otFZ@lists.yoctoproject.org>
Content-Language: en-US
From: ChenQi <Qi.Chen@windriver.com>
In-Reply-To: <xhAk.1728376109213832144.otFZ@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI1PR02CA0014.apcprd02.prod.outlook.com
 (2603:1096:4:1f7::9) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|BN9PR11MB5290:EE_
X-MS-Office365-Filtering-Correlation-Id: 80a2a33f-9be5-4a55-ce4d-08dce80d1056
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|4022899009|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?QXVYdXNnR1I5NHlKWWFTK2RHamNHVi9IMXg1dSthZ3Y2dGNhdW5LTU9oSlBt?=
 =?utf-8?B?TmNCUGsvVkhTK1hDSW03cXJ2M0JDclpKK3RhWjhaR3ZvMmdwb1dMWjFTMnVu?=
 =?utf-8?B?WnpJTDRjWktSanBucmxVc3ZaUkhldUZDYzFHdlFLOUt4cE5QMjVYUzcreldr?=
 =?utf-8?B?SUk1akJHVk81Zllndy8zcmVmcFBkTE1kbXUzazFvdk1wR1Y3d2hTc1Z0VTcv?=
 =?utf-8?B?c2FjRGxjRUNoQW1paTI2b3RiK3NJVU1iOEp0cW1ld242S0x5ZEJNVm9XTHBR?=
 =?utf-8?B?U3JiYmRiK05xRnpzSnJtbzBGNXR2MWhoOUdQeWhIOGYvWjhrK3BQek8yeEVJ?=
 =?utf-8?B?UGNQOC9YbHluanhXSjBtdkpuV1BFVG5MaUZ4Y0ZqWnFjOFJvTXE4K2NFYXQz?=
 =?utf-8?B?SFBJMUkyUUxMTkdwYUN4QVFreEJaVXRiM1BzaDB5VnljM3NOREdIR1VsUjNT?=
 =?utf-8?B?cVR2NzhVSFpSR2ZVVkdWcXVkdmthVmh2cGhhNDhiaXp1Ukg3Q3BERTFWL3M3?=
 =?utf-8?B?bzRMY3VrT3M0Zng3ZlN3bmlGOXRYMEFyYkp0MlV2OTNwVUpVVmx5ZnNRTmJN?=
 =?utf-8?B?Vy81S3NyTmNlVVdEcHpFbjk3SS9CdWxwQ1U1Sm91N2drMHBKanV3dEpuZWwz?=
 =?utf-8?B?WjQ2ZW1RbHVqYTV3RHF2b1J3ZTdnaVB0NWpST0Y1aG5NVTBOTExCNDNqUlhG?=
 =?utf-8?B?Y0ZkYnI2UVNOYVBuNnFRMmJCQlB0V3ZzS1NaZkkwdGltT1RCRVZrNVdPSkVw?=
 =?utf-8?B?V2x4bUpDelQxVEhJMVNoTDVibE5CV1ZGcjNsQ2laKzIydXdDK2ZhbG0zR0Rk?=
 =?utf-8?B?TDlYSHhScUhyc3JGTzN3UWlWYysyNDdQWXN4cXMrSjhyZExXOUhUYkFhSUxv?=
 =?utf-8?B?RUtBUEVxMERSSTRsbXIzV2MyalY5SnpvL0N1eGtHOGNZYzlhNnFpaUlxVjAz?=
 =?utf-8?B?MmgzTGVjM0c5Z1pyREp1TjBFY2tiWGxlTXlxOWFqL1F4R1duKzBEK2dveThS?=
 =?utf-8?B?eHJFaG4zZDB0WWV4VVE0NmZ2VWFUYnh1SE1paU1ycmEvY3N2UjByb3BsNVNs?=
 =?utf-8?B?VnRqRWpzMDhDOENxemY1dHF5VjQzV0cwYmxyZXRtRmt5Vkl0N0xwWkFIVytO?=
 =?utf-8?B?cEdqTkhBdkhnYUI0RHpKM28yQnhvZGIxMXN2cGpBRTlZM1BsaUpWSEE0UXN5?=
 =?utf-8?B?c3B6YitrWGYzMG9ianJoZmZhK2M2UFFsLytZaXprYms1V2dOMGptZEIySGh2?=
 =?utf-8?B?NHpDbElZRjM4WDlNWUpBTkFGZkpiRXVFeGRnR0E0Yytub3UrUlhWMFFNT25O?=
 =?utf-8?B?akFuZEFEbG4yOUhGeXRYdXJJN1diZzliV3UvU1hiSE1QQUwwdEVvYmQxcEVz?=
 =?utf-8?B?VVVINnVWaHdQZ2JQVFBiVzhQbmd5TmZYZk1jZzRmSzlzVWJyQmZEN2hXaWFr?=
 =?utf-8?B?aHJnNk5aYkNJbmtLNWZPc3NKVzYwR014K3M0ZmZhaW1pL0lKWG95c1psTU5N?=
 =?utf-8?B?U1R2TDdBK1hSSDVMalpuT0Y3eDIyZDQ3cmJSeFZhTmQ3ZEdDOVhuYkVMNFJS?=
 =?utf-8?B?WHI3YUVyMDlyS3ZHRk1YZnEvUCtqSTVna2RsSFNMek9Vay8xTkI1RWs4VU1a?=
 =?utf-8?Q?Neg8Ybfo4w0qgGrtJ5rMTOE32dL7oe7QsKqyAWaQQTi4=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UkZnVmxMOHdFeUxuMS9RbUFxQmQ3bjlYa05SZXF6VWdNbzA1TGtzcEp0UVp4?=
 =?utf-8?B?Snc5cC9wcjl2Q0xFNWNyaFc4eW1Sa2RrS1RndHZYc2xrby9RNGRxaXF6azlC?=
 =?utf-8?B?d0tiMnljb2RoSHkyazBYR1NyOVMwU25kMUtRYi9FODNDUmdYRnA5V053Y1FM?=
 =?utf-8?B?L3JLajBjTjFVRFJuSFdxYUI3V2dibGxGUG9OU0N4RW0yakt5VFFNTzdnb3RO?=
 =?utf-8?B?cEVpbGZnUDdhSjB4S2ZJMGlpSmlLeVF4dVpwUzNPM0liNzNCN21CdUVuY0ZR?=
 =?utf-8?B?VGpkV210UG53OXFGSDVuSVpZM1p4cG5HdFpXZkt0KzZ3NStwUGhuWkR5S2hV?=
 =?utf-8?B?UVRKN2RTVUVWWlVBMTB4NVBaRjBDYWpEb1BjK3UwTE96dnpHWXdKcFRSRHM0?=
 =?utf-8?B?NTIvbCttKytRUjI2QXZSQS9SdWJYWUZyT0VQZHFpM09ld21LcnYzYitvbUlo?=
 =?utf-8?B?VUZNZll3Y0R5MWljOW1zdlF1cnBhNWJqMFJKelJwQU85YmVDOG96UjVoL2JS?=
 =?utf-8?B?eFYwUDZCTW92anJLOVJwY2JpaHQ5azlLUEMrL3FGb1FhaEpqZGsxL0Rndmxv?=
 =?utf-8?B?c0xWSVVnZ0ZEb0l4SFRXb2RkWDNjcFE3MmhHeFRud09JdUVkei90UEZFRHVI?=
 =?utf-8?B?QlFvd0JSdXBDeW1zQ21JeklvUUxQRHcxTWhEY1J2QUgvODNzNTU1TEdTNTJ3?=
 =?utf-8?B?bGNKcmdxTjFvT3FON2w0NndYTXVmclJLeWU2MHF1ZXdNQWNOTlNVNzg2Mm0z?=
 =?utf-8?B?V2NmSURQV1RVWGw0aVRhdzBad0VLZWVua3J0S3UvVnJ4c0g2dzhpRnBxcUNR?=
 =?utf-8?B?SzlDcmU0S2R3aCtPcXB6QlpQd1V3MXRyOHcvTkhWa1VsUjdEbXFSRjBkTTAx?=
 =?utf-8?B?bm0zSWIvWnl1bFZkREc2WmNqSVkzbmpCSlg0cUZNOE92RVg0d1NmM3hqMWlF?=
 =?utf-8?B?NFZCWS9nRGFMTm1kV01veTlUK1NjOEZCdTlVYnFSNTFGWXlQTm92QkJRVDdv?=
 =?utf-8?B?b1pnVUI4b3lNOWs5U1Y5QkpyOGU1RjB5SUNSRERIT0RqZy9obVo5V3VoakRK?=
 =?utf-8?B?Z2d3ZjhQaHQrRkdpbDdQb2paM21CcTlSWHRzeURKQlVpSjF0cHZjaTlsd2J3?=
 =?utf-8?B?U2lNeWc5UGU5Z2Q0QVNOcStacmsrMGFqZU00d3dneGZwcmZvV3NMbS9SRmhB?=
 =?utf-8?B?cjdLL09DS0FVR2d4c1h4Q0ZPU1V3SkcwNG1HR3Rad3IwOUtOTjhzSjVESnBu?=
 =?utf-8?B?QlBlSGdmV3pFcGQxdlZMZVRkbjdnZU5Ea294VkJXK1hXNTB4RkRlK0x1cnlY?=
 =?utf-8?B?cGdRYXZaSGZ1QTdENC9oTW45NDhzdFUxWDZLYmhjZjFDYmlQRVZ6ZklUbWth?=
 =?utf-8?B?Sm1HbVFvZ0dxNnRFby9JOUdNblc3ZE5vT1YzRXV1RkthWjlUWmN4L2NsSUI2?=
 =?utf-8?B?R0RjK29aSkZEUy9PK1FVZWozWmtzclp6dzY1R2tLR2lWSldlQnRpblNvcTdV?=
 =?utf-8?B?RDluMUY3bHoyaFNMTTAyU1hsekJvc255azhnVEQ0TWNsRjBPek41L1Z5OVA0?=
 =?utf-8?B?eldzQzY2VkFhUWxzUmYvWitLUTZZenByTkZDTzFxLzBOT2lIL0dLUlU3d0Jy?=
 =?utf-8?B?MWlyR09RQ1BXN2lJNEkvb2h4UG54NE83cTFiZFVkbS9PV0p5bmtsRURicmJq?=
 =?utf-8?B?RTlocnBOMCtKemQ1eFp4aVlIMGpFQmtFKzQzZXBtRFQ0VWRMUG44MUtNTkNj?=
 =?utf-8?B?YnI3aGdOUFNjcS9zbVZ2T1NVTWVsNHZrUzlHMnlXRTBodXFtcHlTck5XcGM2?=
 =?utf-8?B?NGlpa21CMld4Y3Ewa3RrRERKc2YvNTJjRTlEdVlDMCtLVSsyS09lSnJQWnc1?=
 =?utf-8?B?N2RXbHM2NHlhN205OGhCckRrd1NGMzQ0cENvZ1ozeERLcGEzT1Izekg3bWh2?=
 =?utf-8?B?UytTLzNlbnM1MmxtZzhtM1MzN2xuSHkxc0NYRXZFejRXN0l1U1FMbG80Umdz?=
 =?utf-8?B?NGNUUUkvNUQ2R0I1MlRxMDdnbHFXbkgzT2JXQXNWa2lBSVNjTHpoRko1blUy?=
 =?utf-8?B?d2Jlazg2N1hqVWx2NHhmMm91bnZBTlg5QnVac25tNmhJMmhJdnBWdG0vcnpk?=
 =?utf-8?Q?6IK5xALAOK04ogaUl1RLF6spf?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80a2a33f-9be5-4a55-ce4d-08dce80d1056
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2024 02:49:58.8609
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5NBZGStIzQgUDfhEaBicTt3U0H9WtqmfGeL9YPGcncZT2kx0MKg6pWRvIOfFQ8c+o7Piu0T4bc6+vCau+JDPfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5290
X-Proofpoint-ORIG-GUID: u2UeHeWsQbCHf1eNPXlLzATctNxuJKjd
X-Authority-Analysis: v=2.4 cv=bP1EI++Z c=1 sm=1 tr=0 ts=6705ef5b cx=c_pps a=X8fexuRkk/LHRdmY6WyJkQ==:117 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=DAUX931o1VcA:10 a=bRTqI5nwn0kA:10 a=CjxXgO3LAAAA:8 a=iGHA9ds3AAAA:8
 a=t7CeM3EgAAAA:8 a=dtIYoOnsT05C1FwcmL8A:9 a=QEXdDO2ut3YA:10 a=nM-MV4yxpKKO9kiQg6Ot:22 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-GUID: u2UeHeWsQbCHf1eNPXlLzATctNxuJKjd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-09_02,2024-10-08_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 adultscore=0
 mlxlogscore=410 bulkscore=0 spamscore=0 malwarescore=0 impostorscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 mlxscore=0 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.21.0-2409260000 definitions=main-2410090017
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 02:50:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63977

If I understand it correctly, you want to update your SDK from some 
binary package feeds. I'd say it's possible, because it's basically 
about installing packages into some directory and doing some relocation, 
but you'll need to write some tool to do the update work and place that 
tool in your SDK. There's no official tool in Yocto as far as I know. 
Not sure if someone else has written such a tool.

Regards,
Qi

On 10/8/24 16:28, salahaldeen.altous@yahoo.com via 
lists.yoctoproject.org wrote:
> Hi All,
>
> I have the need to update the yocto SDK incrementally without the need 
> to rebuild it every time from scratch.
> I have the package management ipk enabled in my configuration.
>
> can I use opkg install after sourcing the SDK script? which 
> requirement I need to get it running?
> updating the rootfs on the target is working fine, but updating the 
> SDK is not working
>
> Regards,
> Salahaldeen
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63963): https://lists.yoctoproject.org/g/yocto/message/63963
> Mute This Topic: https://lists.yoctoproject.org/mt/108885909/7304865
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [Qi.Chen@eng.windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


