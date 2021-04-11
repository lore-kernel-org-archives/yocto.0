Received: from ciao.gmane.io (ciao.gmane.io [116.202.254.214])
 by mx.groups.io with SMTP id smtpd.web11.19441.1618156185550664007
 for <yocto@lists.yoctoproject.org>;
 Sun, 11 Apr 2021 08:49:45 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: m.gmane-mx.org, ip: 116.202.254.214, mailfrom: gley-yocto@m.gmane-mx.org)
Received: from list by ciao.gmane.io with local (Exim 4.92)
	(envelope-from <gley-yocto@m.gmane-mx.org>)
	id 1lVcLH-0000xX-CF
	for yocto@lists.yoctoproject.org; Sun, 11 Apr 2021 17:49:43 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@lists.yoctoproject.org
From: "Gmane Admin" <gley-yocto@m.gmane-mx.org>
Subject: Re: bitbake controlling memory use
Date: Sun, 11 Apr 2021 17:49:38 +0200
Message-ID: <d8ab0231-717d-69e4-e6f9-739b9a08bd29@gmail.com>
References: <s4v495$bak$1@ciao.gmane.io>
 <CANNYZj_CsY0YL_bjtgf6O3A16FXe38-hLke4wEQR6mMz58SMVg@mail.gmail.com>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
Cc: yocto-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X@public.gmane.org,
 Ferry Toth <fntoth@gmail.com>
In-Reply-To: <CANNYZj_CsY0YL_bjtgf6O3A16FXe38-hLke4wEQR6mMz58SMVg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Op 11-04-2021 om 17:27 schreef Alexander Kanavin:
> This has been discussed several times in the past - the conclusion 
> usually is that first this needs to be addresses upstream in make and 
> ninja, e.g. that they support throttling new compiler instances when 
> memory gets tight. Once that is available, bitbake can follow by 
> throttling its own tasks as well.
> 
> Alex

Yes, and make project doesn't care, because make is called with -j 16 so 
that is what it does.

So here's my pitch: bitbake can stop processes spawned by make, because 
it knows that it started make on 4 recipies, each with -j 16. The 
individual makes don't know about each other.

And normally it's not an issue (compiling c), but sometimes compiling 
c++ it explodes (I saw 4GB ram in use for 1 g++ and there were 4 of them).

> On Sun, 11 Apr 2021 at 17:23, Gmane Admin <gley-yocto@m.gmane-mx.org 
> <mailto:gley-yocto@m.gmane-mx.org>> wrote:
> 
>     My build machine has 8 cores + HT so bitbake enthusiastically assumes
>     16. However I have (only?) 16GB of RAM (+24GB swap space).
> 
>     16GB of RAM has always been more then enough with 4 core + HT, but now
>     building certain recipes (nodejs, but rust will probably do it as well)
>     eats up more memory then there actually is RAM causing excessive
>     swapping.
> 
>     In fact the swapping is so excessive that just this single recipe
>     determines largely the total image build time. However restricting
>     bitbake (or actually parallel make) to use only 4 cores + HT sounds
>     also
>     like a waste.
> 
>     I know this has been looked at in the past, but I think it needs
>     fundamental resolving (other then, hé, why not add just another
>     stick of
>     memory).
> 
>     What I do manually when I run into swapping so bad my desktop becomes
>     unresponsive is ssh from another machine and then stop (not kill) the
>     processes that use the most memory.
> 
>     These then get swapped out, but not back in, allowing the remaining
>     tasks to complete without swapping. Then when sufficient memory becomes
>     free again I continue the stopped processes.
> 
>     Isn't this something that could be added to bitbake to automate using
>     memory efficiently?
> 
> 
>     
> 


