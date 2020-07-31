Received: from resqmta-ch2-11v.sys.comcast.net (resqmta-ch2-11v.sys.comcast.net [69.252.207.43])
 by mx.groups.io with SMTP id smtpd.web10.17889.1596200746706213885
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Jul 2020 06:05:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@comcast.net header.s=20190202a header.b=50iBLBHQ;
 spf=pass (domain: comcast.net, ip: 69.252.207.43, mailfrom: rprowel@comcast.net)
Received: from resomta-ch2-10v.sys.comcast.net ([69.252.207.106])
	by resqmta-ch2-11v.sys.comcast.net with ESMTP
	id 1ULHkO43reol41UjJksHYZ; Fri, 31 Jul 2020 13:05:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1596200745;
	bh=r1zJU6nYuELQEuNedI843TicU43EvG1Z9ulXO0NEO6g=;
	h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=50iBLBHQ9DvZ0wRUzzF0vEVKiOhdG86gF2fUQQKs+qtHrtrFHJq5utg+aVL/bdHvP
	 nlNC+12u1Mr7iFW1goqKQsV+jtAf5z8klCGvGra1giJuo6T6btz88NWq7D7k98dF0o
	 tiJcDXVxRtW6SjW+51732i++CWPAIMrTZ19web2MVFFfDdTKYWyEm9/qaxfFYcUn2M
	 1xf2f6Z270uwLXPrvIDzqh5mbqeU1XWQE5HhVlwcGaduX6ckTqsFpAmdGlGY9LFyDJ
	 4W3q4fSp9si6k7b0IIxfhYLeABSHE5DkUXdUCwGsiM0IoolKyhh53lzKLAOtmHodMi
	 ucPkgbaDSDhKA==
Received: from [10.1.11.102] ([73.174.24.42])
	by resomta-ch2-10v.sys.comcast.net with ESMTPSA
	id 1UjHkHELSpFlP1UjIkWLfz; Fri, 31 Jul 2020 13:05:45 +0000
X-Xfinity-VAAS: gggruggvucftvghtrhhoucdtuddrgeduiedrieekgdeitdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucevohhmtggrshhtqdftvghsihdpqfgfvfdppffquffrtefokffrnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefuvfhfhffkffgfgggjtgfgsehtjeertddtfeehnecuhfhrohhmpeftohgsucfrrhhofigvlhcuoehrphhrohifvghlsegtohhmtggrshhtrdhnvghtqeenucggtffrrghtthgvrhhnpeegvdfhkeegteduueeitddukeethfffueekvefgtedtgefgteetvdegvddvteelueenucfkphepjeefrddujeegrddvgedrgedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheplgdutddruddruddurddutddvngdpihhnvghtpeejfedrudejgedrvdegrdegvddpmhgrihhlfhhrohhmpehrphhrohifvghlsegtohhmtggrshhtrdhnvghtpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgpdhrtghpthhtohepqhhuvghnthhinhdrshgthhhulhiisehsthhrvggrmhhunhhlihhmihhtvggurdgtohhm
X-Xfinity-VMeta: sc=-100.00;st=legit
Subject: Re: [yocto] one way hash analogy of yocto
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: yocto@lists.yoctoproject.org
References: <e4947fc8-98a7-c74d-0e9b-a33a90bb4495@comcast.net>
 <20200731125316.pt63tzszs6b7eys3@qschulz>
From: "Rob Prowel" <rprowel@comcast.net>
Message-ID: <5e404635-6920-7f19-5404-f4b9dc9e2456@comcast.net>
Date: Fri, 31 Jul 2020 09:05:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200731125316.pt63tzszs6b7eys3@qschulz>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2020-07-31 08:53, Quentin Schulz wrote:

> 
> I do not know if there is such a mechanism for tasks, but the
> bitbake-layers should help you get started in your quest of overridden
> tasks.
> 
> Also, I'm not sure it matters much where the tasks are overridden? Just
> override them again with your own bbappend (especially if it's a layer
> you don't own (read upstream or provided by vendor)).

Thanks for the prompt followup.  Yeah, the two comments above are 
related in my nightmare so I'll address both of them together.

vendor has layers that I am NOT modifying, and unfortunately I'm not 
100% sure that they didn't modify poky or meta-oe in what they shipped 
to me.  Just haven't had time to download and compare those layers to 
yocto official sources.

I really do need to be able to inspect what they've done in their BSP 
layer to be able to effectively override or modify it though.  Things 
very easily break when I attempt to make changes.

Their as-delivered image builder creates an executable and the only way 
to update their board is to boot into linux on the board and run that 
executable (on the board) to update the secondary flash, then boot into 
the secondary flash and update the primary...which takes forever on QSPI 
NOR.  Yeah, they disabled the jtag interface so you HAVE to be in a 
boot-able linux image on the board to update it.

My development model is to reconfigure to use nfsroot while developing 
and configuring and only update the flash for relatively solid release 
to be tested.

but thanks...will investigate the commands you mentioned.  I really do 
need a quick way of seeing the authoritative version of a task though.

