Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56935E00C7C; Sun, 17 Jul 2016 19:51:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26870E0071C
	for <yocto@yoctoproject.org>; Sun, 17 Jul 2016 19:51:53 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u6I2plF0017980
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Sun, 17 Jul 2016 19:51:50 -0700
Received: from server.local (147.11.119.109) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Sun, 17 Jul 2016 19:51:45 -0700
To: "Daniel." <danielhilst@gmail.com>,
	Bruce Ashfield <bruce.ashfield@gmail.com>
References: <CAF3SDA5hVSS6ERFPUQ02YqMWCMwhHGLt95+MfMSrrP4WxiWg=A@mail.gmail.com>
	<CADkTA4Oeqi8e-SysL=AZdphpyAh1o0ZbRF3JhFqmaXU38JF++Q@mail.gmail.com>
	<CAF3SDA7rb4+XrQ756MifGpSb+G3JBvEXpOreBThyp7X6M4v_fg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <19eff132-2ba4-a9d5-b9ad-f303e6db09d6@windriver.com>
Date: Sun, 17 Jul 2016 22:51:45 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAF3SDA7rb4+XrQ756MifGpSb+G3JBvEXpOreBThyp7X6M4v_fg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Docker and Yocto
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
X-List-Received-Date: Mon, 18 Jul 2016 02:51:57 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-07-15 4:10 PM, Daniel. wrote:
> Hi Bruce,
>
> Thanks for answering me. What is your use case? I've been reading
> about Docker and seems to do some nice magic. I was wondering if would
> be possible and productive to deploy embedded applications using
> Docker... Also the Docker swarm seems really cool stuff, are you using
> this too?

For me, there's no single use case. But yes, you could use it as
a deployment engine on an embedded platform. But the same can be
said about lxc, or systemd-nspawn, etc.

For most embedded systems, there is quite a bit of overhead, layering
and general magic if you use the docker engine as-is. Hence why lxc
or other container management may be a better fit.

Docker excels at ease of use, container repositories/registries, etc.

With the latest version bump that I did in meta-virt, we are now into
open container support via runc and containerd, which docker uses. But
for me, I'm more interested in using runc directly for lower overhead
containers, but with a runtime capable of executing docker containers
if required.

Whatever orchestration you use is the last piece of the puzzle, and
there are many to chose from .. and what you chose (if any), really
does depend on the problem you are trying to solve.

We are hacking on a containerized runtime based on oe-core, and other
layers from the ecosystem. It is lxc based right now, but I'm about
to throw the switch to runc/OCI as a replacement .. which is where
you can see I was headed with my description above :)

Bruce

p.s. the playground is: https://github.com/OverC/meta-overc



>
> Regards,
>
>
> 2016-07-15 11:43 GMT-03:00 Bruce Ashfield <bruce.ashfield@gmail.com>:
>> Yep, that's something that we test consistently with the docker support in
>> meta-virtualization.
>>
>> Bruce
>>
>> On Fri, Jul 15, 2016 at 9:56 AM, Daniel. <danielhilst@gmail.com> wrote:
>>>
>>> Is anybory out there using Docker containers inside Yocto images? I
>>> have some machines running at ARMv7 architeture and I want to know if
>>> there is somebody already using Docker on non-x86 embedded platforms
>>> and if it can help deploying applications in this case too!?
>>>
>>> Regards,
>>>
>>> --
>>> "Do or do not. There is no try"
>>>   Yoda Master
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>
>> --
>> "Thou shalt not follow the NULL pointer, for chaos and madness await thee at
>> its end"
>
>
>


