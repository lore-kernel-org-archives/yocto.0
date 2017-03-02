Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9F22E0095F; Wed,  1 Mar 2017 17:03:43 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44EAFE00826
	for <yocto@yoctoproject.org>; Wed,  1 Mar 2017 17:03:42 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Mar 2017 17:03:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,228,1484035200"; d="scan'208";a="1136766980"
Received: from yokemooi-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.134.143])
	by fmsmga002.fm.intel.com with ESMTP; 01 Mar 2017 17:03:36 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: chris warth <cswarth@gmail.com>
Date: Thu, 02 Mar 2017 14:03:30 +1300
Message-ID: <1669316.G5xAQX6A5S@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAJJmP9C_AZJBzSs2XQp0enTzLgUaazmcF3FYD_Y6_zTVKkh0XA@mail.gmail.com>
References: <CAJJmP9DKZQ1uWX3QGnA7aHVBeCJzuVTxo51G+BMDfbzKqcbv8A@mail.gmail.com>
	<CAJ86T=VeFuhgGmwFZDpb0o8QRpS15gCokcR8rRg62n_n=kVN3g@mail.gmail.com>
	<CAJJmP9C_AZJBzSs2XQp0enTzLgUaazmcF3FYD_Y6_zTVKkh0XA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: BBMASK not working for me?
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
X-List-Received-Date: Thu, 02 Mar 2017 01:03:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Chris,

On Thursday, 2 March 2017 11:31:42 AM NZDT chris warth wrote:
> Thanks, all.  I wanted to share the solution.
> 
> This vendor-supplied version of yocto looks like 2.0, so the space
> separated expressions are not available.
> After putting some print statements in cooker.py I discovered that
> appending to BBMASK in conf/bblayers.conf or conf/local.conf has no
> effect.  It was not until I modified BBMASK_forcevariable in my
> conf/bblayers.conf  that I saw any change in behavior.
> 
> BBMASK_forcevariable = ".*openjre|.*openjdk|.*qemu_qoriq"
> 
> This inability to modify BBMASK unless using _forcevariable was also
> noted last year.
> https://lists.yoctoproject.org/pipermail/yocto/2016-September/032033.html

That sounds strange. Did you use bitbake -e | less to see where your non-
forcevariable setting was being overridden? More than likely you have a layer 
or some other configuration you're bringing in and that's simply setting it 
with = at some point later in parsing than local.conf. The history of the 
BBMASK variable shown through bitbake -e will tell you exactly where that is.

Cheers,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre

