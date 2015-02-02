Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5899FE008CC; Mon,  2 Feb 2015 09:43:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7A1BE008A6
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 09:43:11 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 02 Feb 2015 09:43:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,507,1418112000"; d="scan'208";a="521427241"
Received: from bbodonog-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.3.158])
	by orsmga003.jf.intel.com with ESMTP; 02 Feb 2015 09:35:30 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Burton, Ross" <ross.burton@intel.com>,
	Christopher Larson <clarson@kergoth.com>, Gary Thomas <gary@mlbassoc.com>
Date: Mon, 02 Feb 2015 17:43 +0000
Message-ID: <1497730.Ya5ZGJxmZb@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <CAJTo0La5PVoaE=Qyyje3Jqy6i2f15djUYyGwOAks8KG-71NMbA@mail.gmail.com>
References: <54CFA908.7010507@mlbassoc.com>
	<CABcZANmY5-_wgSZp2xb=20Og27mcDJ_e7_QFZHGnHV67L1vr_g@mail.gmail.com>
	<CAJTo0La5PVoaE=Qyyje3Jqy6i2f15djUYyGwOAks8KG-71NMbA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: sstate management
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
X-List-Received-Date: Mon, 02 Feb 2015 17:43:20 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 02 February 2015 17:33:23 Burton, Ross wrote:
> On 2 February 2015 at 16:48, Christopher Larson <clarson@kergoth.com> wrote:
> >   Is there some maintenance to be done on the sstate-cache?
> >   
> >>   I'm thinking I want to set up a shared cache which might
> >>   last for a long time and I would like to only keep the bits
> >>   that are really needed.
> > 
> > In the past i've either used sstate-cache-management.sh or ensured that
> > SSTATE_DIR is on a mount with atime enabled and just periodically wiped
> > anything that hasn't been accessed in over a week.
> 
> Seconded on this - after doing lots of builds in the last few weeks
> involving five machines and new eglibc/gcc patches my sstate was 1.2TB.  A
> quick find -atime -delete did the job.

I don't suppose I can talk one or more of you into writing up some 
documentation for this to add to the manual? (As usual, something raw in the 
form of a wiki page that Scott can then adapt would be ideal.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

