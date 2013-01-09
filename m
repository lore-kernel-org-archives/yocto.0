Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71E2AE0147C
	for <yocto@yoctoproject.org>; Wed,  9 Jan 2013 03:58:52 -0800 (PST)
Received: from cpc8-live22-2-0-cust106.know.cable.virginmedia.com
	([82.42.168.107] helo=[127.0.0.1])
	by www.dynamicdevices.co.uk with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32) (Exim 4.69)
	(envelope-from <ajlennon@dynamicdevices.co.uk>)
	id 1TsuF4-0003ch-7W; Wed, 09 Jan 2013 11:54:46 +0000
Message-ID: <50ED5B6D.4080303@dynamicdevices.co.uk>
Date: Wed, 09 Jan 2013 11:58:37 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <CD0B6407.1EB06%belen.barros.pena@intel.com>
	<50E741F0.50303@dynamicdevices.co.uk>
	<CABcZANndjkYoRecpoeUQcUzCevoVqCPWO-EpFCMKSaxh6QFoew@mail.gmail.com>
	<50E746F7.6000306@dynamicdevices.co.uk>
	<1357686756.2515.50.camel@empanada>
In-Reply-To: <1357686756.2515.50.camel@empanada>
Cc: yocto <yocto@yoctoproject.org>, Chris Larson <clarson@kergoth.com>
Subject: Re: Bitbake and task offloading onto multiple cloud-based servers
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 09 Jan 2013 11:58:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> In the 1.1 timeframe I proposed something similar for a demo/research
> project - I'll just copy the proposal verbatim below in case any of the
> ideas could be of any value.  

Very interesting Tom. Thanks for your thoughts.


> if throwing a
> 40-processor system at a build doesn't really help much it's not likely
> to be of much help either to distribute the individual pieces out to the
> 'cloud'.

Are there any figures for build time versus increase in processor cores?
It would be interesting to see what the immediate performance gain is
for a build with a low number of additional cores and then where it tops
out?

> The whole
> process is completely peer-to-peer with no single node in charge - in
> that context, a more appropriate name for it might be 'BuildTorrent'.

A "BuildTorrent". I like it!

Cheers,

Alex


