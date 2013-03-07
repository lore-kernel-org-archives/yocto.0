Return-Path: <insop.song@gmail.com>
Received: from mail-qc0-f182.google.com (mail-qc0-f182.google.com
	[209.85.216.182]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id BE604E006DC
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 21:06:09 -0800 (PST)
Received: by mail-qc0-f182.google.com with SMTP id k19so24978qcs.13
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2013 21:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:content-type;
	bh=kL1p3DKd41GJmchuB+NzmBnQsS7ZwkpwdKEf4IJx5mo=;
	b=nNiZUmRUdtH6XJtSz5mcdQ391hm4tiOYJo2PnLSr2BbjeHXRN5CQz0JDdA+36Ccc11
	d1/lk5+tH2SwGjFsyV2waEGcJMI1Ebyc0Y4PcPBdmznj4mkC7tkTbbwa3o66g/KHnGbq
	t1emvfKCVjIWXopi79kpyf8qJ+D6zVYEVpRzaUmaT2fcfzOiz6AGVjTbAf8qAAndCINT
	IrKFyo8f/1dPaQJQrt3H//MSCM+gV226rPlkLR8OqppdW0V0BFBtTRBj3eCCXjAT5As3
	tj0NCjs3ytC4V0+u4RdOoKeJGTe9rWrVycsNdsS0g+oPLJIJ+0Y5ntdLMEwzYmmaiqfy
	bsxg==
X-Received: by 10.224.184.6 with SMTP id ci6mr26921720qab.16.1362632768569;
	Wed, 06 Mar 2013 21:06:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.49.0.105 with HTTP; Wed, 6 Mar 2013 21:05:48 -0800 (PST)
In-Reply-To: <513810E4.2040506@windriver.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
	<CACzyEJ_uHp7JQQG=Ufec5ipXdb5aEyWrp38jJFhF+qofsGkZ+Q@mail.gmail.com>
	<513810E4.2040506@windriver.com>
From: Insop Song <insop.song@gmail.com>
Date: Wed, 6 Mar 2013 21:05:48 -0800
Message-ID: <CACzyEJ-Nzq1YMH7pDmWhnoco8Xsrm1R9zHDYLO4eM4XKM1a-SA@mail.gmail.com>
To: Juri Lelli <j.lelli@sssup.it>, yocto@yoctoproject.org
Subject: Re: A question on adding a new program to a new meta layer
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
X-List-Received-Date: Thu, 07 Mar 2013 05:06:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

Bruce,

That's very good. I will bring linux-yocto-3.8 kernel to meta-dl.
(https://github.com/insop/meta-dl/tree/linux-yocto-3.8)

The purposes of meta-dl are the following three:
1. easy to use sched_deadline by providing recipes-kernel that includes
- git url including github and from yocto-kernel

2. easy to test and validate sched_deadline with automated
reproducible test suits
- currently, rt-app and schedtool are included in meta-dl
- will add test scripts

3. provide and test on different targets/bsps
- will prepare and test on different targets (bsp)

#1 is done as I've tested with kernel from github from Juri and
yocto-kernel-3.8 that you've merged.
#2 and #3 are in-progress.

I've talked Juri the other day and gather information on testing
methods and scripts so I will include this to meta-dl.

I agree that it's good to coordinate the effort, so please feel free
to let me know if you have any suggestion.

Regards,

Insop

* updated kernel recipes
@ -9,12 +9,15 @@ inherit kernel

 #SRCREV ="031d31cfaa1e0c00122bf52639e340353d3b8360"
 SRCREV ="${AUTOREV}"
-KBRANCH = "sched-dl-V7"
-SRC_URI = "git://github.com/insop/sched-deadline;protocol=git;branch=${KBRANCH}
\
+#KBRANCH = "sched-dl-V7"
+#SRC_URI = "git://github.com/insop/sched-deadline;protocol=git;branch=${KBRANCH}
\
+#           file://defconfig "
+KBRANCH = "standard/edf"
+SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.8;protocol=git;branch=${KBRANCH}
\
            file://defconfig "

 PV = "3.8"
-PR = "dl7"
+PR = "dl"

 KSRC ?= ""
 S = '${@base_conditional("KSRC", "", "${WORKDIR}/git", "${KSRC}", d)}'

Thank you.

Insop

On Wed, Mar 6, 2013 at 8:00 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 13-03-05 1:54 AM, Insop Song wrote:
>>
>> Hi,
>>
>> I am preparing a new meta layer for testing and promoting a
>> sched_deadline scheduler, called "meta-dl". I am planning to add
>> scheduler testing tools and different kernel versions as well.
>> - http://insop.github.com/meta-dl/
>
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
> Cheers,
>
> Bruce
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
>>
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
>>          oe_runmake
>> }
>>
>> do_install() {
>>          oe_runmake install DESTDIR=${D}
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
>>          ${LAYERDIR}/recipes-*/*/*.bbappend"
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
>>
>> http://events.linuxfoundation.org/images/stories/slides/elc2013_kobayashi.pdf?a
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

