Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E73FFC77B7E
	for <webhook@archiver.kernel.org>; Tue,  2 May 2023 11:18:49 +0000 (UTC)
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
 by mx.groups.io with SMTP id smtpd.web10.126267.1683026323974047368
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 May 2023 04:18:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=B7HJudpJ;
 spf=pass (domain: linux.ibm.com, ip: 148.163.158.5, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353722.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 342B8bAd024349
	for <yocto@lists.yoctoproject.org>; Tue, 2 May 2023 11:18:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=Fp3qBSC0kOjinSiBatDIsK/1QPxJFbrWwcTPIhFwLjI=;
 b=B7HJudpJUp37r5bcTraSHekrxNmoapKnOnLDZsEKGr9c33l23tUelf/yuS1nNZOrafYG
 tNoRhfHuf7e02yG24/lErSiTsnhG2BYStBs28q3ryHTk1/XVZZmh91SiALAmRIFTQSsW
 5HCsQ/Bm0uDM+C1Qs/3ZaYvbRUzetdf/u4z++AdszAylB/96cX5F58oIF/JUtw1p4Tfx
 R0a6EA7cm8OloR9oqTwwTYbL6PcRLaLk29bBb6OLuNPV6LopVa6GeMulp2SSqjyuGxCi
 C1UpTaDdPRhD3Dpz5kmf6mId/kYdOeIQB7zrhYge4hmTyjTOomGBisrS1/3mqWWXAy4L 7A== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qb17xgm1k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 11:18:42 +0000
Received: from m0353722.ppops.net (m0353722.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 342B9D9O029204
	for <yocto@lists.yoctoproject.org>; Tue, 2 May 2023 11:18:42 GMT
Received: from ppma03dal.us.ibm.com (b.bd.3ea9.ip4.static.sl-reverse.com [169.62.189.11])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qb17xgm1h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 02 May 2023 11:18:42 +0000
Received: from pps.filterd (ppma03dal.us.ibm.com [127.0.0.1])
	by ppma03dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 342AI7Z5005168;
	Tue, 2 May 2023 11:18:41 GMT
Received: from smtprelay07.dal12v.mail.ibm.com ([9.208.130.99])
	by ppma03dal.us.ibm.com (PPS) with ESMTPS id 3q8tv82rrf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 02 May 2023 11:18:41 +0000
Received: from smtpav02.dal12v.mail.ibm.com (smtpav02.dal12v.mail.ibm.com [10.241.53.101])
	by smtprelay07.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 342BIeeJ38732292
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 2 May 2023 11:18:40 GMT
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id CAFCA5805E;
	Tue,  2 May 2023 11:18:40 +0000 (GMT)
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 96E485805A;
	Tue,  2 May 2023 11:18:40 +0000 (GMT)
Received: from [9.47.158.152] (unknown [9.47.158.152])
	by smtpav02.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  2 May 2023 11:18:40 +0000 (GMT)
Message-ID: <f8010039-ec50-0b9d-3009-af95c9ebebaa@linux.ibm.com>
Date: Tue, 2 May 2023 07:18:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] [meta-security][PATCH 1/2] oeqa: fix hash test to match
 new changes
Content-Language: en-US
To: Armin Kuster <akuster808@gmail.com>, yocto@lists.yoctoproject.org
References: <20230502110657.2496963-1-akuster808@gmail.com>
From: Stefan Berger <stefanb@linux.ibm.com>
In-Reply-To: <20230502110657.2496963-1-akuster808@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: w3T50iRLnyGKVzcnk7zTzMPIMXJxBwYo
X-Proofpoint-GUID: 75ADvPuf3SISDJ3lwd2KdlT6tODArgba
Content-Transfer-Encoding: 7bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-02_05,2023-04-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 clxscore=1015
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 spamscore=0 impostorscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2305020096
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 11:18:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59837



On 5/2/23 07:06, Armin Kuster wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>

Reviewed-by: Stefan Berger <stefanb@linux.ibm.com>

> ---
>   meta-integrity/lib/oeqa/runtime/cases/ima.py | 10 ++++------
>   1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/meta-integrity/lib/oeqa/runtime/cases/ima.py b/meta-integrity/lib/oeqa/runtime/cases/ima.py
> index 0c8617a..6b361ca 100644
> --- a/meta-integrity/lib/oeqa/runtime/cases/ima.py
> +++ b/meta-integrity/lib/oeqa/runtime/cases/ima.py
> @@ -58,21 +58,19 @@ class IMACheck(OERuntimeTestCase):
>       @OETestDepends(['ima.IMACheck.test_ima_enabled'])
>       def test_ima_hash(self):
>           ''' Test if IMA stores correct file hash '''
> -        filename = "/etc/filetest"
> +        filename = "/etc/ld.so.cache"
>           ima_measure_file = "/sys/kernel/security/ima/ascii_runtime_measurements"
> -        status, output = self.target.run("echo test > %s" % filename)
> -        self.assertEqual(status, 0, "Cannot create file %s on target" % filename)
>   
>           # wait for the IMA system to update the entry
> -        maximum_tries = 30
> +        maximum_tries = 3
>           tries = 0
> -        status, output = self.target.run("sha1sum %s" %filename)
> +        status, output = self.target.run("sha256sum %s" %filename)
>           sleep(2)
>           current_hash = output.split()[0]
>           ima_hash = ""
>   
>           while tries < maximum_tries:
> -            status, output = self.target.run("cat %s | grep %s" \
> +            status, output = self.target.run("cat %s | grep -e '%s'" \
>                   % (ima_measure_file, filename))
>               # get last entry, 4th field
>               if status == 0:
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59835): https://lists.yoctoproject.org/g/yocto/message/59835
> Mute This Topic: https://lists.yoctoproject.org/mt/98636143/1792208
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [stefanb@linux.ibm.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

