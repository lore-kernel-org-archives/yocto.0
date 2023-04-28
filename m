Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3C44C77B61
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 12:55:18 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web10.18799.1682686511471807485
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 05:55:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=IhK8zDL8;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33SCpGB3024484;
	Fri, 28 Apr 2023 12:55:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=t/QFd1lXYHJVqus5kBfVBwUbpUBcrmND2rIKBkopLQU=;
 b=IhK8zDL8xOgpSdk1nkgnH0LB5H1Mj2oZKRpqbGPb9uCLsp5o7EEYVKqM2W2QYpvBzPO3
 bLvUXB4MW57+5k8TF4GbapAKexkA1ChAveg6ISgMWbuabdUlKP0BrAvHTzIQENbe405S
 H8Ap+ICrGMtopUlSLNO6v4hVE1BFKMUtbFQUb7Ji2JeXc6XabTXlm+fgMgOU+OA4xFe6
 kr0FTlqWfLnLlUuZ3Eid2et6WXJc18JR0WRsfIs7OZ0r9DGqpewZUjYtg5yTr/pr2lvH
 1D/0SlLeZ53zVY67B8ke6K3N1Jo+X0k6s89ME5LJXX6wWUIu18IijPMTuH+XKzUzuzoT 3w== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3q8dpmsvqg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 12:55:09 +0000
Received: from m0356517.ppops.net (m0356517.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 33SCdOHr024038;
	Fri, 28 Apr 2023 12:55:09 GMT
Received: from ppma04wdc.us.ibm.com (1a.90.2fa9.ip4.static.sl-reverse.com [169.47.144.26])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3q8dpmsvpq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 12:55:09 +0000
Received: from pps.filterd (ppma04wdc.us.ibm.com [127.0.0.1])
	by ppma04wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 33S9suRj032090;
	Fri, 28 Apr 2023 12:55:07 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([9.208.129.120])
	by ppma04wdc.us.ibm.com (PPS) with ESMTPS id 3q47787n30-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 12:55:07 +0000
Received: from smtpav01.wdc07v.mail.ibm.com (smtpav01.wdc07v.mail.ibm.com [10.39.53.228])
	by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 33SCt6aJ38863274
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 28 Apr 2023 12:55:06 GMT
Received: from smtpav01.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id AA4645804B;
	Fri, 28 Apr 2023 12:55:06 +0000 (GMT)
Received: from smtpav01.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 4EB5258055;
	Fri, 28 Apr 2023 12:55:06 +0000 (GMT)
Received: from [9.47.158.152] (unknown [9.47.158.152])
	by smtpav01.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Fri, 28 Apr 2023 12:55:06 +0000 (GMT)
Message-ID: <0d7cf75b-cd5c-18a7-652c-aff4505e074d@linux.ibm.com>
Date: Fri, 28 Apr 2023 08:55:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] [meta-security][PATCH 7/8] linux: overlayfs: Add kernel
 patch resolving a file change notification issue
Content-Language: en-US
To: Mikko Rapeli <mikko.rapeli@linaro.org>
Cc: yocto@lists.yoctoproject.org, akuster808@gmail.com
References: <20230428122316.521800-1-stefanb@linux.ibm.com>
 <20230428122316.521800-8-stefanb@linux.ibm.com> <ZEvAl09z9fluq3Cr@nuoska>
From: Stefan Berger <stefanb@linux.ibm.com>
In-Reply-To: <ZEvAl09z9fluq3Cr@nuoska>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 6yMoAj8PBC6dd14sZu4UNUBBBX_gJ9P_
X-Proofpoint-ORIG-GUID: Ey5tVg4VMonypwQrr0347btTA3XUW79o
Content-Transfer-Encoding: 7bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-28_04,2023-04-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 priorityscore=1501 bulkscore=0 mlxscore=0 mlxlogscore=999
 malwarescore=0 spamscore=0 adultscore=0 clxscore=1011 lowpriorityscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304280102
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:55:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59807



On 4/28/23 08:48, Mikko Rapeli wrote:
> Hi,
> 
> On Fri, Apr 28, 2023 at 08:23:15AM -0400, Stefan Berger wrote:
>> Add a temporary patch that resolves a file change notification issue
>> with overlayfs where IMA did not become aware of the file changes
>> since the 'lower' inode's i_version had not changed. The issue will be
>> resolved in later kernels with the following patch that builds on
>> newly addd feature (support for STATX_CHANGE_COOKIE) in v6.3-rc1:
>>
>> https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459
> 
> Would be nice to have Upstream-Status for each patch. I guess status
> would be Backport here.

It's quite possible that this series here https://lkml.org/lkml/2022/10/21/624
(alone?) would provide the infrastructure for STATX_CHANGE_COOKIE (introduced in 3/8)
and have that referenced patch applied which isn't upstreamed so far, either.

For now this two-liner seemed simpler and resolves the issue. I understand the concern, though...

      Stefan

> 
> Cheers,
> 
> -Mikko
> 
>> Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
>> ---
>>   ...Increment-iversion-upon-file-changes.patch | 42 +++++++++++++++++++
>>   .../recipes-kernel/linux/linux_ima.inc        |  1 +
>>   2 files changed, 43 insertions(+)
>>   create mode 100644 meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
>>
>> diff --git a/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch b/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
>> new file mode 100644
>> index 0000000..d2b5c28
>> --- /dev/null
>> +++ b/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
>> @@ -0,0 +1,42 @@
>> +From e9ed62e8d1d3eee7ffe862d9812c5320d3b9bd88 Mon Sep 17 00:00:00 2001
>> +From: Stefan Berger <stefanb@linux.ibm.com>
>> +Date: Thu, 6 Apr 2023 11:27:29 -0400
>> +Subject: [PATCH] ovl: Increment iversion upon file changes
>> +
>> +This is a temporary patch for kernels that do not implement
>> +STATX_CHANGE_COOKIE (<= 6.2). The successor patch will be this one:
>> +
>> +https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459
>> +
>> +Increment the lower inode's iversion for IMA to be able to recognize
>> +changes to the file.
>> +
>> +Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
>> +---
>> + fs/overlayfs/file.c | 3 +++
>> + 1 file changed, 3 insertions(+)
>> +
>> +diff --git a/fs/overlayfs/file.c b/fs/overlayfs/file.c
>> +index 6011f955436b..1dfe5e7bfe1c 100644
>> +--- a/fs/overlayfs/file.c
>> ++++ b/fs/overlayfs/file.c
>> +@@ -13,6 +13,7 @@
>> + #include <linux/security.h>
>> + #include <linux/mm.h>
>> + #include <linux/fs.h>
>> ++#include <linux/iversion.h>
>> + #include "overlayfs.h"
>> +
>> + struct ovl_aio_req {
>> +@@ -408,6 +409,8 @@ static ssize_t ovl_write_iter(struct kiocb *iocb, struct iov_iter *iter)
>> + 		if (ret != -EIOCBQUEUED)
>> + 			ovl_aio_cleanup_handler(aio_req);
>> + 	}
>> ++	if (ret > 0)
>> ++		inode_maybe_inc_iversion(inode, false);
>> + out:
>> + 	revert_creds(old_cred);
>> + out_fdput:
>> +--
>> +2.34.1
>> +
>> diff --git a/meta-integrity/recipes-kernel/linux/linux_ima.inc b/meta-integrity/recipes-kernel/linux/linux_ima.inc
>> index 0b6f530..9d48e5c 100644
>> --- a/meta-integrity/recipes-kernel/linux/linux_ima.inc
>> +++ b/meta-integrity/recipes-kernel/linux/linux_ima.inc
>> @@ -2,6 +2,7 @@ FILESEXTRAPATHS:append := "${THISDIR}/linux:"
>>   
>>   SRC_URI += " \
>>       ${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'file://ima.scc', '', d)} \
>> +    file://0001-ovl-Increment-iversion-upon-file-changes.patch \
>>   "
>>   
>>   do_configure() {
>> -- 
>> 2.34.1
>>
> 
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#59800): https://lists.yoctoproject.org/g/yocto/message/59800
>> Mute This Topic: https://lists.yoctoproject.org/mt/98557297/7159507
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mikko.rapeli@linaro.org]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
> 

