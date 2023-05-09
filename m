Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E78CC7EE23
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 18:37:24 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web10.41075.1683657437153690860
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 11:37:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=sx6rzHz+;
 spf=pass (domain: linux.ibm.com, ip: 148.163.156.1, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353726.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 349Ia8w8018560;
	Tue, 9 May 2023 18:37:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=pp1;
 bh=0Hb5ORn650qoeHHY6ArdiermM44tP31VKRbAWEE5oI4=;
 b=sx6rzHz+4W2N6dXk7R1lhMGAHEJTACffGWUIuVIhxVximTo1AcqQgUe04qqGH57j7Ura
 S8DpiLQZoE4Mkfj3mkAQ0Q45MBIdzOLagTSJezSGg4nUpZmbYTqLWT7DcANpRC8V1dsw
 oUl2CaG1+RqWQZVon/IhmNdH4/8RgkUnVCG8HB3u02OYBVRNox52xyeHkPln7mAPRzXn
 IBfTouWUGUW3m6OND4l5CIPp1o9mgp1PAD1HqprspCKugGThm9rYsKLw6xjnAX1RJOWK
 jpaaSIvUHL6P11XFtkjh2aU1OAkcpXcPo9MX99O6LthsfUHiaLivnBfMdDsQqmSN0UM5 Ig== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfu8dgqm6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 18:37:15 +0000
Received: from m0353726.ppops.net (m0353726.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 349IaG1p019864;
	Tue, 9 May 2023 18:37:14 GMT
Received: from ppma02wdc.us.ibm.com (aa.5b.37a9.ip4.static.sl-reverse.com [169.55.91.170])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfu8dgqkm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 18:37:14 +0000
Received: from pps.filterd (ppma02wdc.us.ibm.com [127.0.0.1])
	by ppma02wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 349GJ0DR014463;
	Tue, 9 May 2023 18:37:13 GMT
Received: from smtprelay04.dal12v.mail.ibm.com ([9.208.130.102])
	by ppma02wdc.us.ibm.com (PPS) with ESMTPS id 3qf7ey4wxs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 18:37:13 +0000
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com [10.241.53.105])
	by smtprelay04.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 349IbC3d39518478
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 9 May 2023 18:37:12 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 4DAC45805E;
	Tue,  9 May 2023 18:37:12 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 0229458043;
	Tue,  9 May 2023 18:37:12 +0000 (GMT)
Received: from [9.47.158.152] (unknown [9.47.158.152])
	by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  9 May 2023 18:37:11 +0000 (GMT)
Message-ID: <8b29907e-b2fe-dd02-61b5-c9129b2df77e@linux.ibm.com>
Date: Tue, 9 May 2023 14:37:11 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] [meta-security][PATCH 7/8] linux: overlayfs: Add kernel
 patch resolving a file change notification issue
Content-Language: en-US
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>, yocto@lists.yoctoproject.org,
        akuster808@gmail.com
References: <20230428122316.521800-1-stefanb@linux.ibm.com>
 <20230428122316.521800-8-stefanb@linux.ibm.com> <ZEvAl09z9fluq3Cr@nuoska>
 <0d7cf75b-cd5c-18a7-652c-aff4505e074d@linux.ibm.com>
 <CANPvuR=3YHfc6Dz26ZVF2bo5AZ0jmF-T1raSwiS-nd55bRza+A@mail.gmail.com>
 <2aa5daa3-8a0e-4e55-469d-9e4576995328@linux.ibm.com>
 <CANPvuRmSbxuVR=UwNoZwJS5xAJfV9-=KysXCc0qjxpTHj0Kw+g@mail.gmail.com>
 <2458d001-940c-96dc-cfe8-792d5e48cbe8@linux.ibm.com>
 <CANPvuRmsaiLz1XGu1WSKZO=XJSXKvzhECuLe-i__rrKGyDCFeA@mail.gmail.com>
From: Stefan Berger <stefanb@linux.ibm.com>
In-Reply-To: <CANPvuRmsaiLz1XGu1WSKZO=XJSXKvzhECuLe-i__rrKGyDCFeA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 1mNuB9qD-4rtKfyo08InzxkSLJZv6OLM
X-Proofpoint-ORIG-GUID: Ty8cXeQwl7sM9PhYGdUcgpbO3Jdggmep
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_12,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 mlxscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 adultscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305090154
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 18:37:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59943



On 5/9/23 14:13, Jose Quaresma wrote:

> 
> it's easy, just call the following:
> 
> bitbake linux-firmware
> 
> 

How do you initialize this environment?


If I was to do this from meta-security I get this here:

$ bitbake linux-firmware
ERROR: The BBPATH variable is not set and bitbake did not find a conf/bblayers.conf file in the expected location.
Maybe you accidentally invoked bitbake from the wrong directory?


    Stefan

