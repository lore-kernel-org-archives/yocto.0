Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20DEDE008D4; Tue, 31 Mar 2015 07:21:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9A95E008D4
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 07:21:35 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 31 Mar 2015 07:21:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,501,1422950400"; d="scan'208";a="700831431"
Received: from sdcrawle-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.13.186])
	by fmsmga002.fm.intel.com with ESMTP; 31 Mar 2015 07:21:33 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Hallinan <challinan@gmail.com>
Date: Tue, 31 Mar 2015 15:21:31 +0100
Message-ID: <2331221.L0vQfubFMy@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <CAME0jBQ-t3bfcUDSmxBWg=ULcp=uWGn60zYM-mX_N07A4r=FpA@mail.gmail.com>
References: <1427748653-20274-1-git-send-email-challinan@gmail.com>
	<5853673.bdLqT5fZko@peggleto-mobl.ger.corp.intel.com>
	<CAME0jBQ-t3bfcUDSmxBWg=ULcp=uWGn60zYM-mX_N07A4r=FpA@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Gracefully abort if rootfs.img gets to big
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
X-List-Received-Date: Tue, 31 Mar 2015 14:21:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 31 March 2015 10:16:52 Chris Hallinan wrote:
> On Tue, Mar 31, 2015 at 9:17 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > On Monday 30 March 2015 19:17:46 Chris Hallinan wrote:
> >> Great catching up with you last week, and thanks for looking at my
> >> patch.  I supposed it's a double edged sword.  If we make it a
> >> variable, it can be set wrong and the build hang again.  OTOH, 128MB
> >> is probably way more space than we really need to reserve, and I
> >> supposed if someone were just banging up against the limit, they might
> >> want to tweak it.  I'll defer to the collective judgement of the
> >> group, and resubmit if that's the consensus.
> > 
> > Is there any practical way we can measure the actual size of these files?
> 
> I gave this some thought after Armin's comment, and yes, maybe there
> is a way to estimate the size available. I'll look further into it.
> 
> >> Oh, and silly me...I figured the mail list daemon would put the
> >> [Yocto] tag on the patch. Since it seems to tag our posts, that is a
> >> mystery to me.
> > 
> > The mailing list always prepends the list name to the subject of posted
> > messages.
> 
> That what I thought, too.  Wonder why it didn't prepend the list name
> to this patch?

It did - see:
https://lists.yoctoproject.org/pipermail/yocto/2015-March/024294.html
 
> > A few other notes:
> > 
> > 1) This patch should be sent to the
> > openembedded-core@lists.openembedded.org mailing list rather than here.
> 
> Ah, wasn't sure about that, thanks!
> 
> > 2) The YP bugzilla reference should be of the format [YOCTO #7541] .
> > 
> > 3) The shortlog (first line of the commit message / subject) should be
> > prefixed with the area/file the patch is changing i.e. for this one it
> > should be "bootimg.bbclass: gracefully abort if rootfs.img gets to big".
> 
> Thanks for the guidance. As you can see, I'm not experienced at
> sending patches!  I'll investigate and re-send to oe-core@

Great!

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

