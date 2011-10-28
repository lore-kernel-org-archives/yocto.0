Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 575BAE01404
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 09:23:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p9SGNbPD001127
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 28 Oct 2011 09:23:37 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.229) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 28 Oct 2011 09:23:37 -0700
Message-ID: <4EAAD708.5030909@windriver.com>
Date: Fri, 28 Oct 2011 11:23:36 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: Xianghua Xiao <xiaoxianghua@gmail.com>
References: <CAP7cwtu-T9LdUy78MSG+JOanSHw6UTK5D-4zFu-bVzsRp9XwwA@mail.gmail.com>
	<4EAAC008.4050406@windriver.com>
	<CAP7cwttTXcGySrqmKvv+7saHFyF0xuUczY8h5693f232RCA_Sg@mail.gmail.com>
In-Reply-To: <CAP7cwttTXcGySrqmKvv+7saHFyF0xuUczY8h5693f232RCA_Sg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: building and using yocto 1.1
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
X-List-Received-Date: Fri, 28 Oct 2011 16:23:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 10/28/11 11:13 AM, Xianghua Xiao wrote:
> core2duo E7200 2.53Ghz  4GB 500GB
> 
> 1 thread 1 parallel due to past experience I had from the
> past(parallel make did not work well reliably)

It is a goal of the Yocto Project (and Open Embedded) that parallel building is
full supported, and any identified bugs are fixed quickly.

Enable parallel builds and your performance will be significantly better.

If you have hyperthreading enabled, and setup a 4/4 parallel build.  I would
expect about a 4-5 hour build time.  (May be faster)

--Mark

> thanks,
> xianghua
> 
> 
> On Fri, Oct 28, 2011 at 9:45 AM, Mark Hatle <mark.hatle@windriver.com> wrote:
>> What machine are you using (amount of ram, disk space, and cpu cores)?
>>
>> What configuration did you set for parallel builds?
>>
>> I can build 1.1 on an 8 core i7 system w/ 8 GB of ram, set with parallel
>> settings of 8 thread and 8 parallel make jobs, in about 100 minutes (or less).
>>
>> --Mark
>>
>> On 10/28/11 9:20 AM, Xianghua Xiao wrote:
>>> when I built 1.0 out of the box, it took 7 hours.
>>> on the same machine/network, yocto 1.1 took a full 12 hours, not sure
>>> what happened to cause this nearly doubled build time.
>>>
>>> after the default build(bitbake core-image-sato), I run 'runqemu
>>> qemux86', click on 'tasks', try to add a new task, however my input is
>>> shown non-english, or garbage on screen, which I have seen the same
>>> issue on yocto1.0 release as well. this is a 10.04 ubuntu 64bit
>>> machine.
>>>
>>> don't know what to say about it, just my OOB(out-of-box) experience
>>>
>>> xianghua
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>


