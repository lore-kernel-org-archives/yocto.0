Return-Path: <j.lelli@sssup.it>
Received: from sssup.it (ms01.sssup.it [193.205.80.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91436E014F1
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 20:24:58 -0800 (PST)
Received: from [50.131.243.51] (account j.lelli@sssup.it HELO [192.168.1.33])
	by sssup.it (CommuniGate Pro SMTP 5.3.14)
	with ESMTPSA id 79317320; Thu, 07 Mar 2013 05:24:53 +0100
Message-ID: <51381691.2020605@sssup.it>
Date: Wed, 06 Mar 2013 20:24:49 -0800
From: Juri Lelli <j.lelli@sssup.it>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130221 Thunderbird/17.0.3
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
	<CACzyEJ_uHp7JQQG=Ufec5ipXdb5aEyWrp38jJFhF+qofsGkZ+Q@mail.gmail.com>
	<513810E4.2040506@windriver.com>
In-Reply-To: <513810E4.2040506@windriver.com>
X-Mailman-Approved-At: Thu, 07 Mar 2013 10:51:06 -0800
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
X-List-Received-Date: Thu, 07 Mar 2013 04:24:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 03/06/2013 08:00 PM, Bruce Ashfield wrote:
> On 13-03-05 1:54 AM, Insop Song wrote:
>> Hi,
>>
>> I am preparing a new meta layer for testing and promoting a
>> sched_deadline scheduler, called "meta-dl". I am planning to add
>> scheduler testing tools and different kernel versions as well.
>> - http://insop.github.com/meta-dl/
>
> FYI: I've already merged and staged sched_dl in linux-yocto_3.8:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.8/log/?h=standard/edf
>
> I'll be supporting it there as well, so it makes sense to coordinate
> our efforts around kernels, configurations and benchmarks.
>
> Juri and I talked about this @ ELC a few weeks ago (I've added
> him to the cc as well), and rather than hiding sched_deadline
> kernel support in a custom kernel layer, I'd like to try and get
> more eyes on it via linux-yocto .. so if we can all coordinate our
> efforts here, that would be much better.
>

Thanks a lot for your support! I'm already in contact with Insop, it
would be great to coordinate among ourselves.

As I already told to Insop, I don't have any automated test for the
patchset, but I usually run different scenarios using basically this
two tools (and giving a look at simple cases through kernelshark):

1- schedtool-dl: https://github.com/jlelli/schedtool-dl
    the idea here is to let a 'yes' run through SCHED_DEADLINE and
    check through kernelshark that the bandwidth enforcement
    mechanism works.
  
2- rt-app: https://github.com/gbagnoli/rt-app
    with this I usually let some tasksets run for several hours on
    a 48-cores machine we have in our lab, I can provide the tasksets
    (json files) and the script to run them.

Please let me know how I can help further.

Best Regards,

- Juri

>>
>> With the help of hands-on kernel lab (thank you Tom and Darren), I am
>> able to make kernel with sched_deadline enabled.
>>
>>
>> Now, I am having some trouble of adding testing tools to this meta-dl,
>> and hope I can get some help from you.
>>
>> - problem: adding a new software into my meta-dl layer
>>
>> - symtom and questions?
>> 1. bitbake core-image-minimal (normal image build) won't include the
>> additional program that I listed in .bb file below
>> 2. If I do "bitbake schedtool-dl -c install" it builds and install,
>> but at "i586" location instead of my machine staging rootfs
>> (dl-qemux86)
>>
>>
>>
>> - Here is my .bb file that pulls an additional program.
>> https://github.com/insop/meta-dl/blob/sched-dl-V7/recipes-tools/schedtool-dl/schedtool-dl.bb
>> ===
>> DESCRIPTION = "schedtool-dl (scheduler test tool) for deadline scheduler"
>> HOMEPAGE = "https://github.com/insop/schedtool-dl"
>> SECTION = "base"
>> LICENSE = "GPLv2"
>> LIC_FILES_CHKSUM =
>> "file://Makefile;endline=55;md5=e4b4e8ed9c2132e1d727a1bb5e3bd984"
>> PR = "r1"
>>
>> SRC_URI = "git://github.com/insop/schedtool-dl.git;protocol=git"
>> SRCREV = "${AUTOREV}"
>>
>> S = "${WORKDIR}/git"
>>
>> do_compile() {
>>           oe_runmake
>> }
>>
>> do_install() {
>>           oe_runmake install DESTDIR=${D}
>> }
>>
>> PARALLEL_MAKE = ""
>>
>> BBCLASSEXTEND = "native"
>>
>> COMPATIBLE_MACHINE_dl-qemux86 = "dl-qemux86"
>> ====
>>
>>
>> - I've updated my conf/layer.conf file to include above file
>> https://github.com/insop/meta-dl/blob/sched-dl-V7/conf/layer.conf
>> ====
>> # We have a conf and classes directory, add to BBPATH
>> BBPATH := "${BBPATH}:${LAYERDIR}"
>>
>> # We have a recipes directory, add to BBFILES
>> BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>>           ${LAYERDIR}/recipes-*/*/*.bbappend"
>>
>> BBFILE_COLLECTIONS += "dl-qemux86"
>> BBFILE_PATTERN_dl-qemux86 := "^${LAYERDIR}/"
>> BBFILE_PRIORITY_dl-qemux86 = "6"
>> =====
>>
>>
>>
>> Thank you.
>>
>> Regards,
>>
>> Insop
>>
>>
>> - ref:
>> 1. sched_deadline:
>> https://events.linuxfoundation.org/events/linuxcon-europe/song
>> 2. sched_deadline:
>> http://events.linuxfoundation.org/images/stories/slides/elc2013_kobayashi.pdf?a
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>

