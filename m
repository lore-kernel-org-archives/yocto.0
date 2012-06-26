Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF0B6E0070C
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 09:18:38 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 26 Jun 2012 09:18:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="160913076"
Received: from unknown (HELO helios.localnet) ([10.252.120.190])
	by azsmga001.ch.intel.com with ESMTP; 26 Jun 2012 09:18:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 26 Jun 2012 17:18:36 +0100
Message-ID: <2725324.4uKQHqG1Nb@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-25-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1206261139290.5553@oneiric>
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A1307E@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1206261139290.5553@oneiric>
MIME-Version: 1.0
Subject: Re: <rant>the current yocto FAQ is pretty much valueless</rant>
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
X-List-Received-Date: Tue, 26 Jun 2012 16:18:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 26 June 2012 11:45:50 Robert P. J. Day wrote:
>   since the ubiquitous reaction to complaining about something is
> always, "don't just whine, do something about it," i'm doing that.
> i've started a personal yocto FAQ, based on questions either i've
> asked myself, or colleagues or clients have asked me, and i'm posting
> them here (obviously a work in progress, typed in over the last hour):
> 
> http://www.crashcourse.ca/wiki/index.php/Yocto_FAQ
> 
>   i'm collecting questions that clearly belong in a "how do i do X?"
> FAQ and, even if i don't know the answer, i'm still going to add the
> question to remind me to *find* the answer.

Just looking at that page, a couple of items spring to mind:

1) Why are you pointing people to the prefile/postfile options in preference to 
just putting the "common, personal configuration" in local.conf?

2) Your IMAGE_INSTALL_append example needs a leading space in the string or it 
will almost certainly not work (or at least, it will only work when there's 
already a trailing space in the value of IMAGE_INSTALL).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

