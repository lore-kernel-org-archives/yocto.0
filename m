Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CE65E00858; Tue, 31 Mar 2015 06:18:25 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D654E007A0
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 06:18:22 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 31 Mar 2015 06:17:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,501,1422950400"; d="scan'208";a="700797667"
Received: from sdcrawle-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.13.186])
	by fmsmga002.fm.intel.com with ESMTP; 31 Mar 2015 06:17:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Hallinan <challinan@gmail.com>
Date: Tue, 31 Mar 2015 14:17:55 +0100
Message-ID: <5853673.bdLqT5fZko@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <CAME0jBSLHmMdKa8UH-YDmUfA-JoLxBxQCA1PaajvJu0bqBbXLw@mail.gmail.com>
References: <1427748653-20274-1-git-send-email-challinan@gmail.com>
	<5519D366.4070506@gmail.com>
	<CAME0jBSLHmMdKa8UH-YDmUfA-JoLxBxQCA1PaajvJu0bqBbXLw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 31 Mar 2015 13:18:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Chris,

Great to see you at ELC!

On Monday 30 March 2015 19:17:46 Chris Hallinan wrote:
> Great catching up with you last week, and thanks for looking at my
> patch.  I supposed it's a double edged sword.  If we make it a
> variable, it can be set wrong and the build hang again.  OTOH, 128MB
> is probably way more space than we really need to reserve, and I
> supposed if someone were just banging up against the limit, they might
> want to tweak it.  I'll defer to the collective judgement of the
> group, and resubmit if that's the consensus.

Is there any practical way we can measure the actual size of these files?

> Oh, and silly me...I figured the mail list daemon would put the
> [Yocto] tag on the patch. Since it seems to tag our posts, that is a
> mystery to me.

The mailing list always prepends the list name to the subject of posted 
messages.

A few other notes:

1) This patch should be sent to the openembedded-core@lists.openembedded.org 
mailing list rather than here. 

2) The YP bugzilla reference should be of the format [YOCTO #7541] .

3) The shortlog (first line of the commit message / subject) should be prefixed 
with the area/file the patch is changing i.e. for this one it should be  
"bootimg.bbclass: gracefully abort if rootfs.img gets to big".

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

