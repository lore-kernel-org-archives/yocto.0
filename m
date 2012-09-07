Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA631E011AF
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2012 09:19:35 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q87GJIGN031108;
	Fri, 7 Sep 2012 17:19:18 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 30887-02; Fri,  7 Sep 2012 17:19:14 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q87GJArb031101
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Fri, 7 Sep 2012 17:19:11 +0100
Message-ID: <1347034751.8619.7.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 07 Sep 2012 17:19:11 +0100
In-Reply-To: <CADkTA4OCi8KF_QOALu1LTyT1it6ozvM3jD6Z6bmoFedT+HaWMQ@mail.gmail.com>
References: <CAHUNapQUS19axgi+i=wAr0r_ogFj+UsSBpsBY_mhd+ac=5w8-g@mail.gmail.com>
	<12E1ABCF-B181-4763-88A6-5B7E51758231@gmail.com>
	<CAHUNapQs-i9hAjxz9vj5kR17CiT4y3VRZiEejjef_9ga+ZwOOg@mail.gmail.com>
	<50491060.5030300@balister.org> <50492183.7030101@windriver.com>
	<5049D8FA.8050600@balister.org>
	<CADkTA4OCi8KF_QOALu1LTyT1it6ozvM3jD6Z6bmoFedT+HaWMQ@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Zhong Hongbo <hongbo.zhong@windriver.com>,
	Vlad Lungu <vlad.lungu@windriver.com>,
	Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: any success with spartan6-lx9mb?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 07 Sep 2012 16:19:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-09-07 at 08:27 -0400, Bruce Ashfield wrote:
> On Fri, Sep 7, 2012 at 7:22 AM, Philip Balister <philip@balister.org> wrote:
> > On 09/06/2012 06:19 PM, Bruce Ashfield wrote:

> >>>
> >>> Speaking of zynq, I have a simple BSP here for the zc702 board:
> >>>
> >>> https://github.com/balister/meta-zynq
> >>
> >>
> >> We have a namespace collision, there is also:
> >>
> >>    http://git.yoctoproject.org/cgit/cgit.cgi/meta-zynq/
> >
> >
> > Before creating the layer I checked:
> >
> > http://www.openembedded.org/wiki/LayerIndex
> >
> > This is where layer information is collected. If a layer is not listed here,
> > yo can expect namespace collisions.
> 
> Sure, I don't argue with that, but I wasn't the original owner of the layer so
> I can't say why it was or wasn't put into the wiki .. I'm not really concerned
> about the minor oversight. They layer I pointed to was done under contract
> by xilinx themselves, and contributed to be maintained as a yocto BSP, so
> the layers name is not something that I control or can change.
> 
> Other similar layers can use the same name if they want, I was pointing it
> out for reference, since I've had the same thing pointed out to me in
> the past ;)

The bigger question is whether that layer is getting maintained. If it
isn't, it will likely get removed. I'd prefer it to get added to the
layer index and the namespace collision getting fixed.

I was going to cc the maintainer but there isn't one listed in the
README which is a really bad start. The feedback I gave when this was
added has not all been acted upon either (multi-dtb.inc,
layencytop/sysprof nastiness).

This puts it right at the top of my "likely to get removed soon" list.

Bruce: Since you have an idea who wrote it, could you find out whether
its going to get fixed (at the very least fix the README, add to the
index and resolve the namespace) or whether I should be deleting it.

Cheers,

Richard


