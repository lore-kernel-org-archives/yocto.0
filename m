Received: from ciao.gmane.io (ciao.gmane.io [116.202.254.214])
 by mx.groups.io with SMTP id smtpd.web10.1697.1618253150213394578
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Apr 2021 11:45:50 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: m.gmane-mx.org, ip: 116.202.254.214, mailfrom: gley-yocto@m.gmane-mx.org)
Received: from list by ciao.gmane.io with local (Exim 4.92)
	(envelope-from <gley-yocto@m.gmane-mx.org>)
	id 1lW1ZD-00048r-NZ
	for yocto@lists.yoctoproject.org; Mon, 12 Apr 2021 20:45:47 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@lists.yoctoproject.org
From: "Gmane Admin" <gley-yocto@m.gmane-mx.org>
Subject: Re: bitbake controlling memory use
Date: Mon, 12 Apr 2021 20:45:40 +0200
Message-ID: <d55912a0-bba2-cf6e-db43-c4efdc40affa@gmail.com>
References: <s4v495$bak$1@ciao.gmane.io>
 <ad79e677-7f5d-5d21-d142-59e31dfd83ab@windriver.com>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <ad79e677-7f5d-5d21-d142-59e31dfd83ab@windriver.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi,

Op 12-04-2021 om 04:25 schreef ChenQi:
> I think you write a script to do all the WATCH-STOP-CONTINUE stuff.
> e.g.
> memwatch bitbake core-image-minimal
> Options could be added.
> e.g.
> memwatch --interval 5 --logfile test.log bitbake core-image-minimal
> 
> This script first becomes a session leader, then forks to start the 
> 'bitbake' command as its child process.
> Then, every several seconds (say 10s by default), it checks the current 
> memory usage, and according to its policy, determines whether to 
> stop/continue some process or not.
> 
> For stopping the process, you can first get all its child process by 
> simply using the 'ps' command.
> e.g.
> $ ps o vsize,comm,pid -s 28303 | sort -n -r
> 317284 emacs           12883
>   28912 ps              36302
>   26248 sort            36303
>   21432 man             24797
>   17992 bash            28303
>    9852 pager           24807
>     VSZ COMMAND           PID
> 
> Then skip the bitbake processes, stop the first one that uses the 
> largest memory, record its PID.
> 
> For continuing processes, just start it according to the records. Maybe 
> using FILO by default?
> 
> Best Regards,
> Chen Qi

Yeah, so we would be having memwatch as a baby sitter.

I would be nicer to have it built into bitbake, but this would work too.

> On 04/11/2021 11:23 PM, Gmane Admin wrote:
>> My build machine has 8 cores + HT so bitbake enthusiastically assumes 
>> 16. However I have (only?) 16GB of RAM (+24GB swap space).
>>
>> 16GB of RAM has always been more then enough with 4 core + HT, but now 
>> building certain recipes (nodejs, but rust will probably do it as 
>> well) eats up more memory then there actually is RAM causing excessive 
>> swapping.
>>
>> In fact the swapping is so excessive that just this single recipe 
>> determines largely the total image build time. However restricting 
>> bitbake (or actually parallel make) to use only 4 cores + HT sounds 
>> also like a waste.
>>
>> I know this has been looked at in the past, but I think it needs 
>> fundamental resolving (other then, hé, why not add just another stick 
>> of memory).
>>
>> What I do manually when I run into swapping so bad my desktop becomes 
>> unresponsive is ssh from another machine and then stop (not kill) the 
>> processes that use the most memory.
>>
>> These then get swapped out, but not back in, allowing the remaining 
>> tasks to complete without swapping. Then when sufficient memory 
>> becomes free again I continue the stopped processes.
>>
>> Isn't this something that could be added to bitbake to automate using 
>> memory efficiently?
>>
>>
>>
>> 
>>
> 


