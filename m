Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3274FE00B5C; Tue, 17 Jun 2014 08:08:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C4BAE003DA
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 08:08:40 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 Jun 2014 08:02:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,494,1400050800"; d="scan'208";a="529864544"
Received: from garethcl-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.19])
	by orsmga001.jf.intel.com with ESMTP; 17 Jun 2014 08:07:57 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Patrick Doyle <wpdster@gmail.com>, Robert Yang <liezhi.yang@windriver.com>
Date: Tue, 17 Jun 2014 16:07:55 +0100
Message-ID: <2289204.UWFViZiKz6@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.6-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <CAF_dkJB6mJjhtZHZmo6bX+q611zSyij4OvXg+Yxv5At-RpWdOA@mail.gmail.com>
References: <CAF_dkJB6mJjhtZHZmo6bX+q611zSyij4OvXg+Yxv5At-RpWdOA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [dora] x264: Update SRCREV to match commit in upstream git repo
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
X-List-Received-Date: Tue, 17 Jun 2014 15:08:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Patrick,

On Tuesday 17 June 2014 09:36:05 Patrick Doyle wrote:
> It seems that 585324fee380109acd9986388f857f413a60b896 is no
> longer there in git and it has been rewritten to
> ffc3ad4945da69f3caa2b40e4eed715a9a8d9526

FYI I sent a similar patch for dora to the OE-Core list a week ago; hopefully 
it should be merged soon.

(Robert: I think my CC of the patch to you at the time bounced, not sure what 
happened.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

