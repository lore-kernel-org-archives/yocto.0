Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC0B9E006B4
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 11:54:28 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 Nov 2011 11:54:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,445,1315206000"; d="scan'208";a="85357475"
Received: from unknown (HELO [10.255.15.209]) ([10.255.15.209])
	by fmsmga002.fm.intel.com with ESMTP; 02 Nov 2011 11:54:27 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
In-Reply-To: <CAPhnLPBvBGVZS==k7NkEPRuT43VrF5mjP_wHu+n9uXoZnp12HQ@mail.gmail.com>
References: <1320251874.32216.4.camel@elmorro>
	<CAPhnLPBvBGVZS==k7NkEPRuT43VrF5mjP_wHu+n9uXoZnp12HQ@mail.gmail.com>
Date: Wed, 02 Nov 2011 13:54:40 -0500
Message-ID: <1320260080.32216.15.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>, "Lock,
	Joshua" <joshua.lock@intel.com>
Subject: Re: meta-intel candidate branch for 1.1 edison point release
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
X-List-Received-Date: Wed, 02 Nov 2011 18:54:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-11-02 at 10:17 -0700, Flanagan, Elizabeth wrote:
> On Wed, Nov 2, 2011 at 9:37 AM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> > Hi,
> >
> > I've created a new meta-intel/edison-next branch to hold commits
> > intended for the upcoming 1.1 point release.
> >
> 
> From a build perspective, it would be better if these commits ended up
> in the meta-intel/edison branch. It's generally what we do for
> poky.git and I'd like to keep meta-intel the same. Also, the
> autobuilder, when it builds out release branches like this, actually
> will end up requiring that the release branches for all layers are the
> same (at least until full layer support is implemented.)
> 

Yes, they will end up there, as the next paragraph mentions:

"I'll be collecting candidate commits for a 1.1 point release there
until
it's time to cut the 1.1 point release, and will pull those into edison
proper at that point, assuming we have agreement on the set of patches
in the branch."

Tom


> -b
> 
> 
> 



