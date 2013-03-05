Return-Path: <insop.song@gmail.com>
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 7B8FBE006C2
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 01:19:53 -0800 (PST)
Received: by mail-wg0-f43.google.com with SMTP id e12so5415212wge.22
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2013 01:19:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=r90nxXw2uxnt7hdo5dfB4oih1khoDz5mqFd9RbABrb0=;
	b=dt5OLZ/MF9V6VIMEL52eLlMgEJzSu4ExlhBCWlm1Z7gmJmr5U/RmzVvzM1uMaCbpjq
	7bbw3BubvAyXDYXbFmVxERVAeE/l0wY1XXtMIIuy42ni+N9UHvHeuVUjjthMipFAH6Ci
	5ko95jGnRzrynE3eXLDj3+j3iKeaTsOTOPq26cRIZZ9NNi4JzCOtqW5Iba5PyB8rdsqK
	2i8CbbaSeABCsbmpkwMQG/UlfvfAdVdQCh1yZx4EVjI+JGIxWAfKtjTvJbkIj/sQoN9q
	D1EFnxcVM5JluIndrFuyhCE2U66As4g+2cgZFw7ZhJo33tJMvd6Jw0hyz/ktb/g1e5fo
	+D4A==
X-Received: by 10.194.84.8 with SMTP id u8mr37605279wjy.29.1362475191980; Tue,
	05 Mar 2013 01:19:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Tue, 5 Mar 2013 01:19:31 -0800 (PST)
In-Reply-To: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Tue, 5 Mar 2013 01:19:31 -0800
Message-ID: <CACzyEJ8Wgfd38bnk=MD+DB4pF5YoHN221J6a8EXknUSRXji8Uw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 06 Mar 2013 18:09:18 -0800
Cc: dvhart@linux.intel.com, tom.zanussi@linux.intel.com
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
X-List-Received-Date: Tue, 05 Mar 2013 09:19:53 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I've done some more work and figured out what was to be changed to
include a new program to my meta-dl.

This is the change, please let me know if you have any comment.

https://github.com/insop/meta-dl/commit/6f7c4dc9b66e38a1fedb4a9fd80d644d3f37aced

Thank you,

Insop
On Mon, Mar 4, 2013 at 8:04 PM, Insop Song <insop.song@gmail.com> wrote:
> Hi,
>
> I am preparing a new meta layer for testing and promoting a
> sched_deadline scheduler, called "meta-dl". I am planning to add
> scheduler testing tools and different kernel versions as well.
> - http://insop.github.com/meta-dl/
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
>         oe_runmake
> }
>
> do_install() {
>         oe_runmake install DESTDIR=${D}
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
>         ${LAYERDIR}/recipes-*/*/*.bbappend"
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

