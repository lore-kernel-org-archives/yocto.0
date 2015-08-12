Return-Path: <joshua.lock@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBF15E00A7D; Wed, 12 Aug 2015 02:45:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.93.135.160 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [93.93.135.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1BDCE00A26
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 02:45:44 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: joshuagl) with ESMTPSA id 4D9B7600153
Message-ID: <1439372740.2733.4.camel@collabora.co.uk>
From: Joshua Lock <joshua.lock@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Wed, 12 Aug 2015 10:45:40 +0100
In-Reply-To: <1439371552.2733.1.camel@collabora.co.uk>
References: <55CB0F2C.3020403@dynamicdevices.co.uk>
	<1439371552.2733.1.camel@collabora.co.uk>
X-Mailer: Evolution 3.16.4 (3.16.4-2.fc22) 
Mime-Version: 1.0
Subject: Re: [meta-raspberrypi] RFC on choice of tool for patch review
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
X-List-Received-Date: Wed, 12 Aug 2015 09:45:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2015-08-12 at 10:25 +0100, Joshua Lock wrote:
> On Wed, 2015-08-12 at 10:17 +0100, Alex J Lennon wrote:
> > We've been having a discussion on a way forward to manage patches 
> > and
> > code review and would like to open this up for discussion to agree 
> > a 
> > way
> > forward.
> 
> There's http://patchwork.openembedded.org/. I'm not sure who 
> maintains
> it, nor if anyone uses it, but patches sent to the mailing list end 
> up
> there.
> 
> OOI who are "we" in this context? What benefits would a change bring?

I managed to miss both the [yocto] and [meta-raspberrypi] tags on this
mail, apologies for that. I guess that "we" are the meta-raspberrypi
maintainers.

Still, the patchwork instance may be an option? The meta-freescale
layers appear to be using it.

Cheers,

Joshua

