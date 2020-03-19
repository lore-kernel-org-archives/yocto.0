Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
 by mx.groups.io with SMTP id smtpd.web11.217.1584638510080309957
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 10:21:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stusta.de header.s=default header.b=Gh2sbNTP;
 spf=pass (domain: stusta.mhn.de, ip: 141.84.69.5, mailfrom: srs0=nn3c=5e=stusta.de=bunk@stusta.mhn.de)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 48jtxN4sBlz3L;
	Thu, 19 Mar 2020 18:21:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1584638506;
	bh=jrrevvm0TGzRoqv8JduzZx5lY+cxC4p12zWEDp2w97U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Gh2sbNTPQzeGfCQIANs/gUbvxYV9WVbDEDs9rJo+hj2oMwN/jfCQ9b2YRd0iOIrD5
	 LPXo7xt2oeLafQ78Jzpt5iptkiW/8vWYMAX60kCOm/RrzSAZtdfvdp226lbD5FuY05
	 cjQchz3JWuNInbDaQLkvn6+ssv8vjn/+z5vwe71CAwDMTfnQMwgdr0zg2Gc71c7GY+
	 Jx6lb+T0gEYeYgAel/189GVvL02E/SS0UnfX07xa/Lv8E9BNjmJ7HfHqmpabh13Y28
	 88YWaCzhy5Hf4o5wT7CrUm/kIliIAVkHWn02AM/HgUb1wnvytjFH8FrklLKbDo4ml3
	 0leeZ5YbhmMg9QWQOpO9qZ0wJuIQdmhLyqgm5H9J7UsbKHqPz/f1TdzFFtULz4Guv/
	 Apac4tpJGgjm2uab08Zsbk8WefyuE1qZf3nyKz+8XFsXB9N3CANO1k5GGqH6DS7EQO
	 o4YaWRx2uNrmf92ikt74EQIFvNqzZ8N3PbkyucdUvM8w/QoUvKdWJVJYGwrRh7h+5V
	 8Df8e/G238FgFNXjli+afwa8Yp8H97bjPxojFmBA6dSdvbjPuVAe+597PNpU2N/ECQ
	 tCEYBnE6UixZ+zKkV5lzzA3EUKhrdZla11/WEl/gn9fA8w4/FRxLnBHjRaGWCg/C8r
	 nlbrVGzWxtDXVEWxl5Dv9w50=
Date: Thu, 19 Mar 2020 19:21:41 +0200
From: "Adrian Bunk" <bunk@stusta.de>
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: richard.purdie@linuxfoundation.org, Mikko Rapeli <mikko.rapeli@bmw.de>,
	ross@burtonini.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] What are the key factors for yocto build speed?
Message-ID: <20200319172141.GB29515@localhost>
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
 <f53ec55d-5f43-4ea3-f9a7-827f0f29154f@topic.nl>
 <8032ed75-802c-9dd3-2d76-f468159b90af@burtonini.com>
 <20200319080514.GR104502@korppu>
 <bcab55b919af5da30e9b8fe3db0cc6537ac3f785.camel@linuxfoundation.org>
 <8d295b32-e2f9-9d95-f866-1f9061617450@topic.nl>
MIME-Version: 1.0
In-Reply-To: <8d295b32-e2f9-9d95-f866-1f9061617450@topic.nl>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Thu, Mar 19, 2020 at 05:07:17PM +0100, Mike Looijmans wrote:
>...
> With both parallelization options
> to "16", I might end up with 16 compile tasks running 16 compile threads
> each, i.e. 256 running processes.
>...

This is a bug:
http://bugzilla.yoctoproject.org/show_bug.cgi?id=13306

I sometimes wonder whether something basic like "no more than one 
compile task at a time" would be sufficient in practice to avoid
overloading all cores.

It would also help with RAM usage, there are some combinations of 
recipes where the build gets aborted by the oom killer on my laptop
(8 cores, 32 GB RAM) when bitbake runs the compile tasks in parallel.

cu
Adrian
