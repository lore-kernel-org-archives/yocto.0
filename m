Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48DB5E014EF
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 08:42:32 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Apr 2013 08:40:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,494,1363158000"; d="scan'208";a="319754401"
Received: from unknown (HELO helios.localnet) ([10.255.14.28])
	by orsmga002.jf.intel.com with ESMTP; 17 Apr 2013 08:42:21 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Wed, 17 Apr 2013 16:42:20 +0100
Message-ID: <1735326.q5ElvD3frK@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.5.0-27-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1304171135470.12898@oneiric>
References: <alpine.DEB.2.02.1304171022430.10912@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB123796FCF66BA@ORSMSX104.amr.corp.intel.com>
	<alpine.DEB.2.02.1304171135470.12898@oneiric>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: writeup on the mechanics of FILESEXTRAPATHS and bbappend files
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
X-List-Received-Date: Wed, 17 Apr 2013 15:42:32 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 17 April 2013 11:39:09 Robert P. J. Day wrote:
> p.s.  i think one of the manuals should mention chris larson's
> "bitbake-env" utility, which i use for debugging and explanations all
> the time.

I'd rather wait until we actually integrate that into BitBake (i.e. provide it 
with the BitBake source, which I hope we can look at within the next 
development cycle).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

