Return-Path: <tom.zanussi@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F9D5E0073C; Thu, 17 Jul 2014 07:07:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20F82E006EF
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 07:07:01 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Jul 2014 07:07:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,678,1400050800"; d="scan'208";a="571297160"
Received: from gmacartn-mobl.ger.corp.intel.com (HELO [10.255.13.33])
	([10.255.13.33])
	by fmsmga002.fm.intel.com with ESMTP; 17 Jul 2014 07:07:00 -0700
Message-ID: <1405606019.31082.11.camel@empanada>
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Thu, 17 Jul 2014 09:06:59 -0500
In-Reply-To: <3342528.IHg5slGbJt@peggleto-mobl5.ger.corp.intel.com>
References: <1405599916.4781.2.camel@localhost.localdomain>
	<23827558.qlZqcTDZms@peggleto-mobl5.ger.corp.intel.com>
	<CAFNP8Os559bt59bx6tfqp+R+HyUxz66kaxjuvzBGiRKbdUMjdQ@mail.gmail.com>
	<3342528.IHg5slGbJt@peggleto-mobl5.ger.corp.intel.com>
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
X-Mailman-Approved-At: Thu, 17 Jul 2014 09:57:28 -0700
Cc: yocto@yoctoproject.org, Scott Rifenbark <srifenbark@gmail.com>
Subject: Re: wic status
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
X-List-Received-Date: Thu, 17 Jul 2014 14:07:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2014-07-17 at 14:51 +0100, Paul Eggleton wrote:
> On Thursday 17 July 2014 16:48:41 Scott Rifenbark wrote:
> > On Thu, Jul 17, 2014 at 3:56 PM, Paul Eggleton <
> > paul.eggleton@linux.intel.com> wrote:
> > > On Thursday 17 July 2014 14:25:16 Maciek Borzecki wrote:
> > > > There used to be an entry about wic in development manual back in 1.5.2:
> > > > http://www.yoctoproject.org/docs/1.5.2/dev-manual/dev-manual.html
> > > > 
> > > > This entry is gone in current documentation and there seems to be no
> > > > mention of wic at all:
> > > > https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html
> > > 
> > > Scott, can you take a look at this if you haven't already?
> >
> > wic was documented in the 1.5.x set and was not put into the 1.6 set.  I
> > was told that it was going to change or be further completed so it did not
> > go in that development branch.  Wic was never documented in the 1.6 set.
> 
> Well, wic is still a part of the system in 1.6 and beyond so we do need to 
> document it; as far as I can tell what was in the 1.5 manual linked above 
> should be perfectly fine and we can just extend / update it as needed. Tom 
> should be able to help fill in any blanks.
> 

Right, wic is still included in the system, and like the rest of the
system is undergoing continual development, so I'm not sure why it would
be treated differently.

In any case, to make it easier for users and to avoid a mismatch with
external documentation, over the past couple weeks I've submitted a set
of patches (which have now been merged) that puts most of the help
content into the tool itself, which is all now accessible via 'wic
help'.

Thanks,

Tom

> Cheers,
> Paul
> 



