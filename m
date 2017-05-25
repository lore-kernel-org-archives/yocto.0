Return-Path: <marcelo.magallon@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E83BE00B47; Thu, 25 May 2017 07:47:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.233.16.89 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 483 seconds by postgrey-1.32 at yocto-www;
	Thu, 25 May 2017 07:47:49 PDT
Received: from g2t1383g.austin.hpe.com (g2t1383g.austin.hpe.com [15.233.16.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4FA6E00AA2
	for <yocto@yoctoproject.org>; Thu, 25 May 2017 07:47:49 -0700 (PDT)
Received: from g4t3425.houston.hpe.com (g4t3425.houston.hpe.com
	[15.241.140.78])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g2t1383g.austin.hpe.com (Postfix) with ESMTPS id C7B6D10E0
	for <yocto@yoctoproject.org>; Thu, 25 May 2017 14:39:45 +0000 (UTC)
Received: from g9t2301.houston.hpecorp.net (g9t2301.houston.hpecorp.net
	[16.220.97.129])
	by g4t3425.houston.hpe.com (Postfix) with ESMTP id 2919769;
	Thu, 25 May 2017 14:39:44 +0000 (UTC)
Received: from hpe.com (nyx.americas.hpqcorp.net [10.250.103.139])
	by g9t2301.houston.hpecorp.net (Postfix) with ESMTP id D6B0851;
	Thu, 25 May 2017 14:39:43 +0000 (UTC)
Date: Thu, 25 May 2017 08:39:43 -0600
From: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
To: "Koehler, Yannick (HPN Aruba)" <yannick.koehler@hpe.com>
Message-ID: <20170525143941.7vhq3tr5snnvdhky@nyx.americas.hpqcorp.net>
References: <TU4PR84MB01764490D3BCFABC79D8BAC8EDFE0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
	<277e529e-2b7f-2aa7-0784-4689ea84c690@mlbassoc.com>
	<CAHUNapQ=Axu8GV4XDBBhOc94u4D+kcw4tZH_gPGrC1Wm=X0nVA@mail.gmail.com>
	<CAC+thW3Wo2zBbEB-nwU8QmYz8Fvw1twkoMSC3hm_dyJnavu=Ug@mail.gmail.com>
	<TU4PR84MB0176C9C56A48F5689036F976EDFF0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
MIME-Version: 1.0
In-Reply-To: <TU4PR84MB0176C9C56A48F5689036F976EDFF0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
User-Agent: NeoMutt/20170113 (1.7.2)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can Yocto treat layers like an external package?
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
X-List-Received-Date: Thu, 25 May 2017 14:47:51 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Thu, May 25, 2017 at 01:13:03PM +0000, Koehler, Yannick (HPN Aruba) wrote:

> The case I am mostly interested about is the Vendor layers, if I pull
> in meta-openembedded or meta-freescale in my yocto distro, I will
> never touch those layer at the git level, instead whatever change I
> want will be done in my private layer which is the main reason for
> layer as I understand it (being able to change other’s vendor layer
> without changing them).

A "solution" that we use is have a single repo with all the layers, and
manage that using git subtrees.

I would strongly discourage other people from implementing such a
solution, as it solved one problem (creating and updating a workspace
with the correct layers is trivial), but it has created many others. The
biggest one in my view is that people feel encouraged to make
modifications to the vendor layers, which makes updating harder than it
should. Having a single repo with layers within directories also makes
it cumbersome to implement access controls (basically "you can commit to
directories A, B and C, but not X, Y or Z"). It also encourages a kind
of coupling that makes things more complicated in the long run.

> I fail to see why people would seek a non-bitbake solution such as
> repo, submodules or others if bitbake was able to do that aspect.  If
> there is a project already for doing this, I would be interested in
> participating to its development and I may have one or two helper in
> my team to help out on this.

My guess is that's because bitbake would have to read a file with the
layer metadata, fetch the layers that you want, and then read the
recipes. If the layers are handled just like recipes, (with SRC_URI,
SRCREV, S, etc), bitbake needs to be able to read two different sets of
recipes. That might work by changing BBFILES or BBPATH. At that point it
the UI becomes a bit awkward, I think.

It doesn't sound too far fetched, though. bitbake already contains most
(all?) of the code to make this work. I think you would just need to
come up with a reasonable UI to interact with that.

With our solution, getting updated layers (non-vendor) it's just a
matter of "git pull". Solutions built around repo are equally simple.

> For private layers, I do understand and see why an external solution
> to bitbake would be better, since bitbake will not offer support for
> branch and change management which is normal as bitbake is only a
> build tool, not a developer tool.

Well, if you obtain layers using recipes (or something very close to
that), you could include branch information in SRC_URI, as usual.

Marcelo

