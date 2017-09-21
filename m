Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17705E00CC2; Thu, 21 Sep 2017 03:26:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel2.indieserve.net (cpanel2.indieserve.net [199.212.143.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93A84E00C14
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 03:26:25 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm68b6fcf980b0.cpe.net.cable.rogers.com
	([174.118.92.171]:48540 helo=localhost.localdomain)
	by cpanel2.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1duyga-00043T-9M; Thu, 21 Sep 2017 06:26:24 -0400
Date: Thu, 21 Sep 2017 06:26:22 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LZqvCZ3a37krzj4rYZ+g+BEuWPYm5yncYP3keWf2nGwiQ@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.1709210625200.20962@localhost.localdomain>
References: <alpine.LFD.2.21.1709210557260.19879@localhost.localdomain>
	<CAJTo0LZqvCZ3a37krzj4rYZ+g+BEuWPYm5yncYP3keWf2nGwiQ@mail.gmail.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel2.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel2.indieserve.net: authenticated_id:
	rpjday+crashcourse.ca/only user confirmed/virtual account not
	confirmed
X-Authenticated-Sender: cpanel2.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: which is the official(?) OE/YP openbmc layer?
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
X-List-Received-Date: Thu, 21 Sep 2017 10:26:27 -0000
Content-Type: multipart/mixed; boundary="8323328-620787904-1505989584=:20962"

--8323328-620787904-1505989584=:20962
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 21 Sep 2017, Burton, Ross wrote:

> On 21 September 2017 at 11:01, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>         colleague just yesterday asked me a couple questions about openbmc,
>       so i investigated the OE/YP layer, and i'm a bit confused ... the
>       official OE layers page here:
>
>       https://layers.openembedded.org/layerindex/branch/master/layers/
>
>       refers to a meta-openbmc layer at https://github.com/facebook/openbmc,
>       implying it's a facebook project, but github also hosts:
>
>       https://github.com/openbmc
>
>         can anyone clarify the relationship between those two? if there is
>       any?
>
>
> Oh I really hope that isn't a Google/IBM vs Facebook fork war.
>
> I think the best way to get an answer is to email both
> maintainers...

  after just cursory examination of both repos, i have to say, neither
of them looks particularly well-organized. or am i just being overly
critical?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-620787904-1505989584=:20962--
