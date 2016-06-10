Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0738E00D00; Fri, 10 Jun 2016 03:47:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00, DATE_IN_PAST_03_06, 
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	*  1.6 DATE_IN_PAST_03_06 Date: is 3 to 6 hours before Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 514F6E00CC0
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 03:47:05 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 10 Jun 2016 03:47:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,449,1459839600"; d="scan'208";a="825440793"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by orsmga003.jf.intel.com with ESMTP; 10 Jun 2016 03:47:03 -0700
Date: Fri, 10 Jun 2016 08:54:10 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20160610055410.GA20384@mbabyjoh-desk.ger.corp.intel.com>
References: <575A7B40.9050509@mlbassoc.com> <575A7CAF.2050207@mlbassoc.com>
	<CAJTo0LZenM_UO1QRzWCVDGyurcyzKNrYnHVYjmCSpyJNfjK85w@mail.gmail.com>
	<575A9117.2080203@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <575A9117.2080203@mlbassoc.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Another python3 error?
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
X-List-Received-Date: Fri, 10 Jun 2016 10:47:06 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Gary,

On Fri, Jun 10, 2016 at 12:06:15PM +0200, Gary Thomas wrote:
> On 2016-06-10 10:42, Burton, Ross wrote:
> >
> >On 10 June 2016 at 09:39, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
> >
> >    Any hints on which (and why it's not being recommended by the sanity checker)?
> >
> >
> >It's not recommended by the sanity checker because its only needed by depexp and on a X11-less build server will pull in
> >vast numbers of packages.
> >
> >It's the python2 GTK+2 bindings, so something like python-gtk is a good start.
> 
> I do have that package installed, but I think only for python2.
> 
> bitbake -u depexp used to work on this same system before the change over to
> python3 in bitbake.

Had the same experience. We need to modify depexp.py to support python3:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=maxin/depexp
( Please note that this is a work in progress )

Best Regards,
Maxin

