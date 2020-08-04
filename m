Received: from resqmta-ch2-05v.sys.comcast.net (resqmta-ch2-05v.sys.comcast.net [69.252.207.37])
 by mx.groups.io with SMTP id smtpd.web12.9644.1596560051626613389
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 09:54:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@comcast.net header.s=20190202a header.b=K3/lgtm7;
 spf=pass (domain: comcast.net, ip: 69.252.207.37, mailfrom: rprowel@comcast.net)
Received: from resomta-ch2-17v.sys.comcast.net ([69.252.207.113])
	by resqmta-ch2-05v.sys.comcast.net with ESMTP
	id 30Abky0QmkELE30CYkeszJ; Tue, 04 Aug 2020 16:54:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1596560050;
	bh=ZChcy8C34FB3HBwvThUHfj83dh8JzXXxMtQhZUYaabA=;
	h=Received:Received:To:From:Subject:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=K3/lgtm7Rr/kPQy0DHFgiX7E0RqSi2G7eACikEGYPJUuHdJaQ2kyzayjqX2BFX4/s
	 FssWMbkFslUcXt2Z/pYgmLRentRlIDPr7x9tDKvjBUYag/61bdEslWDtR713GR9PwM
	 5WMdAKINc8KmHkEnfJ5dw5InIr/0VruZt88bWThBp2GEwybqyuEspsoNB61/DxbT8U
	 a1iweKofTj3Zg6XxWZmsXhFqp35qqGhNIIqzaixinZnJdqVQYL0Gp7EfT7WNqWoAsd
	 U789DforBFNJ5w97mY3uTO8EF1h4SjmMcFB0nNPnIqS+kt+eGQGqirzmaxhWGKljfl
	 inGc6TvkynHHw==
Received: from [10.1.11.102] ([73.174.24.42])
	by resomta-ch2-17v.sys.comcast.net with ESMTPSA
	id 30CXksn8XgljM30CXkKi6Q; Tue, 04 Aug 2020 16:54:10 +0000
X-Xfinity-VAAS: gggruggvucftvghtrhhoucdtuddrgeduiedrjeeigddutdejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuvehomhgtrghsthdqtfgvshhipdfqfgfvpdfpqffurfetoffkrfenuceurghilhhouhhtmecufedttdenucenucfjughrpefvhffukffffgggtgfgsehtjeertddtfeehnecuhfhrohhmpeftohgsucfrrhhofigvlhcuoehrphhrohifvghlsegtohhmtggrshhtrdhnvghtqeenucggtffrrghtthgvrhhnpeeiteethefhvdektefgkefhvdfhgeevfeehuedutdehfeefveffleeuieeuieefteenucfkphepjeefrddujeegrddvgedrgedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheplgdutddruddruddurddutddvngdpihhnvghtpeejfedrudejgedrvdegrdegvddpmhgrihhlfhhrohhmpehrphhrohifvghlsegtohhmtggrshhtrdhnvghtpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
X-Xfinity-VMeta: sc=0.00;st=legit
To: yocto@lists.yoctoproject.org
From: "Rob Prowel" <rprowel@comcast.net>
Subject: cannot bring global environment var into a recipe
Message-ID: <1507914c-a0e8-c892-6ba9-1d28b48f82cd@comcast.net>
Date: Tue, 4 Aug 2020 12:54:09 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit


I don't want to get into a discussion about why it is a good or bad 
idea, but I need to use a global shell variable as follows:

using "sumo"...that's all I can use.

$ export PM1_DEVEL_IMAGE=1

or

$ PM1_DEVEL_IMAGE=1 bitbake my-image


and reference that global var in a kernel bbappend such as


SRC_URI += "${@ 'file://rootnfs.cfg' if d.getVar('PM1_DEVEL_IMAGE') else 
' '}"

to include the required fragment that supports rootnfs.

If I define the var right in the bbappend then it works as expected: 
undefined skips the SRC_URI append, and if defined then it adds my 
fragment.  I need this to work for a var that is defined (or not) in the 
global work shell, not depend upon the definition being IN a recipe file.

I tried using

export PM1_DEVEL_IMAGE

right in the bbappend, but then as far as the recipe is concerned it's 
defined and the conditional always succeeds.


is d.getVar not the right function?  What function behaves the same but 
uses real shell variables?


Suggestions?

