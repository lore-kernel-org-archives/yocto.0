Received: from mail.cybernetics.com (mail.cybernetics.com [173.71.130.66])
 by mx.groups.io with SMTP id smtpd.web10.10318.1614090289134849591
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Feb 2021 06:24:49 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: cybernetics.com, ip: 173.71.130.66, mailfrom: btv1==688d026400d==cbing@cybernetics.com)
X-ASG-Debug-ID: 1614090287-0fb3b02a6f089a0001-O4Qx4w
Received: from cybernetics.com ([10.10.4.126]) by mail.cybernetics.com with ESMTP id r05dBl84qvCU9pqy for <yocto@lists.yoctoproject.org>; Tue, 23 Feb 2021 09:24:47 -0500 (EST)
X-Barracuda-Envelope-From: cbing@cybernetics.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.4.126
X-ASG-Whitelist: Client
Received: from [10.157.1.18] (HELO [192.168.184.100])
  by cybernetics.com (CommuniGate Pro SMTP 6.2.14)
  with ESMTP id 10590454 for yocto@lists.yoctoproject.org; Tue, 23 Feb 2021 09:24:47 -0500
Subject: Re: [yocto] Updating Yocto
X-Barracuda-RBL-Trusted-Forwarder: 10.157.1.18
To: yocto@lists.yoctoproject.org
X-ASG-Orig-Subj: Re: [yocto] Updating Yocto
References: <60430e1e-0c5d-9cc4-5496-a6f4152ec976@cybernetics.com>
 <YDT75mK/tmGXsl+z@korppu>
From: "Claude Bing" <cbing@cybernetics.com>
Message-ID: <17d2c7cd-3c2c-23d3-bb23-efa99a2d7765@cybernetics.com>
Date: Tue, 23 Feb 2021 09:24:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <YDT75mK/tmGXsl+z@korppu>
X-Barracuda-Connect: UNKNOWN[10.10.4.126]
X-Barracuda-Start-Time: 1614090287
X-Barracuda-URL: https://10.10.4.122:443/cgi-mod/mark.cgi
X-Barracuda-BRTS-Status: 1
X-Virus-Scanned: by bsmtpd at cybernetics.com
X-Barracuda-Scan-Msg-Size: 3116
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2/23/21 7:58 AM, Mikko Rapeli wrote:
> Hi,
> 
> On Mon, Feb 22, 2021 at 12:12:21PM -0500, Claude Bing wrote:
>> Hello all. My organization has been working with Yocto recently, and we
>> have noticed that there are often weird errors encountered after
>> updating revisions within a release branch (e.g., 3.1.3 -> 3.1.5). Is
>> there an accepted process to merging in upstream changes?  Here is a
>> distillation of our workflow:
>>
>> * Yocto releases 3.1.0 / dunfell
>>
>> * Create a local tracking branch for the Yocto release
>>   "sample-yocto-dunfell" based on upstream 3.1.0 tag / dunfell branch.
>>   This is necessary because some of our local tooling is located in the
>>   top level directory and it is a pain to copy the files each time.
>>
>> * Create firmware with Yocto
>>
>> * Yocto releases 3.1.x
>>
>> * Merge upstream yocto-3.1.x tag into local tracking branch
>>
>> * Create firmware with Yocto
>>
>> Sometimes, after this last step, we encounter problems where patches
>> cannot be applied, or files cannot be found when bitbake tries to build
>> the recipes. We have tried deleting build/{tmp,sstate-cache} whenever we
>> merge upstream changes, but random errors still persist.  For each of
>> these packages, if we run "bitbake -c cleanall", the error goes away.
> 
> When both yocto update and your own changes are modifying the same recipes,
> then conflicts can occur.>
>> Most of the time, these recipes have not been extended in our project,
>> so they are purely meta-oe / meta packages.
> 
> If builds are failing, then your environment is breaking something.
> It might even be the BSP layers that you use>
>> Are we doing something wrong, or is there a more acceptable way to
>> handle updates?
>>
>> How tightly should meta-openembedded be tied to the core Yocto release?
> 
> I update all open source meta layers for every run of the update and also resolve
> any issues by digging into details why the failure happened. I've done dunfell
> updates with several BSP layers for multiple arm64 SoC's and have not seen
> major issues.
> 
> What is useful and one of the best practices, is to clear the bitbake tmp
> directory in between builds. Depending on details, there can be some cruft there
> which fails when rebuilding.

I mentioned that we remove that directory, and it does indeed solve a
lot of problems.  Not sure that it was clear from the original message,
but whenever we get a random error on the first build after the upgrade
we run a "bitbake -c cleanall" on that package, and everything works
great. The errors do not show up again.

Thanks for the reply.

> 
> Cheers,
> 
> -Mikko
> 
> 
> 
> 
> 
