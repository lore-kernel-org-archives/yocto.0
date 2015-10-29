Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67D90E007FE; Thu, 29 Oct 2015 03:01:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C160BE0071C
	for <yocto@yoctoproject.org>; Thu, 29 Oct 2015 03:01:29 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP; 29 Oct 2015 03:01:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,213,1444719600"; d="scan'208";a="806349972"
Received: from djwalsh-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.4.5])
	by orsmga001.jf.intel.com with ESMTP; 29 Oct 2015 03:01:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Juha Vuorivirta <jvp.vuorivirta@gmail.com>
Date: Thu, 29 Oct 2015 10:01:25 +0000
Message-ID: <6546486.2LDYLlrGg6@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.11; x86_64; ; )
In-Reply-To: <CAEpurxFnb-hjuNK7ud45nAGBv_T2sU2H1erSuNebKA27edA3bA@mail.gmail.com>
References: <CAEpurxGQ9YK6x=6MNAvAM3UrhOzXAE1XQA49261tsTDnj_cSVQ@mail.gmail.com>
	<3495332.tAIL4Rokgy@peggleto-mobl.ger.corp.intel.com>
	<CAEpurxFnb-hjuNK7ud45nAGBv_T2sU2H1erSuNebKA27edA3bA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Set root password with SHA512?
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
X-List-Received-Date: Thu, 29 Oct 2015 10:01:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

(Adding mailing list back onto CC)

I believe that was another issue that got solved a bit more recently:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=c38fee231b42b9123dd1fd102235eac6240ba4c8

Cheers,
Paul

On Thursday 29 October 2015 11:55:48 Juha Vuorivirta wrote:
> Thank you for answers, I got it working with Paul's fix by adding that line
> to the .bbappend file. One notice though, without debug-tweaks this does
> not work.
> 
> br,
> 
> jv
> 
> 2015-10-28 16:38 GMT+02:00 Paul Eggleton <paul.eggleton@linux.intel.com>:
> > On Wednesday 28 October 2015 10:07:31 Juha Vuorivirta wrote:
> > > I'm able to set the root password in /etc/shadow with adding
> > > ROOTFS_POSTPROCESS_COMMAND to .bb file. It seems that only DES works
> > > (yocto/oe-core etc. layers are pretty old though). Is it possible to
> > 
> > enable
> > 
> > > SHA512 hashing for root password?
> > > Just replacing DES password with SHA512 is not enough, could not log in
> > > even password hash is correct in /etc/shadow file. Noticed that DES is
> > > default encryption method(in recipes-extended/shadow/...), how can I set
> > 
> > it
> > 
> > > to SHA512, or is it even possible with this older set up?
> > 
> > Not sure if this is relevant, but since you mention you're on an old
> > release I
> > recall fixing something relating to this a while back:
> > 
> > 
> > http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=68fbbd1008a76d78
> > c7cef141dc06696d27fe2d0c
> > 
> > The first release to have this fix in it was 1.6 (daisy).
> > 
> > Cheers,
> > Paul
> > 
> > --
> > 
> > Paul Eggleton
> > Intel Open Source Technology Centre

-- 

Paul Eggleton
Intel Open Source Technology Centre

