Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1CD4E00876; Wed,  1 Oct 2014 06:01:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 492FAE0079A
	for <yocto@yoctoproject.org>; Wed,  1 Oct 2014 06:01:09 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 01 Oct 2014 05:51:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="394085852"
Received: from snaufer-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.38])
	by FMSMGA003.fm.intel.com with ESMTP; 01 Oct 2014 05:54:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Burton, Ross" <ross.burton@intel.com>,
	Ezekiel Sanborndeasis <ezekiel@sanborndeasis.net>
Date: Wed, 01 Oct 2014 14:01:06 +0100
Message-ID: <4283061.U6n8VGy1Lh@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.1 (Linux/3.16.3-200.fc20.x86_64; KDE/4.14.1; x86_64; ; )
In-Reply-To: <CAJTo0LZz52aUmkiFsO0CumQQKrOzb6AcuuViQMy8gtAE6MHLTA@mail.gmail.com>
References: <20140930160017.8c4e4b9406b77e1e78d5069819454ed7.477e300d77.wbe@email14.secureserver.net>
	<CAJTo0LZz52aUmkiFsO0CumQQKrOzb6AcuuViQMy8gtAE6MHLTA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: fetch task not run after SRCREV updated
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
X-List-Received-Date: Wed, 01 Oct 2014 13:01:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 01 October 2014 10:34:50 Burton, Ross wrote:
> On 1 October 2014 00:00,  <ezekiel@sanborndeasis.net> wrote:
> > obviously works fine. It appears to come down to the do_fetch stampfile.
> > Is
> > this intended functionality? It seems that if my SRCREV does not match
> > against what was downloaded that should be invalidated and the fetch
> > should
> > be forced. Am I missing something?
> 
> As Gary said, this is fixed in master.  The idiomatic workaround is to
> embed SRCREV into PV, such as PV=1.2.3+git${SRCSRV}.

I think you meant:

PV = "1.2.3+git${SRCPV}"

;)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

