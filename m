Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7CE4E00B37; Wed, 28 Oct 2015 07:39:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CD7BE00B2E
	for <yocto@yoctoproject.org>; Wed, 28 Oct 2015 07:39:05 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 28 Oct 2015 07:38:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,210,1444719600"; d="scan'208";a="821485675"
Received: from phealy1-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.3.26])
	by fmsmga001.fm.intel.com with ESMTP; 28 Oct 2015 07:38:43 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Juha Vuorivirta <jvp.vuorivirta@gmail.com>
Date: Wed, 28 Oct 2015 14:38:41 +0000
Message-ID: <3495332.tAIL4Rokgy@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.11; x86_64; ; )
In-Reply-To: <CAEpurxGQ9YK6x=6MNAvAM3UrhOzXAE1XQA49261tsTDnj_cSVQ@mail.gmail.com>
References: <CAEpurxGQ9YK6x=6MNAvAM3UrhOzXAE1XQA49261tsTDnj_cSVQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 28 Oct 2015 14:39:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 28 October 2015 10:07:31 Juha Vuorivirta wrote:
> I'm able to set the root password in /etc/shadow with adding
> ROOTFS_POSTPROCESS_COMMAND to .bb file. It seems that only DES works
> (yocto/oe-core etc. layers are pretty old though). Is it possible to enable
> SHA512 hashing for root password?
> Just replacing DES password with SHA512 is not enough, could not log in
> even password hash is correct in /etc/shadow file. Noticed that DES is
> default encryption method(in recipes-extended/shadow/...), how can I set it
> to SHA512, or is it even possible with this older set up?

Not sure if this is relevant, but since you mention you're on an old release I 
recall fixing something relating to this a while back:

  http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=68fbbd1008a76d78c7cef141dc06696d27fe2d0c

The first release to have this fix in it was 1.6 (daisy).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

