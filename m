Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B26DFE00863; Sat,  1 Nov 2014 13:54:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E447E00857
	for <yocto@yoctoproject.org>; Sat,  1 Nov 2014 13:54:41 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Nov 2014 13:54:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,295,1413270000"; d="scan'208";a="624732283"
Received: from swgunawa-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.122])
	by fmsmga002.fm.intel.com with ESMTP; 01 Nov 2014 13:54:40 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: nick <xerofoify@gmail.com>
Date: Sat, 01 Nov 2014 20:54:39 +0000
Message-ID: <1851809.saLbNT2Y4Q@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.6-203.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <54552CB3.30002@gmail.com>
References: <54551DFF.6060000@gmail.com> <54552CB3.30002@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Angstrom Build Fails
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
X-List-Received-Date: Sat, 01 Nov 2014 20:54:44 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday 01 November 2014 19:55:47 Sven Ebenfeld wrote:
> Looks like problems with gitorious.org again.
> You should either find a mirror again or wait if the problem solves
> itself. Unfortunately I don't know, which git repository this recipe
> (opie) needs so I don't know if a mirror exists.
> 
> Am 01.11.2014 18:53, schrieb nick:
> > Exception: ExpansionError: Failure expanding variable SRCPV, expression
> > was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError:
> > Fetcher failure: Fetch command failed with exit code 128, output: fatal:
> > unable to connect to gitorious.org:
> > gitorious.org: Name or service not known

"Name or service not known" - that suggests a DNS failure - are you sure you 
don't have local network issues?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

