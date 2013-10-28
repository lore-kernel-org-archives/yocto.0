Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BC11E011B9
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 02:48:58 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Oct 2013 02:45:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="399771631"
Received: from mmckenna-mobl1.ger.corp.intel.com (HELO helios.localnet)
	([10.252.120.252])
	by orsmga001.jf.intel.com with ESMTP; 28 Oct 2013 02:48:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 28 Oct 2013 09:48:55 +0000
Message-ID: <5887622.7qFugRoNWl@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1310280537490.6411@oneiric>
References: <CAM1ZcoXQEO9w+gJKfK8xYft=JegKHoWGn8Q6CF=hBd77o0ezyw@mail.gmail.com>
	<17076206.HsEGNRlfMJ@helios>
	<alpine.DEB.2.02.1310280537490.6411@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: fetch from perforce
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
X-List-Received-Date: Mon, 28 Oct 2013 09:49:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Monday 28 October 2013 05:38:49 Robert P. J. Day wrote:
> > We should really get a default value for FETCHCOMMAND_p4 defined in
> > OE-Core
> > (and perhaps also the default bitbake.conf bundled with bitbake itself).
> 
>   IIRC, richard purdie once suggested that the "FETCHCOMMAND_"
> versions of the variables were deprecated, and that "FETCHCMD_" was
> the correct usage. can someone clarify this?

They are, however we're talking about the perforce fetcher here and that still 
reads FETCHCOMMAND, so that would need to be changed before we could expect to 
use the new variable here.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

