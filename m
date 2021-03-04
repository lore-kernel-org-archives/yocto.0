Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web08.644.1614881052561942392
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Mar 2021 10:04:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=rWuy+d5W;
 spf=pass (domain: kapsi.fi, ip: 91.232.154.25, mailfrom: antime@kapsi.fi)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	 s=20161220; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
	MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=T4pQdLmmFnwRBLynll0SsvteSODaNmb8IhaTzCllvhA=; b=rWuy+d5WSYBAPPT5XkwW1ts0m4
	4xTXod4GeAQgB/74m0KvESsxVh1bpvHuMAOn7mq3BYmHGXAV27wGMf51C/HgNXweKOPeEJf6TH6uu
	rYFZw2bQNycZqDVNntvLFsdxSe5oVBL8ARc+/ZjmnZA3CTQJwzTAvI7XA6mAZVEaO18Qri4LtjUun
	5YP1lR21CBwgbNQFejD7esVccxmYJWZao7PHBu+SM/+o05t7PL+MEalmV+h6pOmMkguNqq6TCesbU
	jOEg5Ilkcr1Cd9624rnjzqKRWlQTLzej1h/tch4JDzJat9NTn+cUpymyiSUbHgdal7dGtwerG5V9W
	yZ7bMmTw==;
Received: from 89-27-44-133.bb.dnainternet.fi ([89.27.44.133] helo=[192.168.1.131])
	by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.89)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1lHsKW-0000SP-SY
	for yocto@lists.yoctoproject.org; Thu, 04 Mar 2021 20:04:08 +0200
Subject: Re: [yocto] cc1 binary in final rootfs even when no reference to it
To: yocto@lists.yoctoproject.org
References: <CAAfyv37Ca1eWCMXCOXarByH0xtDFtvNE9nF8BXdF4u9OKZdShg@mail.gmail.com>
 <CAMKF1sr3yX2qjKrfq5c9k4h_0zfDszDFD+dw5NX_2TtRyeH02Q@mail.gmail.com>
 <CAAfyv349Bs2D4GdNOrZW_0ryeXjeRJa+EwXPemmkKrF9YNcA4A@mail.gmail.com>
 <9f6c9505-0e34-9ffd-862f-32f2f5b1b1ab@gmail.com>
From: "Anders Montonen" <Anders.Montonen@iki.fi>
Message-ID: <1319345d-a3ea-44d0-81a7-e540411355de@iki.fi>
Date: Thu, 4 Mar 2021 20:02:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <9f6c9505-0e34-9ffd-862f-32f2f5b1b1ab@gmail.com>
X-SA-Exim-Connect-IP: 89.27.44.133
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

On 4.3.2021 2.06, Khem Raj wrote:
> On 3/3/21 11:29 AM, Belisko Marek wrote:
>> On Wed, Mar 3, 2021 at 6:31 PM Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>> this file comes from cpp output package. Can you check if somehow cpp
>>> is being pulled into your image
>> It turns out that cpp + cpp-symlinks is pulled by python3-pycparser.
>> It is really necessary to be as runtime dependency in recipe?
> it a parser for C language written in python, so my initial thoughts 
> will be no. but there might be some dependencies on cpp, you might 
> have to dive a bit deeper.


I've run into this, and from memory cpp is needed if you intend to run 
the parser, but since the dependency is added through 
RDEPENDS_${PN}_class-target it gets installed even if you're only 
running the parser on the host. I ended up removing the target 
dependency due to license conflicts, and didn't encounter any problems.

-anders

