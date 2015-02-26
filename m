Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0F0AE006E9; Thu, 26 Feb 2015 01:20:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C148E003AB
	for <yocto@yoctoproject.org>; Thu, 26 Feb 2015 01:20:39 -0800 (PST)
Received: from [99.240.204.5] (port=35763 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YQucW-0007qs-1b; Thu, 26 Feb 2015 04:20:36 -0500
Date: Thu, 26 Feb 2015 04:20:36 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Joe MacDonald <Joe_MacDonald@mentor.com>
In-Reply-To: <alpine.LFD.2.11.1502260402300.27160@localhost>
Message-ID: <alpine.LFD.2.11.1502260414430.27706@localhost>
References: <alpine.LFD.2.11.1502250351310.26693@localhost>
	<20150225134406.GH8949@mentor.com>
	<alpine.LFD.2.11.1502260402300.27160@localhost>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: kernel manual: confusing coverage of FILESEXTRAPATHS_prepend
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
X-List-Received-Date: Thu, 26 Feb 2015 09:20:42 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 26 Feb 2015, Robert P. J. Day wrote:

  ... snip ...

>   sort of related to this, but in a *regular* recipe (not a bbappend),
> the default FILESPATH is set in base.bbclass:
>
> FILESPATH = "${@base_set_filespath(["${FILE_DIRNAME}/${BP}",
> "${FILE_DIRNAME}/${BPN}", "${FILE_DIRNAME}/files"], d)}"
>
> so that, by default, a regular recipe will look for SRC_URI entries in
> *all* of:
>
> 1) ${BP}/
> 2) ${BPN}/
> 3) "files/"
>
> it's not clear which is the preferred standard (not sure there even
> *is* a preferred standard), but in cases where more than one of the
> above exists, all of the relevant directories will be searched, but
> it's not clear why some recipes insist on breaking up the files over
> more than one directory.
>
>   in the case of subversion, i can see the logic:
>
> subversion/
> subversion_1.6.15.bb
> subversion-1.8.11/
> subversion_1.8.11.bb
>
> so that the generic "subversion/" directory will apply to *all*
> subversion recipes, but there is also the version-specific
> "subversion-1.8.11/", so that's fine.
>
>   busybox, though:
>
> busybox/
> busybox_1.23.1.bb
> busybox_git.bb
> busybox.inc
> files/
>
> won't both directories busybox/ and files/ always be consulted for
> SRC_URI entries, regardless of the version of busybox? so what is the
> rationale for breaking those files over two directories?
>
>   and i'm curious ... is there any recipe that contains all *three*
> types of SRC_URI subdirectories?

  just to follow up on this, as a demo of how to add a directory of
SRC_URI files to a basic recipe, i want to show a variety of
possibilities, from simple to complex.

  in the simplest case, there will be a single directory, which will
be named one of BP, BPN, or "files", all of which are equally valid --
lots of examples of this.

  slightly more complex -- a multi-version recipe directory with each
recipe version having its own version-specific directory, like
coreutils:

coreutils-6.9/
coreutils_6.9.bb
coreutils-8.23/
coreutils_8.23.bb

  more complicated -- recipes with *both* version-specific and generic
directories like, say, readline:

files/
readline-5.2/
readline_5.2.bb
readline-6.3/
readline_6.3.bb
readline.inc

etc, etc. when this is explained in the appropriate YP manual, is it
clear the variety you can have?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

