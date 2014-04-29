Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F00BE009EB
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 03:19:29 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Apr 2014 03:14:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,950,1389772800"; d="scan'208";a="502805836"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.122.98])
	by orsmga001.jf.intel.com with ESMTP; 29 Apr 2014 03:19:14 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mirza Krak <mirza.krak@hostmobility.com>
Date: Tue, 29 Apr 2014 11:19:12 +0100
Message-ID: <10442236.B9G7olbOjy@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.13.10-200.fc20.x86_64; KDE/4.12.4; x86_64; ;
	)
In-Reply-To: <CAAA4K6LApkJ=LVpGqrNQ_GGBuM9WJN8MuLEJrXyut8yGi7uZXA@mail.gmail.com>
References: <535F3FFD.1080403@hostmobility.com>
	<CAAA4K6LApkJ=LVpGqrNQ_GGBuM9WJN8MuLEJrXyut8yGi7uZXA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: quilt-native fails on tar version 1.27.1
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
X-List-Received-Date: Tue, 29 Apr 2014 10:19:32 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 29 April 2014 13:23:36 Jegan Chandru wrote:
> On Tue, Apr 29, 2014 at 11:30 AM, Mirza Krak
> <mirza.krak@hostmobility.com>wrote:
> > I recently updated my Ubuntu PC to 14.04 LTS which broke yocto builds.
> > 
> > From what I can see is that there seems to be an issue with the tar
> > command and quilt-native recipe. But I am to newb to fix this. Do you guys
> > have any ideas?
>
> Only Yocto version 1.6 supports Ubuntu 14.04 LTS. I hope you are using
> that. if you are using <1.6 Ubuntu 14.04 LTS is not in supported distros.
> 
> http://www.yoctoproject.org/docs/1.6/ref-manual/ref-manual.html#detailed-sup
> ported-distros
> http://www.yoctoproject.org/docs/1.5/ref-manual/ref-manual.html#detailed-su
> pported-distros
> http://www.yoctoproject.org/docs/1.4/ref-manual/ref-manual.html#detailed-su
> pported-distros
> 
> Also I found this,
> https://lists.yoctoproject.org/pipermail/yocto/2013-October/016540.html
> which makes ur problem a known issue.

FYI the tar 1.27 fix has been backported to the 1.4 "dylan" branch, however 
Angstrom might not have picked it up yet. Still, you may experience other 
problems with Ubuntu 14.04 with 1.4, so if you can upgrade to a newer major 
release you probably should.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

