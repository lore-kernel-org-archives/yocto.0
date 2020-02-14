Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web09.9329.1581700163756061558
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Feb 2020 09:09:23 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: randy.macleod@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 01EH8dBF028279
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Fri, 14 Feb 2020 09:08:55 -0800
Received: from [172.25.44.8] (172.25.44.8) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.468.0; Fri, 14 Feb 2020
 09:08:35 -0800
To: <yocto@lists.yoctoproject.org>,
        Richard Purdie
	<richard.purdie@linuxfoundation.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Subject: yocto.io: Add weekly full tests on master branch?
Message-ID: <aa56f737-0749-0ab5-4578-4a0189defd0e@windriver.com>
Date: Fri, 14 Feb 2020 12:08:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
X-Originating-IP: [172.25.44.8]
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

Hi,

There are many tests run for master-next and reported here:
    https://autobuilder.yocto.io/pub/non-release/
such as:
 
https://autobuilder.yocto.io/pub/non-release/20200214-4/testresults/testresult-report.txt

It would be nice to have a weekly or more frequent full test
run on the master branch. I suspect that some people know that
_certain_ master-next runs end up becoming the master branch content
but that's not clear in the summary page.

Is that reasonable and possible given the hardware available?
-- 
# Randy MacLeod
# Wind River Linux
