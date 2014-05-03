Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12AAAE009C5; Sat,  3 May 2014 12:21:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03A18E0087F
	for <yocto@yoctoproject.org>; Sat,  3 May 2014 12:21:25 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 821F527E010
	for <yocto@yoctoproject.org>; Sat,  3 May 2014 19:21:22 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id rPvjzbG9zLWu for <yocto@yoctoproject.org>;
	Sat,  3 May 2014 19:21:21 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 8F73027E006
	for <yocto@yoctoproject.org>; Sat,  3 May 2014 19:21:21 +0000 (UTC)
Message-ID: <536541AF.4060005@dynamicdevices.co.uk>
Date: Sat, 03 May 2014 20:21:19 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Yocto <yocto@yoctoproject.org>
X-Enigmail-Version: 1.6
Subject: [meta-mono] Finding a home for meta-mono / .NET build & debug documentation
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
X-List-Received-Date: Sat, 03 May 2014 19:21:29 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I'm working on some documentation and supporting code to shed some light
on development of .NET apps under Mono and to facilitate the remote
debugging of apps on meta-mono enabled Embedded Linux targets.

I'm unsure as to where this documentation would be best placed, but I am
thinking it might be helpful for me to put this in corner of a wiki,
perhaps the Yocto Project wiki, as it's going to need updating from time
to time.

(Mono seems to be, to paraphrase Mrs Gump, much like "a box of
chocolates, you never know what you're gonna get" with each build release.)

Would this be in line with objectives for the wiki or should I be
looking at somewhere else to try to document some of this?

Thanks,

Alex


