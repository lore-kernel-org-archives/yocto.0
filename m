Received: from resqmta-ch2-12v.sys.comcast.net (resqmta-ch2-12v.sys.comcast.net [69.252.207.44])
 by mx.groups.io with SMTP id smtpd.web11.11251.1596564471473107625
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 11:07:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@comcast.net header.s=20190202a header.b=IgRV/WK8;
 spf=pass (domain: comcast.net, ip: 69.252.207.44, mailfrom: rprowel@comcast.net)
Received: from resomta-ch2-08v.sys.comcast.net ([69.252.207.104])
	by resqmta-ch2-12v.sys.comcast.net with ESMTP
	id 30w8kYlMB8dHA31Lpk2ZQ2; Tue, 04 Aug 2020 18:07:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1596564469;
	bh=6CayjSWZ5YY7Cka4fuTh+54uqfAG0g6/TvwgcaXMf08=;
	h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=IgRV/WK8+hoMDC2oIaSa/B10kl2LsRypTTaPy3799x6lxDejzcNImyq8Vg1lhEYR/
	 9NXbvBZH4mxaVsD0jfoKtSUonh1X3wvmiaYqmjjiNgp9L19a27M1MOgNtv8glGUiAP
	 v4xFiBT7U8Un3700tVWz4fk1O1F9yyU6kMKyC4knFbcCjF5NMm0JBQzZgGFtEne8b8
	 JBV9NKK4x+0epU8768bzciWOzEq8/59xznzSM8pCYOYrRu5awMwrzSHpuWYUFYAkve
	 86di4HtTCsM/iwkSVjMqyjiOh/i3k400ho7xS2fRaIUCm3BWxI3r/DStJiVZU81fKM
	 8iDIKgbj2jRaA==
Received: from [10.1.11.102] ([73.174.24.42])
	by resomta-ch2-08v.sys.comcast.net with ESMTPSA
	id 31LWkZBp9fZqI31LZkmNtc; Tue, 04 Aug 2020 18:07:34 +0000
X-Xfinity-VAAS: gggruggvucftvghtrhhoucdtuddrgeduiedrjeeigdduvddvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuvehomhgtrghsthdqtfgvshhipdfqfgfvpdfpqffurfetoffkrfenuceurghilhhouhhtmecufedttdenucenucfjughrpefuvfhfhffkffgfgggjtgfgsehtjeertddtfeehnecuhfhrohhmpeftohgsucfrrhhofigvlhcuoehrphhrohifvghlsegtohhmtggrshhtrdhnvghtqeenucggtffrrghtthgvrhhnpeelffelhfelfffgieeftdehieejteekkeefffevtdevveehgfduveejfeekteduffenucffohhmrghinhephihotghtohhprhhojhgvtghtrdhorhhgnecukfhppeejfedrudejgedrvdegrdegvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopegluddtrddurdduuddruddtvdgnpdhinhgvthepjeefrddujeegrddvgedrgedvpdhmrghilhhfrhhomheprhhprhhofigvlhestghomhgtrghsthdrnhgvthdprhgtphhtthhopeihohgtthhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrgh
X-Xfinity-VMeta: sc=0.00;st=legit
Subject: Re: [yocto] cannot bring global environment var into a recipe
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <1507914c-a0e8-c892-6ba9-1d28b48f82cd@comcast.net>
 <tvYv-B3KBCgR71rYpS6hEJCn_otuk-6-0OX7xybJogUro16qkwziEqnYkGv6Y4dqFUsxwfe1AvDe5I3NPH3apcs28Fb4QCdEE0mAx-hid9s=@protonmail.com>
From: "Rob Prowel" <rprowel@comcast.net>
Message-ID: <b9c902c5-5319-681e-8088-be7e97a72de9@comcast.net>
Date: Tue, 4 Aug 2020 14:07:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <tvYv-B3KBCgR71rYpS6hEJCn_otuk-6-0OX7xybJogUro16qkwziEqnYkGv6Y4dqFUsxwfe1AvDe5I3NPH3apcs28Fb4QCdEE0mAx-hid9s=@protonmail.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2020-08-04 13:11, codusnocturnus via lists.yoctoproject.org wrote:
> I think what you need to do is add the environment variable to BB_ENV_WHITELIST or BB_ENV_EXTRAWHITE:
> 
> https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html#var-BB_ENV_WHITELIST
> 
> Thanks,
> 

Thanks, NightCoder!  It worked, once I put it in the right place.

must be declared in global shell environment after running 
oe-init-build-environment

export BB_ENV_EXTRAWHITELIST="${BB_ENV_EXTRAWHITELIST} VAR_TO_BRING IN"

Unfortunately it's not always obvious to me where a variable is to be 
declared: some in global shell, sometimes in local.conf, sometimes in bb 
files...

Anyway, fixed!  Thanks!

