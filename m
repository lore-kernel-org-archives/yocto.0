Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37CEBE00CEF; Mon, 14 Aug 2017 22:30:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6133E00970
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 22:30:45 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id 123so14000561pga.5
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 22:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cganWXRlPMxUm/JmubIwIWjnzYE96I4OszoFttAwHh8=;
	b=aakDjqOQAoFWbBEizHbm4cqQL/u4AraGcsoEKANPui6/K2bLXCRH3izYnpghwiqXvK
	VMuMIM2LVYopcfB59Pn44Nj//UE6MquBprvhAkdlmrVdwv5AJx+QQZ5iYBK/G5A/mxE4
	KEn/fbLnH06XrHaknVzg0xd4c/tRuvmocUuIDAxDNhahzSptMe29V1XGXwHR80GPLJly
	UUizPidEOg+8X5TCocZqctNTgqyrDJDSRXHXZcR1bLegbql4FX+iKiHFxxReXxwDQ8L8
	P71AfkEphaHDX3tlzNTKiKCkQ5lZIvKvrqFkQ/6UVGyV6uuNJ6OXRR2VCJfiVhG328bo
	KcrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cganWXRlPMxUm/JmubIwIWjnzYE96I4OszoFttAwHh8=;
	b=ue0gNZdYuASW1d3UDqe7/49a8vLEykZZQ86jBzmK/BTdjbh6N7H6ozic6eyXI5JDg9
	1KteC7p0J5DTGJw3attnU3VfRwfqQPxJQLMmhXq9MTWVpN2M5gfpOK6i2NE8oCcmgPxg
	jM81Bpg0BXKg0sxeCN2PO7eTXm7P/cP59g//PHIN8iYgEsoNaNYKxnSqwxWIu0c2GYoS
	iwBCL3fp5CrmfMBjEDce4QWBGfDgg3e8GVEEcZ4T1AnELDJroW3slzYgwkZqlLZ/wmq/
	3412Zd29iE4irXWvMbYRamUmhH4mCCLiln0Aenq+hksP0A12Fvx/u2sdj3DaoWqI2bDq
	oY/A==
X-Gm-Message-State: AHYfb5hYRfw2EqPqKoKNOS7yleNjO4fGVY8wO7h22XaxqWxDQV27yowD
	uo+YpvmeeLoN5cAosFfUNpHjA4dfQA==
X-Received: by 10.84.239.8 with SMTP id w8mr29323231plk.73.1502775044741; Mon,
	14 Aug 2017 22:30:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.167.2 with HTTP; Mon, 14 Aug 2017 22:30:14 -0700 (PDT)
In-Reply-To: <0649cefe-8c90-7268-f363-10ea09f6cd74@gmail.com>
References: <0649cefe-8c90-7268-f363-10ea09f6cd74@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 14 Aug 2017 22:30:14 -0700
Message-ID: <CAMKF1srETgqU+m-X99t7ZXAFLTezSX0cbfxVKs7K7Fr8UVBLwA@mail.gmail.com>
To: Riko <antonius.riko@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: ERROR: gcc-source-6.3.0-6.3.0-r0 do_fetch: Fetcher failure for URL: 'file://0002-uclibc-conf.patch'. Unable to fetch URL from any source.
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
X-List-Received-Date: Tue, 15 Aug 2017 05:30:49 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Aug 14, 2017 at 9:42 PM, Riko <antonius.riko@gmail.com> wrote:
> Dear Team Yocto Member,
>
> How can I get gcc6.30 ?
>
> I got error :
>
> ERROR: gcc-source-6.3.0-6.3.0-r0 do_fetch: Fetcher failure for URL:
> 'file://0002-uclibc-conf.patch'. Unable to fetch URL from any source.
>

what branch are you using and if you are using additonal layers which ones
are those and what branches are they on.

> Here's the log :
>
> =======
>
> DEBUG: Executing python function clean_recipe_sysroot
> DEBUG: Python function clean_recipe_sysroot finished
> DEBUG: Executing python function extend_recipe_sysroot
> NOTE: Direct dependencies are []
> NOTE:
> DEBUG: Python function extend_recipe_sysroot finished
> DEBUG: Executing python function do_fetch
> DEBUG: Executing python function base_do_fetch
> DEBUG: Searching for 0001-gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch in paths:
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
> DEBUG: Searching for 0002-uclibc-conf.patch in paths:
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
> DEBUG: Defaulting to
> /home/bianchi/poky/build/downloads/0002-uclibc-conf.patch for
> 0002-uclibc-conf.patch
> DEBUG: Trying PREMIRRORS
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['gitsm', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: Trying Upstream
> WARNING: Failed to fetch URL file://0002-uclibc-conf.patch, attempting
> MIRRORS if available
> DEBUG: Fetcher failure: Unable to find file file://0002-uclibc-conf.patch
> anywhere. The paths that were searched were:
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
>     /home/bianchi/poky/build/downloads
> DEBUG: Trying MIRRORS
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', OrderedDict()] to
> ['ftp', 'gcc.gnu.org', '/pub/gcc/releases/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', OrderedDict()] to
> ['ftp', 'gd.tuwien.ac.at', '/gnu/gcc/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', OrderedDict()] to
> ['http', 'mirrors.rcn.net', '/pub/sourceware/gcc/releases/', '', '',
> OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', OrderedDict()] to
> ['http', 'gcc.get-software.com', '/releases/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', OrderedDict()] to
> ['http', 'gcc.get-software.com', '/releases/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['https', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20120328T092752Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20110127T084257Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'snapshot.debian.org',
> '/archive/debian-archive/20090802T004153Z/debian/pool', '', '',
> OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'ftp.de.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'ftp.au.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'ftp.cl.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'ftp.hr.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'ftp.fi.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'ftp.hk.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'ftp.hu.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'ftp.ie.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'ftp.it.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'ftp.jp.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'ftp.no.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'ftp.pl.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'ftp.ro.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'ftp.si.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'ftp.es.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'ftp.se.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '', OrderedDict()]
> to ['http', 'ftp.tr.debian.org', '/debian/pool', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.gnu.org', '/gnu', '', '', OrderedDict()] to
> ['https', 'mirrors.kernel.org', '/gnu', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'cdn.kernel.org', '/pub', '', '', OrderedDict()] to
> ['http', 'www.kernel.org', '/pub', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()]
> to ['ftp', 'ftp.gnupg.org', '/gcrypt', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()]
> to ['ftp', 'ftp.franken.de', '/pub/crypt/mirror/ftp.gnupg.org/gcrypt', '',
> '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '', OrderedDict()]
> to ['ftp', 'mirrors.dotsrc.org', '/gcrypt', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', OrderedDict()]
> to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', OrderedDict()]
> to ['http', 'sunsite.sut.ac.jp', '/pub/archives/ctan/', '', '',
> OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '', OrderedDict()]
> to ['http', 'ctan.unsw.edu.au', '/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['ftp', 'ftp.gnutls.org', '/gcrypt/gnutls', '', '', OrderedDict()]
> to ['https', 'www.gnupg.org', '/ftp/gcrypt/gnutls', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.info-zip.org', '/pub/infozip/src/', '', '',
> OrderedDict()] to ['http', 'mirror.switch.ch', '/ftp/mirror/infozip/src/',
> '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'ftp.info-zip.org', '/pub/infozip/src/', '', '',
> OrderedDict()] to ['ftp', 'sunsite.icm.edu.pl',
> '/pub/unix/archiving/info-zip/src/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '',
> OrderedDict()] to ['ftp', 'ftp.cerias.purdue.edu',
> '/pub/tools/unix/sysutils/lsof/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '',
> OrderedDict()] to ['ftp', 'ftp.tau.ac.il', '/pub/unix/admin/', '', '',
> OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '',
> OrderedDict()] to ['ftp', 'ftp.cert.dfn.de', '/pub/tools/admin/lsof/', '',
> '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '',
> OrderedDict()] to ['ftp', 'ftp.fu-berlin.de', '/pub/unix/tools/lsof/', '',
> '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '',
> OrderedDict()] to ['ftp', 'ftp.kaizo.org', '/pub/lsof/', '', '',
> OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '',
> OrderedDict()] to ['ftp', 'ftp.tu-darmstadt.de', '/pub/sysadmin/lsof/', '',
> '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '',
> OrderedDict()] to ['ftp', 'ftp.tux.org',
> '/pub/sites/vic.cc.purdue.edu/tools/unix/lsof/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '',
> OrderedDict()] to ['ftp', 'gd.tuwien.ac.at', '/utils/admin-tools/lsof/', '',
> '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '',
> OrderedDict()] to ['ftp', 'sunsite.ualberta.ca', '/pub/Mirror/lsof/', '',
> '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '',
> OrderedDict()] to ['ftp', 'the.wiretapped.net',
> '/pub/security/host-security/lsof/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'archive.apache.org', '/dist', '', '', OrderedDict()] to
> ['http', 'www.us.apache.org', '/dist', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'archive.apache.org', '/dist', '', '', OrderedDict()] to
> ['http', 'archive.apache.org', '/dist', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'downloads.sourceforge.net', '/watchdog/', '', '',
> OrderedDict()] to ['http', 'fossies.org', '/linux/misc/', '', '',
> OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'download.savannah.gnu.org', '/releases', '', '',
> OrderedDict()] to ['http', 'download-mirror.savannah.gnu.org', '/releases',
> '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'download.savannah.nongnu.org', '/releases', '', '',
> OrderedDict()] to ['http', 'download-mirror.savannah.nongnu.org',
> '/releases', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['https?$', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['npm', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['https?$', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['npm', '.*', '/.*', '', '', OrderedDict()] to ['http',
> 'sources.openembedded.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'search.cpan.org', '/CPAN', '', '', OrderedDict()] to
> ['http', 'cpan.metacpan.org', '/', '', '', OrderedDict()]
> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', OrderedDict()]
> comparing ['http', 'search.cpan.org', '/CPAN', '', '', OrderedDict()] to
> ['http', 'search.cpan.org', '/CPAN/', '', '', OrderedDict()]
> ERROR: Fetcher failure: Unable to find file file://0002-uclibc-conf.patch
> anywhere. The paths that were searched were:
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/poky
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/beaglebone
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/armv7a
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/arm
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
>     /home/bianchi/poky/build/downloads
> ERROR: Fetcher failure for URL: 'file://0002-uclibc-conf.patch'. Unable to
> fetch URL from any source.
> DEBUG: Python function base_do_fetch finished
> DEBUG: Python function do_fetch finished
> ERROR: Function failed: base_do_fetch
>
> Regards,
>
> Riko
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

