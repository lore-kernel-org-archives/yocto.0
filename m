Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id B55D1E006C2
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 20:00:43 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2740cOC023725
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 6 Mar 2013 20:00:39 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.22.17) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Wed, 6 Mar 2013 20:00:37 -0800
Message-ID: <513810E4.2040506@windriver.com>
Date: Wed, 6 Mar 2013 23:00:36 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Insop Song <insop.song@gmail.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
	<CACzyEJ_uHp7JQQG=Ufec5ipXdb5aEyWrp38jJFhF+qofsGkZ+Q@mail.gmail.com>
In-Reply-To: <CACzyEJ_uHp7JQQG=Ufec5ipXdb5aEyWrp38jJFhF+qofsGkZ+Q@mail.gmail.com>
Cc: yocto@yoctoproject.org, j.lelli@sssup.it
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
X-List-Received-Date: Thu, 07 Mar 2013 04:00:43 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-05 1:54 AM, Insop Song wrote:
> Hi,
>
> I am preparing a new meta layer for testing and promoting a
> sched_deadline scheduler, called "meta-dl". I am planning to add
> scheduler testing tools and different kernel versions as well.
> - http://insop.github.com/meta-dl/

FYI: I've already merged and staged sched_dl in linux-yocto_3.8:

http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.8/log/?h=standard/edf

I'll be supporting it there as well, so it makes sense to coordinate
our efforts around kernels, configurations and benchmarks.

Juri and I talked about this @ ELC a few weeks ago (I've added
him to the cc as well), and rather than hiding sched_deadline
kernel support in a custom kernel layer, I'd like to try and get
more eyes on it via linux-yocto .. so if we can all coordinate our
efforts here, that would be much better.

Cheers,

Bruce

>
> With the help of hands-on kernel lab (thank you Tom and Darren), I am
> able to make kernel with sched_deadline enabled.
>
>
> Now, I am having some trouble of adding testing tools to this meta-dl,
> and hope I can get some help from you.
>
> - problem: adding a new software into my meta-dl layer
>
> - symtom and questions?
> 1. bitbake core-image-minimal (normal image build) won't include the
> additional program that I listed in .bb file below
> 2. If I do "bitbake schedtool-dl -c install" it builds and install,
> but at "i586" location instead of my machine staging rootfs
> (dl-qemux86)
>
>
>
> - Here is my .bb file that pulls an additional program.
> https://github.com/insop/meta-dl/blob/sched-dl-V7/recipes-tools/schedtool-dl/schedtool-dl.bb
> ===
> DESCRIPTION = "schedtool-dl (scheduler test tool) for deadline scheduler"
> HOMEPAGE = "https://github.com/insop/schedtool-dl"
> SECTION = "base"
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM =
> "file://Makefile;endline=55;md5=e4b4e8ed9c2132e1d727a1bb5e3bd984"
> PR = "r1"
>
> SRC_URI = "git://github.com/insop/schedtool-dl.git;protocol=git"
> SRCREV = "${AUTOREV}"
>
> S = "${WORKDIR}/git"
>
> do_compile() {
>          oe_runmake
> }
>
> do_install() {
>          oe_runmake install DESTDIR=${D}
> }
>
> PARALLEL_MAKE = ""
>
> BBCLASSEXTEND = "native"
>
> COMPATIBLE_MACHINE_dl-qemux86 = "dl-qemux86"
> ====
>
>
> - I've updated my conf/layer.conf file to include above file
> https://github.com/insop/meta-dl/blob/sched-dl-V7/conf/layer.conf
> ====
> # We have a conf and classes directory, add to BBPATH
> BBPATH := "${BBPATH}:${LAYERDIR}"
>
> # We have a recipes directory, add to BBFILES
> BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>          ${LAYERDIR}/recipes-*/*/*.bbappend"
>
> BBFILE_COLLECTIONS += "dl-qemux86"
> BBFILE_PATTERN_dl-qemux86 := "^${LAYERDIR}/"
> BBFILE_PRIORITY_dl-qemux86 = "6"
> =====
>
>
>
> Thank you.
>
> Regards,
>
> Insop
>
>
> - ref:
> 1. sched_deadline:
> https://events.linuxfoundation.org/events/linuxcon-europe/song
> 2. sched_deadline:
> http://events.linuxfoundation.org/images/stories/slides/elc2013_kobayashi.pdf?a
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


