Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 624D1E006E9; Tue,  1 Nov 2016 13:39:21 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 056C3E0049B
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 13:39:19 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga103.fm.intel.com with ESMTP; 01 Nov 2016 13:39:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,433,1473145200"; d="scan'208";a="26313280"
Received: from kgonza2-mobl.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.158.24])
	by orsmga005.jf.intel.com with ESMTP; 01 Nov 2016 13:39:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 02 Nov 2016 09:39:14 +1300
Message-ID: <5687539.b2UPXTCzMt@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.9-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAJTo0Lat2oz3dpRXC6tSve3drTMB+=93mfR=0-UjxYtfgqLrxw@mail.gmail.com>
References: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
	<21973d42-dc69-ee7b-031d-ac5544823c8f@basmevissen.nl>
	<CAJTo0Lat2oz3dpRXC6tSve3drTMB+=93mfR=0-UjxYtfgqLrxw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Yocto 2.2 Morty supported Linux Distros
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
X-List-Received-Date: Tue, 01 Nov 2016 20:39:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tue, 01 Nov 2016 17:11:21 Burton, Ross wrote:
> On 1 November 2016 at 17:05, Bas Mevissen <abuse@basmevissen.nl> wrote:
> > What are the criteria to call a distro supported?
> 
> The short version is that it's a distro that doesn't change too much, is
> still supported, and we have builders on autobuilder.yoctoproject.org
> running that distro.
> 
> The Centos mismatch is annoying, can you please file a bug?
> 
> Of course this is just a notice and you're entirely welcome to ignore it,
> or even set SANITY_TESTED_DISTROS to "" if you're using poky.

If you're not using a distro on the list (assuming the list is correct and 
complete, of course) what it really means is that you *may* be on your own 
sorting out any distro-related issues, but it doesn't mean that it definitely 
cannot work. There are people running builds regularly on distros that aren't 
on this list successfully, it's just that we can't commit to supporting all of 
the included functionality on all of them.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

