Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4098E006F5
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 09:46:52 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Feb 2013 09:44:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,696,1355126400"; d="scan'208";a="287758411"
Received: from unknown (HELO [10.255.12.105]) ([10.255.12.105])
	by orsmga002.jf.intel.com with ESMTP; 19 Feb 2013 09:45:22 -0800
Message-ID: <1361295925.1868.5.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 19 Feb 2013 11:45:25 -0600
In-Reply-To: <CAHUNapT3DsWwPDJC9mthNRjA0idDLHBUJxM6AGV41QaNVOodHw@mail.gmail.com>
References: <1360981747.1691.29.camel@empanada>
	<CAHUNapT64nNKXw5Hb0NFMn2BOxV60qTZZLszgFgDD20-RpiTNw@mail.gmail.com>
	<1361251862.1868.3.camel@empanada>
	<CAHUNapT3DsWwPDJC9mthNRjA0idDLHBUJxM6AGV41QaNVOodHw@mail.gmail.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Updated Yocto Hands-on Kernel Lab available
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
X-List-Received-Date: Tue, 19 Feb 2013 17:46:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2013-02-19 at 05:31 -0500, Trevor Woerner wrote:
> On Tue, Feb 19, 2013 at 12:31 AM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> > So when you say it doesn't work, you mean the module autoload didn't
> > work, but everything else did?
> 
> Yes, exactly.
> 
> > Did you do the 'bump the PR' step after
> > you uncommmented the module autoload statement?
> 
> Yes, I even bumped it twice :-) But even if I forgot to bump the PR
> number, when I deleted tmp/sstate/etc and started a fresh build, it
> should have worked then?
> 

It really should have, yes.

> > If that's not it, then I don't know what you say - I tested it with
> > danny and it worked fine for me.  I can try running through it again to
> > verify again, but it really should work...
> 
> Thanks for your comments. I'll guess I'll have to try it all again.
> Maybe I somehow checked out the wrong version. Like I said, performing
> the same steps against yesterday's master worked completely as
> expected.

I'll go through it here as well as soon as I can and let you know...

Tom


