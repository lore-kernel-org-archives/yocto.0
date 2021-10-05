Return-Path: <arnaud.pouliquen@foss.st.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F67C433F5
	for <webhook@archiver.kernel.org>; Tue,  5 Oct 2021 14:13:59 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com
 [185.132.182.106])
 by mx.groups.io with SMTP id smtpd.web11.1059.1633443237991644415
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 07:13:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@foss.st.com header.s=selector1 header.b=kn2NXZ4t;
 spf=pass (domain: foss.st.com, ip: 185.132.182.106,
 mailfrom: prvs=49124b4325=arnaud.pouliquen@foss.st.com)
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 195DFbgx021099;
	Tue, 5 Oct 2021 16:13:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=2L36ZLkXI8MKYELBZ/K5/APEWjVhakw5F2RizxIxIH4=;
 b=kn2NXZ4tzhEwNJpIj0jJvcWx920DC+qtPDmZXSobd7JLZbOEfzWbU6z0M7YlBVzWnKCt
 u3RRdEYvNb9uAgEuW+dtFcPQZn7YSkEkNIYMaodGuFioEWznkK4rfjEJ9R2EDakk9KL7
 kQum6of4KgRC1mFjcEv8ZPRY/EAEYM1nNGbPCZIF2E4NX1aLaB6J7BqblL01o8IOmsAR
 TJnIUOpLZpAxvK+T/o5CQF+zpVD8eedUy/ASfSThZ1Vv2KEhwx7z47iqAnpbFT8aCn9F
 pf5DVUeHOyp1PiQ9a5FEqULGU8e4vlOJP3I4YlduaHIoSHyrcCWRSgV6cl9B/Gk+BUF3 NQ==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com with ESMTP id 3bgjt8t4mu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 05 Oct 2021 16:13:39 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5250110002A;
	Tue,  5 Oct 2021 16:13:37 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 21ECF22F7C9;
	Tue,  5 Oct 2021 16:13:37 +0200 (CEST)
Received: from lmecxl0889.lme.st.com (10.75.127.48) by SFHDAG2NODE2.st.com
 (10.75.127.5) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Tue, 5 Oct
 2021 16:13:36 +0200
Subject: Re: [yocto] [meta-zephyr 0/2] add support of the
 zephyr-openamp-rsc-table sample on STM32MP157
To: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: Kumar Gala <kumar.gala@linaro.org>,
        Kevin Townsend
	<kevin.townsend@linaro.org>
References: <20210929094129.13951-1-arnaud.pouliquen@foss.st.com>
 <CO1PR11MB502616605AB95E80BB5DD098C4AF9@CO1PR11MB5026.namprd11.prod.outlook.com>
From: Arnaud POULIQUEN <arnaud.pouliquen@foss.st.com>
Message-ID: <4d60d637-a986-07fe-72bd-33d61ada7941@foss.st.com>
Date: Tue, 5 Oct 2021 16:13:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: 
 <CO1PR11MB502616605AB95E80BB5DD098C4AF9@CO1PR11MB5026.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-10-05_02,2021-10-04_01,2020-04-07_01
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Oct 2021 14:13:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54958

Hello Saini,

On 10/5/21 9:08 AM, Saini, Naveen Kumar wrote:
> This is only cover letter, I do not see patches on mailing list..

Yes something strange, they are not listed on same page of the archive on
https://lists.yoctoproject.org/

Patch 1/2 and patch 2/2 associated with this one are visible in the Yocto archive:

link to the patches on mail-archive.com:
https://www.mail-archive.com/yocto@lists.yoctoproject.org/msg07088.html
https://www.mail-archive.com/yocto@lists.yoctoproject.org/msg07089.html

Please tell me if you need that I resend the series.

Regards,
Arnaud


> 
> Regards,
> Naveen
> 
>> -----Original Message-----
>> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
>> Behalf Of Arnaud Pouliquen
>> Sent: Wednesday, September 29, 2021 5:41 PM
>> To: yocto@lists.yoctoproject.org
>> Cc: Kumar Gala <kumar.gala@linaro.org>; Kevin Townsend
>> <kevin.townsend@linaro.org>
>> Subject: [yocto] [meta-zephyr 0/2] add support of the zephyr-openamp-rsc-
>> table sample on STM32MP157
>>
>> Add capability to genereate the "zephyr-openamp-rsc-table" sample in yocto
>> build.
>>
>> This example demonstrates inter-processor communication based on a
>> resource table, with the objective of responding to the Linux kernel rpmsg
>> sample.
>>
>> This sample is compatible with the stm32mp157c_dk2 board.
>> The support of the board is also added in this series.
>>
>> Arnaud Pouliquen (2):
>>   conf: machine: add stm32mp157c-dk2 support
>>   zephyr-kernel: add openamp-rsc-table sample
>>
>>  conf/machine/stm32mp157c-dk2.conf                      |  8 ++++++++
>>  .../zephyr-kernel/zephyr-openamp-rsc-table.bb          | 10 ++++++++++
>>  2 files changed, 18 insertions(+)
>>  create mode 100644 conf/machine/stm32mp157c-dk2.conf  create mode
>> 100644 recipes-kernel/zephyr-kernel/zephyr-openamp-rsc-table.bb
>>
>> --
>> 2.17.1
> 

