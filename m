Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E7DC46CD2
	for <webhook@archiver.kernel.org>; Wed,  3 Jan 2024 01:08:01 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.3598.1704244080080545083
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jan 2024 17:08:00 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=EMECXsT1;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=1732980ed7=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40316ptP005174;
	Wed, 3 Jan 2024 01:07:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:subject:to:references:from
	:in-reply-to:mime-version; s=PPS06212021; bh=L9v6IeicEJs6eDdftFk
	kEGAUxcKp7PwKQFdnmTKZCos=; b=EMECXsT104m3jXWn2EjEzuhdFO9tDrjJM2d
	K6SyxUVWvYuaM4AJuxVG50oIxQ6wfCT3XD4/DrKfX5gnvBUpvv2Ao0/l6W533xjx
	ctbFFzBYmuHVOp101jwZRsMuweK2Ws0mX43bwzMquNTC57FxPY6o0ztO1FXjbIGp
	u3vtEo4vZVWa/byEZnNWBqNbIWF4NB04eClMFMpW29EzXDXbCmRleDGsalMhp5AZ
	MaA+ot8o0G2h+w2NQiS4m4+yGxKXIRpwjbQNBd1kB4aU+yzMcUvzmnFrVpcuy4VN
	HmBmatLngAhaQF5fVWlh/CYFd/+SWID1yQhW7L3J2wbMMAhr3/A==
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2169.outbound.protection.outlook.com [104.47.57.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3va8dxbgr1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 03 Jan 2024 01:07:56 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mwo88rpma+5uQubeiz8xLVsWuEI0d0gbMO+YthrxMQg+6/e27g8w2HfFuGRq+oOqxg1lVysVPSdm6g6pP3fdcYYll9wSKRBXFkKz5nXJkp14o3igQim92zNIYGTKyQPM+nlDMYp5SC+Ync+twRdDYZG1iybHYrekIbEPzeu2dXId609OYMXY1jiJafpzNqzAbuNicvjIxKsTyJvaZQJektcmeOtax6uy6kE26BiDlCz2n6I4929qQqJuZ1jDKJzUYjmLX9YFMf4czeYecvomXcAqCT+ZCOqaPf64yxhhiTvQazLCX3CqTF/RsJOtiOmf+EumhAS8i3t/Mo8htThNfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L9v6IeicEJs6eDdftFkkEGAUxcKp7PwKQFdnmTKZCos=;
 b=TQqF+opy/L5mBNpUBIVfUFxcr4TLSa6ojtm7oaa6AO4vjCXzNnU+ft4V5Prk5wi/Gr4KRR7yLIyU5amVE+ecXQQ6F05FSyP5NXzv7KJdLDd50wtvexwlffmfTMyqmxUrFRVUS6Zj8K9BrfliFqMuxQwBbde3vxeXRPeEp9gwQz1v2n5CyrOVGkQZjyc6xci21J1ZwQQg2fMu5XZn1ISWhCwDrt9L2vC3u+qpOvl3eYH3QwrsezA83+BeHnb7oTZ/mWdnFcNRsdyf1mCU/f76ixlkzvZzb7yDJMO8Jhk8XaGCiJh9GTQaGUikq19l8jhRtdTBZhIzdg/n2hnwn5wVjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2844.namprd11.prod.outlook.com (2603:10b6:5:c0::20) by
 BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.25; Wed, 3 Jan
 2024 01:06:33 +0000
Received: from DM6PR11MB2844.namprd11.prod.outlook.com
 ([fe80::91e2:97ae:53f2:7113]) by DM6PR11MB2844.namprd11.prod.outlook.com
 ([fe80::91e2:97ae:53f2:7113%5]) with mapi id 15.20.7159.013; Wed, 3 Jan 2024
 01:06:32 +0000
Content-Type: multipart/alternative;
 boundary="------------VmnupZPGLsX1h9fN62d6upaW"
Message-ID: <8f9bc290-cd2e-4c63-971d-6ca464319ad1@windriver.com>
Date: Tue, 2 Jan 2024 20:06:29 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Nondeterministic errors with bitbake
Content-Language: en-CA
To: yocto@lists.yoctoproject.org, daniele.lugli@gmail.com
References: <z3fE.1704232194586691808.HEiw@lists.yoctoproject.org>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <z3fE.1704232194586691808.HEiw@lists.yoctoproject.org>
X-ClientProxiedBy: BYAPR05CA0063.namprd05.prod.outlook.com
 (2603:10b6:a03:74::40) To DM6PR11MB2844.namprd11.prod.outlook.com
 (2603:10b6:5:c0::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2844:EE_|BL1PR11MB5399:EE_
X-MS-Office365-Filtering-Correlation-Id: db68793e-7d03-495c-ce58-08dc0bf83961
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Usvj3IIWDM9uIIN1utRK+EKu3hi+lT0U3x4XSftH+VLh+0Y5EWvMJfooCHf00lD/zVKBF8/k4WhsCoEsKqXTaJTWYdW3x2Ao+HGaDInOTUSrnDGApDY9kWtVybEvayDnDWUxilBnh408B33y3O9YV77AfvDMVaw9ODt4UwsH1xknyqBjpIR9jgP3kGj9Z8lCfBT2WMBNpvWq6VbwWZfXBvEhd7IvWy++97QWgLo1VtOxVtS1CpYfQyPSeeYMCEC+FEoywfCANL96PHrmDOjN9NsWplpU84Z6iimadk+SO7lXdwv22c3lkNxM5LRE99X6h6G/kvYcxaClGRx+MdLN63zbaT04fzKS+Y5XV0roWczrO+fJFkJgpKzUzaFNwf2hzY7ZIDZ2IoZk6euXsapRD94m+D/sBdNEUaVHiq03FVM8boUV9O7qzMhvf/vJbha+/rIlf4oC5iafrEh+2WD7C9xtzgdpENSNwoYWOMBaruBI6C107ITKMtC7786T8sFevaUb3yiW8spCr3TW/xjAZFC68tkEUZSjgtscbnLjEsNqP4pFXi9ccQM+mZouG7djyzSrAHR2QEug/j4uxV2iRG5n2OPU2ME7yHQGf14ZmofcvqHC5tQD1M2EbdZ4qvIXUJr4sdPZ0FkZx9lZi/z6b2Ca59QPyyj5rtQr6VBtvII=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2844.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(136003)(346002)(376002)(39850400004)(366004)(230173577357003)(230273577357003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(66556008)(66946007)(66476007)(45080400002)(478600001)(316002)(8936002)(966005)(8676002)(6486002)(83380400001)(66899024)(6512007)(53546011)(6506007)(33964004)(6666004)(2616005)(26005)(2906002)(5660300002)(41300700001)(15974865002)(36756003)(38100700002)(166002)(31696002)(86362001)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MDZNNHVkVjU5MGlWSnNWL3ZRRTd0aERLTWFGV0pjRGRtWHJrb1NGZWJHZExs?=
 =?utf-8?B?L3lGYnhNWG5pdTFJSEtGdEs2cVpNZk53eXZXc21WTERVUzlPbDdUUUx5QmdN?=
 =?utf-8?B?RVdzM0lJVk1VZ3V5Y3diUGd5NDlwd2RaZUoyY2F3bjV5NEdvZkhLZ2JYNkdL?=
 =?utf-8?B?QVA2RC9QcVkvRjFhQ2MyWkRJbGFzNllkMHpaWXRwVTc0UWlKYmNicnIwUzBB?=
 =?utf-8?B?UDk1dUtiRjI5NTdLT0VYdjBCMkVjcUF2ZlpzYWVIa0MrZmlQdVAza1pNN05D?=
 =?utf-8?B?TVdpclJzckQrVFJUUnUreE5IQnQ5bWd5NzZMSFcrMlMwaENXL3VQY2VVcUlM?=
 =?utf-8?B?LzlNTnJpdlBYd3gvYi90UGFPRHFrNVpncVV1ZmJjUncwTzM2M1lDWFBFM3ZN?=
 =?utf-8?B?RlhQQkI4dUNQU3NPYW5HREJtUWdqSXNSNTlEc1pIS0tMOFVvNnkySmxFZEQw?=
 =?utf-8?B?SFpDRnhXL00rU0QyVVlJYjYwWk9ZeExBNXdyTzhGMVhLOUZaaVdIakVBWmpv?=
 =?utf-8?B?WEdRTUQzR1FXZXpnOC9hVENCM241SEtXMlh4V2pQdWh2dXc0dGtQTkRGOEhr?=
 =?utf-8?B?SmVNWkZxTFJCRVc3OFlVMVY5SWxBUEZFdHVkMHZjcTlydXFlMk5WYUdTYWo0?=
 =?utf-8?B?Ry85RWZPNm1JTUxsZ25XSGRMaVdlMENEOGZ5WXlqOWxYeFR3VEthdkxCdngr?=
 =?utf-8?B?Ri9RTmcwUkZ1aHlySW5ZTUJSRG83cy94UTl6YXVoZEVmNDVYdC9LYlRDWVV4?=
 =?utf-8?B?YzQ5YnNLcWVlN1kvMXNQU3hxOG13WnZJeVRDK3Z3cll3V0d0MWgvZzh2UUVI?=
 =?utf-8?B?aVI4SUVoLzVMZkZ2ZC90aWpESzdvd3BFbFNYalhRaDNrTmdaY2Vud3I0QWVp?=
 =?utf-8?B?WjZPeElzTEsvdS9aZ0NTenJ5dFdKU0lzSUxIWlJRUXlYa2svRDBvZGF1RnpH?=
 =?utf-8?B?WmJwZTRDc0dVb2o1cXZFQmVtL0lMUTlVbm92UGxRTlJrZjZScUlMb0c2OW52?=
 =?utf-8?B?dlBMbGkzUTc0d2k1OCtsR3Z3S3dBL1FHcG9SUS9sTllubUpldXRCQlIya29m?=
 =?utf-8?B?aGRDeEUxdlpDeVhmV3ZmelRCTzlQaDZVaE95UWJ5QndHR01TUktMZTBoOWNr?=
 =?utf-8?B?NEVsYnhkVU93Q0p6Z0RpS0QzbXltMERWUnc3UXZpZU5QcUJjaXVQcUFaMENz?=
 =?utf-8?B?Q0szcEVYa3BYYTcwS1N0R3BPMStlMEpnekVCdVo3cHpvWXJTMEtUVkVhSmk3?=
 =?utf-8?B?TzRTNEdkUVJTNFdyUlJjZE1PZ2V4RFkvYzdDbUFhUUxpV1BxWUxQYlFNZjdC?=
 =?utf-8?B?Kzhpd2MyVlZ4dFJSWFlSMTBzSHkrWmRoeExJREptNGdEWkhwVXI3UnFGV0xv?=
 =?utf-8?B?WlZTVDJUcWx1ZHd2dlFocGU3WDlYbHBPclpua2pKTm9jcDF5WHgvV1ErRHAr?=
 =?utf-8?B?YldGMzNEcU5aK3UxVDZkZXZGYWczelJyN2o5QnZXTWIxTm9qbDVOZWJPZWxn?=
 =?utf-8?B?Rmx3UXYrbEpCU3lZejFaOHVwRXhoZ3hYdnB1aUdQYnBIdEV3VnJEaFVNU3Vh?=
 =?utf-8?B?N3JYL0NuWHZ0Ni9SZnRDWmtMTEhsMFNNWDl6U1pnd2JQZ094Nm93RmhhMVlr?=
 =?utf-8?B?WTV2UkhOQUZiaUtsdGptNE52RElSTzdKRnJjU2wvcnN3YlN2Vk5PWElIaUZU?=
 =?utf-8?B?WHdSMEFpUHdrRjlRTWd2d3p5cENtSVJTMEQvekZ3bTFoQk5WT1pQNW90b1ZB?=
 =?utf-8?B?dHVMQTZBblBFeGl2dzNrRFJTMXZCcEFNVVh4eVZ2K0lUdjdSTFV2ZFdPMVE2?=
 =?utf-8?B?emRGMHlmUmdaQUk3bUM5dWdQeGpvQUFJMGgxYzJZMjlaeFQ0ZVV5Mng2dUdn?=
 =?utf-8?B?bEVpSStLZGI0WVh3Z2dEVko5UGsyd2xGREZySi93eDN6WUFtUVNqaE9Ba3I5?=
 =?utf-8?B?NVhOQktwK2dQbVF5V2VwQnpqWU5KeERNaVoyU0lhVENJU25DVjdqNWt2VTNq?=
 =?utf-8?B?VFdSNU56cVM1Y1hWZ2NPUEQ5anhOZDZqNXJ1WU50VG9LNVJmam1FYVBwdndO?=
 =?utf-8?B?b0lQcnYvdVR5ekhCZWNLOC9lSGYycW85YWs5TWpBMVFjSUxueDdLb3JxdHla?=
 =?utf-8?B?Q0FIOUZjVlhaSVQyQXZXWSt4NzJGWVRDRDUrTjZJVmpmbFFvSlhSbFFwR0Rq?=
 =?utf-8?B?a0E9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db68793e-7d03-495c-ce58-08dc0bf83961
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2844.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2024 01:06:32.4077
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PVyFYKfDm3lZZGRTS5SeGjBSeDQNwFBh7S/3egCZiOjSp0PSwe2QKr4lJdBd16APDJMy8E3mFcY2/KqN5q6pNnXC4GNlXJlsuN9wg2HDXMw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5399
X-Proofpoint-GUID: 36Hz9RtupzaMHBVLcUvQJlGxZtMEsnMk
X-Proofpoint-ORIG-GUID: 36Hz9RtupzaMHBVLcUvQJlGxZtMEsnMk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 adultscore=0 spamscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 clxscore=1011 mlxlogscore=999 priorityscore=1501 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2311290000
 definitions=main-2401030007
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Jan 2024 01:08:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62073

--------------VmnupZPGLsX1h9fN62d6upaW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 40316ptP005174

On 2024-01-02 4:49 p.m., daniele.lugli via lists.yoctoproject.org wrote:
> Hi all and best wishes for the new year.
>
> I recently worked with nanbield on Ubuntu 22.04.3 in a VirtualBox=20
> machine.
> I added layers meta-intel and meta-realtime and, with a couple of=20
> small modifications to core-image-rt-extended.bb and to rt-app.bb, as=20
> suggested by some kind reader (see=20
> https://lists.yoctoproject.org/g/yocto/topic/103135158), and after a=20
> couple of restarts, I could obtain the image, prepare a .vdi from the=20
> .wic and boot a virtual machine with that disk.
>
> Now I moved to a physical machine with Ubuntu 22.04.3. Here is the=20
> build configuration:
>
> BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D "2.6.1"
> BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D "x86_64-linux"
> NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "universal"
> TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D "x86_64-poky-linux"
> MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D "genericx86-64"
> DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D "poky"
> DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=20
> "4.3+snapshot-b92406d2313234dccd77b05fe74c09ba9617a738"
> TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "m64 core2"
> TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D ""
> meta
> meta-poky
> meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "master:b92406d2=
313234dccd77b05fe74c09ba9617a738"
> meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D "master:10f1890af03dbb804bffd4fa7eda7729e08f12cb"
> meta-intel=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D "master:5cfefd9a8ff1f5a3534c1ba9d7d7f6971ed5d56f"
> meta-realtime=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "master:489=
e1d6b34e46f845a4bfe6461a39c6a4bcb7794"
>
> I am using exactly the same configuration as in the virtual Ubuntu and=20
> I have also applied the suggested modifications to=20
> core-image-rt-extended.bb and to rt-app.bb. So the situation should be=20
> the same.
>
> I cannot understand why I am getting error messages which look random:=20
> when, after the error, I rerun bitbake, I get a different error.
>
> As an instance, in the first run of bitbake core-image-extended.bb I ge=
t:
>
> |=20
> /home/daniele/poky/build/tmp/work/x86_64-linux/cmake-native/3.27.7/cmak=
e-3.27.7/Source/cmComputeComponentGraph.cxx:139:1:=20
> internal compiler error: Segmentation fault
> |=C2=A0=C2=A0 139 | }
> |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ^
> | 0x7fc36ca4251f ???
> | ./signal/../sysdeps/unix/sysv/linux/x86_64/libc_sigaction.c:0
> | 0x7fc36ca29d8f __libc_start_call_main
> | ../sysdeps/nptl/libc_start_call_main.h:58
> | 0x7fc36ca29e3f __libc_start_main_impl
> | =C2=A0=C2=A0=C2=A0 ../csu/libc-start.c:392
> | Please submit a full bug report,
> | with preprocessed source if appropriate.
> ...
> Summary: 1 task failed:
> /home/daniele/poky/meta/recipes-devtools/cmake/cmake-native_3.27.7.bb:d=
o_compile
>
> Second attempt, without any modification. I get a different error:
>
> ERROR: Task=20
> (virtual:native:/home/daniele/poky/meta/recipes-devtools/python/python3=
_3.11.5.bb:do_install)=20
> failed with exit code '139'
> NOTE: Tasks Summary: Attempted 3568 tasks of which 3518 didn't need to=20
> be rerun and 1 failed.
>
> Summary: 1 task failed:
> virtual:native:/home/daniele/poky/meta/recipes-devtools/python/python3_=
3.11.5.
>
> Third attempt, always without modifications. Still different:
>
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> ERROR: Task=20
> (/home/daniele/poky/meta/recipes-devtools/gcc/gcc_13.2.bb:do_compile)=20
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 6049 tasks of which 3567 didn't need to=20
> be rerun and 1 failed.
>
> Summary: 1 task failed:
> /home/daniele/poky/meta/recipes-devtools/gcc/gcc_13.2.bb:do_compile
> Summary: There were 2 ERROR messages, returning a non-zero exit code.
>
> And so on. Fourth attempt:
>
> ERROR: Task=20
> (/home/daniele/poky/meta-realtime/recipes-extended/images/core-image-rt=
-extended.bb:do_rootfs)=20
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 6700 tasks of which 6052 didn't need to=20
> be rerun and 1 failed.
>
> Summary: 1 task failed:
> /home/daniele/poky/meta-realtime/recipes-extended/images/core-image-rt-=
extended.bb:do_rootfs
> Summary: There was 1 ERROR message, returning a non-zero exit code.
>
> How is this possible? Problems in the communication with the server,=20
> or what?

I doubt it.=C2=A0 Did you look in the system logs?

I'd guess that the memory sub-system on your bare-metal ubu-22.04.3=20
machine is bad.

Try another machine with exactly the same software if you can.

To test the memory on the original machine, you can try use memtest86+=20
as noted here:
https://askubuntu.com/questions/343114/how-to-check-for-errors-in-ram-via=
-ubuntu


If there's no indication that the memory is bad, do the problems also=20
happen with the an older, more widely tested branch like kirkstone ?


../Randy


>
> Thank you in advance and best regards
>
> --=20
> Daniele Lugli
> General Logic srl
> Viale Curreno, 41
> 10133 Torino
> Italy
> tel +39 329 3933041
> www.general-logic.com <http://www.general-logic.com/>
> www.linkedin.com/in/daniele-lugli=20
> <http://www.linkedin.com/in/daniele-lugli>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62072):https://lists.yoctoproject.org/g/yocto/messa=
ge/62072
> Mute This Topic:https://lists.yoctoproject.org/mt/103491090/3616765
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [randy.macleo=
d@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--=20
# Randy MacLeod
# Wind River Linux

--------------VmnupZPGLsX1h9fN62d6upaW
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2024-01-02 4:49 p.m., daniele.lugli
      via lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:z3fE.1704232194586691808.HEiw@lists.yoctoproject.org">
      
      Hi all and best wishes for the new year.<br>
      <br>
      I recently worked with nanbield on Ubuntu 22.04.3 in a VirtualBox
      machine. <br>
      I added layers meta-intel and meta-realtime and, with a couple of
      small modifications to core-image-rt-extended.bb and to rt-app.bb,
      as suggested by some kind reader (see <a href="https://lists.yoctoproject.org/g/yocto/topic/103135158" target="_blank" rel="noopener" moz-do-not-send="true" class="moz-txt-link-freetext">https://lists.yoctoproject.org/g/yocto/topic/103135158</a>),
      and after a couple of restarts, I could obtain the image, prepare
      a .vdi from the .wic and boot a virtual machine with that disk.<br>
      <br>
      Now I moved to a physical machine with Ubuntu 22.04.3. Here is the
      build configuration:<br>
      <br>
      <span style="color: #0000ff;">BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;2.6.1&quot;<br>
        BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;x86_64-linux&quot;<br>
        NATIVELSBSTRING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;universal&quot;<br>
        TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;x86_64-poky-linux&quot;<br>
        MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;genericx86-64&quot;<br>
        DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;poky&quot;<br>
        DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
        &quot;4.3+snapshot-b92406d2313234dccd77b05fe74c09ba9617a738&quot;<br>
        TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;m64 core2&quot;<br>
        TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;&quot;<br>
        meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
        meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
        meta-yocto-bsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
        &quot;master:b92406d2313234dccd77b05fe74c09ba9617a738&quot;<br>
        meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
        &quot;master:10f1890af03dbb804bffd4fa7eda7729e08f12cb&quot;<br>
        meta-intel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
        &quot;master:5cfefd9a8ff1f5a3534c1ba9d7d7f6971ed5d56f&quot;</span><br>
      <span style="color: #0000ff;">meta-realtime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
        &quot;master:489e1d6b34e46f845a4bfe6461a39c6a4bcb7794&quot;</span><br>
      <br>
      I am using exactly the same configuration as in the virtual Ubuntu
      and I have also applied the suggested modifications to
      core-image-rt-extended.bb and to rt-app.bb. So the situation
      should be the same.<br>
      <br>
      I cannot understand why I am getting error messages which look
      random: when, after the error, I rerun bitbake, I get a different
      error.<br>
      <br>
      As an instance, in the first run of bitbake core-image-extended.bb
      I get:<br>
      <br>
      <span style="color: #ff0000;">|
/home/daniele/poky/build/tmp/work/x86_64-linux/cmake-native/3.27.7/cmake-3.27.7/Source/cmComputeComponentGraph.cxx:139:1:
        internal compiler error: Segmentation fault</span><br>
      <span style="color: #ff0000;">|&nbsp;&nbsp; 139 | }</span><br>
      <span style="color: #ff0000;">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | ^</span><br>
      <span style="color: #ff0000;">| 0x7fc36ca4251f ???</span><br>
      <span style="color: #ff0000;">| &nbsp;&nbsp;&nbsp;
        ./signal/../sysdeps/unix/sysv/linux/x86_64/libc_sigaction.c:0</span><br>
      <span style="color: #ff0000;">| 0x7fc36ca29d8f
        __libc_start_call_main</span><br>
      <span style="color: #ff0000;">| &nbsp;&nbsp;&nbsp;
        ../sysdeps/nptl/libc_start_call_main.h:58</span><br>
      <span style="color: #ff0000;">| 0x7fc36ca29e3f
        __libc_start_main_impl</span><br>
      <span style="color: #ff0000;">| &nbsp;&nbsp;&nbsp; ../csu/libc-start.c:392</span><br>
      <span style="color: #ff0000;">| Please submit a full bug report,</span><br>
      <span style="color: #ff0000;">| with preprocessed source if
        appropriate.</span><br>
      <span style="color: #ff0000;">...</span><br>
      <span style="color: #ff0000;">Summary: 1 task failed:</span><br>
      <span style="color: #ff0000;">&nbsp;
/home/daniele/poky/meta/recipes-devtools/cmake/cmake-native_3.27.7.bb:do_compile<br>
      </span><br>
      Second attempt, without any modification. I get a different error:<br>
      <br>
      <span style="color: #ff0000;">ERROR: Task
(virtual:native:/home/daniele/poky/meta/recipes-devtools/python/python3_3.11.5.bb:do_install)
        failed with exit code '139'</span><br>
      <span style="color: #ff0000;">NOTE: Tasks Summary: Attempted 3568
        tasks of which 3518 didn't need to be rerun and 1 failed.</span><br>
      <br>
      <span style="color: #ff0000;">Summary: 1 task failed:</span><br>
      <span style="color: #ff0000;">&nbsp;
virtual:native:/home/daniele/poky/meta/recipes-devtools/python/python3_3.11.5.</span><br>
      <br>
      Third attempt, always without modifications. Still different:<br>
      <br>
      <span style="color: #ff0000;">| ERROR: oe_runmake failed</span><br>
      <span style="color: #ff0000;">| WARNING: exit code 1 from a shell
        command.</span><br>
      <span style="color: #ff0000;">ERROR: Task
        (/home/daniele/poky/meta/recipes-devtools/gcc/gcc_13.2.bb:do_compile)
        failed with exit code '1'</span><br>
      <span style="color: #ff0000;">NOTE: Tasks Summary: Attempted 6049
        tasks of which 3567 didn't need to be rerun and 1 failed.</span><br>
      <br>
      <span style="color: #ff0000;">Summary: 1 task failed:</span><br>
      <span style="color: #ff0000;">&nbsp;
        /home/daniele/poky/meta/recipes-devtools/gcc/gcc_13.2.bb:do_compile</span><br>
      <span style="color: #ff0000;">Summary: There were 2 ERROR
        messages, returning a non-zero exit code.</span><br>
      <br>
      And so on. Fourth attempt:<br>
      <br>
      <span style="color: #ff0000;">ERROR: Task
(/home/daniele/poky/meta-realtime/recipes-extended/images/core-image-rt-extended.bb:do_rootfs)
        failed with exit code '1'</span><br>
      <span style="color: #ff0000;">NOTE: Tasks Summary: Attempted 6700
        tasks of which 6052 didn't need to be rerun and 1 failed.</span><br>
      <br>
      <span style="color: #ff0000;">Summary: 1 task failed:</span><br>
      <span style="color: #ff0000;">&nbsp;
/home/daniele/poky/meta-realtime/recipes-extended/images/core-image-rt-extended.bb:do_rootfs</span><br>
      <span style="color: #ff0000;">Summary: There was 1 ERROR message,
        returning a non-zero exit code.</span><br>
      <br>
      How is this possible? Problems in the communication with the
      server, or what?<br>
    </blockquote>
    <p>I doubt it.&nbsp; Did you look in the system logs?<br>
    </p>
    <p>I'd guess that the memory sub-system on your bare-metal
      ubu-22.04.3 machine is bad.<br>
    </p>
    <p>Try another machine with exactly the same software if you can.</p>
    <p>To test the memory on the original machine, you can try use
      memtest86+ as noted here:<br>
      &nbsp;&nbsp;
<a class="moz-txt-link-freetext" href="https://askubuntu.com/questions/343114/how-to-check-for-errors-in-ram-via-ubuntu">https://askubuntu.com/questions/343114/how-to-check-for-errors-in-ram-via-ubuntu</a></p>
    <p><br>
    </p>
    <p>If there's no indication that the memory is bad, do the problems
      also happen with the an older, more widely tested branch like
      kirkstone ? </p>
    <p><br>
    </p>
    <p>../Randy<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:z3fE.1704232194586691808.HEiw@lists.yoctoproject.org"><br>
      Thank you in advance and best regards<br>
      <br>
      -- <br>
      <div style="color: #500050; font-family: Arial, Helvetica, sans-serif; font-size: small;">
        <div dir="ltr">
          <div>Daniele Lugli</div>
          General Logic srl</div>
        <div>Viale Curreno, 41</div>
        <div>10133 Torino<br>
          Italy</div>
        <div>tel +39 329 3933041</div>
      </div>
      <div style="color: #500050; font-family: Arial, Helvetica, sans-serif; font-size: small;"><a style="color: #1155cc;" href="http://www.general-logic.com/" target="_blank" rel="noopener" data-saferedirecturl="https://www.google.com/url?q=http://www.general-logic.com&amp;source=gmail&amp;ust=1702484712598000&amp;usg=AOvVaw3caieBojp7RHbXjtN3Avtg" moz-do-not-send="true">www.general-logic.com</a></div>
      <div style="color: #500050; font-family: Arial, Helvetica, sans-serif; font-size: small;"><a style="color: #1155cc;" href="http://www.linkedin.com/in/daniele-lugli" target="_blank" rel="noopener" data-saferedirecturl="https://www.google.com/url?q=http://www.linkedin.com/in/daniele-lugli&amp;source=gmail&amp;ust=1702484712598000&amp;usg=AOvVaw2CJ1YOxQZd7TCndA_wq8ak" moz-do-not-send="true">www.linkedin.com/in/daniele-<wbr>lugli</a></div>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#62072): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/62072">https://lists.yoctoproject.org/g/yocto/message/62072</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/103491090/3616765">https://lists.yoctoproject.org/mt/103491090/3616765</a>
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

--------------VmnupZPGLsX1h9fN62d6upaW--

