Received: from resqmta-ch2-06v.sys.comcast.net (resqmta-ch2-06v.sys.comcast.net [69.252.207.38])
 by mx.groups.io with SMTP id smtpd.web11.17425.1596199520342334988
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Jul 2020 05:45:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@comcast.net header.s=20190202a header.b=rk6nZtwg;
 spf=pass (domain: comcast.net, ip: 69.252.207.38, mailfrom: rprowel@comcast.net)
Received: from resomta-ch2-03v.sys.comcast.net ([69.252.207.99])
	by resqmta-ch2-06v.sys.comcast.net with ESMTP
	id 1ULLkbORz0Dff1UPXkpLGL; Fri, 31 Jul 2020 12:45:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1596199519;
	bh=4NFeHpSKToLp1THjbX2D2LExrTT1YmJeZaSZFYnhoyA=;
	h=Received:Received:To:From:Subject:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=rk6nZtwg40/WLvj10iC+3RQ4TWeF+XCOHIn2DQwcPU8PgBd096V2OkjKbtoFIs45t
	 LXZtPcMdG+xWj9cf9Z47iBEnOfm5MtWod/vmSFbmsWsQFrzTTSYXGFj2mYitT3YWxy
	 qlh82HvnAjhxXRrqmcXcr434Y4PXfGVTBHCEOkH5362f3ynEf6ErHmrK1F5NvPnLA4
	 9adVmD2oLDnKXlxfac9fY4PNZsBct1t91zeYdY4OfXfzs5VYeUKrp8MBv4elR7mYfm
	 jJAt1VhcQX215pAUgNjpktxyXoAWlLtYTKFdsF7bcAmqGJBbw3QCB2WII45HNXe39Y
	 EhCUwDZp8m3NA==
Received: from [10.1.11.102] ([73.174.24.42])
	by resomta-ch2-03v.sys.comcast.net with ESMTPSA
	id 1UPVk1cPOf3P01UPWkGqoW; Fri, 31 Jul 2020 12:45:18 +0000
X-Xfinity-VAAS: gggruggvucftvghtrhhoucdtuddrgeduiedrieekgdehiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucevohhmtggrshhtqdftvghsihdpqfgfvfdppffquffrtefokffrnecuuegrihhlohhuthemuceftddtnecunecujfgurhepvffhuffkffgfgggtgfesthejredttdefheenucfhrhhomheptfhosgcurfhrohifvghluceorhhprhhofigvlhestghomhgtrghsthdrnhgvtheqnecuggftrfgrthhtvghrnhepieetteehhfdvkeetgfekhfdvhfegveefheeuuddtheeffeevffelueeiueeifeetnecukfhppeejfedrudejgedrvdegrdegvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopegluddtrddurdduuddruddtvdgnpdhinhgvthepjeefrddujeegrddvgedrgedvpdhmrghilhhfrhhomheprhhprhhofigvlhestghomhgtrghsthdrnhgvthdprhgtphhtthhopeihohgtthhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrgh
X-Xfinity-VMeta: sc=0.00;st=legit
To: yocto@lists.yoctoproject.org
From: "Rob Prowel" <rprowel@comcast.net>
Subject: one way hash analogy of yocto
Message-ID: <e4947fc8-98a7-c74d-0e9b-a33a90bb4495@comcast.net>
Date: Fri, 31 Jul 2020 08:45:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

What I really need is information about introspection or the ability to 
query an existing yocto distro to return data about features included 
and more to the point, to understand EXACTLY where recipes or classes 
are overridden or appended.  You can only do so much with recursive grep 
and find scripts.  Based on what I've seen so far, it seems that 
capability is lacking in yocto.

In essence I have what is like a one way hash ABCDEFG-->X and I have X 
but cannot fully figure out the whole input that generated it.

An example would be an overridden task method like

do_something

I need a quick way to determine the highest priority level that task was 
overridden or appended in for a given recipe.

a command like "bitbake -describe -c do_something my-recipe"

and it should also be possible to query this kind of information for 
variables and not just methods or tasks.

Do these tools exist or am I looking at parsing megabytes of verbose 
build data and tracing output to find what I'm looking for?

and no, I didn't create the distro...I'm an end user customer who was 
given an undocumented distro with quazi-proprietary BSP layers in it 
that not only describe our specific product purchased, but the vendor's 
others products as well, which complicates matters.

Thoughts?

