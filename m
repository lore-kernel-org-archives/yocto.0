Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4131FE00474
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 11:14:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s3MIEZEi001518
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 22 Apr 2014 11:14:36 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.235) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.169.1; Tue, 22 Apr 2014 11:14:35 -0700
Message-ID: <5356B18A.40201@windriver.com>
Date: Tue, 22 Apr 2014 13:14:34 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
References: <5353BA79.3060206@dynamicdevices.co.uk>
	<5355C79C.1020704@windriver.com>
	<5356112C.2050400@dynamicdevices.co.uk>
In-Reply-To: <5356112C.2050400@dynamicdevices.co.uk>
Cc: yocto@yoctoproject.org
Subject: Re: Question about rebuilding RPM package index for updated RPMs when bitbake completes
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
X-List-Received-Date: Tue, 22 Apr 2014 18:14:42 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 4/22/14, 1:50 AM, Alex J Lennon wrote:
>
> On 22/04/2014 02:36, Mark Hatle wrote:
>> On 4/20/14, 7:15 AM, Alex J Lennon wrote:
>>> Hi,
>>>
>>> I'm trying to put in place a development workflow using the PR server,
>>> RPM package feeds and smart update/install on a target.
>>>
>>> I see that when I modify and rebuild my recipe, foo, the PR server
>>> increments its count within the RPM filename, but the RPM feed data
>>> doesn't seem to update.
>>>
>>
>> ...
>>
>>> So if I am understanding the above correctly, when I make a change to a
>>> recipe and build it, PR automatically
>>> updates, the old RPM is removed and the new RPM added to the feed
>>> directory. However the package index
>>> for the feed is not updated.
>>>
>>> So if at that point I try to make use of the feed on a target I am
>>> likely to find something is broken.
>>
>> The feed is normally indexed (createrepo) either when you manually run the
>> package-index operation, or when you construct a filesystem.  Until you do
>> that, the feed directories are transient.
>>
>
> Is there a reason for this? Surely having a package index that is out of sync
> with the packages until a manual operation is performed isn't ideal?

Yes, if you re-indexed the set of packages after each package, you will add 
multiple minutes to the construction of each package, and introduce locking into 
the system.  (You won't be able to generate multiple recipes in parallel due to 
this.)  (I don't consider it a package feed until all of the packages are built 
and the index is constructed.)

>>> If that is true would it make sense to leave the old RPM in the feed
>>> directory until package-index
>>> is re-ran, or to run package-index automatically at the end of a build
>>> when RPMs have changed?
>>
>> I -never- export the feed directories from the project directory. Instead, I
>> copy the packages from the feed directory to where I share them, and then run
>> the indexer against the external repository.  This preserves the older
>> versions and also makes the new ones available.
>>
>> To run the indexer I have to configure and run it manually...
>>
>> PATH=/home/mhatle/build-6.0-RCPL-test/build/tmp/sysroots/x86_64-linux/bin:/home/mhatle/build-6.0-RCPL-test/bitbake/tmp/sysroots/x86_64-linux/usr/bin:$PATH
>>
>> /home/mhatle/build-6.0-RCPL-test/bitbake/tmp/sysroots/x86_64-linux/usr/bin/createrepo
>> --update -q <path to feed>
>>
>> So for qemux86_64, I end up running the above three times.  all, x86_64 and
>> qemux86_64.
>>
>> Then on the target I just do:
>>
>> smart update
>> smart upgrade -y
>>
>
> Thanks, that's useful
>
> However I still believe the core question stands, which is why the package index
> is out of sync, and why it's a good thing to have to run bitbake package-index

The other option is to remove the repo indexes when packages are written. 
Again, I don't consider these out of sync though, as the files have different 
purposes and constraints.  They are simply constructed to enable the rootfs 
generation.  Upgrades are external of the build system.

> manually to bring the package index back into sync with the packages?
>
> I too export the feed directories to a server for 3rd party consumption via
> compressed rsync over SSH. I don't want to expose more on the server than a
> simple SSH endpoint, and rsync seems a sensible way to minimise copying times,
> so either I need the package index to be correct prior to the rsync, I need to
> export, say, an NFS filesystem which I don't want to do, or I need some
> createrepo specifics on what I would prefer to be a dumb web-server.

For an rsync, I would either index on the server using a cron-job.. so when new 
packages appear they get added to the index, or have a local mirror of the 
directory including the updated index... you just want to make sure the index 
files are synced last somehow.

--Mark

> Best,
>
> Alex
>
>> --Mark
>>
>>> Thanks,
>>>
>>> Alex
>>>
>>>
>>>
>>
>
> --
>
> Dynamic Devices Ltd <http://www.dynamicdevices.co.uk/>
>
> Alex J Lennon / Director
> 1 Queensway, Liverpool L22 4RA
>
> mobile: +44 (0)7956 668178
>
> Linkedin <http://www.linkedin.com/in/alexjlennon> Skype <skype:alexjlennon?add>
>
> This e-mail message may contain confidential or legally privileged information
> and is intended only for the use of the intended recipient(s). Any unauthorized
> disclosure, dissemination, distribution, copying or the taking of any action in
> reliance on the information herein is prohibited. E-mails are not secure and
> cannot be guaranteed to be error free as they can be intercepted, amended, or
> contain viruses. Anyone who communicates with us by e-mail is deemed to have
> accepted these risks. Company Name is not responsible for errors or omissions in
> this message and denies any responsibility for any damage arising from the use
> of e-mail. Any opinion and other statement contained in this message and any
> attachment are solely those of the author and do not necessarily represent those
> of the company.
>


