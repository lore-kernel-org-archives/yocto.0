Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web12.4153.1580303268891892853
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jan 2020 05:07:49 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4873gP5cc6z5tlD;
	Wed, 29 Jan 2020 14:07:45 +0100 (CET)
Date: Wed, 29 Jan 2020 14:07:44 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Kent Dorfman <kent.dorfman766@gmail.com>
Cc: Rudolf J Streif <rudolf.streif@ibeeto.com>,
	yocto@lists.yoctoproject.org
Subject: Re: [yocto] permanently supercede kernel config with one of my own creation
Message-ID: <20200129130744.khxvlbbqgbnacgez@qschulz>
References: <CAK4PFCXXZS3ZbU8PWXUX2b_Pw661SVfj8dO0CQ-GjNM3Zo+k=A@mail.gmail.com>
 <6c10cbb5-f8df-4c8a-c8eb-e14d29b75599@ibeeto.com>
 <CAK4PFCXsnem2CnNsHrFJmXDE4LeyU6xt8mBRzV0HiLCqivZPOw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK4PFCXsnem2CnNsHrFJmXDE4LeyU6xt8mBRzV0HiLCqivZPOw@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Kent,

On Wed, Jan 29, 2020 at 07:53:38AM -0500, Kent Dorfman wrote:
> I'd prefer to not go that route.    It's a modified "vendor supplied"
> kernel from an internal tarball source, and for IA/QA reasons we're
> NOT going to refer to any external GIT repos.
> 
> Can someone tell me how to just replace the config in an existing
> recipe and make it permanent without creating/replacing the whole
> package?
> 

Find the task which is doing some logic with the config fragments and
disable it. Replace it by or add a new task which is taking your .config
and putting it in ${S}.

> I'ts a single file that has to be inserted/used at the correct point
> in the build.  I'd say it's not rocket science but that's exactly what
> it is for. LOL
> 

Kernel recipes are always custom. We won't be able to help you much more
than that without the actual recipes, its inherited classes and included
.inc files.

Quentin
