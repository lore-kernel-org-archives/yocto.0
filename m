Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36900E00B51; Tue, 30 May 2017 18:25:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D8D3E00B3D
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 18:25:39 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v4V1PaJT019185
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 30 May 2017 18:25:36 -0700
Received: from server.local (128.224.22.165) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 30 May 2017 18:25:36 -0700
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, <yocto@yoctoproject.org>
References: <8C8F5C9C1BB04040A6555EFD5B0B5131@PAULD>
	<6DDD0E6DF5E245EEBEE64A478C162BBD@PAULD>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <719d84c4-a891-c7d0-2c5d-316e9b98ae1d@windriver.com>
Date: Tue, 30 May 2017 21:25:35 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <6DDD0E6DF5E245EEBEE64A478C162BBD@PAULD>
Subject: Re: Kernel config fragments ignored
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
X-List-Received-Date: Wed, 31 May 2017 01:25:40 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2017-05-30 9:15 PM, Paul D. DeRocco wrote:
>> From: Paul D. DeRocco
>>
>> I ported a working build from Fido to Morty, made a few
>> tweaks in response
>> to error messages (mostly updating version numbers), but it's
>> not finding
>> my kernel configuration fragments. This is supposed to be an i386 arch
>> system, but it insists upon building an x86_64 kernel. The
>> .config file it
>> generates does not include my configuration fragments, which contain
>> things like CONFIG_64BIT=n and CONFIG_X86_32=y.
> 
> I'm still stumped by this, but I've debugged it further. My top level
> chroma32-bsp-preempt-rt.scc file contains (among other things) the line
> 
>      include ktypes/preempt-rt/preempt-rt.scc nopatch
> 
> Building the kernel copies the following files into
> tmp/work/chroma32_bsp-poky-linux/linux-yocto-rt/4.8.12+blahblah
> 
>      chroma32-bsp-user-config.cfg
>      chroma32-bsp-user-features.scc (empty)
> 
> but it doesn't copy the following files anywhere
> 
>      chroma32-bsp-preempt-rt.scc
>      chroma32-bsp.scc
>      chroma32-bsp.cfg
> 
> so none of the values from either .cfg file appear in the resulting
> .config file.
> 
> If I change the above line to
> 
>      include ktypes/standard/standard.scc nopatch
> 
> then tmp/work/chroma32_bsp-poky-linux/linux-yocto-rt/4.8.12+blahblah
> contains
> 
>      chroma32-bsp-preempt-rt.scc
>      chroma32-bsp-user-config.cfg
>      chroma32-bsp-user-features.scc (empty)
> 
> and
> tmp/work-shared/chroma32-bsp/kernel-source/.kernel-meta/configs/standard
> contains
> 
>      chroma32-bsp.cfg
>      chroma32-bsp-user-config.cfg
> 
> and everything in them is included in the .config file.
> 
> Both the preempt-rt.scc and standard.scc files pull in a lot of stuff, and
> they are quite different from each other. What difference between the two
> could account for my config fragments being ignored when I use the first
> one?

It wouldn't be the difference.

Is this something that I can configure and build myself ? I changed
the processing model between those releases, but I tested migration
of a few BSPs and they all worked.

So something different is happening here.

I can't say what is is just by reading the description, but if I could
build something like you are describing, I can figure out what's happening.

Bruce

> 





