Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EE2EE01460
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 15:11:34 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 Apr 2013 15:11:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,441,1363158000"; d="scan'208";a="283939011"
Received: from unknown (HELO [10.255.14.31]) ([10.255.14.31])
	by azsmga001.ch.intel.com with ESMTP; 09 Apr 2013 15:11:31 -0700
Message-ID: <1365545491.1526.5.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 09 Apr 2013 17:11:31 -0500
In-Reply-To: <CAHUNapTHjYk6fWdRsk0-xLBEP5kUgnCR7Ss3TrvTuE9svgnKjQ@mail.gmail.com>
References: <alpine.DEB.2.02.1304081135020.23038@oneiric>
	<1365469127.17697.70.camel@empanada>
	<alpine.DEB.2.02.1304090729220.4184@oneiric>
	<CAHUNapRQTMvCE=8RLNhae+sm6=VN7pP4TfbBBM0nvcCR5aTmkQ@mail.gmail.com>
	<alpine.DEB.2.02.1304091746080.4929@oneiric>
	<CAHUNapTHjYk6fWdRsk0-xLBEP5kUgnCR7Ss3TrvTuE9svgnKjQ@mail.gmail.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: working my way through the kernel hands-on labs finally
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
X-List-Received-Date: Tue, 09 Apr 2013 22:11:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2013-04-09 at 18:06 -0400, Trevor Woerner wrote:
> On Tue, Apr 9, 2013 at 5:46 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >   ok, so what am i looking for?
> 
> I couldn't get lab3 to work fully unless I switched from package_ipk
> to package_rpm. The module would get built and included in the image,
> but it wasn't being loaded automatically during boot. At the time I
> tried against the master HEAD and everything worked fine, so whatever
> it is I think I've found, it has been fixed (this is only a
> danny-8.0.1 problem).
> 
> https://lists.yoctoproject.org/pipermail/yocto/2013-February/014424.html
> 
> When I mentioned it, it didn't seem to make sense that the choice of
> packaging should affect something like this. But I tried it a couple
> times on my machine and could reproduce it. I don't think anyone else
> tried reproducing it.

I believe I tried and couldn't reproduce it.  But if someone does
reproduce it, please file a bug detailing the *exact* steps needed to
reproduce.

Thanks,

Tom

> 
> This might be of interest to anyone still using danny.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



