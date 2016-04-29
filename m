Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA84CE00E46; Fri, 29 Apr 2016 00:17:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A91B8E00E41
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 00:16:58 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 29 Apr 2016 00:16:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,550,1455004800"; d="scan'208";a="968982171"
Received: from ychia3-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.143.114])
	by fmsmga002.fm.intel.com with ESMTP; 29 Apr 2016 00:16:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 29 Apr 2016 19:16:53 +1200
Message-ID: <1564642.UuUWA349Vz@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.7-300.fc23.x86_64; KDE/4.14.18; x86_64; ;
	)
In-Reply-To: <5722F9D8.2080202@mlbassoc.com>
References: <5722E217.40108@mlbassoc.com>
	<1690881.tSgHQ4Xn3V@peggleto-mobl.ger.corp.intel.com>
	<5722F9D8.2080202@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Change in override behavior?
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
X-List-Received-Date: Fri, 29 Apr 2016 07:17:04 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Fri, 29 Apr 2016 08:06:16 Gary Thomas wrote:
> On 2016-04-29 07:08, Paul Eggleton wrote:
> > On Fri, 29 Apr 2016 06:24:55 Gary Thomas wrote:
> >> I used to be able to use something like this:
> >>     VARIABLE = "xyz"
> >> 
> >> and maybe in a .bbappend use
> >> 
> >>     VARIABLE_mymachine = "xyzzy"
> >> 
> >> where 'mymachine' is in OVERRIDES, which resulted in
> >> 
> >>     VARIABLE = "xyzzy"
> >> 
> >> This doesn't seem to work the same today, what I get is
> >> 
> >>     VARIABLE = "xyz"
> >>     VARIABLE_mymachine = "xyzzy"
> >> 
> >> Has this changed (recently)?  Why?  How to I make use of overrides?
> >> 
> >> Note: I'm using the latest Poky master (a9b503b26) updated 2016-04-28
> > 
> > When you say this is what you're seeing, how are you checking this?
> > bitbake -e ? Which part of that output are you looking at?
> > 
> > You *will* now see VARIABLE_mymachine in bitbake -e output even if
> > "mymachine" is in OVERRIDES - that's because the overridden values stay
> > in the datastore instead of a "finalisation" step eliminating them, in
> > order to allow OVERRIDES to be changed dynamically (possibly multiple
> > times) and still get the datastore contents you expect. That change was
> > made in the 2.0 release (jethro). However That should not affect the
> > final value of VARIABLE if "mymachine" is in OVERRIDES however. Are you
> > sure you are seeing what you think you're seeing? If so, is the bbappend
> > in fact being applied? Because if what you describe was really happening
> > then pretty much the entire system would be broken. I just checked a
> > similar case here and I see the expected results.
> 
> Yes, I am using 'bitbake -e <recipe> | grep ^VARIABLE' to look at this.
> 
> In my main recipe, I have this:
>    SOME_OTHER_VARIABLE ?= "${MACHINE}"
> and my .bbappend for that recipe has these lines:
>    SOME_OTHER_VARIABLE_my-target-A = "something-else1"
>    SOME_OTHER_VARIABLE_my-target-B = "something-else2"
> and local.conf has
>    MACHINE="my-target-B"
> 
> With Yocto 2.0 (Poky ceeb52a2544) I get this:
>    SOME_OTHER_VARIABLE = "something-else2"
>    SOME_OTHER_VARIABLE_my-target-A = "something-else1"
>    SOME_OTHER_VARIABLE_my-target-B = "something-else2"
> 
> With today's (Poky a9b503b26) I get this:
>    SOME_OTHER_VARIABLE = "my-target-B"
>    SOME_OTHER_VARIABLE_my-target-A = "something-else1"
>    SOME_OTHER_VARIABLE_my-target-B = "something-else2"
> 
> I also use this mechanism to set COMPATIBLE_MACHINE a lot and
> that doesn't seem to be working the same either.
> 
> Am I doing something incorrectly (and just got away with it for years)?
> 
> n.b. If you're interested, I can share the .bb/.bbappend files
> with you privately (I can't put them on the public list)

Ah, one thing... do your machine names have uppercase characters in them (as 
your pseudo-examples above do)? If so that was a 2.1 change; anything that is 
to be used as an override must now be lower case (so DISTRO, MACHINE, etc.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

