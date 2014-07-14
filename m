Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAE95E0076C; Mon, 14 Jul 2014 03:38:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43999E0053E
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 03:38:10 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Jul 2014 03:32:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,657,1400050800"; d="scan'208";a="572747105"
Received: from snaufer-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.80])
	by orsmga002.jf.intel.com with ESMTP; 14 Jul 2014 03:38:08 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jate S <jatedev@gmail.com>
Date: Mon, 14 Jul 2014 11:38:07 +0100
Message-ID: <3099943.1ZXLqn7vZv@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.2 (Linux/3.15.4-200.fc20.x86_64; KDE/4.13.2; x86_64; ; )
In-Reply-To: <CAPphmgaa8uhXjwDq+c-GUgyyqhcPB-gdsHmAxq4_c_x1acBooQ@mail.gmail.com>
References: <CAPphmgZ+ivQYXuYHLWfzQF9QySVnd=YtbM=fEjfA_7hp3iFq1A@mail.gmail.com>
	<53B39DCE.9060705@freenet.de>
	<CAPphmgaa8uhXjwDq+c-GUgyyqhcPB-gdsHmAxq4_c_x1acBooQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Jens Lucius <jenslucius@freenet.de>,
	openembedded-devel@lists.openembedded.org
Subject: Re: python tkinter dependencies
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
X-List-Received-Date: Mon, 14 Jul 2014 10:38:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 10 July 2014 16:11:29 Jate S wrote:
> - Python-tkinter requires the tk recipe in meta-oe, so you must add
> this layer for your build.
> - I am on dora. I found that I needed commit "tk: make multilib build
> compatible and fix library install" made on 12/5/2013
> (1ca29d1cda0d007c4e6a28fe1a4037b4029ad7ae).
> - I created a bbappend for python. In this I added
> DEPENDS_class-target on tk, and RDEPENDS_class-target on tk and
> tk-lib. Also, I did a SRC_URI replace to eliminate the
> avoid_warning_about_tkinter.patch file.
> 
> I was able to build and use python-tkinter successfully.
> 
> The question now is if this should go into meta-oe or oe-core. And how.
> 
> The tcl recipe is in oe-core, but not tk. I'm not yet sure why this
> is. Does anybody know?

I think the answer is that we have some things in OE-Core that depend on tcl 
(e.g. expect) but nothing in OE-Core requires tk.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

