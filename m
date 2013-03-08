Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59F4DE0155A
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 15:35:43 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r28NZflm004105
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 8 Mar 2013 15:35:41 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.21.250) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Fri, 8 Mar 2013 15:35:40 -0800
Message-ID: <513A75CB.3050308@windriver.com>
Date: Fri, 8 Mar 2013 18:35:39 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
	<513A195A.5040505@linux.intel.com>
In-Reply-To: <513A195A.5040505@linux.intel.com>
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
X-List-Received-Date: Fri, 08 Mar 2013 23:35:43 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-08 12:01 PM, Darren Hart wrote:
>
>
> On 03/04/2013 08:04 PM, Insop Song wrote:
>> Hi,
>>
>> I am preparing a new meta layer for testing and promoting a
>> sched_deadline scheduler, called "meta-dl". I am planning to add
>> scheduler testing tools and different kernel versions as well.
>> - http://insop.github.com/meta-dl/
>
> Note that qemux86 doesn't support the EMGD graphics driver. You mention
> this and its license in the README, but it isn't necessary. If you are
> pulling that in, there is a problem with your recipes.

wow. mailing list delays are making this conversation *extremely*
painful and disjointed.

>
> I highly recommend you do not use USB keys for real-time storage. I
> would also suggest avoiding the hddimg as a test vehicle as it consumes
> memory and other resources for the live image. If anything, use the live
> image as an installer only.
>
> For some added safety, consider using poky/contrib/ddimage instead of
> dd. It is a simple wrapper script around DD which offers a device
> blacklist and uses sysfs to present the user with some helpful
> information to confirm the operation.
>
> So you are using the sched_deadline patches, but not PREEMPT_RT, is that
> right? I had always assumed sched_deadline ran on top of PREEMPT_RT (but
> I haven't every tried building it myself).

sched_deadline applies to mainline, right on top of CFS as a scheduler
class. So in fact, I wouldn't suggest it with preempt-rt at all at the
moment.

>
> What you have here is a good experimental layer. Looking forward, please
> consider:
>
> o Incorporating sched_deadline as a kernel feature into the
> linux-yocto_3.8 kernel. We can easily add recipes to build a
> linux-yocto-deadline kernel and you will get all the benefits of the
> yocto tooling, testing, bugfixing, and free forward porting.

Already done. I've had it in linux-yocto-3.8 since I first introduced
it. We just need the supporting userspace to easily change the
scheduler class for a process.

>
> o Incorporating your tests into (poky|oe-core)/meta/recipes-rt

Or if they aren't fully 'core', our new meta-realtime that I'd like
to have created shortly.

Cheers,

Bruce

>
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
>> 	oe_runmake
>> }
>>
>> do_install() {
>> 	oe_runmake install DESTDIR=${D}
>> }
>>
>> PARALLEL_MAKE = ""
>
>
> Hopefully you can find the missing dependency in your makefile that
> makes this necessary. This slows the build down and cumulatively, this
> becomes a problem. This setting should always be considered a band-aid
> and should have a comment starting with "FIXME: " ;-)
>
>
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
>> 	${LAYERDIR}/recipes-*/*/*.bbappend"
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
>>
>


