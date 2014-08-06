Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41672E00563; Wed,  6 Aug 2014 09:20:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C045CE0054C
	for <yocto@yoctoproject.org>; Wed,  6 Aug 2014 09:20:48 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20140806162046224
	for <yocto@yoctoproject.org>; Wed, 06 Aug 2014 16:20:46 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=55924 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XF3xB-00048B-3z; Wed, 06 Aug 2014 12:20:41 -0400
Date: Wed, 6 Aug 2014 12:20:32 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <2384884.X0kGjS6PL9@peggleto-mobl5.ger.corp.intel.com>
Message-ID: <alpine.LFD.2.11.1408061218490.11952@localhost>
References: <alpine.LFD.2.11.1408030456480.14212@localhost>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FD3136@ORSMSX101.amr.corp.intel.com>
	<2384884.X0kGjS6PL9@peggleto-mobl5.ger.corp.intel.com>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: yocto@yoctoproject.org
Subject: Re: question about installing multiple versions of a single library
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
X-List-Received-Date: Wed, 06 Aug 2014 16:20:53 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 6 Aug 2014, Paul Eggleton wrote:

> Hi Robert,
>
> On Monday 04 August 2014 05:29:45 Rifenbark, Scott M wrote:
> > >-----Original Message-----
> > >From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> > >Sent: Sunday, August 03, 2014 2:05 AM
> > >To: Rifenbark, Scott M
> > >Subject: question about installing multiple versions of a single library
> > >
> > >  sorry for the interruption, i'm reading dev manual here:
> > >http://www.yoctoproject.org/docs/latest/dev-manual/dev-> >manual.html#installing-multiple-versions-of-the-same-library
> > >
> > >and the example used (clutter) doesn't even exist in oe-core with those
> > >version numbers, i was looking for another example that actually exists,
> > >didn't immediately see one.
> > >
> > >  more to the point, the version numbers used in those clutter recipe files
> > >  look>
> > >weird:
> > >     clutter-1.6_1.6.20.bb
> > >     clutter-1.8_1.8.4.bb
> > >
> > >i'm not used to seeing recipe files that appear to combine a
> > >higher version number *and* what looks like a minor version
> > >number upgrade as well. do you know what's going on there? maybe
> > >that's not the best example for trying to explain this topic.
>
> The specific versions of clutter may no longer exist in the
> metadata, but we do still use this scheme for clutter recipes and
> others (gstreamer comes to mind). The point is you change PN to be
> version-specific - you have clutter-1.6 and clutter-1.8, such that
> you can depend on the specific version where needed.

  ah, i see ... the software name is not simply "clutter", it is
"clutter-1.6" or "clutter-1.8". got it.

rday

--

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


