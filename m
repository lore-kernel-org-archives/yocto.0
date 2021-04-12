Received: from ciao.gmane.io (ciao.gmane.io [116.202.254.214])
 by mx.groups.io with SMTP id smtpd.web08.1727.1618253403492160159
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Apr 2021 11:50:03 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: m.gmane-mx.org, ip: 116.202.254.214, mailfrom: gley-yocto@m.gmane-mx.org)
Received: from list by ciao.gmane.io with local (Exim 4.92)
	(envelope-from <gley-yocto@m.gmane-mx.org>)
	id 1lW1dJ-0009Ld-Mg
	for yocto@lists.yoctoproject.org; Mon, 12 Apr 2021 20:50:01 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@lists.yoctoproject.org
From: "Gmane Admin" <gley-yocto@m.gmane-mx.org>
Subject: Re: bitbake controlling memory use
Date: Mon, 12 Apr 2021 20:47:51 +0200
Message-ID: <040df2b4-a126-4bf0-12ca-cde74dc24566@gmail.com>
References: <s4v495$bak$1@ciao.gmane.io>
 <2e31b1e2-11cd-b1a0-ec4b-d2dcb267dc8c@gmail.com>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
Cc: alex.kanavin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org,
 Ferry Toth <fntoth@gmail.com>
In-Reply-To: <2e31b1e2-11cd-b1a0-ec4b-d2dcb267dc8c@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Op 12-04-2021 om 10:13 schreef Robert 
Berger@yocto.user:
> Hi,
> 
> My comments are in-line.
> 
> On 11/04/2021 18:23, Gmane Admin wrote:
>> My build machine has 8 cores + HT so bitbake enthusiastically assumes 
>> 16. However I have (only?) 16GB of RAM (+24GB swap space).
>>
>> 16GB of RAM has always been more then enough with 4 core + HT, but now 
>> building certain recipes (nodejs, but rust will probably do it as 
>> well) eats up more memory then there actually is RAM causing excessive 
>> swapping.
> 
> The RAM usage depends heavily on what you are building ;) - It could be 
> some crazy C++ stuff ;)

Yeah, C++. But apearently it's during the LTO phase where it eat my memory.

> Is Linux your build host?

Yup.

> Then you can use cgroups to limit resources like memory.

So then it would just fail the build?

> Do you use a build container? It uses cgroups underneath.

Nope.

> e.g. docker:
> 
> https://docs.docker.com/config/containers/resource_constraints/
> 
> Regards,
> 
> Robert
> 


