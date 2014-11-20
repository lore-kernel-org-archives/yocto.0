Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BE15E008F2; Thu, 20 Nov 2014 05:43:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B76FE007B9
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 05:43:35 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 20 Nov 2014 05:40:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,424,1413270000"; d="scan'208";a="611105533"
Received: from snaufer-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.207])
	by orsmga001.jf.intel.com with ESMTP; 20 Nov 2014 05:43:33 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 20 Nov 2014 13:43:31 +0000
Message-ID: <3780775.YvVDClAEQ0@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.2-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <20141120033439.GA906@mentor.com>
References: <546BB9EF.4040807@balister.org> <20141120033439.GA906@mentor.com>
MIME-Version: 1.0
Subject: Re: Layer model doomed, unless we all work together
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
X-List-Received-Date: Thu, 20 Nov 2014 13:43:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 19 November 2014 22:34:41 Joe MacDonald wrote:
> [[yocto] Layer model doomed, unless we all work together] On 14.11.18 (Tue 
16:28) Philip Balister wrote:
> > I see a couple of issues we need to start talking about:
> > 
> > 1) recipes that need to move closer to core because a range of other
> > packages use them.
> 
> This was actually the only thing I thought needed further discussion
> (everything else should largely be a nod-in-agreement thing), as in some
> cases I'm not sure it's always clear what constitutes "closer to the
> core".  Poky and oe-core layers are pretty clear, but the next step
> beyond that isn't.  Are all layers hosted on git.yoctoproject.org
> inherhently "more core" than layers on git.openenbedded.org?  And
> there's a number of shells when you start including all of the github
> projects, setting aside other open-source project hosting services.

The answer to me there is certainly not. I've said this recently in other 
discussions, but I'll say it here anyway in case anyone else isn't sure - 
layers on git.yoctoproject.org should not be considered in any way more official 
than anywhere else solely based on them being hosted there. Anyone who wants 
to maintain and publish a layer suitable for others to use can get a 
repository on git.yoctoproject.org - there's no official review, validation, or 
acceptance criteria in the general case just for having a repository there 
(beyond being related to the project, that is).

To me this isn't so much about "closer to the core", it's about:

 1) sensible recipe groupings, e.g. meta-networking rather than a particular 
project's mixed recipes layer

 2) good maintenance, i.e. recipes are semi-regularly updated when upstream 
releases happen, fixed when needed to accommodate changes that happen in other 
layers it depends upon such as OE-Core, and the maintainer is reasonably 
responsive to patches or questions relating to the layer.

We need both of those things to encourage re-use, and if we have both then it 
doesn't really matter where a layer is hosted as long as it's listed in the 
layer index.
 
> Looking at the link you sent out based on Paul's suggestion, I see I'm
> actually on both sides of this equation, so yay!  And I'll limit the
> discussion to what's indexed there.
> 
> Here're my examples.
> 
> iscsi-initiator-utils: both in meta-networking nd meta-openstack.  Both
> at the same version currently but wildly different contents.
> meta-openstack is a git.yoctoproject.org project, so does that make it
> closer to the core?  I would think not, but as I recall there had been
> some comment about the openstack layer intending to limit layer
> dependencies outside Yocto core when it first appeared, so maybe making
> meta-networking a dependency is a non-starter for them.

So I've talked to Bruce about meta-openstack before, with particular regard to 
the number of python recipes that the layer ships and future overlap with 
meta-python, and apparently the policy there is not to pull in other layers 
for some dependencies with the aim of avoiding breakage on upgrades. I don't 
like that very much at all, to be frank, but I can at least understand it 
given how huge OpenStack is. It does of course mean that the overlap with that 
layer in particular is only going to increase as time goes on.
 
Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

