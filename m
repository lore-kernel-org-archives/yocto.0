Return-Path: <anders@chargestorm.se>
Received: from stoexhubfe01.domain01.net (STOEXHUBFE01.domain01.net
	[83.145.59.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D986BE0033F
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 00:10:20 -0800 (PST)
Received: from localhost (193.41.119.134) by stoexhubfe01.domain01.net
	(10.12.10.6) with Microsoft SMTP Server id 8.3.279.1; Tue, 27 Nov 2012
	09:09:55 +0100
Date: Tue, 27 Nov 2012 09:10:18 +0100
From: Anders Darander <anders@chargestorm.se>
To: <yocto@yoctoproject.org>
Message-ID: <20121127081017.GA14316@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <8754B3FC-739C-4344-8D24-B31A5D86D48F@keylevel.com>
	<CA+QkY1DG+xEOrsJ_Xx8BEOB2RYsNnCdU3raSnuLHnt+mw2bPBA@mail.gmail.com>
	<CAJTo0LZZabOquwvqQwhVxt2=BuWQmdQHQT_VBjtk1DJaRQ6rcA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZZabOquwvqQwhVxt2=BuWQmdQHQT_VBjtk1DJaRQ6rcA@mail.gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.20 (2009-12-10)
X-GFI-SMTP-Submission: 1
Subject: Re: Best way to support multiple versions of Poky?
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
X-List-Received-Date: Tue, 27 Nov 2012 08:10:21 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Burton, Ross <ross.burton@intel.com> [121126 14:58]:

> On 26 November 2012 13:55, Jerrod Peach <peachj@lexmark.com> wrote:
> > build-bundle (git repo with our layers + tools)
> > |
> > +-- meta-ourstuff (git submodule, i.e. separate repo locked to a specific
> > version within build-bundle)
> > +-- poky (another submodule)
> >    |
> >    +-- poky BB files (i.e. within meta, meta-yocto, etc.)

> Guacamayo does something similar, although meta-outstuff isn't a
> submodule of build-bundle.

At ChargeStorm we're using a similar scheme to Guacamayo, i.e. we have
our repo with our recipes, bsp's, distro config etc. in our own
meta-*-directories. And the we have oe-core, meta-oe, and/or poky and
whatever layers we're using as submodules.

> Being able to branch a "next" branch that switched the poky revision
> to the danny RC instead of denzil was very convenient.

Indeed, and also to be able to create a next branch halfway between
denzil and danny, to be able to port / adapt some recipe that required
bigger changes at about the same time those occured in poky-master (or
oe-core master).

Thus, I'm pretty satisfied with our structure for the moment, though
everything can be improved.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

