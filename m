Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB1E0E003D6
	for <yocto@yoctoproject.org>; Sat, 20 Oct 2012 05:26:24 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Oct 2012 05:26:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,621,1344236400"; d="scan'208";a="236299319"
Received: from unknown (HELO helios.localnet) ([10.252.122.100])
	by fmsmga001.fm.intel.com with ESMTP; 20 Oct 2012 05:16:15 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Saul Wold <sgw@linux.intel.com>
Date: Sat, 20 Oct 2012 13:16:14 +0100
Message-ID: <1377035.Z5LEapOdJV@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-32-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <50819565.5090604@linux.intel.com>
References: <508164D0.1020408@r-finger.com> <50819565.5090604@linux.intel.com>
MIME-Version: 1.0
Cc: Tomas Frydrych <tf@r-finger.com>, yocto@yoctoproject.org
Subject: Re: why was meta-dlna submodule history stripped out?
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
X-List-Received-Date: Sat, 20 Oct 2012 12:26:24 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 19 October 2012 11:01:09 Saul Wold wrote:
> On 10/19/2012 07:33 AM, Tomas Frydrych wrote:
> > (I am delighted Intel is finding Guacamayo useful, but the obliteration
> > of the history makes it look as if the credit for this official Yocto
> > layer goes to Intel; I am sure that was not intentional.)
> 
> No this was not intentional, the combo-layer tool seems to do that. I
> used combo layer because we wanted to pull in the kvm changes so that
> this could be shown as a VM.

This is the default behaviour of combo-layer, on the assumption that most 
people don't want all the history from the very beginning. It is not clearly 
documented but there is a simple procedure you can follow to set up the combo 
repo if you do want complete history:

1) Instead of combo-layer init, run git init

2) Create conf/combo-layer.conf based on the template configuration 
(scripts/combo-layer.conf.example) ensuring last_revision is blank for all 
components

3) git add conf/combo-layer.conf, then git commit

4) Run combo-layer update

> > I am also interested in knowing why the fork was deemed necessary in the
> > first place, just in case it was for technical reasons that could be
> > addressed at source.
> 
> In the first pass, there were mostly minor changes to cut this down to
> what was needed for the headless media server. As I moved to 1.3 there
> were more changes that I have made, you can see what's going on in the
> 1.3wip branch of meta-dlna. If you want some of those changes in
> meta-guacamayo please take them.

In the same way we manage the poky repository, at least as far as the master 
branch is concerned I think we should be sending the fixes back upstream first 
and then using the combo-layer tool to pull them back down when they are 
merged.

Long term however I'd rather see the additional unique recipes in meta-
guacamayo itself go into more official OE community layers. meta-dlna would 
continue to take them from there using combo-layer though I suspect. (This is 
the plan I have for meta-baryon.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

