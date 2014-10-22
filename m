Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52F11E0084F; Tue, 21 Oct 2014 23:39:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B86E9E00790
	for <yocto@yoctoproject.org>; Tue, 21 Oct 2014 23:39:20 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1XgpZo-0004A3-3u
	for yocto@yoctoproject.org; Wed, 22 Oct 2014 08:39:20 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 22 Oct 2014 08:39:20 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 22 Oct 2014 08:39:20 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Wed, 22 Oct 2014 08:39:08 +0200
Message-ID: <m27jec$fuo$1@ger.gmane.org>
References: <m25unh$ls3$1@ger.gmane.org> <20141021165612.GF2455@jama>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
In-Reply-To: <20141021165612.GF2455@jama>
Subject: Re: [meta-qt5] How to bisect problem?
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
X-List-Received-Date: Wed, 22 Oct 2014 06:39:24 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Am 21.10.2014 um 18:56 schrieb Martin Jansa:
> qt5 isn't special from this perspective (well maybe except that it takes
> damn long to build it all, so it's always useful to narrow the
> problematic module asap and then rebuild only that one as long as
> dependencies on other modules allow), I would start by using 5.3.0
> and 5.3.1 (because you'll easily find meta-qt5 revisions which will give
> you compatible set of qt5 tarballs).
> 
> If you plan to upgrade your images to 5.4.* soon(ish), than testing
> 5.4-alpha (or 5.4-beta from jansa/master branch) is also very useful,
> but I would expect more rough road then just bisecting 5.3.* releases.
> 
> Cheers,
> 

Thanks. So, I will do the following:
- first priority is to get the shellshock update ready (that was the
reason why I started the update nightmare at all)
- then I will try 5.3.1 and 5.3.0 to see if the problem is already in there
- I need to do some qt5 work anyway as one of the next steps is to get
the "camera" module working (which doesn't work on my imx6 system)

I will probably be back here then :-)

Cheers

Michael



