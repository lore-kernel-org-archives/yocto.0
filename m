Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18C4EE00D94; Thu, 18 Jul 2019 05:43:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D8D5E00D89
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 05:43:47 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 45qDMh3333z4s;
	Thu, 18 Jul 2019 14:43:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1563453826;
	bh=XLteHv8BGX6qWPV3c261OQEup612pedfNsAAEAuOcj0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RMdjN1GCdNROx7wsTQrpqBdHM1n3s2Eosi9jvpiGiO1PF9Hk84OMQUZElSZFtD3SY
	CgCEAdWAmoRfhIG6nsOsLQCZI9eEAV6K7EZ8RowR8L6Y3CYeU+CwQ3tVdbxZRhWONE
	3m6Hsy6ZVDfUwp4khdWf+DToa5v5dsSk02VisowZ8mBaufgAuPld8k9WuloBeUX1LS
	21T1ArlcUTk+p96KOCQX3V/Wca4ux8MW1yVLLxMhK+loZEeN7wfKtrhT6eovLa4nt1
	1Csfmop3jvNJNZX3M2iftXeTqRYV+H4M03ErLqyd40bLWvro3fYjHwv6LNbkr1+mFj
	x0xU0rgff73pjNPPZh/8HmRFzO79E0pYKVIRGTH46eQyqys0Z6+q/wMUvxabkIqMOY
	vs3/xwlGCoMbP4PIen0lHCI38uiQ5jWZWdJ7nm3SlEOasN0/IbyElGAZZOA/mO4E8K
	wvooI9rt+JclGiBRJ7YywsGEHQ0ZbVuXXNBKqODcZjsVTw9pMwHzTUCFYZWTnnxD2P
	hkxSy9rNfDnD4lLAGrBxBmWdimgxZqPEasuP2Ot49669fiEn+cZqpz7SYWipT8WDV7
	MELzPfrG8MsyLx9dJeH9imK15Vqm2xr015oJe6tExZko8RxMvW0Y1CS/ZfIlRwvrn/
	U5hBSRQHRVryAmxrY5C/6KFo=
Date: Thu, 18 Jul 2019 15:43:42 +0300
From: Adrian Bunk <bunk@stusta.de>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20190718124342.GA1393@localhost>
References: <CAJTo0LaOHbSB75OGLsHJ3Vxd5eVgg9+7Cq3k0=P-BwPLpFiyjg@mail.gmail.com>
	<20190718060409.GA27459@localhost>
	<CAJTo0LbDCp=Wn76R56LxkAbU7pbkeJuBmnXhVr7h=gCJd1phqA@mail.gmail.com>
	<b19a2df01ff9e66056d1c4f23fb9469cff9dacd9.camel@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <b19a2df01ff9e66056d1c4f23fb9469cff9dacd9.camel@linuxfoundation.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] RFC: dropping official support for Debian 8 / Opensuse 42.3
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
X-List-Received-Date: Thu, 18 Jul 2019 12:43:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Thu, Jul 18, 2019 at 12:43:50PM +0100, Richard Purdie wrote:
> On Thu, 2019-07-18 at 12:31 +0100, Burton, Ross wrote:
> > > CentOS 7 is based on Fedora 19 from 2013.
> > > 
> > > This is the oldest currently supported distribution, and when to
> > > remove
> > > support for it (replacing it with the not yet existing CentOS 8)
> > > should
> > > IMHO be part of this discussion.
> > 
> > Centos 7 support is, I believe, already patchy - I think we mandate
> > the buildtools for that?  Any idea what the support plan for Centos 7
> > will be once 8 is released, whenever that is?
> 
> There is some kind of official feed to add python 3.6 to it which we
> use.

Python is only a small part of the picture.

What I would be interested in would be to get rid of the 
ever-growing number of hacks and patches for supporting
the ancient gcc 4.8 in CentOS 7.

With support for Debian 8 removed, CentOS 7 will be two gcc major
versions behind all other supported host distributions.

Remember the nettle problems immediately before Yocto 2.7 was released, 
the root cause was a (bogus) workaround for supporting hosts with gcc < 5.

> Cheers,
> 
> Richard

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


