Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web10.1736.1587132674081133080
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Apr 2020 07:11:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: randy.macleod@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 03HEAvEE007796
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Fri, 17 Apr 2020 07:10:57 -0700 (PDT)
Received: from [172.25.44.3] (172.25.44.3) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Fri, 17 Apr
 2020 07:10:56 -0700
Subject: Re: [yocto] FYI: Why people are using #hashtags in yocto email subjects.
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>,
        Denys Dmytriyenko
	<denis@denix.org>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <d4b42754-b89d-e5b5-7939-af4056c457df@windriver.com>
 <20200416193629.GF11927@denix.org>
 <CAP71WjzL8NQ=Dds6af41Jz+Dak9PJ0WR8R0-h0jrcM5q5CfEUw@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <33fca8cb-6fc6-0f02-69cb-7a3b664e1cb5@windriver.com>
Date: Fri, 17 Apr 2020 10:10:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAP71WjzL8NQ=Dds6af41Jz+Dak9PJ0WR8R0-h0jrcM5q5CfEUw@mail.gmail.com>
X-Originating-IP: [172.25.44.3]
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2020-04-17 4:09 a.m., Nicolas Dechesne wrote:
> 
> 
> On Thu, Apr 16, 2020 at 9:36 PM Denys Dmytriyenko <denis@denix.org 
> <mailto:denis@denix.org>> wrote:
> 
>     I doubt people that actually send emails to the list use #hashtags.
> 
>     But the new list server provides this posting feature for anyone to
>     address
>     the list and requests poster to add #hashtags - very annoying, indeed:
> 
>     https://lists.yoctoproject.org/g/yocto/post
> 
> 
> there is that. And looking at the history on the server, most of the 
> existing tags came from the web. But a hashtag is created automatically 
> when using '#' in the email subject. that's how #define was created:
> https://lists.yoctoproject.org/g/yocto/message/48686
> 
> and this email created #hashtags ;-)
> 
> I haven't found a way to disable it.. from what I can see we can
> 1. force every message to have at least one hashtag...
> 2. bounce message with a new hashtag in $subject
> 3. remove new hashtag when used in $subject

I don't think we need to change anything.
I found it annoying at first because I didn't know about the
archive tagging feature.
> 
> I think we will need to do some tests to see what #3 does.. But in any 
> case, I don't think we can prevent users from creating hashtags from the 
> web..
> 
> Is that causing any issues with patches workflow?

I am not aware of any workflow problems.

../Randy
> 
> 
> 
>     -- 
>     Denys
> 
> 
>     On Thu, Apr 16, 2020 at 03:18:34PM -0400, Randy MacLeod wrote:
>      > FYI:
>      >
>      > I don't know if I missed the memo/tweet about the email archive
>     feature
>      > but I just noticed that the new archive site will index emails
>      > by hashtag:
>      >
>      > https://lists.yoctoproject.org/g/yocto
>      >
>      > https://lists.yoctoproject.org/g/yocto/hashtags
>      >
>      > I thought it was an annoying new behaviour coming from Twitter users
>      > but now I understand why there are hashtags on my lawn^Hsubject
>     lines.
>      >
>      > ;-)
>      >
>      > --
>      > # Randy MacLeod
>      > # Wind River Linux
> 
>      >
> 
> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
