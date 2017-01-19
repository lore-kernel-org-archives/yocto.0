Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAF60E00B5E; Thu, 19 Jan 2017 15:24:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A409EE00B57
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 15:24:33 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v0JNOVXP013298
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 19 Jan 2017 15:24:31 -0800 (PST)
Received: from server.local (128.224.21.54) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 19 Jan 2017 15:24:31 -0800
To: George McCollister <george.mccollister@gmail.com>, <yocto@yoctoproject.org>
References: <CAFSKS=Mr_Q4xhCKT3YEpkyFBAom9OLw0tD+aAbiuti3fb2nxuA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <5e9b5d05-63a0-81c2-f609-8227c5ef6d26@windriver.com>
Date: Thu, 19 Jan 2017 18:24:30 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <CAFSKS=Mr_Q4xhCKT3YEpkyFBAom9OLw0tD+aAbiuti3fb2nxuA@mail.gmail.com>
Subject: Re: Correct way to use a custom bsp .scc file in morty
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
X-List-Received-Date: Thu, 19 Jan 2017 23:24:36 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-01-19 6:20 PM, George McCollister wrote:
> What's the correct way to use a custom bsp .scc file located in my
> custom bsp layer? For purposes of this email let's say it's name is
> myplatform-preempt-rt.scc. If I specifically add it to the
> yocto-linux-rt_4.4 SRC_URI it appears to get processed twice by scc
> according to the meta-series output file. It then tries to apply
> patches to standard/preempt-rt/base that don't apply. When building on
> a intel-core2-32 platform, intel-core2-32-preempt-rt.scc only gets
> processed once and no incorrect patches are applied.

Something could have broken, I never rule out bugs!

Morty had some different semantics than the newer branches (which
are simplified compared to the auto-resume logic in old releases).

That being said, the capability to have a BSP description in the
SRC_URI is there, and did work during that release cycle. To have
it work, you do need the right format in the BSP .scc file, in
particular something with the KMACHINE and KTYPE descriptions will
be seen as an entry point, and not trigger the re-application of
the inherited patches.

Is there any way that I can see the contents of that .scc file ?
Otherwise, I can spin up a morty build and mock something up
myself.

Bruce

>
> If I don't include it in the yocto-linux-rt_4.4 SRC_URI it's never
> applied at all. I'm wondering if this a new problem with the last big
> push to morty since I didn't notice this before.
>
> I also verified that I can make myplatform-preempt-rt.scc work by
> doing the following (only shows as processed once in meta-series and
> no incorrect patches applied):
> bitbake -c cleanall linux-yocto-rt
> bitbake -c unpack linux-yocto-rt
> Manually copy myplatform-preempt-rt.scc and related .scc, .cfg files
> to the following path:
> work/myplatform-oe-linux-gnueabi/linux-yocto-rt/4.4.36+gitAUTOINC+b846fc6436_61d7bf47fe-r0/kernel-meta/bsp/myplatform/
> bitbake -c compile linux-yocto-rt
>
> Regards,
> George McCollister
>


