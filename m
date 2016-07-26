Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAA90E00C40; Tue, 26 Jul 2016 08:36:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0031]
X-Greylist: delayed 145 seconds by postgrey-1.32 at yocto-www;
	Tue, 26 Jul 2016 08:36:51 PDT
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA31CE009E7
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 08:36:51 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 0CD8627EA63;
	Tue, 26 Jul 2016 15:36:51 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id dTdH_lM7A7oi; Tue, 26 Jul 2016 15:36:28 +0000 (UTC)
Received: from [172.20.10.2] (unknown [46.188.200.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 00EEF27EA5F;
	Tue, 26 Jul 2016 15:36:27 +0000 (UTC)
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <alpine.LFD.2.20.1607070341590.7238@localhost.localdomain>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <f2913201-774a-d8d9-cdf6-d86620093b93@dynamicdevices.co.uk>
Date: Tue, 26 Jul 2016 17:36:38 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1607070341590.7238@localhost.localdomain>
Subject: Re: is meta-mono layer actively supported?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 26 Jul 2016 15:36:58 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 07/07/2016 09:50, Robert P. J. Day wrote:
>   out of nowhere, a client of mine wants to port from WEC7 to linux
> using YP; they already have a working app written in C# .NET and want
> to drag it with them, obviously using mono.
>
>   i see the YP wiki page on running .NET apps here:
>
> https://wiki.yoctoproject.org/wiki/Building_and_running_embedded_Linux_.NET_applications_from_first_principles
>
> which looks like it has the info they need, given that i know
> absolutely *zero* about C#/.NET/mono, but i might as well learn
> something about it.
>
>   the history of that page suggests it's actively supported, can
> anyone confirm that it really does walk one through how to incorporate
> a .NET app in a YP image? given some time this weekend, i'll try to
> follow how to add and run a simple example. thanks.

Hi Robert,

Apologies for the latency. I've been otherwise occupied and have only
just seen this.

Yes, I wrote this piece and the intention is that it does what it says
on the tin - on the basis I have been expecting for some time that
business would be wishing to leverage Mono/Linux for their existing
WinCE codebases.

If you have any issues let me know and I'll be pleased to try to support
you.

Cheers,

Alex


