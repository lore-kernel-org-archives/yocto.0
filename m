Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6EEDE00CC9; Mon, 14 Aug 2017 21:42:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (antonius.riko[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.54 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f54.google.com (mail-pg0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6B8FE00B49
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 21:42:07 -0700 (PDT)
Received: by mail-pg0-f54.google.com with SMTP id l64so60141144pge.5
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 21:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=Iwc/7fUQ9npNjwN9ZuHOvTJZfWIK+/M5DQXO8R53hSA=;
	b=LEe+By++XXHBYpY+Qan1MlXhl56HwEqneBrMNKJKfHUgFTze8W2kirLQN1iAaf1CbZ
	DZsakCxGxatVpRDMdd1tpnEeT9Uhx5X32tNjqK2tM1hGcLoAU4c/yTgd4qz/PSsIrFzS
	ihTpfZ8i3nGOwyq0ikisMwTrG2Enh9uah2NT9LuKwEax6KTUSnG44tTlD+c/R8nN7kWb
	e6GfZFs6mcdisa8uh4i4vCVXbVNLrlIq/hvEYRG9PudEZmxycKyfpQoej0Q39/xjceT2
	x9fHtvVpL7OQcvA1j2pXXGg+BTD6fhTq+cXkY3VvcHuuR3E8eEHgWhYXBNOqHGhasvos
	2JnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=Iwc/7fUQ9npNjwN9ZuHOvTJZfWIK+/M5DQXO8R53hSA=;
	b=h7ttEklVFvBPCAhxzXFyw9NWb13RkzdeVLydQJtVIrGAypfOyW8VYjpE264k4lT5Lg
	eO2DhBV/RwjH7QZc4Qw/dx5BY+RpBi+pq1SAtOjEhu/VpYxDkTODkEgrXkqL+09S/8eb
	e8UHnaxG56vLMv63EMpBHjeLTTxaevcKIf2tRKwZ8/nP73kj4ugyEcAVIVBpXSmjD42X
	cdmiF1njW4mXwuPiqHgvxcFdz09OgJ0m+cDLTM9/NqwcQVb1V0Tj9O1s3MbqTE3G3qTW
	MirPD7cUKvYxDnfcso9zK3lnsQlcGVRcEk6z81blCBwRlRJ5R14X7o/A05gzs2QUTNwM
	JIXg==
X-Gm-Message-State: AHYfb5g7A+dBhorTzoCSexjJyqSuPknsWJmnLTz7NslftVm+fvyAPdsV
	4bKoOXghEupE+TKwr9k=
X-Received: by 10.99.107.193 with SMTP id g184mr25686926pgc.167.1502772126287; 
	Mon, 14 Aug 2017 21:42:06 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:7ae4:ff:fe2d:ca29?
	([2001:8003:804a:b500:7ae4:ff:fe2d:ca29])
	by smtp.gmail.com with ESMTPSA id
	l22sm17108613pfj.138.2017.08.14.21.42.04 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Aug 2017 21:42:05 -0700 (PDT)
To: "N:" <yocto@yoctoproject.org>
From: Riko <antonius.riko@gmail.com>
Message-ID: <0649cefe-8c90-7268-f363-10ea09f6cd74@gmail.com>
Date: Tue, 15 Aug 2017 12:42:01 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
Subject: ERROR: gcc-source-6.3.0-6.3.0-r0 do_fetch: Fetcher failure for URL: 'file://0002-uclibc-conf.patch'. Unable to fetch URL from any source.
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
X-List-Received-Date: Tue, 15 Aug 2017 04:42:10 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Dear Team Yocto Member,

How can I get gcc6.30 ?

I got error :

ERROR: gcc-source-6.3.0-6.3.0-r0 do_fetch: Fetcher failure for URL: 
'file://0002-uclibc-conf.patch'. Unable to fetch URL from any source.

Here's the log :

=======

DEBUG: Executing python function clean_recipe_sysroot
DEBUG: Python function clean_recipe_sysroot finished
DEBUG: Executing python function extend_recipe_sysroot
NOTE: Direct dependencies are []
NOTE:
DEBUG: Python function extend_recipe_sysroot finished
DEBUG: Executing python function do_fetch
DEBUG: Executing python function base_do_fetch
DEBUG: Searching for 0001-gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch in paths:
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
DEBUG: Searching for 0002-uclibc-conf.patch in paths:
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
DEBUG: Defaulting to 
/home/bianchi/poky/build/downloads/0002-uclibc-conf.patch for 
0002-uclibc-conf.patch
DEBUG: Trying PREMIRRORS
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['gitsm', '.*', '/.*', '', '', OrderedDict()] 
to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: Trying Upstream
WARNING: Failed to fetch URL file://0002-uclibc-conf.patch, attempting 
MIRRORS if available
DEBUG: Fetcher failure: Unable to find file 
file://0002-uclibc-conf.patch anywhere. The paths that were searched were:
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
     /home/bianchi/poky/build/downloads
DEBUG: Trying MIRRORS
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', 
OrderedDict()] to ['ftp', 'gcc.gnu.org', '/pub/gcc/releases/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', 
OrderedDict()] to ['ftp', 'gd.tuwien.ac.at', '/gnu/gcc/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', 
OrderedDict()] to ['http', 'mirrors.rcn.net', 
'/pub/sourceware/gcc/releases/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', 
OrderedDict()] to ['http', 'gcc.get-software.com', '/releases/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.gnu.org', '/gnu/gcc', '', '', 
OrderedDict()] to ['http', 'gcc.get-software.com', '/releases/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['https', '.*', '/.*', '', '', OrderedDict()] 
to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'snapshot.debian.org', 
'/archive/debian-archive/20120328T092752Z/debian/pool', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'snapshot.debian.org', 
'/archive/debian-archive/20110127T084257Z/debian/pool', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'snapshot.debian.org', 
'/archive/debian-archive/20090802T004153Z/debian/pool', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'ftp.de.debian.org', '/debian/pool', '', 
'', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'ftp.au.debian.org', '/debian/pool', '', 
'', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'ftp.cl.debian.org', '/debian/pool', '', 
'', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'ftp.hr.debian.org', '/debian/pool', '', 
'', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'ftp.fi.debian.org', '/debian/pool', '', 
'', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'ftp.hk.debian.org', '/debian/pool', '', 
'', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'ftp.hu.debian.org', '/debian/pool', '', 
'', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'ftp.ie.debian.org', '/debian/pool', '', 
'', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'ftp.it.debian.org', '/debian/pool', '', 
'', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'ftp.jp.debian.org', '/debian/pool', '', 
'', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'ftp.no.debian.org', '/debian/pool', '', 
'', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'ftp.pl.debian.org', '/debian/pool', '', 
'', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'ftp.ro.debian.org', '/debian/pool', '', 
'', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'ftp.si.debian.org', '/debian/pool', '', 
'', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'ftp.es.debian.org', '/debian/pool', '', 
'', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'ftp.se.debian.org', '/debian/pool', '', 
'', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.debian.org', '/debian/pool', '', 
'', OrderedDict()] to ['http', 'ftp.tr.debian.org', '/debian/pool', '', 
'', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.gnu.org', '/gnu', '', '', 
OrderedDict()] to ['https', 'mirrors.kernel.org', '/gnu', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'cdn.kernel.org', '/pub', '', '', 
OrderedDict()] to ['http', 'www.kernel.org', '/pub', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', 
'', OrderedDict()] to ['ftp', 'ftp.gnupg.org', '/gcrypt', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', 
'', OrderedDict()] to ['ftp', 'ftp.franken.de', 
'/pub/crypt/mirror/ftp.gnupg.org/gcrypt', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['https', 'www.gnupg.org', '/ftp/gcrypt', '', 
'', OrderedDict()] to ['ftp', 'mirrors.dotsrc.org', '/gcrypt', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', 
'', OrderedDict()] to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', 
'', OrderedDict()] to ['http', 'sunsite.sut.ac.jp', 
'/pub/archives/ctan/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', 
'', OrderedDict()] to ['http', 'ctan.unsw.edu.au', '/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['ftp', 'ftp.gnutls.org', '/gcrypt/gnutls', '', 
'', OrderedDict()] to ['https', 'www.gnupg.org', '/ftp/gcrypt/gnutls', 
'', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.info-zip.org', 
'/pub/infozip/src/', '', '', OrderedDict()] to ['http', 
'mirror.switch.ch', '/ftp/mirror/infozip/src/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'ftp.info-zip.org', 
'/pub/infozip/src/', '', '', OrderedDict()] to ['ftp', 
'sunsite.icm.edu.pl', '/pub/unix/archiving/info-zip/src/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', OrderedDict()] to ['ftp', 
'ftp.cerias.purdue.edu', '/pub/tools/unix/sysutils/lsof/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', OrderedDict()] to ['ftp', 
'ftp.tau.ac.il', '/pub/unix/admin/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', OrderedDict()] to ['ftp', 
'ftp.cert.dfn.de', '/pub/tools/admin/lsof/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', OrderedDict()] to ['ftp', 
'ftp.fu-berlin.de', '/pub/unix/tools/lsof/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', OrderedDict()] to ['ftp', 
'ftp.kaizo.org', '/pub/lsof/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', OrderedDict()] to ['ftp', 
'ftp.tu-darmstadt.de', '/pub/sysadmin/lsof/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', OrderedDict()] to ['ftp', 
'ftp.tux.org', '/pub/sites/vic.cc.purdue.edu/tools/unix/lsof/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', OrderedDict()] to ['ftp', 
'gd.tuwien.ac.at', '/utils/admin-tools/lsof/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', OrderedDict()] to ['ftp', 
'sunsite.ualberta.ca', '/pub/Mirror/lsof/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', OrderedDict()] to ['ftp', 
'the.wiretapped.net', '/pub/security/host-security/lsof/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'archive.apache.org', '/dist', '', '', 
OrderedDict()] to ['http', 'www.us.apache.org', '/dist', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'archive.apache.org', '/dist', '', '', 
OrderedDict()] to ['http', 'archive.apache.org', '/dist', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'downloads.sourceforge.net', 
'/watchdog/', '', '', OrderedDict()] to ['http', 'fossies.org', 
'/linux/misc/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'download.savannah.gnu.org', 
'/releases', '', '', OrderedDict()] to ['http', 
'download-mirror.savannah.gnu.org', '/releases', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'download.savannah.nongnu.org', 
'/releases', '', '', OrderedDict()] to ['http', 
'download-mirror.savannah.nongnu.org', '/releases', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['https?$', '.*', '/.*', '', '', OrderedDict()] 
to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['npm', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', 
OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['cvs', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['svn', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['git', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['hg', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['bzr', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['p4', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['osc', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['https?$', '.*', '/.*', '', '', OrderedDict()] 
to ['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['ftp', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['npm', '.*', '/.*', '', '', OrderedDict()] to 
['http', 'sources.openembedded.org', '/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'search.cpan.org', '/CPAN', '', '', 
OrderedDict()] to ['http', 'cpan.metacpan.org', '/', '', '', OrderedDict()]
DEBUG: For url ['file', '', '0002-uclibc-conf.patch', '', '', 
OrderedDict()] comparing ['http', 'search.cpan.org', '/CPAN', '', '', 
OrderedDict()] to ['http', 'search.cpan.org', '/CPAN/', '', '', 
OrderedDict()]
ERROR: Fetcher failure: Unable to find file 
file://0002-uclibc-conf.patch anywhere. The paths that were searched were:
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/poky
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/beaglebone
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/armv7a
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/arm
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3/backport/
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc-6.3.0/
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/gcc/
/home/bianchi/poky/openembedded-core/meta/recipes-devtools/gcc/files/
     /home/bianchi/poky/build/downloads
ERROR: Fetcher failure for URL: 'file://0002-uclibc-conf.patch'. Unable 
to fetch URL from any source.
DEBUG: Python function base_do_fetch finished
DEBUG: Python function do_fetch finished
ERROR: Function failed: base_do_fetch

Regards,

Riko


