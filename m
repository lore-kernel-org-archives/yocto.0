Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7681CE00902; Thu,  8 Jan 2015 06:15:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68EECE008E5
	for <yocto@yoctoproject.org>; Thu,  8 Jan 2015 06:15:38 -0800 (PST)
Received: from [99.240.204.5] (port=38590 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y9Ds7-0005Ai-8m; Thu, 08 Jan 2015 09:15:35 -0500
Date: Thu, 8 Jan 2015 09:15:34 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: micke.prag@telldus.se
In-Reply-To: <ed50fcd8b289bf53feafefe8c22676f4@telldus.se>
Message-ID: <alpine.LFD.2.11.1501080914250.2390@localhost>
References: <mailman.26028.1420723936.26702.yocto@yoctoproject.org>
	<ed50fcd8b289bf53feafefe8c22676f4@telldus.se>
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
Cc: yocto@yoctoproject.org
Subject: Re: is it not a *requirement* that layers start with "meta-"?
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
X-List-Received-Date: Thu, 08 Jan 2015 14:15:44 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 8 Jan 2015, micke.prag@telldus.se wrote:

>
> Message: 6
> Date: Thu, 8 Jan 2015 08:31:58 -0500 (EST)
> From: "Robert P. J. Day" <rpjday@crashcourse.ca>
> To: Anders Darander <anders@chargestorm.se>
> Cc: Yocto discussion list <yocto@yoctoproject.org>,
> 	"peterengcomau001@adam.com.au" <peterengcomau001@adam.com.au>
> Subject: Re: [yocto] is it not a *requirement* that layers start with
> 	"meta-"?
> Message-ID: <alpine.LFD.2.11.1501080831200.31772@localhost>
> Content-Type: TEXT/PLAIN; charset=US-ASCII
>
> On Thu, 8 Jan 2015, Anders Darander wrote:
>             * Robert P. J. Day <rpjday@crashcourse.ca> [150105 18:09]:
>                   On Mon, 5 Jan 2015, Rifenbark, Scott M wrote:
>
>                         If anyone can locate some scripts or something that
>                         actually does require "meta-" to be prepended please let
>                         me know. That changes how we describe this.
>
>                   as an admittedly simple example, i ran across this in oe-core's
>                   scripts/contrib/documentation-audit.sh:
>
>                   for pkg in `bitbake -s | awk '{ print \$1 }'`; do
>
>                   ... snip ...
>
>                   if [[ "$pkg" =~ ^meta- || "$pkg" =~ ^packagegroup- || "$pkg" =~
>                   -image ]]; then # Skip meta, task and image recipes continue fi
>
>                   checking that the package name starts with "meta-" seems to pretty
>                   clearly suggest that it will be treated differently than if it
>                   doesn't. i'm sure no one is terribly worried about that particular
>                   script, but it does seem to show an example of this.
>
>             But that's checking *recipe* names, not layer names... Thus, you'll have to look
>             for another example. ;)
>
>   ah, quite so, so perhaps the "meta-" prefix is not a real
> requirement, just convention.
>
> rday
>
> --
>
> The layer "openembedded-core" does not start with "meta-".

  well, yes, but that's kind of a special case as it's the only
*required* layer. in any event, i apologize if i made a bigger deal
out of this than was warranted, i just thought the rules for layer
naming were a bit ambiguous and i wanted some clarification.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

