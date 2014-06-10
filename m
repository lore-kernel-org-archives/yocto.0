Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12BB3E00BE1; Tue, 10 Jun 2014 07:30:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B04FFE00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 07:30:16 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 10 Jun 2014 07:30:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="353036906"
Received: from cgwithan-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.176])
	by FMSMGA003.fm.intel.com with ESMTP; 10 Jun 2014 07:26:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Patrick Doyle <wpdster@gmail.com>
Date: Tue, 10 Jun 2014 15:30:14 +0100
Message-ID: <3311327.j4RKns8jMV@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.5-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <CAF_dkJCPkO1vRb9d8S=C-rP=TS+GBphJGGt_srmbA4L5kRokMA@mail.gmail.com>
References: <CAF_dkJCPkO1vRb9d8S=C-rP=TS+GBphJGGt_srmbA4L5kRokMA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: QA Issue: non -dev/-dbg/-nativesdk package contains symlink .so
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
X-List-Received-Date: Tue, 10 Jun 2014 14:30:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Patrick,

On Tuesday 10 June 2014 10:23:04 Patrick Doyle wrote:
> I started getting the warning mentioned above when I updated to a
> newer release of an open source package (Aravis).  I asked the google
> how I should address that issue, and it was no help, so now I'll ask
> the list :-)
> 
> Any suggestions as to what I should do about this?  The (autotools
> generated) Makefiles do, in fact, generate symlinks.  Do I care?

FYI there's a new section in the work-in-progress manual for 1.7 which 
documents QA warnings including this one:

http://www.yoctoproject.org/docs/1.7/ref-manual/ref-manual.html#ref-qa-checks

Let me know if the explanation given there helps / doesn't help.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

