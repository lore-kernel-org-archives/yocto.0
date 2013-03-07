Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 83168E0146E
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 05:53:33 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r27DrRuJ025138
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 7 Mar 2013 05:53:27 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Thu, 7 Mar 2013 05:53:27 -0800
Message-ID: <51389BCB.4000100@windriver.com>
Date: Thu, 7 Mar 2013 08:53:15 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Juri Lelli <j.lelli@sssup.it>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
	<CACzyEJ_uHp7JQQG=Ufec5ipXdb5aEyWrp38jJFhF+qofsGkZ+Q@mail.gmail.com>
	<513810E4.2040506@windriver.com> <51381691.2020605@sssup.it>
In-Reply-To: <51381691.2020605@sssup.it>
Cc: yocto@yoctoproject.org
Subject: Re: A question on adding a new program to a new meta layer
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
X-List-Received-Date: Thu, 07 Mar 2013 13:53:33 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-06 11:24 PM, Juri Lelli wrote:
> Hi,
>
> On 03/06/2013 08:00 PM, Bruce Ashfield wrote:
>> On 13-03-05 1:54 AM, Insop Song wrote:
>>> Hi,
>>>
>>> I am preparing a new meta layer for testing and promoting a
>>> sched_deadline scheduler, called "meta-dl". I am planning to add
>>> scheduler testing tools and different kernel versions as well.
>>> - http://insop.github.com/meta-dl/
>>
>> FYI: I've already merged and staged sched_dl in linux-yocto_3.8:
>>
>> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.8/log/?h=standard/edf
>>
>>
>> I'll be supporting it there as well, so it makes sense to coordinate
>> our efforts around kernels, configurations and benchmarks.
>>
>> Juri and I talked about this @ ELC a few weeks ago (I've added
>> him to the cc as well), and rather than hiding sched_deadline
>> kernel support in a custom kernel layer, I'd like to try and get
>> more eyes on it via linux-yocto .. so if we can all coordinate our
>> efforts here, that would be much better.
>>
>
> Thanks a lot for your support! I'm already in contact with Insop, it
> would be great to coordinate among ourselves.

Thanks Juri, I was going to add you to my linux-yocto-3.8 announcement
email and due to some last minute debug activities .. it slipped my
mind. So I'm using this thread to let you, and anyone else that is
interested know that sched_deadline support is available to try out
in linux-yocto-3.8.

>
> As I already told to Insop, I don't have any automated test for the
> patchset, but I usually run different scenarios using basically this
> two tools (and giving a look at simple cases through kernelshark):
>
> 1- schedtool-dl: https://github.com/jlelli/schedtool-dl
>     the idea here is to let a 'yes' run through SCHED_DEADLINE and
>     check through kernelshark that the bandwidth enforcement
>     mechanism works.
>
> 2- rt-app: https://github.com/gbagnoli/rt-app
>     with this I usually let some tasksets run for several hours on
>     a 48-cores machine we have in our lab, I can provide the tasksets
>     (json files) and the script to run them.
>
> Please let me know how I can help further.

This is a good start. I have some old references to tests that I'll
dig up as well.

I'm looking to develop some "real world" examples of the scheduler
class in action, since as we've been saying .. getting those examples
will both help the approach and perhaps help get it merged into the
mainline kernel.

Cheers,

Bruce

>
> Best Regards,
>
> - Juri
>
>>>
>>> With the help of hands-on kernel lab (thank you Tom and Darren), I am
>>> able to make kernel with sched_deadline enabled.
>>>
>>>
>>> Now, I am having some trouble of adding testing tools to this meta-dl,
>>> and hope I can get some help from you.
>>>
>>> - problem: adding a new software into my meta-dl layer
>>>
>>> - symtom and questions?
>>> 1. bitbake core-image-minimal (normal image build) won't include the
>>> additional program that I listed in .bb file below
>>> 2. If I do "bitbake schedtool-dl -c install" it builds and install,
>>> but at "i586" location instead of my machine staging rootfs
>>> (dl-qemux86)
>>>
>>>
>>>
>>> - Here is my .bb file that pulls an additional program.
>>> https://github.com/insop/meta-dl/blob/sched-dl-V7/recipes-tools/schedtool-dl/schedtool-dl.bb
>>>
>>> ===
>>> DESCRIPTION = "schedtool-dl (scheduler test tool) for deadline
>>> scheduler"
>>> HOMEPAGE = "https://github.com/insop/schedtool-dl"
>>> SECTION = "base"
>>> LICENSE = "GPLv2"
>>> LIC_FILES_CHKSUM =
>>> "file://Makefile;endline=55;md5=e4b4e8ed9c2132e1d727a1bb5e3bd984"
>>> PR = "r1"
>>>
>>> SRC_URI = "git://github.com/insop/schedtool-dl.git;protocol=git"
>>> SRCREV = "${AUTOREV}"
>>>
>>> S = "${WORKDIR}/git"
>>>
>>> do_compile() {
>>>           oe_runmake
>>> }
>>>
>>> do_install() {
>>>           oe_runmake install DESTDIR=${D}
>>> }
>>>
>>> PARALLEL_MAKE = ""
>>>
>>> BBCLASSEXTEND = "native"
>>>
>>> COMPATIBLE_MACHINE_dl-qemux86 = "dl-qemux86"
>>> ====
>>>
>>>
>>> - I've updated my conf/layer.conf file to include above file
>>> https://github.com/insop/meta-dl/blob/sched-dl-V7/conf/layer.conf
>>> ====
>>> # We have a conf and classes directory, add to BBPATH
>>> BBPATH := "${BBPATH}:${LAYERDIR}"
>>>
>>> # We have a recipes directory, add to BBFILES
>>> BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>>>           ${LAYERDIR}/recipes-*/*/*.bbappend"
>>>
>>> BBFILE_COLLECTIONS += "dl-qemux86"
>>> BBFILE_PATTERN_dl-qemux86 := "^${LAYERDIR}/"
>>> BBFILE_PRIORITY_dl-qemux86 = "6"
>>> =====
>>>
>>>
>>>
>>> Thank you.
>>>
>>> Regards,
>>>
>>> Insop
>>>
>>>
>>> - ref:
>>> 1. sched_deadline:
>>> https://events.linuxfoundation.org/events/linuxcon-europe/song
>>> 2. sched_deadline:
>>> http://events.linuxfoundation.org/images/stories/slides/elc2013_kobayashi.pdf?a
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>


