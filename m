Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F072AE00BE9; Wed,  9 Dec 2015 06:00:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp485.redcondor.net (smtp485.redcondor.net [208.80.204.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE9DDE007B2
	for <yocto@yoctoproject.org>; Wed,  9 Dec 2015 06:00:03 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp485.redcondor.net ({3be039ea-4351-44b0-a8af-642c38b25916})
	via TCP (outbound) with ESMTPS id 20151209135957853_0485;
	Wed, 09 Dec 2015 13:59:57 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [66.46.196.8] (port=36936 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1a6fIW-0002If-B7; Wed, 09 Dec 2015 09:00:48 -0500
Date: Wed, 9 Dec 2015 08:59:47 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <56682F03.3050501@windriver.com>
Message-ID: <alpine.LFD.2.20.1512090856280.9390@localhost>
References: <alpine.LFD.2.20.1512090532270.21086@localhost>
	<56682F03.3050501@windriver.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how can i figure out where a particular kernel config option came from?
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
X-List-Received-Date: Wed, 09 Dec 2015 14:00:07 -0000
Content-Type: text/plain; charset=US-ASCII

On Wed, 9 Dec 2015, Bruce Ashfield wrote:

> On 12/09/2015 05:36 AM, Robert P. J. Day wrote:
> >
> >    short version: with a short BSP layer i've been handed, the eventual
> > kernel .config file ends up with the setting:
> >
> >    CONFIG_WIRELESS=y
> >
> > which makes no sense as the target board has no wireless and the BSP
> > itself doesn't set that, so how can i start tracking back to figure
> > out where that particular setting came from?
> >
> >    long version: i'm actually using Wind River Linux 7, but the
> > question remains the same. it turns out that CONFIG_WIRELESS is
> > selected by CONFIG_WLAN, so i'm really after what sets CONFIG_WLAN. i
> > don't see it in the BSP layer, so i'm tracing back to the WR kernel
> > recipe, and possibly features templates and any other kernel .cfg
> > snippets i can find, so far with no luck.
> >
> >    in either case, is there a log file that lists *precisely* which
> > kernel config snippets contributed to the final .config file? thanks.
>
> The meta-series in the kernel source directory has all the details.
> If you locate the kernel source for your build, it'll be in a 'meta'
> or '.meta' directory (depending on the version of the tools), and be
> called ... 'meta-series'.

  *sigh* ... i was already poring through that file when it occurred
that there might be a simpler answer -- perhaps the Kbuild structure
set wireless to 'y' by default and, sure enough, right there in
net/Kconfig:


menuconfig WIRELESS
        bool "Wireless"
        depends on !S390
        default y

if WIRELESS

source "net/wireless/Kconfig"
source "net/mac80211/Kconfig"

endif # WIRELESS


  argh, i thought to myself, what short-sighted tool decided that
wireless should be selected by default?

5442060c0 (Robert P. J. Day                2008-07-24 12:20:09 -0400 346) menuconfig WIRELESS
5442060c0 (Robert P. J. Day                2008-07-24 12:20:09 -0400 347)       bool "Wireless"
f54bfc0e3 (Martin Schwidefsky              2007-05-10 15:46:01 +0200 348)       depends on !S390
5442060c0 (Robert P. J. Day                2008-07-24 12:20:09 -0400 349)       default y
5442060c0 (Robert P. J. Day                2008-07-24 12:20:09 -0400 350)
5442060c0 (Robert P. J. Day                2008-07-24 12:20:09 -0400 351) if WIRELESS


  i'm going back to bed.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


