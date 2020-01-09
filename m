Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.7691.1578572491473372473
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 04:21:31 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: randy.macleod@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15225E014CC; Thu,  9 Jan 2020 04:21:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27D0EE01155
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2020 04:21:28 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 009CKevB010706
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 9 Jan 2020 04:20:51 -0800
Received: from [172.25.44.8] (172.25.44.8) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.468.0; Thu, 9 Jan 2020
 04:20:29 -0800
Subject: Re: [yocto] Md5sum calculation
To: Sheraz Ali <sheraz.ali@iwavesystems.com>, <yocto@yoctoproject.org>
References: <2d928884-8964-4376-8261-198fb5cf22a1@email.android.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <842dd226-ee36-27f2-96c6-9a43b9371d38@windriver.com>
Date: Thu, 9 Jan 2020 07:20:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <2d928884-8964-4376-8261-198fb5cf22a1@email.android.com>
X-Originating-IP: [172.25.44.8]
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 1/9/20 2:53 AM, Sheraz Ali wrote:
> Hi
> I am a newbie in yocto can anyone help me in finding the md5sum of
> the file before downloading
> the file in yocto.

Welcome to the Yocto Project!

You can either download the file manually and run:
   md5sum package_3.14.tar.gz
or put bogus values into the recipe and then:
   bitbake package
and bitbake will tell you that the md5sums are wrong and
provide the correct ones to add to your recipe.

Good luck,
../Randy

> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
