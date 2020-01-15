Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.9765.1579106379903560684
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jan 2020 08:39:40 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: randy.macleod@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38A86E01546; Wed, 15 Jan 2020 08:39:39 -0800 (PST)
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
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A9A4E01320
	for <yocto@yoctoproject.org>; Wed, 15 Jan 2020 08:39:35 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 00FGdXWV011547
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Wed, 15 Jan 2020 08:39:33 -0800 (PST)
Received: from [172.25.44.8] (172.25.44.8) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.468.0; Wed, 15 Jan 2020
 08:39:33 -0800
Subject: Re: [yocto] Root login not working with Warrior
To: "Teemu K." <maillinglists18@gmail.com>,
        Yocto discussion list
	<yocto@yoctoproject.org>
References: <CAAmVmrptcat5-BZa4f=ntcsZYgH=Rn3Xt9zK6K=1ykXZwOwcig@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <06ad9e06-62b6-5064-4392-9c0057b2c212@windriver.com>
Date: Wed, 15 Jan 2020 11:39:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAAmVmrptcat5-BZa4f=ntcsZYgH=Rn3Xt9zK6K=1ykXZwOwcig@mail.gmail.com>
X-Originating-IP: [172.25.44.8]
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 1/13/20 10:37 AM, Teemu K. wrote:
> Hi,
> 
> I have Yocto image that was originally made with Thud - version of
> Yocto. It was working fine and I was able to login as root via serial
> console.
> 
> Then I updated Yocto to Warrior and now for some reason when I try to
> login as root via serial console it says 'login incorrect' when I
> enter 'root' as a user and press enter. It doesn't even ask any
> passwords before saying that. I tried enabling debug-tweaks and still
> the same. Can't login as a root.
> 
> I have another user that I can login just fine and with sudo I can
> also use root access. I just can't login as root.
> 
> I looked through /etc/passwd and /etc/shadow and they looked okay. Has
> something changed in Warrior regarding this? I tried googling, but
> didn't find anything.

Hi Teemu,

I'm not sure what's wrong but you can always add strace to your image,
login as a user and run:
   $ sudo strace -f -o /tmp/trace-[root|user].log -p <pidof login>
where the pid you specify is either the login process or agetty. I'd
have to try it to figure out what process to trace.

If you do that and then login as 1) root and then 2) as a user, you can
compare the strace logs and usually figure out what the difference is.
The logs will be verbose and do require some expertise to understand
but that should help. ltrace is also sometimes helpful.

Good luck,
../Randy

> 
> -Teemu K.
> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
