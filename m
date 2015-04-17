Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1972E0098E; Fri, 17 Apr 2015 07:30:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AE3CE0094C
	for <yocto@yoctoproject.org>; Fri, 17 Apr 2015 07:30:12 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 17 Apr 2015 07:30:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,595,1422950400"; d="scan'208";a="681704306"
Received: from pbrao1-mobl5.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.13.156])
	by orsmga001.jf.intel.com with ESMTP; 17 Apr 2015 07:30:11 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 17 Apr 2015 15:30:08 +0100
Message-ID: <9223869.PKDofxJfeZ@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <CABcZANkZpNCrYKjS0DYP8kqmeQ2+ax=87Cox1LQge3jeAA4f7Q@mail.gmail.com>
References: <552FA28B.5010507@actia.se>
	<CAP71WjyfbFWiTdGt5FQ46MK1w_3wf9g50mrAixaRDRfC4t7Dug@mail.gmail.com>
	<CABcZANkZpNCrYKjS0DYP8kqmeQ2+ax=87Cox1LQge3jeAA4f7Q@mail.gmail.com>
MIME-Version: 1.0
Cc: Anders Darander <anders@chargestorm.se>,
	Christopher Larson <clarson@kergoth.com>
Subject: Re: Badly formatted subpath for git SRC_URI deletes portions of hard drive.
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
X-List-Received-Date: Fri, 17 Apr 2015 14:30:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 16 April 2015 07:35:40 Christopher Larson wrote:
> On Thu, Apr 16, 2015 at 7:25 AM, Nicolas Dechesne <
> 
> nicolas.dechesne@linaro.org> wrote:
> > On Thu, Apr 16, 2015 at 3:11 PM, Anders Darander <anders@chargestorm.se>
> > 
> > wrote:
> >> > > Running the recipe resulted in do_fetch (or do_unpack) failing again
> >> 
> >> and
> >> 
> >> > > complaining about missing files. This time the deletion was on a much
> >> > > greater scale, it had deleted so much of my home-dir that my user
> >> > > account was rendered entirely useless. The fastest way to recover
> >> > > this
> >> > > time was re-installing the machine.
> >> 
> >> It's most likely a call to bb.utils.prunedir(destdir), with destdir
> >> being set to '/'...
> > 
> > ouch... this is a bit scary ;-)
> > 
> > maybe we should assert the folder name is 'sane' when we do destructive
> > operations like that. e.g. check that we are in TMPDIR, or TOPDIR..
> > 
> > hopefully nobody does sudo bitbake ;-)
> 
> This is scary indeed. We definitely need to be more careful about calls to
> dirname/basename with paths with a trailing or leading / in general, and
> especially for removals, and just need to do more path
> sanitization/normalization probably..

I have sent an additional patch to the bitbake list to try to protect against 
future instances of this issue, at least for bb.utils.prunedir() and 
bb.utils.remove():

http://lists.openembedded.org/pipermail/bitbake-devel/2015-April/005664.html

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

