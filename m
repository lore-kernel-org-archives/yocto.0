Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
 by mx.groups.io with SMTP id smtpd.web11.228.1590616420364170760
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 May 2020 14:53:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ti.com header.s=ti-com-17q1 header.b=nGdA6dPR;
 spf=pass (domain: ti.com, ip: 198.47.19.142, mailfrom: wmills@ti.com)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04RLrW3J060140;
	Wed, 27 May 2020 16:53:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1590616412;
	bh=5ZOxdkpI1iaZ5Q8+nD+dPr3IxrjQpLCh0aibnYjjZ4M=;
	h=Subject:To:CC:References:From:Date:In-Reply-To;
	b=nGdA6dPRUneolLevquGdzHoofB0+DrU3y5pqy3Lt/0f1zute9PYTgaWXZ1iazQZ8C
	 kLi8iwL2ghcWVtCVug8zwPcox0qKyJ6BJyVUqU/2b1BaESP3W3OOy6GWwCBeEpiXrw
	 mc61kCxlNnrgesg4HY7+BD2IJHYkS2iERm4FHRPQ=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04RLrWlE025606
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 27 May 2020 16:53:32 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 27
 May 2020 16:53:31 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 27 May 2020 16:53:31 -0500
Received: from [10.0.2.15] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04RLrU1M036483;
	Wed, 27 May 2020 16:53:30 -0500
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-2.7.4.rc2)
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
        "pokybuild@ubuntu1804-ty-1.yocto.io" <pokybuild@ubuntu1804-ty-1.yocto.io>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
        "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
        "apoorv.sangal@intel.com"
	<apoorv.sangal@intel.com>,
        "ee.peng.yeoh@intel.com" <ee.peng.yeoh@intel.com>,
        "aaron.chun.yew.chan@intel.com" <aaron.chun.yew.chan@intel.com>,
        "akuster808@gmail.com" <akuster808@gmail.com>,
        "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>,
        "sangeeta.jain@intel.com"
	<sangeeta.jain@intel.com>
References: <20200527120917.D994DE01C24@yocto-www.yoctoproject.org>
 <615783cf129245af8973e3376b06f3bc@ti.com>
 <952758c461a1846f5069d1dfe6ccb6ee89c3f057.camel@linuxfoundation.org>
From: "William Mills" <wmills@ti.com>
Message-ID: <e3383496-e197-44a1-cb0e-28b043b0298a@ti.com>
Date: Wed, 27 May 2020 17:53:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <952758c461a1846f5069d1dfe6ccb6ee89c3f057.camel@linuxfoundation.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 5/27/20 4:48 PM, Richard Purdie wrote:
> Hi Bill,
> 
> On Wed, 2020-05-27 at 12:31 +0000, Mills, William wrote:
>> In a script, how would I download all the files in this dir:
>>
>> https://autobuilder.yocto.io/pub/releases/yocto-2.7.4.rc2/machines/beaglebone-yocto/
>>
>> I see no global md5sum (or sha256sum etc) file in the tree anywhere.
>>
>> The names are cut off in the default html list format so screen
>> scrapping won't work.  Is there an automated way to request a better
>> format?  WebDav? Am I missing something obvious?
> 
> If you look at the raw html it looks like:
> 
> <a href="am335x-bone--5.0.13%2Bgit0%2B7f6e97c357_f990fd0ce1-r0.2-beaglebone-yocto-20200526225701.dtb">am335x-bone--5.0.13+git0+7f6e97c357_f990fd0ce1-..&gt;</a> 27-May-2020 07:00               56237
> 
> so the href is correct and its only the displayed url that is
> shortened. That is why you can click on them to get the artefacts and
> it is 'just' a display issue. It also means any script can pull the
> correct urls the same way.
> 

Of course.  That _was_ obvious.  Trying to do too many things at the
same time.

Still it would be nice to drop a sha256sums file in the base of the
tree.  I would feel much happier coding to that than the html scrapping.
But I will start with the html.


Thanks.
Bill

> I think Michael has tweaked the line lengths in the past but it keeps
> getting reset to distro defaults as the machine is upgraded. He knows
> about it and will look at sorting that again.
> 
> Cheers,
> 
> Richard
> 
> 
> 
