Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4023FE0078E; Mon, 11 Aug 2014 09:45:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.204.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp485.redcondor.net (smtp485.redcondor.net [208.80.204.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1B6AE004F2
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 09:45:33 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp485.redcondor.net ({3be039ea-4351-44b0-a8af-642c38b25916})
	via TCP (outbound) with ESMTPS id 20140811164531335
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 16:45:31 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=55112 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XGsis-00010l-H6; Mon, 11 Aug 2014 12:45:26 -0400
Date: Mon, 11 Aug 2014 12:45:22 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Christopher Larson <clarson@kergoth.com>
In-Reply-To: <CABcZANkG1ja_EGNAqCbUGKXhY5Ugm9DV+mnEyW__THHOuRyNPg@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1408111244140.3897@localhost>
References: <alpine.LFD.2.11.1408110738270.8322@localhost>
	<CABcZANkG1ja_EGNAqCbUGKXhY5Ugm9DV+mnEyW__THHOuRyNPg@mail.gmail.com>
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
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: anyone know of a single OE/yocto recipe that uses BBVERSIONS?
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
X-List-Received-Date: Mon, 11 Aug 2014 16:45:45 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-37329135-1407775525=:3897"

--8323328-37329135-1407775525=:3897
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Mon, 11 Aug 2014, Christopher Larson wrote:

>
> On Mon, Aug 11, 2014 at 4:40 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>         collecting examples of recipe design and variants, and bitbake user
>       manual refers to BBVERSIONS variable to allow a recipe file to build
>       multiple versions from one file, but in the dozen or so layers i have
>       checked out, i've seen not a single example of usage of that variable.
>
>         are there any?
>
>
> Nope, as far as I know, it's not being used at all at the moment.
> The idea was we could use it to avoid having multiple recipes with
> different versions and .inc includes all over the place, but then
> policy changed to tend to prefer having just a single recipe version
> around, so it's of less use. If you'd like to see an example of a
> prototyped recipe using it, which I created while implementing
> BBVERSIONS, see https://gist.github.com/kergoth/338382. This was an
> attempt, at the time (2010) to have a single m4 recipe that was
> capable of building every m4 version that existed. It was mostly to
> see if it could be done :)

  fair enough ... given that it doesn't seem to have a lot of
utilitarian value, i won't bother mentioning it in my notes. or, at
most, very briefly.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-37329135-1407775525=:3897--
