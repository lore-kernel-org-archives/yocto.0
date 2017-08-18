Return-Path: <gandersson@genivi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EA17E00D1C; Fri, 18 Aug 2017 07:46:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [38.101.164.234 listed in list.dnswl.org]
Received: from smtp1.genivi.org (smtp1.genivi.org [38.101.164.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C949E00C01
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 07:46:38 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.genivi.org (Postfix) with ESMTP id 9149521B95;
	Fri, 18 Aug 2017 07:46:37 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at smtp1.genivi.org
Received: from smtp1.genivi.org ([127.0.0.1])
	by localhost (smtp1.genivi.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fm8IwxR38e2y; Fri, 18 Aug 2017 07:46:32 -0700 (PDT)
Received: from linuxlap (c-5eea37f7-74736162.cust.telenor.se [94.234.55.247])
	by smtp1.genivi.org (Postfix) with ESMTPSA id CD82521B93;
	Fri, 18 Aug 2017 07:46:26 -0700 (PDT)
Message-ID: <1503067579.6972.4.camel@genivi.org>
From: Gunnar Andersson <gandersson@genivi.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, yocto@yoctoproject.org
In-Reply-To: <f75c19c6-e128-5932-fd29-1d3cb92b539d@windriver.com>
References: <1502739375.26251.126.camel@genivi.org>
	<f75c19c6-e128-5932-fd29-1d3cb92b539d@windriver.com>
Organization: GENIVI Alliance
Date: Fri, 18 Aug 2017 16:46:19 +0200
Mime-Version: 1.0
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Cc: "automotive-discussions@lists.linuxfoundation.org"
	<automotive-discussions@lists.linuxfoundation.org>
Subject: Re: Idea for bbappend / layer organization and naming convention
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
X-List-Received-Date: Fri, 18 Aug 2017 14:46:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit


On Mon, 2017-08-14 at 23:02 -0400, Bruce Ashfield wrote:
> On 2017-08-14 3:36 PM, Gunnar Andersson wrote:
> > 
> > Yocto community,
> > 
> > Triggered by the previous email request to yocto@ about best practices
> > for layer organization I'm finally firing off this email for (hopefully)
> > some feedback on an idea we first kicked around, discussed for rough
> > consensus and then decided to implement in the Yocto based GDP project
> > [1].  You can see it as a trial, anything can be changed, but so far so
> > good...
> > 
> > We adopted a somewhat novel (but actually not really unique, see inside)
> > naming convention [2] for all modifications to components that belong to
> > other layers.
> > 
> 
> I've been using a similar naming/sorting mechanism in layers that
> I maintain for several years now. 

Great.  Is it similar, or /exactly/ like this?  I'm only asking because I
think it would be useful to have some written down rules and if there are
additional tweaks that will improve this proposal, I'd like to hear them.

I suspected it might actually be somewhat of a common practice.

> When you have a single layer that is carrying bbappends to many other
> layers, I find that it really helps keep everything separated and aids
> finding the original recipe.

Yes, that is the idea.

> 
> (that being said, recent work with layer index, etc, make it
> easier to locate the original recipe and any bbappends .. but that
> doesn't preclude keeping things organized in a layer).

... but I didn't get any more feedback than yours, so I'll just leave it
where it is for now.  Maybe this is not something the other Yocto community
cares about, or similar practices are actually done in practice, but not
written down.  Or maybe everyone is OK with the state of mixing .bb and
.bbappend files within the layers...

So far I think the initial experience on our side is positive.  It's
something that needs to be looked after a bit (we have a few mistakes to
fix).  But since some directories will only have .bb files, and others only
.bbappend files, it's therefore easy to script a warning system for anything
that is out of place.

Best Regards
- Gunnar

> Cheers,
> 
> Bruce
> 
[trimmed]

> > -- 
> > Gunnar Andersson <gandersson@genivi.org>
> > Development Lead
> > GENIVI Alliance
> > 
> > [1] https://github.com/GENIVI/genivi-dev-platform
> > [2] Naming strategy for bitbake extension layers:			
> > https://at.projects.genivi.org/wiki/x/w4Xk



