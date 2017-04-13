Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2A4DE00995; Thu, 13 Apr 2017 02:24:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6362E00961
	for <yocto@yoctoproject.org>; Thu, 13 Apr 2017 02:24:38 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 419E468A01C; Thu, 13 Apr 2017 10:24:38 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id DEEFF68A019;
	Thu, 13 Apr 2017 10:24:37 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 8CC9B6740334;
	Thu, 13 Apr 2017 11:24:37 +0200 (CEST)
To: yocto@yoctoproject.org
References: <335001a8-d384-37ff-8e77-b741186b1207@mlbassoc.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <697428d2-25df-411c-c926-aacb2715b2f4@mlbassoc.com>
Date: Thu, 13 Apr 2017 11:24:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <335001a8-d384-37ff-8e77-b741186b1207@mlbassoc.com>
Subject: Re: Task dependencies
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
X-List-Received-Date: Thu, 13 Apr 2017 09:24:41 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-04-13 09:34, Gary Thomas wrote:
> I'm trying to understand why 'perl' is being built for my target
> even though I don't mention it in any of the package recipes used
> to build that target.  When I used 'taskexp', I found that 'perl:do_build'
> only has a single dependent task, namely 'my-image:do_build'
> note: no perl packages end up in my image.
>
> This is just one example where it seems bitbake is doing a lot of
> unnecessary (certainly un-asked-for) work.
>
> How can I unravel this mystery?
>
> Thanks for any pointers
>

I think I've figured this out - my image includes a couple of
packages (i2c-tools, ntp) that each have some component that
needs perl although I don't install those components.  So it
now makes sense that perl has to be built for my target even
though I'm not actually using it.

For example, in i2c-tools I see
   RDEPENDS_${PN}-misc = "${PN} perl"
and since I don't actually install i2c-tools-misc, perl isn't
needed.

That said, I had to discover this by manually looking through the
task-depends.dot file as I did not see how to come up with this
answer using -u taskdep alone.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

