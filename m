Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C46F3E0056E
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2014 06:46:38 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Feb 2014 06:42:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,772,1384329600"; d="scan'208";a="477185507"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.123.157])
	by orsmga002.jf.intel.com with ESMTP; 03 Feb 2014 06:46:14 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Richard Leitner - SKIDATA <Richard.Leitner@skidata.com>
Date: Mon, 03 Feb 2014 14:46:12 +0000
Message-ID: <5228382.mhMAFlqhoF@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.11.5 (Linux/3.12.8-300.fc20.x86_64; KDE/4.11.5; x86_64; ; )
In-Reply-To: <F7680723A1CA6840825A59020FA770640102E7D7@sdexmbx1srv.skidata.net>
References: <F7680723A1CA6840825A59020FA770640102E7D7@sdexmbx1srv.skidata.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: SRCREV for BBLAYERS
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
X-List-Received-Date: Mon, 03 Feb 2014 14:46:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Richard,

On Monday 03 February 2014 12:17:04 Richard Leitner - SKIDATA wrote:
> I've a question regarding the BBLAYERS variable.
> Is it possible to set some kind of a SRCREV (=> git tag/branch/commit-id)
> for a path listed in BBLAYERS?
> 
> I came to this question because I've two different branches in my meta
> layer: one for development and one for 'stable' releases. Therefore I have
> also two different build dirs and want to 'pin' the branches/tags to the
> build dir (preferable via the bblayers.conf). I think this should be
> possible because at the start of a build the revs are displayed like:
> meta-yocto = "[branch]:[commit-id]" The problem is that I wasn't able to
> find any answers or solutions on the web so I ask you now for help.

The build system doesn't actually manage checking out/updating layers for you, 
it only reports the revision if there is one, so this functionality isn't 
supported. Probably the easiest way to handle this would be to keep two 
separate checkouts.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

