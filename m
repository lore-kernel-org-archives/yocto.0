Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A61FE00546; Thu, 26 Feb 2015 02:17:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC281E002F9
	for <yocto@yoctoproject.org>; Thu, 26 Feb 2015 02:17:45 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 26 Feb 2015 02:17:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,651,1418112000"; d="scan'208";a="691033938"
Received: from jwatso2-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.2.13])
	by orsmga002.jf.intel.com with ESMTP; 26 Feb 2015 02:17:41 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Thu, 26 Feb 2015 10:17:20 +0000
Message-ID: <3318322.uVudHOlJ9O@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.7-100.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <alpine.LFD.2.11.1502260402300.27160@localhost>
References: <alpine.LFD.2.11.1502250351310.26693@localhost>
	<20150225134406.GH8949@mentor.com>
	<alpine.LFD.2.11.1502260402300.27160@localhost>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 26 Feb 2015 10:17:53 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 26 February 2015 04:12:33 Robert P. J. Day wrote:
> On Wed, 25 Feb 2015, Joe MacDonald wrote:
> > [[yocto] kernel manual: confusing coverage of FILESEXTRAPATHS_prepend] On 
15.02.25 (Wed 03:54) Robert P. J. Day wrote:
> > >   minor quibble about kernel dev manual -- section 2.2.1, "creating
> > > 
> > > the append file", uses the example of:
> > >  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> > > 
> > > while section 2.2.3 uses:
> > >  FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> > > 
> > > both sections kind of implying that that's the way to do it, without
> > > making it clear that *either* way works as long as the variable
> > > prepend matches up with the directory name.
> > > 
> > >   both ways are correct, of course, but the wording is a bit
> > > 
> > > confusing.
> > 
> > It's probably worth changing the latter reference to match the
> > former. Both work but with any new recipes (at least in the layers I
> > maintain) the preference is to use the former for clarity as well as
> > faster lookups.
> 
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

Our policy in OE-Core (and the layers under meta-openembedded) is to move away 
from files/ to ${BPN} for a bit of consistency - if you use ${BPN} it then 
doesn't matter if you have more than one recipe in a directory, the files for 
each recipe are still kept separate instead of a files/ directory with a 
mixture of files for different recipes. ${BP} would only be used for patches 
that are specific to a version where multiple versioned recipes are being 
provided, leading to multiple versions of the same files needing to be present.

We have been doing the "conversion" on a piecemeal basis on recipe upgrade 
however so that's why you will see files/ still in various places. To avoid 
undue churn I don't think it would be worth doing a mass rename, and it's also 
unlikely that we will be taking away the ability to use files/ by default, so 
other layers are free to do as they wish.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

