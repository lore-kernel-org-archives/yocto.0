Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63DB3E009CF; Mon, 27 Feb 2017 05:54:48 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2897E00970
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 05:54:46 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp485.redcondor.net ({3be039ea-4351-44b0-a8af-642c38b25916})
	via TCP (outbound) with ESMTPS id 20170227135444052_0485;
	Mon, 27 Feb 2017 13:54:44 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=58634 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1ciLl7-0002za-2a; Mon, 27 Feb 2017 08:54:37 -0500
Date: Mon, 27 Feb 2017 08:54:36 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@uk63952.mitel.com
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <CADkTA4Nu=KaXF+j-+r-dqnBFmBOV_5JJUSEBAoJkP3RO+F7M+w@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1702270850450.26230@uk63952.mitel.com>
References: <alpine.LFD.2.20.1702270446460.4745@uk63952.mitel.com>
	<CADkTA4Nu=KaXF+j-+r-dqnBFmBOV_5JJUSEBAoJkP3RO+F7M+w@mail.gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: couple questions about kernel-dev manual, section 2.6, "emenlow" branch
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
X-List-Received-Date: Mon, 27 Feb 2017 13:54:48 -0000
Content-Type: multipart/mixed;
	BOUNDARY="587868445-1542553623-1488203677=:26230"

--587868445-1542553623-1488203677=:26230
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Mon, 27 Feb 2017, Bruce Ashfield wrote:

> On Mon, Feb 27, 2017 at 4:54 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>         still working my way through the kernel-dev manual, and a
>       couple oddities in section 2.6.
>
>         first, the example given uses the (alleged) standard/emenlow
>       branch, which i'm pretty sure doesn't exist anymore, yes? if
>       one is going to use an example, i suggest one base that
>       example on one of the YP reference BSPs that's guaranteed to
>       always exist, such as beagleboard or arm-versatile-926ejs.
>
> I can't say that one will always exist .. but the arm-versatile
> branch has been around for years, and until the qemuarm target
> changes to use something else, it will continue to be around.

  i might have skipped those possibilities since they produced no
output, which made the examples rather vacuous. :-) i'll check again,
want to make sure one picks a branch that actually generates output.

>         next, i'm assuming that one would be running those "git
>       whatchanged" commands in the project directory, under
>       tmp/work-shared/<target>/kernel-source, yes? it's just not
>       made clear in that section where a reader would be doing those
>       things.
>
> Correct.

  ok, i will add that note to the imminent patch.

>         finally, section 2.6.1 reads:
>
>       "Here is an example that looks at what has changed in the
>       emenlow branch of the linux-yocto-3.19 kernel."

>       what does the kernel version of 3.19 have to do with those git
>       commands? how do those commands depend on the particular
>       version of the linux-yocto recipe you're using?
>
> At one point I was changing the branching structure, and the kernel
> meta data was in the same repo as the kernel source, so that could
> change some of the commands.
>
> But nothing has changed on that front in quite some time, so the
> answer is "they don't depend on the version you are using" .. so the
> version reference could be dropped.

  roger that.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--587868445-1542553623-1488203677=:26230--
