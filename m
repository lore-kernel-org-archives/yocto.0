Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC118C77B7E
	for <webhook@archiver.kernel.org>; Tue,  2 May 2023 11:20:59 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web10.126309.1683026452600523115
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 May 2023 04:20:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=B1LlJN0z;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 342B8wue029921
	for <yocto@lists.yoctoproject.org>; Tue, 2 May 2023 11:20:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=zX/e5GPrhRY4a2vEL2GCQsRFzwyFgtaK5wcKJqMoohA=;
 b=B1LlJN0zzKVfmmUQhFGmwHqsvrKN5YHkfyaekvO8yKZ+kD4lOZWzaPTqdbyb/SDZ1PHv
 xoU4M5sOe9p2LWlA40o/PueKM0Z3qySSFMJgDTSotV15QzvEQAbZMeZOw1P3bKDCNmyn
 knapphvGQX+vhxbEdmSh6yMMnMVZxcVsqmGi9DkIhKn4NrcoLBpiSxDXC1r1zZmd6DcY
 qqjZs9zx1XeR+JgwsCpyMXU/48NY5/Ye44PkSLBurvfKWdWaGBACaXNYu5Kfl4513voT
 ynICBCyOwKCpAIGezgjrFW/TBm1zbM31zrB8NgOmlsC4d8C2TGrRkTNvMD//I13PMIXt 0g== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qb107h4xx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 11:20:51 +0000
Received: from m0353729.ppops.net (m0353729.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 342B9QrM031393
	for <yocto@lists.yoctoproject.org>; Tue, 2 May 2023 11:20:51 GMT
Received: from ppma01dal.us.ibm.com (83.d6.3fa9.ip4.static.sl-reverse.com [169.63.214.131])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qb107h4xg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 02 May 2023 11:20:51 +0000
Received: from pps.filterd (ppma01dal.us.ibm.com [127.0.0.1])
	by ppma01dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 3429qNa6026707;
	Tue, 2 May 2023 11:20:50 GMT
Received: from smtprelay06.dal12v.mail.ibm.com ([9.208.130.100])
	by ppma01dal.us.ibm.com (PPS) with ESMTPS id 3q8tv92tgh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 02 May 2023 11:20:50 +0000
Received: from smtpav02.dal12v.mail.ibm.com (smtpav02.dal12v.mail.ibm.com [10.241.53.101])
	by smtprelay06.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 342BKn9C7144164
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 2 May 2023 11:20:49 GMT
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 506085805E;
	Tue,  2 May 2023 11:20:49 +0000 (GMT)
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 1E9945805A;
	Tue,  2 May 2023 11:20:49 +0000 (GMT)
Received: from [9.47.158.152] (unknown [9.47.158.152])
	by smtpav02.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  2 May 2023 11:20:49 +0000 (GMT)
Message-ID: <b70c1418-1096-6901-5604-578f0d65a483@linux.ibm.com>
Date: Tue, 2 May 2023 07:20:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] [meta-security][PATCH 2/2] integrity-image-minimal: adapt
 QEMU cmdline to new changes
Content-Language: en-US
To: Armin Kuster <akuster808@gmail.com>, yocto@lists.yoctoproject.org
References: <20230502110657.2496963-1-akuster808@gmail.com>
 <20230502110657.2496963-2-akuster808@gmail.com>
From: Stefan Berger <stefanb@linux.ibm.com>
In-Reply-To: <20230502110657.2496963-2-akuster808@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: QOUJFguymJJT0FaV5TtJ_0d_uoa4j5JF
X-Proofpoint-ORIG-GUID: GMNG8Z0YwCW3YYD1lbCe61qyCI0iJUb-
Content-Transfer-Encoding: 7bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-02_05,2023-04-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 phishscore=0
 adultscore=0 clxscore=1015 mlxlogscore=999 impostorscore=0 suspectscore=0
 bulkscore=0 mlxscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2303200000
 definitions=main-2305020096
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 11:20:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59838



On 5/2/23 07:06, Armin Kuster wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>   meta-integrity/recipes-core/images/integrity-image-minimal.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-integrity/recipes-core/images/integrity-image-minimal.bb b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
> index f40e867..5022170 100644
> --- a/meta-integrity/recipes-core/images/integrity-image-minimal.bb
> +++ b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
> @@ -18,4 +18,4 @@ export IMAGE_BASENAME = "integrity-image-minimal"
>   
>   INHERIT += "ima-evm-rootfs"
>   
> -QB_KERNEL_CMDLINE_APPEND:append = " ima_appraise=fix ima_policy=tcb ima_policy=appraise_tcb"
> +QB_KERNEL_CMDLINE_APPEND:append = " ima_policy=tcb ima_appraise=fix"

Reviewed-by: Stefan Berger <stefanb@linux.ibm.com>

> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59836): https://lists.yoctoproject.org/g/yocto/message/59836
> Mute This Topic: https://lists.yoctoproject.org/mt/98636144/1792208
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [stefanb@linux.ibm.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

