Received: from ciao.gmane.io (ciao.gmane.io [116.202.254.214])
 by mx.groups.io with SMTP id smtpd.web10.19155.1618154613959547334
 for <yocto@lists.yoctoproject.org>;
 Sun, 11 Apr 2021 08:23:34 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: m.gmane-mx.org, ip: 116.202.254.214, mailfrom: gley-yocto@m.gmane-mx.org)
Received: from list by ciao.gmane.io with local (Exim 4.92)
	(envelope-from <gley-yocto@m.gmane-mx.org>)
	id 1lVbvl-00034Q-VL
	for yocto@lists.yoctoproject.org; Sun, 11 Apr 2021 17:23:21 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@lists.yoctoproject.org
From: "Gmane Admin" <gley-yocto@m.gmane-mx.org>
Subject: bitbake controlling memory use
Date: Sun, 11 Apr 2021 17:23:17 +0200
Message-ID: <s4v495$bak$1@ciao.gmane.io>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
X-Mozilla-News-Host: news://news.gmane.org:119
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

My build machine has 8 cores + HT so bitbake enthusiastically assumes 
16. However I have (only?) 16GB of RAM (+24GB swap space).

16GB of RAM has always been more then enough with 4 core + HT, but now 
building certain recipes (nodejs, but rust will probably do it as well) 
eats up more memory then there actually is RAM causing excessive swapping.

In fact the swapping is so excessive that just this single recipe 
determines largely the total image build time. However restricting 
bitbake (or actually parallel make) to use only 4 cores + HT sounds also 
like a waste.

I know this has been looked at in the past, but I think it needs 
fundamental resolving (other then, hé, why not add just another stick of 
memory).

What I do manually when I run into swapping so bad my desktop becomes 
unresponsive is ssh from another machine and then stop (not kill) the 
processes that use the most memory.

These then get swapped out, but not back in, allowing the remaining 
tasks to complete without swapping. Then when sufficient memory becomes 
free again I continue the stopped processes.

Isn't this something that could be added to bitbake to automate using 
memory efficiently?

