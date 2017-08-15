Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB2D5E00C9E; Tue, 15 Aug 2017 08:49:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D62DAE00B01
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 08:49:14 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id u185so2061607pgb.0
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 08:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=nzws9iHn+CxtwB7gQwqf0H2EECeyTgX2yWMKGsoPylc=;
	b=mDzb6XhGNMwlK6c0KyVwZKSsQz/cBaL0b5cCcoPXky2OaL+Rr/Py2lkb3qgYCGx0rM
	gmeUIzhxVx0OrGkxKSW8GiwwlDiiF0uX7vd7e6qknV7BOtA6LdSi9wVO/4SwxD5U3TNa
	o7T9yAo20CCc1uD35448u6VwtDtPCB3LxBeysYRijVUPrf0R0aaqW6oA6j52UHtCRaIQ
	NQ8MSHe9NW7sNMA7BKgHySeju66uhKgAEGVmj5MqcA5IdNLXf1XFLJGJ/i3gKULOOFhp
	bTmWTJUylv8mmaKFz0Nlp2IE3ihFpz0e/huuq3JAcvY2U/HdNq+++YQSxHuK6oG7Q6WY
	+yrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=nzws9iHn+CxtwB7gQwqf0H2EECeyTgX2yWMKGsoPylc=;
	b=X7iaBqCbA6VZWAeerZfJ13KinRRJAo963j7oaNoIlnR8f5rLU9s0N7oDJgDNr2fyUz
	d3EqH37UcB8jpUQ4+eWk8R6ehYmr0pYuh9pEkMWLLNIHbynup5UB61TfAtrlCsUK4hM2
	MNBMmPKmORUy7CY6DVtwPM2LtcLtNNMU7DTGeNmJ1+H6PTkibmDaSTufe9Vuy7r+aO4r
	ZXR6pHwp8iFbDqtjibPjcaj88JakOfsDH225KutJeHKZFec1NY8iaeO7CVIzTX+xHSQq
	lmsXiI3ahEHn/IMUeEwt6lziBwVe4XrpO2gwjITZpVlcYffvSYFTcfQLNwD8BjdcMLvq
	9WhQ==
X-Gm-Message-State: AHYfb5gBj5pGNPYRrZoZVqe8icmxmpamN8Ik6mE7N89A6C4cr6QYcj5I
	yC2/AETw//AMbENc72A=
X-Received: by 10.99.110.9 with SMTP id j9mr27095755pgc.236.1502812153347;
	Tue, 15 Aug 2017 08:49:13 -0700 (PDT)
Received: from Khems-MacBook-Pro.local
	([2601:646:8882:b8c:941a:4883:1e44:34f1])
	by smtp.gmail.com with ESMTPSA id
	s123sm16988983pfb.170.2017.08.15.08.49.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Aug 2017 08:49:12 -0700 (PDT)
To: Riko <antonius.riko@gmail.com>
References: <0649cefe-8c90-7268-f363-10ea09f6cd74@gmail.com>
	<CAMKF1srETgqU+m-X99t7ZXAFLTezSX0cbfxVKs7K7Fr8UVBLwA@mail.gmail.com>
	<255b8a2d-8036-76cf-327b-a3128b83ba51@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <136a41eb-bf9a-cfb9-a075-7c82d6670fb9@gmail.com>
Date: Tue, 15 Aug 2017 08:49:10 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:56.0)
	Gecko/20100101 Thunderbird/56.0
MIME-Version: 1.0
In-Reply-To: <255b8a2d-8036-76cf-327b-a3128b83ba51@gmail.com>
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
X-List-Received-Date: Tue, 15 Aug 2017 15:49:20 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit


Thanks for sharing your build configuration. It says you are on
pyro release and I see this patch is there. So something else is
triggering it. Do you have any local changes ?

On 8/14/17 10:35 PM, Riko wrote:
> Do you mean this one ?
> 
> Build Configuration:
> BB_VERSION        = "1.34.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "beaglebone"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.3.1"
> TUNE_FEATURES     = "arm armv7a vfp neon callconvention-hard cortexa8"
> TARGET_FPU        = "hard"
> meta
> meta-poky
> meta-yocto-bsp    = "pyro:4a39979c8d1e560fa54240e99734a651dfbaa63a"
> meta              = "master:5a25ed1071f0d9b7d95edcc2b5b4545f960d5f95"
> meta-oe
> meta-xfce
> meta-gnome
> meta-python
> meta-multimedia
> meta-networking   = "master:a8b54e300be027fefe8a774ca1861d0fb8e80d99"
> meta-browser      = "master:e3c3aa0591506672245904227a46519a276957e0"
> 
> 
> On 15/08/17 13:30, Khem Raj wrote:
>> On Mon, Aug 14, 2017 at 9:42 PM, Riko <antonius.riko@gmail.com> wrote:
>>> Dear Team Yocto Member,
>>>
>>> How can I get gcc6.30 ?
>>>
>>> I got error :
>>>
>>> ERROR: gcc-source-6.3.0-6.3.0-r0 do_fetch: Fetcher failure for URL:
>>> 'file://0002-uclibc-conf.patch'. Unable to fetch URL from any source.
>>>
>> what branch are you using and if you are using additonal layers which
>> ones
>> are those and what branches are they on.
>>
>>> Here's the log :
>>>
>>> =======
>>>
>>> DEBUG: Executing python function clean_recipe_sysroot
>>> DEBUG: Python function clean_recipe_sysroot finished
>>> DEBUG: Executing python function extend_recipe_sysroot
>>> NOTE: Direct dependencies are []
>>> NOTE:
>>> DEBUG: Python function extend_recipe_sysroot finished
>>> DEBUG: Executing python function do_fetch
>>> DEBUG: Executing python function base_do_fetch
>>> DEBUG: Searching for 0001-gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch in
>>> paths:
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/poky
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/poky
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/poky
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/poky
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/poky
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/arm
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/arm
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/arm
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/arm
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/arm
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
>>> DEBUG: Searching for 0002-uclibc-conf.patch in paths:
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/poky
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/poky
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/poky
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/poky
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/poky
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/arm
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/arm
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/arm
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/arm
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/arm
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
>>> DEBUG: Defaulting to
>>> /home/bianchi/poky/build/downloads/0002-uclibc-conf.patch for
>>> 0002-uclibc-conf.patch
>>> DEBUG: Trying PREMIRRORS
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['gitsm', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: Trying Upstream
>>> WARNING: Failed to fetch URL file://0002-uclibc-conf.patch, attempting
>>> MIRRORS if available
>>> DEBUG: Fetcher failure: Unable to find file
>>> file://0002-uclibc-conf.patch
>>> anywhere. The paths that were searched were:
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/poky
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/poky
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/poky
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/poky
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/poky
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/arm
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/arm
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/arm
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/arm
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/arm
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
>>>      /home/bianchi/poky/build/downloads
>>> DEBUG: Trying MIRRORS
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', OrderedDict()] to
>>> ['ftp', 'gcc.gnu.org', '/pub/gcc/releases/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', OrderedDict()] to
>>> ['ftp', 'gd.tuwien.ac.at', '/gnu/gcc/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', OrderedDict()] to
>>> ['http', 'mirrors.rcn.net', '/pub/sourceware/gcc/releases/', '', '',
>>> OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', OrderedDict()] to
>>> ['http', 'gcc.get-software.com', '/releases/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', OrderedDict()] to
>>> ['http', 'gcc.get-software.com', '/releases/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['https', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'snapshot.debian.org',
>>> '/archive/debian-archive/20120328T092752Z/debian/pool', '', '',
>>> OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'snapshot.debian.org',
>>> '/archive/debian-archive/20110127T084257Z/debian/pool', '', '',
>>> OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'snapshot.debian.org',
>>> '/archive/debian-archive/20090802T004153Z/debian/pool', '', '',
>>> OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'ftp.de.debian.org', '/debian/pool', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'ftp.au.debian.org', '/debian/pool', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'ftp.cl.debian.org', '/debian/pool', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'ftp.hr.debian.org', '/debian/pool', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'ftp.fi.debian.org', '/debian/pool', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'ftp.hk.debian.org', '/debian/pool', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'ftp.hu.debian.org', '/debian/pool', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'ftp.ie.debian.org', '/debian/pool', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'ftp.it.debian.org', '/debian/pool', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'ftp.jp.debian.org', '/debian/pool', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'ftp.no.debian.org', '/debian/pool', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'ftp.pl.debian.org', '/debian/pool', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'ftp.ro.debian.org', '/debian/pool', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'ftp.si.debian.org', '/debian/pool', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'ftp.es.debian.org', '/debian/pool', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'ftp.se.debian.org', '/debian/pool', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.debian.org', '/debian/pool', '', '',
>>> OrderedDict()]
>>> to ['http', 'ftp.tr.debian.org', '/debian/pool', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.gnu.org', '/gnu', '', '', OrderedDict()] to
>>> ['https', 'mirrors.kernel.org', '/gnu', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'cdn.kernel.org', '/pub', '', '', OrderedDict()] to
>>> ['http', 'www.kernel.org', '/pub', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '',
>>> OrderedDict()]
>>> to ['ftp', 'ftp.gnupg.org', '/gcrypt', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '',
>>> OrderedDict()]
>>> to ['ftp', 'ftp.franken.de',
>>> '/pub/crypt/mirror/ftp.gnupg.org/gcrypt', '',
>>> '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', '',
>>> OrderedDict()]
>>> to ['ftp', 'mirrors.dotsrc.org', '/gcrypt', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '',
>>> OrderedDict()]
>>> to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '',
>>> OrderedDict()]
>>> to ['http', 'sunsite.sut.ac.jp', '/pub/archives/ctan/', '', '',
>>> OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', '',
>>> OrderedDict()]
>>> to ['http', 'ctan.unsw.edu.au', '/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['ftp', 'ftp.gnutls.org', '/gcrypt/gnutls', '', '',
>>> OrderedDict()]
>>> to ['https', 'www.gnupg.org', '/ftp/gcrypt/gnutls', '', '',
>>> OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.info-zip.org', '/pub/infozip/src/', '', '',
>>> OrderedDict()] to ['http', 'mirror.switch.ch',
>>> '/ftp/mirror/infozip/src/',
>>> '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'ftp.info-zip.org', '/pub/infozip/src/', '', '',
>>> OrderedDict()] to ['ftp', 'sunsite.icm.edu.pl',
>>> '/pub/unix/archiving/info-zip/src/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
>>> '', '',
>>> OrderedDict()] to ['ftp', 'ftp.cerias.purdue.edu',
>>> '/pub/tools/unix/sysutils/lsof/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
>>> '', '',
>>> OrderedDict()] to ['ftp', 'ftp.tau.ac.il', '/pub/unix/admin/', '', '',
>>> OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
>>> '', '',
>>> OrderedDict()] to ['ftp', 'ftp.cert.dfn.de',
>>> '/pub/tools/admin/lsof/', '',
>>> '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
>>> '', '',
>>> OrderedDict()] to ['ftp', 'ftp.fu-berlin.de',
>>> '/pub/unix/tools/lsof/', '',
>>> '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
>>> '', '',
>>> OrderedDict()] to ['ftp', 'ftp.kaizo.org', '/pub/lsof/', '', '',
>>> OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
>>> '', '',
>>> OrderedDict()] to ['ftp', 'ftp.tu-darmstadt.de',
>>> '/pub/sysadmin/lsof/', '',
>>> '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
>>> '', '',
>>> OrderedDict()] to ['ftp', 'ftp.tux.org',
>>> '/pub/sites/vic.cc.purdue.edu/tools/unix/lsof/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
>>> '', '',
>>> OrderedDict()] to ['ftp', 'gd.tuwien.ac.at',
>>> '/utils/admin-tools/lsof/', '',
>>> '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
>>> '', '',
>>> OrderedDict()] to ['ftp', 'sunsite.ualberta.ca', '/pub/Mirror/lsof/',
>>> '',
>>> '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['ftp', 'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/',
>>> '', '',
>>> OrderedDict()] to ['ftp', 'the.wiretapped.net',
>>> '/pub/security/host-security/lsof/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'archive.apache.org', '/dist', '', '',
>>> OrderedDict()] to
>>> ['http', 'www.us.apache.org', '/dist', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'archive.apache.org', '/dist', '', '',
>>> OrderedDict()] to
>>> ['http', 'archive.apache.org', '/dist', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'downloads.sourceforge.net', '/watchdog/', '', '',
>>> OrderedDict()] to ['http', 'fossies.org', '/linux/misc/', '', '',
>>> OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'download.savannah.gnu.org', '/releases', '', '',
>>> OrderedDict()] to ['http', 'download-mirror.savannah.gnu.org',
>>> '/releases',
>>> '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'download.savannah.nongnu.org', '/releases', '', '',
>>> OrderedDict()] to ['http', 'download-mirror.savannah.nongnu.org',
>>> '/releases', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['https?$', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['npm', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['git', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['https?$', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['npm', '.*', '/.*', '', '', OrderedDict()] to ['http',
>>> 'sources.openembedded.org', '/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'search.cpan.org', '/CPAN', '', '', OrderedDict()] to
>>> ['http', 'cpan.metacpan.org', '/', '', '', OrderedDict()]
>>> DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '',
>>> OrderedDict()]
>>> comparing ['http', 'search.cpan.org', '/CPAN', '', '', OrderedDict()] to
>>> ['http', 'search.cpan.org', '/CPAN/', '', '', OrderedDict()]
>>> ERROR: Fetcher failure: Unable to find file
>>> file://0002-uclibc-conf.patch
>>> anywhere. The paths that were searched were:
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/poky
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/poky
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/poky
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/poky
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/poky
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/beaglebone
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/armv7a
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/arm
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/arm
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/arm
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/arm
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/arm
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/
>>>
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
>>> /home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
>>>      /home/bianchi/poky/build/downloads
>>> ERROR: Fetcher failure for URL: 'file://0002-uclibc-conf.patch'.
>>> Unable to
>>> fetch URL from any source.
>>> DEBUG: Python function base_do_fetch finished
>>> DEBUG: Python function do_fetch finished
>>> ERROR: Function failed: base_do_fetch
>>>
>>> Regards,
>>>
>>> Riko
>>>
>>> -- 
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
> 

