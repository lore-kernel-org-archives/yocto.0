Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4600EE00C05; Mon, 22 Aug 2016 09:42:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49C6DE00A92
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 09:42:47 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga101.jf.intel.com with ESMTP; 22 Aug 2016 09:42:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,560,1464678000"; 
   d="scan'208";a="590696"
Received: from peggleto-mobl.ger.corp.intel.com ([10.7.197.226])
	by orsmga004.jf.intel.com with ESMTP; 22 Aug 2016 09:42:46 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Richard Leitner <richard.leitner@skidata.com>,
	Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Mon, 22 Aug 2016 09:42:45 -0700
Message-ID: <1518725.aenSgkUnbk@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.6.6-200.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <e278b8dd-7bf7-5174-ed81-ceaea12aad7e@skidata.com>
References: <1460710190-22696-1-git-send-email-richard.leitner@skidata.com>
	<e278b8dd-7bf7-5174-ed81-ceaea12aad7e@skidata.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [psplash][PATCH] psplash: add option to read startup message from file
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
X-List-Received-Date: Mon, 22 Aug 2016 16:42:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Richard,

Sorry, we've clearly not been good at responding to this.

I'm actually not sure who is maintaining psplash these days - Jussi/Ross, is 
it one of you?

Cheers,
Paul

On Thu, 18 Aug 2016 09:09:30 Richard Leitner wrote:
> Any comments/news on that patch from APRIL?
> 
> On 04/15/2016 10:49 AM, Richard Leitner wrote:
> > This patch adds an option to read the displayed message from a file.
> > Additionally the maximum length for the read string can be defined.
> > If both, a message (STARTUP_MSG) and a file (STARTUP_MSG_FILE) are
> > defined the content of the file will be appended to the message.
> > The string will be cutted after the given maximum number of chars.
> > 
> > For these changes the following defines were introduced:
> >   PSPLASH_STARTUP_MSG_MAX_LEN ... maximum lenght of the complete message
> >   PSPLASH_STARTUP_MSG_FILE ...... path to the file to read
> > 
> > Signed-off-by: Richard Leitner <richard.leitner@skidata.com>

-- 

Paul Eggleton
Intel Open Source Technology Centre

