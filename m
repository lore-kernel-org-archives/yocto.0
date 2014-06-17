Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E1BAE00C02; Tue, 17 Jun 2014 05:01:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 809ABE00BDE
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 05:01:13 -0700 (PDT)
Received: from [69.196.158.250] (port=47291 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Wws4d-0001Fc-Ox
	for yocto@yoctoproject.org; Tue, 17 Jun 2014 08:01:11 -0400
Date: Tue, 17 Jun 2014 07:57:37 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1406170746340.30240@localhost>
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
Subject: [OT?] some inconsistencies in listing required build software
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
X-List-Received-Date: Tue, 17 Jun 2014 12:01:29 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  not sure if this is the right list (oe/poky/yocto?), but since it
involves yocto docs, i'll ask here.

  there seem to be some (admittedly minor) inconsistencies in both the
docs and code for checking the sanity of a build environment (i'm
basing this off the current yocto docs and the current poky master
branch).

  first, over at the QS guide:

http://www.yoctoproject.org/docs/latest/yocto-project-qs/yocto-project-qs.html

there are, of course, the list of required packages for the common
distros, and these lists refer to *packages* to be installed. this is
fine, but the wording suggests that the developer is responsible for
manually installing them, without mentioning that yocto itself will
help them out later with the sanity checking. i think that's useful to
know, but there's more.

  over in meta/conf/bitbake.conf, there is what i assume is the
default list of ASSUME_PROVIDED commands:

ASSUME_PROVIDED = "\
    bzip2-native \
    chrpath-native \
    git-native \
    grep-native \
    diffstat-native \
    patch-native \
    perl-native-runtime \
    python-native-runtime \
    tar-native \
    virtual/libintl-native \
    texinfo-native\
    "
# gzip-native should be listed above?

  so the first question is, given that the QS guide suggests gzip is a
*required* package (see fedora and centos package lists), why *isn't*
gzip part of ASSUME_PROVIDED above? it seems that the QS packages list
and the above should match, no?

  finally, over in meta/classes/sanity.bbclass, there's:

#
# Sanity check the users setup for common misconfigurations
#

SANITY_REQUIRED_UTILITIES ?= "patch diffstat makeinfo git bzip2 tar \
    gzip gawk chrpath wget cpio perl"

  silly question -- is this list supposed to represent the utilities
that must be on the machine *before* any OE processing is done?
because, again , there seems to be an inconsistency in that this seems
to require gzip, while ASSUME_PROVIDED doesn't mention it. it also
doesn't mention unzip, which the QS packages lists refer to as
required.

  none of this is a big deal, of course, but it would be nice if it
were consistent.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

