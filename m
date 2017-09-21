Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D17BBE00CC2; Thu, 21 Sep 2017 05:59:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel2.indieserve.net (cpanel2.indieserve.net [199.212.143.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2686FE00C78
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 05:59:22 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm68b6fcf980b0.cpe.net.cable.rogers.com
	([174.118.92.171]:50794 helo=localhost.localdomain)
	by cpanel2.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1dv14b-0005xX-KD; Thu, 21 Sep 2017 08:59:21 -0400
Date: Thu, 21 Sep 2017 08:59:19 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LZqvCZ3a37krzj4rYZ+g+BEuWPYm5yncYP3keWf2nGwiQ@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.1709210839360.23533@localhost.localdomain>
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
X-List-Received-Date: Thu, 21 Sep 2017 12:59:23 -0000
Content-Type: multipart/mixed; boundary="8323328-1143637648-1505998761=:23533"

--8323328-1143637648-1505998761=:23533
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

  for curiosity's sake, i spent a few minutes ignoring the apparent
facebook fork and concentrated strictly on the top-level
github/openbmc content, and it seems amazingly convoluted.  starting
here:

  https://github.com/openbmc

i further checked out the next-level openbmc/openbmc git repo and,
holy mackinaw, it contains a ton of layers.

  ignoring all of the symlinked layers for regular OE/YP content
contained therein, one sees, from the top of that clone, all of the
following "layer.conf" files:

$ find . -name layer.conf
./meta-phosphor/conf/layer.conf
./meta-openbmc-machines/meta-x86/meta-mellanox/conf/layer.conf
./meta-openbmc-machines/meta-x86/meta-mellanox/meta-msn/conf/layer.conf
./meta-openbmc-machines/meta-x86/conf/layer.conf
./meta-openbmc-machines/meta-x86/meta-quanta/meta-q71l/conf/layer.conf
./meta-openbmc-machines/meta-x86/meta-quanta/conf/layer.conf
./meta-openbmc-machines/meta-openpower/meta-rackspace/conf/layer.conf
./meta-openbmc-machines/meta-openpower/meta-rackspace/meta-barreleye/conf/layer.conf
./meta-openbmc-machines/meta-openpower/conf/layer.conf
./meta-openbmc-machines/meta-openpower/meta-ingrasys/conf/layer.conf
./meta-openbmc-machines/meta-openpower/meta-ingrasys/meta-zaius/conf/layer.conf
./meta-openbmc-machines/meta-openpower/meta-ibm/meta-garrison/conf/layer.conf
./meta-openbmc-machines/meta-openpower/meta-ibm/meta-firestone/conf/layer.conf
./meta-openbmc-machines/meta-openpower/meta-ibm/meta-romulus/conf/layer.conf
./meta-openbmc-machines/meta-openpower/meta-ibm/conf/layer.conf
./meta-openbmc-machines/meta-openpower/meta-ibm/meta-palmetto/conf/layer.conf
./meta-openbmc-machines/meta-openpower/meta-ibm/meta-witherspoon/conf/layer.conf
./meta-openbmc-machines/meta-evb/conf/layer.conf
./meta-openbmc-machines/meta-evb/meta-evb-aspeed/conf/layer.conf
./meta-openbmc-machines/meta-evb/meta-evb-aspeed/meta-evb-ast2500/conf/layer.conf
./meta-openbmc-bsp/meta-aspeed/conf/layer.conf
./meta-openbmc-bsp/meta-aspeed/meta-ast2500/conf/layer.conf
./meta-openbmc-bsp/meta-aspeed/meta-ast2400/conf/layer.conf
$

  not only does that single "git clone" apparently contain 23
individual layers, some of the content represents independent projects
in github. for example:

  openbmc/meta-aspeed <==> openbmc/openbmc/meta-openbmc-bsp/meta-aspeed

same with meta-openpower, possibly others.

  sorry to pollute this ML with questions about a specific layer, i
just figured it would be a piece of cake to take a look at this stuff
for a colleague and it got ugly in a hurry.

  i'll check in with the actual maintainers, but if anyone out there
is doing current work with openbmc, any pointers as to the current
state of that content would be appreciated.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-1143637648-1505998761=:23533--
