Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C04C2E0146A
	for <yocto@yoctoproject.org>; Sat, 30 Jun 2012 15:29:26 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Jun 2012 15:29:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="187028567"
Received: from unknown (HELO helios.localnet) ([10.252.120.207])
	by fmsmga002.fm.intel.com with ESMTP; 30 Jun 2012 15:29:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat, 30 Jun 2012 23:29:24 +0100
Message-ID: <1917420.7HU16QZsXx@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-26-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <EA4EED0E-61CA-415E-AA6E-E708D7859323@dominion.thruhere.net>
References: <1340763740.43451.YahooMailNeo@web121605.mail.ne1.yahoo.com>
	<4370319.CbK9Nk4c9m@helios>
	<EA4EED0E-61CA-415E-AA6E-E708D7859323@dominion.thruhere.net>
MIME-Version: 1.0
Subject: Re: How to include libstdc++ in an image?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 30 Jun 2012 22:29:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday 30 June 2012 23:56:18 Koen Kooi wrote:
> But do note that if you ship libstdc++ without anything linking to it you
> forego on the linking exception to the GPL. That is general is a Very Bad
> Thing(TM), so ship a helloword.cpp binary to keep the fsf happy. As an
> added bonus the helloworld will drag in the lib automatically.

[citation needed]

-- 

Paul Eggleton
Intel Open Source Technology Centre

