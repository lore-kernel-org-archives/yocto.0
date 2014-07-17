Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 022B4E0073C; Thu, 17 Jul 2014 06:51:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6860CE006EF
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 06:51:48 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Jul 2014 06:51:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,678,1400050800"; d="scan'208";a="458144633"
Received: from ldsaruwe-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.2])
	by azsmga001.ch.intel.com with ESMTP; 17 Jul 2014 06:51:46 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <srifenbark@gmail.com>
Date: Thu, 17 Jul 2014 14:51:45 +0100
Message-ID: <3342528.IHg5slGbJt@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.2 (Linux/3.15.4-200.fc20.x86_64; KDE/4.13.2; x86_64; ; )
In-Reply-To: <CAFNP8Os559bt59bx6tfqp+R+HyUxz66kaxjuvzBGiRKbdUMjdQ@mail.gmail.com>
References: <1405599916.4781.2.camel@localhost.localdomain>
	<23827558.qlZqcTDZms@peggleto-mobl5.ger.corp.intel.com>
	<CAFNP8Os559bt59bx6tfqp+R+HyUxz66kaxjuvzBGiRKbdUMjdQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Tom Zanussi <tom.zanussi@linux.intel.com>
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
X-List-Received-Date: Thu, 17 Jul 2014 13:51:50 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 17 July 2014 16:48:41 Scott Rifenbark wrote:
> On Thu, Jul 17, 2014 at 3:56 PM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
> > On Thursday 17 July 2014 14:25:16 Maciek Borzecki wrote:
> > > There used to be an entry about wic in development manual back in 1.5.2:
> > > http://www.yoctoproject.org/docs/1.5.2/dev-manual/dev-manual.html
> > > 
> > > This entry is gone in current documentation and there seems to be no
> > > mention of wic at all:
> > > https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html
> > 
> > Scott, can you take a look at this if you haven't already?
>
> wic was documented in the 1.5.x set and was not put into the 1.6 set.  I
> was told that it was going to change or be further completed so it did not
> go in that development branch.  Wic was never documented in the 1.6 set.

Well, wic is still a part of the system in 1.6 and beyond so we do need to 
document it; as far as I can tell what was in the 1.5 manual linked above 
should be perfectly fine and we can just extend / update it as needed. Tom 
should be able to help fill in any blanks.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

