Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67D49E00DC9; Thu, 28 Apr 2016 05:40:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1876E00DC1
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 05:40:45 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 8AEE268A01C; Thu, 28 Apr 2016 13:40:43 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 310AC68A019;
	Thu, 28 Apr 2016 13:40:43 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id E27E8674006D;
	Thu, 28 Apr 2016 14:40:42 +0200 (CEST)
To: yocto@yoctoproject.org
References: <alpine.LFD.2.20.1604280808070.25680@localhost.localdomain>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <572204CA.1090309@mlbassoc.com>
Date: Thu, 28 Apr 2016 14:40:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1604280808070.25680@localhost.localdomain>
Subject: Re: what's the "standard" for adding .dts patches to a BSP layer?
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
X-List-Received-Date: Thu, 28 Apr 2016 12:40:48 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-04-28 14:14, Robert P. J. Day wrote:
>
>    looking for common practice here ... what's the canonical way that
> one should add content to a .dts file for a new board -- all at once,
> or broken into patches associated with corresponding .scc files that
> come into play only if one selects that functionality?
>
>    i ask since i'm a big fan of modularity, but that doesn't seem to
> work very well here. if i start with a baseline .dts file, and break
> the rest into optional patches, then based on what a developer selects
> for his build, some of those patches simply aren't going to apply very
> cleanly.
>
>    it would, of course, be easier to just add everything even
> potentially necessary to the single .dts file, since that's not really
> adding any actual functionality, just adding more detailed information
> about the target board (even if it's never used).
>
>    thoughts? am i overthinking this?

One common way is to have a .dts (or .dtsi) file that includes all
of the sections you might want, but leave them disabled, hence not
changing the actual setup.  Then add snippets (via .scc or patch)
that enable the sections.  This is how the i.MX6 space (FreeScale/NXP
boards and products) is managed.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

