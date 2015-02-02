Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBD1EE008E5; Mon,  2 Feb 2015 01:48:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99F01E00809
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 01:48:22 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Feb 2015 01:44:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,505,1418112000"; d="scan'208";a="679594436"
Received: from bbodonog-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.3.158])
	by orsmga002.jf.intel.com with ESMTP; 02 Feb 2015 01:48:21 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Qiang Yu <yuq825@gmail.com>
Date: Mon, 02 Feb 2015 09:48:20 +0000
Message-ID: <1612671.bPjgLPTBOg@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <CAKGbVbtSsWYLZV_sG6t+EKhZDzDdu_4Z+rE=YuRfLN0n9FN9Tg@mail.gmail.com>
References: <CAKGbVbtSsWYLZV_sG6t+EKhZDzDdu_4Z+rE=YuRfLN0n9FN9Tg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Can two build dir of different yocto version share the same download/ and sstate/ dir?
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
X-List-Received-Date: Mon, 02 Feb 2015 09:48:30 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Qiang,

On Monday 02 February 2015 17:26:18 Qiang Yu wrote:
> I know two build dir of the same yocto version can share download/ and
> sstate/ dir to speed up build. But what if two build dir of different yocto
> version, like 1.6 and 1.7?

Yes. However, you will probably find you won't get too much benefit from having 
1.6 and 1.7 share SSTATEDIR since the signatures will be different for almost 
everything.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

